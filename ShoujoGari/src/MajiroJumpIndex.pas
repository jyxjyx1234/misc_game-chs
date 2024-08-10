unit MajiroJumpIndex;   // newer than CSX_JumpIndex. todo: replace csx's ji with this.

interface

{ This unit is standalone, with an exception of FileStreamW. }

uses Windows, SysUtils, Classes, FileStreamW;

type
  TBytes = array of Byte;

  EJumpIndex = class (Exception)
  end;

  TJump = record
    FuncName: TBytes;
    Offset: DWord;
    OffsetDelta: Integer;          // todo: remove, it's not used
    DistanceParamOffset: Integer;  // FuncName ... [dw] Distance  -  "..." is this field, in bytes.
    Distance: Integer;             // current jump distance; abs. offset in a script = Offset + Distance
    Flags: DWord;                  // specific care to take about this particular jump, if needed.
    Modified: Boolean;
  end;

const
  JumpRecordSize = 20;  // Excluding FuncName and Modified.

type
  TJumpIndex = class
  protected
    FJumpCount: Integer;
    FJumps: array[0..$2FFFD] of TJump;

    function GetJump(Index: Integer): TJump;

    function IsFirstCharOfAJump(Opcode: Word): Boolean;
    function TryAddingJumpAt(Bytecode: TStream): Boolean;
    function AreBytesEqual(First, Second: Pointer; Size: DWord): Boolean;
    procedure AddJump(AFuncName: TBytes; AOffset: DWord; ADistanceParamOffset,
      ADistance: Integer; AFlags: DWord = 0);
    function FindNearestJumpAt(Offset: DWord): Integer;
  public
    constructor Create;

    procedure Clear;
    procedure CollectFrom(Bytecode: TStream; UpToOffset: DWord);
    procedure ModifyStrAt(Offset: DWord; Delta: Integer);
    procedure ShiftJumpsBefore(Offset: DWord; Delta: Integer);
    function ApplyModificationsTo(Bytecode: TStream): DWord;

    function FindWrappingJumpOf(Offset, StartFrom: DWord): Integer;
    property Count: Integer read FJumpCount;
    property Jump[Index: Integer]: TJump read GetJump; default;
    function TextDump: WideString;  // debug method.

    procedure SaveTo(FileName: WideString); overload;
    procedure SaveTo(Stream: TStream); overload;
    procedure LoadFrom(FileName: WideString); overload;
    procedure LoadFrom(Stream: TStream); overload;
  end;

implementation

const
  SavedSignature: array[0..3] of Char = 'JIxT';
  MaxDistance = $7FFF;
  JumpFlag_WriteAsNegative = 1;

{ TJumpIndex }

constructor TJumpIndex.Create;
begin
  Clear;
end;

procedure TJumpIndex.Clear;
begin
  FJumpCount := 0;
end;

procedure TJumpIndex.CollectFrom(Bytecode: TStream; UpToOffset: DWord);
var
  Ch: DWord;
  OldPos: DWord;
begin
  if UpToOffset > Bytecode.Size - 20 then
    UpToOffset := Bytecode.Size - 20;

  while Bytecode.Position < UpToOffset do
  begin
    Bytecode.ReadBuffer(Ch, 2);

    OldPos := Bytecode.Position - 1;

    if IsFirstCharOfAJump(Ch) then
    begin
      if not TryAddingJumpAt(Bytecode) then
        Bytecode.Position := OldPos;
    end
      else
        Bytecode.Position := OldPos;
  end;
end;

  function TJumpIndex.IsFirstCharOfAJump(Opcode: Word): Boolean;
  const
    // Most of opcodes got from Haeleth's mjdev toolkit. Thanks for his great decompilation work!
    // (c) http://dev.haeleth.net/majiro.shtml
    JumpOpcodes: array[0..9] of DWord = ($082c {goto},   $082d {jmp82d}, $082e {jmp82e},
                                         $0831 {jne},    $0832 {jmp832}, $0838 {jmp838},
                                         $0839 {jmp839}, $083b {jmp83b}, $083d {jmp83d},
                                         $0843 {jmp843});
  var
    I: Byte;
  begin
    for I := 0 to Length(JumpOpcodes) - 1 do
      if Opcode = JumpOpcodes[I] then
      begin
        Result := True;
        Exit;
      end;

    Result := False;
  end;

function TJumpIndex.TryAddingJumpAt(Bytecode: TStream): Boolean;
var
  Distance: Integer;
  FuncName: TBytes;
  JumpOpcode: Word;
