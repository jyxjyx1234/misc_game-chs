unit MajiroObj;

interface

uses Windows, Classes, SysUtils, FileStreamW, MajiroJumpIndex;

{ Some terminology:
  'script' - binary stream of opcodes that are executed;
  'object' - full Majiro object representation, including header, etc.
             Includes 'script'.
}

type
  TMjObjSignature = array[0..15] of Char;
  TMjObjXORTable = array[0..1023] of Char;
  TMjObjFunctionType = (mofUnknown, mofMessage, mofLineBreak);

  EMajiroObj = class (Exception)
  end;
    EMjObjInvalidArcSign = class (EMajiroObj)
    end;
    EMjObjWrongScriptSize = class (EMajiroObj)
    end;
    EMjObjEmptyScript = class (EMajiroObj)
    end;

  TMajiroObj = class
  protected
    FObjVersion: Byte;
    FObjFileName: WideString;

    FScript: TStream;
    FScriptBeginning: DWord;
    FXORTable: TMjObjXORTable;

    FSkipFlag: DWord;
    FEntryPoint: DWord;  // relative to FScriptBeginning.
    FOffsets: array of record
      Unk: DWord;
      Offset: DWord;     // relative to FScriptBeginning.
    end;
    FScriptSize: DWord;

    procedure AssureNotEmpty;

    procedure ReadHeaderFrom(const Stream: TStream);
    procedure XORScriptIn(var Stream: TStream);

    procedure WriteHeaderTo(const Stream: TStream);
  public
    constructor Create; virtual;
    constructor CreateFrom(const Stream: TStream);
    destructor Destroy; override;

    property ObjVersion: Byte read FObjVersion write FObjVersion;
    property ObjFileName: WideString read FObjFileName;
    property XORTable: TMjObjXORTable read FXORTable write FXORTable;
    function IsEmpty: Boolean;

    procedure LoadObjectFromFile(const FileName: WideString);
    procedure LoadObjectFrom(const Stream: TStream);  // from current pos.
    procedure LoadScriptFrom(const Stream: TStream);  // same here.

    procedure SaveObjectToFile(const FileName: WideString);
    procedure SaveObjectTo(const Stream: TStream);
    procedure SaveScriptTo(const Stream: TStream);
    procedure DumpScriptToFile(const FileName: WideString);
    procedure DumpScriptTo(const Stream: TStream);

    function DumpInfo: String;  // debug method.
  end;

  TMajiroObjScripter = class (TMajiroObj)
  protected
    GlobalShift: Integer;

    function FunctionType: TMjObjFunctionType; virtual;
    procedure Append(const Line: WideString; const Stream: TStream);

    function ParseLine(Line: WideString; Share: DWord): Boolean;

    procedure UpdateBytecodeAt(Offset: DWord; const OldByteCount, NewByteCount: DWord;
      const JumpIndex: TJumpIndex);
    procedure AdjustSpaceAt(const Offset: DWord; const Delta: Integer);
      procedure UpdateLineAt(Offset: DWord; const NewLine: WideString; const JumpIndex: TJumpIndex);
      function PrepareTransLine(Str: WideString): WideString;
      function UnescapeTransLine(const Str: String): String;
        function FindSpecSeq(const Str: String; StrIndex: Word; out Special: String): Integer;
      procedure RemoveLineBreakAt(Offset: DWord; const JumpIndex: TJumpIndex);
  public
    MaxLineLength: Word; // inclusive. min length is 1 (incl.)
    UTF8_Encoded: Boolean;
    HexOffsets: Boolean;
    WrapLineLength: Word;

    constructor Create; override;

    function ExportTextsToFile(const FileName: WideString): DWord;
    function ExportTextsTo(const Stream: TStream): DWord;  // returns number of lines exported.
    function ImportTextsFromFile(const FileName: WideString; const JumpIndex: TJumpIndex): DWord;
    function ImportTextsFrom(const Stream: TStream; const JumpIndex: TJumpIndex): DWord;  // returns number of lines imported.
  end;

const
  MjObj_X = 1;  // encrypted
    MjObj_X_Sign: TMjObjSignature = 'MajiroObjX1.000'#0;
  MjObj_V = 2;  // decrypted   - this seems to be the only difference between X and V.
    MjObj_V_Sign: TMjObjSignature = 'MajiroObjV1.000'#0;