begin
  Result := True;

  Bytecode.Seek(-2, soFromCurrent);
  Bytecode.ReadBuffer(JumpOpcode, 2);

  Bytecode.ReadBuffer(Distance, 4);
  // Jump for 0 distance doesn't seem to make sense but it exists in Katahane scripts, for example.
  // Jumps with negative distance (i.e. backwards) exists and are allowed.
  if (Distance <> 0) and ((Distance < MaxDistance) or (-Distance < MaxDistance)) then
  begin
    SetLength(FuncName, 14);
      Move(WideString('Jump'), FuncName[0], 8);
      Move(WideString( IntToHex(JumpOpcode, 3) )[1], FuncName[8], 6);

    AddJump( FuncName, Bytecode.Position - 4, 0, Distance );
  end;
end;

procedure TJumpIndex.AddJump(AFuncName: TBytes; AOffset: DWord; ADistanceParamOffset,
  ADistance: Integer; AFlags: DWord = 0);
var
  Index: Integer;

  procedure InsertBlankJump;
  var
    I: Integer;
    Temp: TJump;
  begin
    for I := FJumpCount - 1 downto Index + 1 do
    begin
      Temp := FJumps[I];
      FJumps[I] := FJumps[I - 1];
      FJumps[I - 1] := Temp;
    end;
  end;

  procedure RevertBackwardJump;
  var
    OldFuncNameLength: Integer;
  begin
    OldFuncNameLength := Length(AFuncName);
    SetLength(AFuncName, OldFuncNameLength + 12);
    Move(WideString('-backw'), AFuncName[OldFuncNameLength], 12);

    ADistance := -ADistance;
    Dec(AOffset, ADistance);
    Inc(ADistanceParamOffset, ADistance);

    AFlags := AFlags or JumpFlag_WriteAsNegative;
  end;

begin
  if ADistance = 0 then
    Exit
    else if ADistance < 0 then
      RevertBackwardJump;

  Index := FindNearestJumpAt(AOffset);
  if (Index <> -1) and (FJumps[Index].Offset = AOffset)
     and (FJumps[Index].DistanceParamOffset = ADistanceParamOffset) then
    Exit;

  Inc(FJumpCount);
  if FJumpCount >= Length(FJumps) then
    raise EJumpIndex.Create('Too many jumps in this script!');

  if Index = -1 then
    Index := FJumpCount - 1
    else
      InsertBlankJump;

  with FJumps[Index] do
  begin
    SetLength(FuncName, Length(AFuncName));
    Move(AFuncName[0], FuncName[0], Length(AFuncName));

    Offset := AOffset;
    OffsetDelta := 0;
    DistanceParamOffset := ADistanceParamOffset;
    Distance := ADistance;
    Flags := AFlags;
    Modified := False;
  end;
end;

function TJumpIndex.AreBytesEqual(First, Second: Pointer; Size: DWord): Boolean;
var
  I: DWord;
begin
  Result := True;
  I := 0;
  while (I < Size) and Result do
  begin
    Result := PByte( DWord(First) + I )^ = PByte( DWord(Second) + I )^;
    Inc(I)
  end
end;

procedure TJumpIndex.SaveTo(FileName: WideString);
var
  F: TFileStreamW;
begin
  F := TFileStreamW.Create(FileName, fmCreate);
  try
    SaveTo(F);
  finally
    F.Free;
  end;
end;

procedure TJumpIndex.SaveTo(Stream: TStream);
  procedure UnicodeWrite(const Str: TBytes; Stream: TStream);
  var
    Len: DWord;
  begin
    Len := Length(Str) div 2;
    Stream.WriteBuffer(Len, 4);
    Stream.WriteBuffer(Str[0], Len * 2);
  end;

var
  I: Integer;
begin
  Stream.WriteBuffer(SavedSignature[0], 4);
  Stream.WriteBuffer(FJumpCount, 4);

  for I := 0 to FJumpCount - 1 do
  begin
    UnicodeWrite(FJumps[I].FuncName, Stream);
    Stream.WriteBuffer( FJumps[I].Offset, JumpRecordSize );
  end;
end;

procedure TJumpIndex.LoadFrom(FileName: WideString);
var
  F: TFileStreamW;
begin
  F := TFileStreamW.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    LoadFrom(F);
  finally
    F.Free;
  end;
end;