type
  TTextCmd = array[0..5] of Char;
const
  TextCmdPreface: Word = $0841;
  LineBreakCmd: TTextCmd = (#$42, #$08, #$02, #$00, #$6E, #$00);
  PauseCmd: TTextCmd = (#$42, #$08, #$02, #$00, #$70, #$00);
  ClearCmd: TTextCmd = (#$42, #$08, #$02, #$00, #$77, #$00);

const
  LineBrSeq = '|';
  PauseAndClearSeq = '~p+clr~';

implementation

uses JReconv, MajiroCommon, DateUtils, StrUtils;

{ TMajiroObj }

constructor TMajiroObj.CreateFrom(const Stream: TStream);
begin
  Create;
  LoadObjectFrom(Stream);
end;

constructor TMajiroObj.Create;
begin
  FScript := TMemoryStream.Create;
  FObjVersion := MjObj_X;
  FXORTable := MjObj_X_XORTable;
end;

destructor TMajiroObj.Destroy;
begin
  FScript.Free;
  inherited;
end;

procedure TMajiroObj.LoadObjectFromFile(const FileName: WideString);
var
  F: TFileStreamW;
begin
  F := TFileStreamW.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    LoadObjectFrom(F);
    FObjFileName := FileName;
  finally
    F.Free;
  end;
end;

procedure TMajiroObj.LoadObjectFrom(const Stream: TStream);
begin
  FObjFileName := '<' + Stream.ClassName + '>';

  ReadHeaderFrom(Stream);
  FScriptBeginning := Stream.Position;
  LoadScriptFrom(Stream);
end;

procedure TMajiroObj.LoadScriptFrom(const Stream: TStream);
var
  AvailSize: DWord;
begin
  AvailSize := Stream.Size - Stream.Position;
  if AvailSize <> FScriptSize then
    raise EMjObjWrongScriptSize.CreateFmt('Majiro object''s script size should be exactly %d but it was %d.',
                                          [FScriptSize, AvailSize]);

  FScript.Size := FScriptSize;
  FScript.Position := 0;
  FScript.CopyFrom(Stream, FScriptSize);

  if FObjVersion = MjObj_X then
    XORScriptIn(FScript);
end;

procedure TMajiroObj.ReadHeaderFrom(const Stream: TStream);
var
  Signature: TMjObjSignature;
  OffsetCount: DWord;
begin
  Stream.ReadBuffer(Signature[0], SizeOf(Signature));

  if Signature = MjObj_X_Sign then
    FObjVersion := MjObj_X
    else if Signature = MjObj_V_Sign then
      FObjVersion := MjObj_V
      else
        raise EMjObjInvalidArcSign.Create('Invalid Majiro object signature: ' + Signature);

  Stream.ReadBuffer(FEntryPoint, 4);
  Stream.ReadBuffer(FSkipFlag, 4);

  Stream.ReadBuffer(OffsetCount, 4);
  SetLength(FOffsets, OffsetCount);
  Stream.ReadBuffer(FOffsets[0], OffsetCount * 8);

  Stream.ReadBuffer(FScriptSize, 4);
end;

procedure TMajiroObj.XORScriptIn(var Stream: TStream);
var
  XORed: TStream;
  LastBytes: Byte;

  procedure XOR_Bytes(const Count: Byte);
  var
    DW, Key: DWord;
  begin
    Key := PDWord( @FXORTable[ Stream.Position mod 1024 ] )^;

    Stream.ReadBuffer(DW, Count);
      DW := DW xor Key;
    XORed.WriteBuffer(DW, Count);
  end;
begin
  // I'm using two streams because it's faster to read-modify-write then to read-modify-seek_back-write.
  XORed := TMemoryStream.Create;

  try
    XORed.Size := Stream.Size;

    Stream.Position := 0;
    LastBytes := Stream.Size mod 4;

    while Stream.Position < Stream.Size - LastBytes do
      XOR_Bytes(4);

    XOR_Bytes(LastBytes);

    if (XORed.Size <> Stream.Size) or (XORed.Position < Stream.Size) then
      raise EMajiroObj.Create('TMajiroObj.Decrypt: unexpected - different sizes.');

    Stream.Free;
    Stream := XORed;
  except
    XORed.Free;
    raise;
  end;
end;

function TMajiroObj.DumpInfo: String;
  function GetEmpty: String;
  begin
    if IsEmpty then
      Result := 'Empty '
      else
        Result := '';
  end;

  function WhichXORTable: String;
  begin
    if FObjVersion = MjObj_X then
      if FXORTable = MjObj_X_XORTable then
        Result := 'Is encrypted using standard XOR table.'
        else
          Result := 'Is encrypted using not standard XOR table.'
      else
        Result := '(Not encrypted)';
  end;

const
  EOLN = #13#10;
  Version2Str: array[MjObj_X..MjObj_V] of Char = ('X', 'V');
var
  I: Integer;
begin
  Result := Format(
    '%s' + 'Majiro %s object' + EOLN +
    '  %s' +  EOLN +
    EOLN +
    'Header:' + EOLN +
    '  Skip flag is %d; Entry point is at %xh;' + EOLN +
    '  Script bytecode length is %d bytes.' + EOLN +
    EOLN,
    [ GetEmpty, Version2Str[FObjVersion], WhichXORTable, FSkipFlag, FEntryPoint, FScriptSize ]
  );

  if Length(FOffsets) = 0 then
    Result := Result + 'Offset table in empty.'
    else
    begin
      Result := Result + 'Offset table:' + EOLN;

      for I := 0 to Length(FOffsets) - 1 do
        with FOffsets[I] do
          Result := Result + Format( '  %2d. %.5x  /%.8x/' + EOLN, [I + 1, Offset, Unk] );
    end;
end;

function TMajiroObj.IsEmpty: Boolean;
begin
  Result := (FScript = NIL) or (FScript.Size = 0);
end;

procedure TMajiroObj.AssureNotEmpty;
begin
  if IsEmpty then
    raise EMjObjEmptyScript.CreateFmt('%s operation failed because the script was empty.', [ClassName]);
end;

procedure TMajiroObj.SaveObjectTo(const Stream: TStream);
begin
  WriteHeaderTo(Stream);
  SaveScriptTo(Stream);
end;

procedure TMajiroObj.WriteHeaderTo(const Stream: TStream);
var
  OffsetCount: DWord;
begin
  if FObjVersion = MjObj_X then
    Stream.WriteBuffer( MjObj_X_Sign[0], SizeOf(MjObj_X_Sign) )
    else if FObjVersion = MjObj_V then
      Stream.WriteBuffer( MjObj_V_Sign[0], SizeOf(MjObj_V_Sign) )
      else
        raise EMajiroObj.CreateFmt('TMajiroObj.WriteHeaderTo encountered invalid ObjVersion set (%d).', [FObjVersion]);

  Stream.WriteBuffer(FEntryPoint, 4);
  Stream.WriteBuffer(FSkipFlag, 4);

  OffsetCount := Length(FOffsets);
  Stream.WriteBuffer(OffsetCount, 4);
  Stream.WriteBuffer(FOffsets[0], OffsetCount * 8);

  Stream.WriteBuffer(FScriptSize, 4);
  if FScriptSize <> FScript.Size then
    raise EMajiroObj.Create('TMajiroObj.WriteHeaderTo: unexpected - FScriptSize <> FScript.Size.');
end;

procedure TMajiroObj.SaveObjectToFile(const FileName: WideString);
var
  F: TFileStreamW;
begin
  F := TFileStreamW.Create(FileName, fmCreate);
  try
    SaveObjectTo(F);
  finally
    F.Free;
  end;
end;

procedure TMajiroObj.SaveScriptTo(const Stream: TStream);
var
  Script: TStream;
begin
  Script := TMemoryStream.Create;
  try
    Script.Size := FScript.Size;
    Script.Position := 0;

    DumpScriptTo(Script);
    if FObjVersion = MjObj_X then
      XORScriptIn(Script);

    Stream.CopyFrom(Script, 0);
  finally
    Script.Free;
  end;
end;

procedure TMajiroObj.DumpScriptToFile(const FileName: WideString);
var
  F: TFileStreamW;
begin
  F := TFileStreamW.Create(FileName, fmCreate);
  try
    DumpScriptTo(F);
  finally
    F.Free;
  end;
end;

procedure TMajiroObj.DumpScriptTo(const Stream: TStream);
begin
  Stream.CopyFrom(FScript, 0);
end;

{ TMajiroObjScripter }

constructor TMajiroObjScripter.Create;
begin
  inherited;
  MaxLineLength := 1500;
  UTF8_Encoded := True;
  HexOffsets := True;
  WrapLineLength := 60;
end;

function TMajiroObjScripter.ExportTextsToFile(const FileName: WideString): DWord;
const
  EOLN = #13#10;
var
  F: TFileStreamW;
begin
  F := TFileStreamW.Create(FileName, fmCreate);
  try
    Append('// Export of ' + ExtractFileName(FObjFileName) + ' by the MjArc v1/v2 tool {http://VN.i-forge.net/tools}', F);
    Append(EOLN + EOLN, F);

    Result := ExportTextsTo(F);
  finally
    F.Free;
  end;
end;

function TMajiroObjScripter.ExportTextsTo(const Stream: TStream): DWord;
  function OffsetString(Offset: DWord = 0): WideString;
  begin
    if Offset = 0 then
      Offset := FScript.Position;
    Inc(Offset, FScriptBeginning);

    if HexOffsets then
      Result := '$' + IntToHex(Offset, 4)
      else
        Result := IntToStr(Offset);
  end;

const
  EOLN = #13#10;
  Margin = 20;  // last XX bytes which are unlikely to contain any text. is used to avoid endless cycling.
var
  Offset, StrLength: DWord;
  Line: WideString;
  LineBreakEncountered: Boolean;
begin
  AssureNotEmpty;

  Result := 0;
  FScript.Position := 0;
  LineBreakEncountered := False;

  while FScript.Position < FScript.Size - Margin do
    case FunctionType of
    mofMessage:
      begin
        FScript.ReadBuffer(StrLength, 2);
        if (StrLength and $FFFF) in [2..MaxLineLength] then
        begin
          Offset := FScript.Position;

          Line := JIS2Wide( ReadShiftJIS_Z(FScript) );
          if (Length(Line) in [2..MaxLineLength]) and (Line <> '  ') then
          begin
            Append( WideFormat( '<%s> %s=' + EOLN, [OffsetString(Offset), Line] ), Stream );
            Inc(Result);
          end;
        end;
      end;

    mofLineBreak:
      begin
        if not LineBreakEncountered then
        begin
          Append('  // The following is a line break. If the line is kept the break will be *removed*.' + EOLN, Stream);
          LineBreakEncountered := True;
        end;

        Append('  BR @ ' + OffsetString + EOLN, Stream);
      end;
    end;
end;

function TMajiroObjScripter.FunctionType: TMjObjFunctionType;
var
  W: Word;
  LineBreakBuf: TTextCmd;
begin
  Result := mofUnknown;
  FScript.ReadBuffer(W, 2);

    if (W = $0840) or (W = $0801) then
      Result := mofMessage
      else if W = TextCmdPreface then
      begin
        FScript.ReadBuffer(LineBreakBuf[0], Length(LineBreakBuf));
        if LineBreakBuf = LineBreakCmd then
          Result := mofLineBreak
          else
            FScript.Seek(-6, soFromCurrent);
      end;

  if Result = mofUnknown then
    FScript.Seek(-1, soFromCurrent);
end;

procedure TMajiroObjScripter.Append(const Line: WideString; const Stream: TStream);
var
  UTF8: String;
begin
  if UTF8_Encoded then
  begin
    UTF8 := UTF8Encode(Line);
    Stream.WriteBuffer(UTF8[1], Length(UTF8));
  end
    else
      Stream.WriteBuffer(Line[1], Length(Line) * 2);
end;

function TMajiroObjScripter.ImportTextsFromFile(const FileName: WideString; const JumpIndex: TJumpIndex): DWord;
type
  TBOM = array[0..2] of Char;
const
  UTF8_BOM: TBOM = (#$EF, #$BB, #$BF);
var
  F: TFileStreamW;
  BOM: TBOM;
begin
  F := TFileStreamW.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    F.Read(BOM[0], SizeOf(BOM));
    if BOM <> UTF8_BOM then
      F.Position := 0;

    Result := ImportTextsFrom(F, JumpIndex);
  finally
    F.Free;
  end;
end;

type
  PImportShare = ^TImportShare;
  TImportShare = record
    ImportedCount: PDWord;
    JumpIndex: TJumpIndex;
  end;

function TMajiroObjScripter.ImportTextsFrom(const Stream: TStream; const JumpIndex: TJumpIndex): DWord;
var
  UTF8: String;
  Texts: WideString;
  Share: TImportShare;
begin
  AssureNotEmpty;

  if UTF8_Encoded then
  begin
    SetLength(UTF8, Stream.Size - Stream.Position);
    Stream.ReadBuffer(UTF8[1], Length(UTF8));
    Texts := UTF8Decode(UTF8);
  end
    else
    begin
      SetLength(Texts, Stream.Size div 2);
      Stream.ReadBuffer(Texts[1], Length(Texts) * 2);
    end;

  GlobalShift := -FScriptBeginning;  // convert absolute addresses in exported texts to relative.
  Result := 0;

  Share.ImportedCount := @Result;
  Share.JumpIndex := JumpIndex;
  CallOnEachLineIn( Texts, ParseLine, DWord(@Share) );
  JumpIndex.ApplyModificationsTo(FScript);
end;

function TMajiroObjScripter.ParseLine(Line: WideString; Share: DWord): Boolean;
var
  Pos: Integer;
  Offset: DWord;
begin
  Result := False;
  Line := Trim(Line);

  if Line[1] = '<' then
  begin
    Pos := PosW('>', Line);
    if Pos <> 0 then
    begin
      try
        Offset := StrToInt( Copy(Line, 2, Pos - 2) );
      except
        Exit;
      end;

      Line := Trim( Copy(Line, Pos + 1, $FFFF) );
      Pos := PosW('=', Line);
      if Pos <> 0 then
      begin
        Line := Trim( Copy(Line, Pos + 1, $FFFF) );
        if Line <> '' then
        begin
          UpdateLineAt(Offset, Line, PImportShare(Share)^.JumpIndex);
          Inc( PImportShare(Share)^.ImportedCount^ );
        end;
      end;
    end;
  end
    else if Copy(Line, 1, 4) = 'BR @' then
    begin
      try
        Offset := StrToInt(Trim( Copy(Line, 5, $FF) ));
      except
        Exit;
      end;

      RemoveLineBreakAt(Offset, PImportShare(Share)^.JumpIndex);
    end;
end;

procedure TMajiroObjScripter.UpdateLineAt(Offset: DWord; const NewLine: WideString;
  const JumpIndex: TJumpIndex);
const
  JpnFullWidthSpace = #$81#$40;
var
  RealOffset: DWord;
  OldLine, JIS: String;
begin
  if NewLine = '-' then
    JIS := JpnFullWidthSpace
    else
      JIS := Wide2JIS( PrepareTransLine(NewLine) );

    JIS := UnescapeTransLine(JIS);

  RealOffset := Offset + GlobalShift;
    FScript.Position := RealOffset;
    OldLine := ReadShiftJIS_Z(FScript);

  // 2 for old string length, 1 for terminating #0.
  UpdateBytecodeAt(Offset - 2, 2 + Length(OldLine) + 1, Length(JIS), JumpIndex);

  // "-2": to write over old Length Word, it's prepended by UnescapeLIneBreaks.
  FScript.Position := RealOffset - 2;
  FScript.WriteBuffer(JIS[1], Length(JIS));
end;

  function TMajiroObjScripter.PrepareTransLine(Str: WideString): WideString;
  var
    BrCtr, Pos: Word;
  begin
    Result := WrapText(Str, LineBrSeq, WrapLineLength);

    Pos := 0;
    BrCtr := 0;

    while True do
    begin
      Pos := PosW(LineBrSeq, Result, Pos + 1);
        if Pos = 0 then break;

      Inc(BrCtr);
      if BrCtr >= 3 then
      begin
        Result := Copy(Result, 1, Pos - 1) + PauseAndClearSeq + Copy(Result, Pos + 1, $FFFF);
        Inc(Pos, Length(PauseAndClearSeq) - Length(LineBrSeq));

        BrCtr := 0;
      end;
    end;
  end;

  function TMajiroObjScripter.UnescapeTransLine(const Str: String): String;
    function SetBytecode(const Bytecode: TTextCmd): String;
    begin
      Result := Chr(Lo(TextCmdPreface)) + Chr(Hi(TextCmdPreface));
        SetLength(Result, 2 + Length(Bytecode));
        Move( Bytecode[0], Result[3], Length(Bytecode) );
    end;

  const
    MessageCmd = #$40#$08;
  var
    BRBytecode, PauseBytecode, ClearBytecode: String;
    Line, Special: String;
    StrIndex, SpecPos: Word;
    IsFirstString: Boolean;
  begin
    BRBytecode := SetBytecode(LineBreakCmd);
    PauseBytecode := SetBytecode(PauseCmd);
    ClearBytecode := SetBytecode(ClearCmd);

    Result := '';
      StrIndex := 1;
      IsFirstString := True;

    repeat
      SpecPos := FindSpecSeq(Str, StrIndex, Special);

      Line := Copy(Str, StrIndex, SpecPos - StrIndex) + #0;
        // for the first string we need to use message cmd already present in the script.
        if (Line <> #0) or IsFirstString then
        begin
          if not IsFirstString then
            Result := Result + MessageCmd;

          Result := Result + Chr(Lo( Word(Length(Line)) )) + Chr(Hi( Word(Length(Line)) ))
                           + Line;
        end;

      if SpecPos <> $FFFF then
        if (Special = LineBrSeq) or (Special = '\n') then
          Result := Result + BRBytecode
          else if Special = '~p~' then
            Result := Result + PauseBytecode
            else if Special = '~clr~' then
              Result := Result + ClearBytecode
              else if Special = '~p+clr~' then
                Result := Result + PauseBytecode + ClearBytecode;

      StrIndex := SpecPos + Length(Special);
        IsFirstString := False;
    until SpecPos = $FFFF;
  end;

    function TMajiroObjScripter.FindSpecSeq(const Str: String; StrIndex: Word; out Special: String): Integer;
    const
      Specials: array[0..4] of String = (LineBrSeq, '\n', '~p~', '~clr~', PauseAndClearSeq);
    var
      I: Byte;
      SpecPos: Word;
    begin
      Result := $FFFF;

      for I := 0 to Length(Specials) - 1 do
      begin
        SpecPos := PosEx(Specials[I], Str, StrIndex);
        if (SpecPos <> 0) and (SpecPos < Result) then
        begin
          Special := Specials[I];
          Result := SpecPos;
        end;
      end;
    end;

procedure TMajiroObjScripter.RemoveLineBreakAt(Offset: DWord; const JumpIndex: TJumpIndex);
var
  CmdLength: Byte;
begin
  CmdLength := SizeOf(TextCmdPreface) + Length(LineBreakCmd);

   // see ExportTextsTo & FunctionType - exported offset is after the command.
  Dec(Offset, CmdLength);
    UpdateBytecodeAt(Offset, CmdLength, 0, JumpIndex);
end;

procedure TMajiroObjScripter.UpdateBytecodeAt(Offset: DWord; const OldByteCount, NewByteCount: DWord;
  const JumpIndex: TJumpIndex);
var
  Delta: Integer;
begin
  Inc(Offset, GlobalShift);
  Delta := NewByteCount - OldByteCount;

  FScript.Position := Offset;
  InsertSpaceIn(FScript, NewByteCount, OldByteCount);
  AdjustSpaceAt(Offset, Delta);

  Inc(GlobalShift, Delta);
  JumpIndex.ModifyStrAt(Offset, Delta);
  JumpIndex.ShiftJumpsBefore(Offset, Delta);
end;

procedure TMajiroObjScripter.AdjustSpaceAt(const Offset: DWord; const Delta: Integer);
var
  I: Integer;
begin
  if Delta <> 0 then
  begin
    if FEntryPoint > Offset then
      Inc(FEntryPoint, Delta);
    Inc(FScriptSize, Delta);

    for I := 0 to Length(FOffsets) - 1 do
      if FOffsets[I].Offset > Offset then
        Inc(FOffsets[I].Offset, Delta);
  end;
end;

end.