procedure TJumpIndex.LoadFrom(Stream: TStream);
  function UnicodeRead: TBytes;
  var
    Length: DWord;
  begin
    Stream.ReadBuffer(Length, 4);
    SetLength(Result, Length * 2);
    Stream.ReadBuffer(Result[0], Length * 2)
  end;

var
  Sign: array[0..3] of Char;
  I: Integer;
begin
  CLear;

  Stream.ReadBuffer(Sign[0], 4);
  if Sign <> SavedSignature then
    raise EJumpIndex.Create('The jump index file is corrupted.');

  Stream.ReadBuffer(I, 4);
  FJumpCount := I;

  for I := 0 to FJumpCount - 1 do
  begin
    FJumps[I].FuncName := UnicodeRead;
    Stream.ReadBuffer( FJumps[I].Offset, JumpRecordSize );
    FJumps[I].Modified := False;
  end;
end;

procedure TJumpIndex.ModifyStrAt(Offset: DWord; Delta: Integer);
var
  Index: Integer;
begin
  Index := 0;
  repeat
    Index := FindWrappingJumpOf(Offset, Index);
    if Index <> -1 then
    begin
      Inc(FJumps[Index].Distance, Delta);
      FJumps[Index].Modified := True;
      Inc(Index);
    end;
  until Index = -1;
end;

function TJumpIndex.FindWrappingJumpOf(Offset, StartFrom: DWord): Integer;
begin
  for Result := StartFrom to FJumpCount - 1 do
    if (FJumps[Result].Offset <= Offset) and (FJumps[Result].Distance > 0) and
       (FJumps[Result].Offset + DWord(FJumps[Result].Distance) >= Offset) then
      Exit
      else if FJumps[Result].Offset > Offset then
        // since the index is sorted (ascending) we're sure that
        // the following offsets won't match.
        Break;

  Result := -1;
end;

function TJumpIndex.FindNearestJumpAt(Offset: DWord): Integer;
begin
  for Result := 0 to FJumpCount - 1 do
    if FJumps[Result].Offset >= Offset then
      Exit;

  Result := -1;
end;

procedure TJumpIndex.ShiftJumpsBefore(Offset: DWord; Delta: Integer);
var
  I: Integer;
begin
  for I := 0 to FJumpCount - 1 do
    if FJumps[I].Offset >= Offset then
    begin
      for Offset := I to FJumpCount - 1 do
        Inc(FJumps[Offset].Offset, Delta);
      Break;
    end
      else if FJumps[I].Offset + FJumps[I].DistanceParamOffset > Offset then
        Inc(FJumps[I].DistanceParamOffset, Delta);
end;

function TJumpIndex.ApplyModificationsTo(Bytecode: TStream): DWord;
var
  I, DistanceToWrite: Integer;
begin
  Result := 0;

  for I := 0 to FJumpCount - 1 do
  begin
    with FJumps[I] do
      if Modified then
      begin
        Bytecode.Position := Integer(Offset) + OffsetDelta + DistanceParamOffset;

        if Distance <= 0 then
          raise EJumpIndex.Create('ApplyModificationsTo: unexpected - Distance <= 0');

        if Flags and JumpFlag_WriteAsNegative <> 0 then
          DistanceToWrite := -Distance
          else
            DistanceToWrite := Distance;
            
        Bytecode.WriteBuffer(DistanceToWrite, 4);

        Inc(Result);
      end;
  end;
end;

function TJumpIndex.TextDump: WideString;
  function Bytes2WideString(const Bytes: TBytes): WideString;
  begin
    SetLength(Result, Length(Bytes) div 2);
    Move(Bytes[0], Result[1], Length(Bytes));
  end;

const
  EOLN = #13#10;
var
  I, Diff: Integer;
begin
  if FJumpCount = 0 then
    Result := Result + 'Empty index.'
    else
    begin
      for I := 0 to FJumpCount - 1 do
        with FJumps[I] do
        begin
          if I = 0 then
            Diff := 0
            else
              Diff := Offset - FJumps[I - 1].Offset;

          Result := Result + WideFormat('  %3d. %-15s /%-4d = %.8x .. %.5x %29d',
                                        [I + 1, Bytes2WideString(FuncName), DistanceParamOffset,
                                        Offset, Distance, Diff]);

          if Modified then
            Result := Result + ' [M*]';

          Result := Result + EOLN;
        end;

      Result := Result + '_____________' + EOLN +
                         'End of index.';
    end;
end;

function TJumpIndex.GetJump(Index: Integer): TJump;
begin
  Result := FJumps[Index];
end;

end.
