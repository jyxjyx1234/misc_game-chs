unit MajiroArc;

interface

uses Classes, WIndows, SysUtils, FileStreamW;

type
  TMjArcSignature = array[0..15] of Char;

  EMajiroArc = class (Exception)
  end;
    EMjArcInvalidArcSign = class (EMajiroArc)
    end;
    EMjArcTooManyFiles = class (Exception)
    end;
    EMjArcWrongFileIndex = class (Exception)
    end;

  TMajiroFile = packed record
    FileName: WideString;
    Hash: DWord;
    Offset, Size: DWord;
    Hash_v3: Int64;
  end;

  TMajiroArc = class
  protected
    FStream: TStream;
    FArcFileName: WideString;

    FArcVersion: Byte;  // 1 or 2
    FOffsets: record
      FileNames: DWord;
      Data: DWord;
    end;

    FCount: Integer;
    FFiles: array[0..$2FFFD] of TMajiroFile;

    procedure CheckCount; 
    function MatchFile(const Index: Integer; const FileMask: WideString): Boolean;

    procedure ReadHeader;
    procedure ReadFAT_v1;
    procedure ReadFAT_v2;
    procedure ReadFAT_v3;
    procedure ReadFileNames;

    procedure AdjustSpaceAt(const Offset: DWord; const Delta: Integer);
    procedure WriteHeader;
    procedure WriteFAT;
    procedure WriteFileNames;

    function GetFile(Index: Integer): TMajiroFile;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Close;

    procedure Open(const Archive: WideString; const Access: Word = fmOpenRead or fmShareDenyWrite); overload;
    procedure Open(const Stream: TStream); overload;
    property ArcVersion: Byte read FArcVersion;
    property ArcFileName: WideString read FArcFileName;
    property Files[Index: Integer]: TMajiroFile read GetFile; default;
    property Count: Integer read FCount;

    procedure ExtractToFile(const IntoFile, ArcFile: WideString); overload;
    procedure ExtractToFile(const IntoFile: WideString; const ArcFileIndex: Integer); overload;
    function Extract(const FileName: WideString): TStream; overload;
    function Extract(const Index: Integer): TStream; overload;

    procedure ReplaceWithFile(const WithFile, ArcFile: WideString); overload;
    procedure ReplaceWithFile(const WithFile: WideString; const ArcFileIndex: Integer); overload;
    procedure ReplaceWith(const NewStream: TStream; const ArcFile: WideString); overload;
    procedure ReplaceWith(const NewStream: TStream; const ArcFileIndex: Integer); overload;

    function FileIndexByName(const FileName: WideString): Integer;
    function TextDump(FileMask: WideString = ''): WideString;  // debug method.
  end;

const
  MjArc_Closed = Byte(-1);

  MjArc_v1 = 1;
    MjArc_v1_Sign: TMjArcSignature = 'MajiroArcV1.000'#0;
  MjArc_v2 = 2;
    MjArc_v2_Sign: TMjArcSignature = 'MajiroArcV2.000'#0;
  MjArc_v3 = 3;
    MjArc_v3_Sign: TMjArcSignature = 'MajiroArcV3.000'#0;

implementation

uses JReconv, MajiroCommon;

{ TMajiroArc }

constructor TMajiroArc.Create;
begin
  FStream := NIL;
  Close;
end;               

destructor TMajiroArc.Destroy;
begin
  Close;
  inherited;
end;

procedure TMajiroArc.Close;
begin
  FCount := 0;
  FArcVersion := MjArc_Closed;
  FArcFileName := '';

  if FStream <> NIL then
    FreeAndNIL(FStream);
end;

procedure TMajiroArc.Open(const Archive: WideString; const Access: Word = fmOpenRead or fmShareDenyWrite);
begin
  Open( TFileStreamW.Create(Archive, Access) );
  FArcFileName := Archive;
end;

procedure TMajiroArc.Open(const Stream: TStream);
begin
  Close;
  FStream := Stream;
  FArcFileName := '<' + Stream.ClassName + '>';

  try
    ReadHeader;

    if FArcVersion = MjArc_v1 then
      ReadFAT_v1
      else if FArcVersion = MjArc_v2 then
        ReadFAT_v2
        else
          ReadFAT_v3;
  except
    Close;
    raise;
  end;
end;

procedure TMajiroArc.ReadHeader;
var
  Signature: TMjArcSignature;
begin
  FStream.ReadBuffer(Signature, SizeOf(Signature));

  if Signature = MjArc_v1_Sign then
    FArcVersion := MjArc_v1
    else if Signature = MjArc_v2_Sign then
      FArcVersion := MjArc_v2
      else if Signature = MjArc_v3_Sign then
        FArcVersion := MjArc_v3
        else
          raise EMjArcInvalidArcSign.Create('Invalid Majiro archive signature: ' + Signature);

  FStream.ReadBuffer(FCount, 4);
  CheckCount;

  FStream.ReadBuffer(FOffsets.FileNames, 4);
  FStream.ReadBuffer(FOffsets.Data, 4);
end;

procedure TMajiroArc.CheckCount;
begin
  if FCount > Length(FFiles) then
    raise EMjArcTooManyFiles.CreateFmt('Too many files (%d) in this Majiro archive; max count is %d.',
                                         [FCount, Length(FFiles)]);
end;

procedure TMajiroArc.ReadFAT_v1;
var
  I: Integer;
begin
  for I := 0 to FCount - 1 do
    with FFiles[I] do
    begin
      FStream.ReadBuffer(Hash, 8);

      if I > 0 then
        FFiles[I - 1].Size := Offset - FFiles[I - 1].Offset;
      if I >= FCount - 1 then
        Size := FStream.Size - Offset;
    end;

  ReadFileNames;
end;

procedure TMajiroArc.ReadFAT_v2;
var
  I: Integer;
begin
  for I := 0 to FCount - 1 do
    FStream.Read(FFiles[I].Hash, 12);

  ReadFileNames;
end;    

procedure TMajiroArc.ReadFAT_v3;
var
  I: Integer;
begin
  for I := 0 to FCount - 1 do
  begin                               
    FStream.Read(FFiles[I].Hash_v3, 8);
    FStream.Read(FFiles[I].Offset, 8);
  end;

  ReadFileNames;
end;

procedure TMajiroArc.ReadFileNames;
var
  I: Integer;
begin
  FStream.Position := FOffsets.FileNames;

  for I := 0 to FCount - 1 do
    FFiles[I].FileName := JIS2Wide( ReadShiftJIS_Z(FStream) );
end;

function TMajiroArc.TextDump(FileMask: WideString = ''): WideString;
const
  EOLN = #13#10;
var
  I: Integer;
begin
  Result := 'File table of Majiro archive v' + IntToStr(FArcVersion) + EOLN +
            StringOfChar('=', 79) + EOLN;

  if FArcFileName <> '' then
    Result := Result + WideFormat('%79s', [FArcFileName]) + EOLN;

  Result := Result + EOLN +
                     Format('  File names are at %.4x; Data starts at %.4x.',
                            [FOffsets.FileNames, FOffsets.Data]) +
                     EOLN + EOLN +
                     StringOfChar('-', 79) + EOLN;

  if FCount = 0 then
    Result := Result + 'The archive is empty.'
    else
    begin
      if FileMask = '' then
        FileMask := '*';

      for I := 0 to FCount - 1 do
        if MatchFile(I, FileMask) then
          with FFiles[I] do
            Result := Result + WideFormat(' %3d. %-15s  /%.8x/  @  %.8x .. %.5x',
                                          [I + 1, FileName, Hash, Offset, Size]) + EOLN;

      Result := Result + '__________________' + EOLN +
                         'End of file table';

      if FileMask <> '*' then
        Result := Result + ' (only file names matching "' + FileMask + '" are shown)';

      Result := Result + '.';
    end;
end;

function TMajiroArc.MatchFile(const Index: Integer; const FileMask: WideString): Boolean;
begin
  Result := MaskMatch(FFiles[Index].FileName, FileMask);
end;

function TMajiroArc.FileIndexByName(const FileName: WideString): Integer;
begin
  for Result := 0 to FCount - 1 do
    if FFiles[Result].FileName = FileName then
      Exit;

  Result := -1;
end;

procedure TMajiroArc.ExtractToFile(const IntoFile, ArcFile: WideString);
begin
  ExtractToFile( IntoFile, FileIndexByName(ArcFile) );
end;

procedure TMajiroArc.ExtractToFile(const IntoFile: WideString; const ArcFileIndex: Integer);
var
  F, ArcFile: TStream;
begin
  F := TFileStreamW.Create(IntoFile, fmCreate);
  try
    ArcFile := Extract(ArcFileIndex);
    try
      F.CopyFrom(ArcFile, 0);
    finally
      ArcFile.Free;
    end;
  finally
    F.Free;
  end;
end;

function TMajiroArc.Extract(const FileName: WideString): TStream;
begin
  Result := Extract( FileIndexByName(FileName) );
end;

function TMajiroArc.Extract(const Index: Integer): TStream;
begin
  if (Index < 0) or (Index >= FCount) then
    raise EMjArcWrongFileIndex.CreateFmt('Wrong file index (%d) passed to TMajiroArc.Extract; %d files total',
                                         [Index, FCount]);

  with FFiles[Index] do
  begin
    Result := TMemoryStream.Create;
    Result.Size := Size;
      FStream.Position := Offset;
      Result.CopyFrom(FStream, Size);
    Result.Position := 0;
  end;
end;

procedure TMajiroArc.ReplaceWithFile(const WithFile, ArcFile: WideString);
begin      
  ReplaceWithFile( WithFile, FileIndexByName(ArcFile) );
end;

procedure TMajiroArc.ReplaceWithFile(const WithFile: WideString; const ArcFileIndex: Integer);
var
  F: TFileStreamW;
begin
  F := TFileStreamW.Create(WithFile, fmOpenRead or fmShareDenyWrite);
  try
    ReplaceWith(F, ArcFileIndex);
  finally
    F.Free;
  end;
end;

procedure TMajiroArc.ReplaceWith(const NewStream: TStream; const ArcFile: WideString);
begin
  ReplaceWith( NewStream, FileIndexByName(ArcFile) );
end;

procedure TMajiroArc.ReplaceWith(const NewStream: TStream; const ArcFileIndex: Integer);
begin
  if (ArcFileIndex < 0) or (ArcFileIndex >= FCount) then
    raise EMjArcWrongFileIndex.CreateFmt('Wrong file index (%d) passed to TMajiroArc.ReplaceWith; %d files total',
                                         [ArcFileIndex, FCount]);

  with FFiles[ArcFileIndex] do
  begin
    FStream.Position := Offset;
      InsertSpaceIn(FStream, NewStream.Size, Size);
      AdjustSpaceAt(Offset, NewStream.Size - Size);
    FStream.Position := Offset;
      FStream.CopyFrom(NewStream, 0);
    Size := NewStream.Size;
  end;

  FStream.Position := 0;
  WriteHeader;
end;

procedure TMajiroArc.AdjustSpaceAt(const Offset: DWord; const Delta: Integer);
var
  I: Integer;
begin
  if Delta <> 0 then
    for I := 0 to FCount - 1 do
      if FFiles[I].Offset > Offset then
        Inc(FFiles[I].Offset, Delta);
end;

procedure TMajiroArc.WriteHeader;
var
  ArcSize: DWord;
begin
  if FArcVersion = MjArc_v1 then
    FStream.WriteBuffer(MjArc_v1_Sign, SizeOf(TMjArcSignature))
    else if FArcVersion = MjArc_v2 then
      FStream.WriteBuffer(MjArc_v2_Sign, SizeOf(TMjArcSignature))
      else if FArcVersion = MjArc_v3 then
        FStream.WriteBuffer(MjArc_v3_Sign, SizeOf(TMjArcSignature))
        else
          raise EMajiroArc.CreateFmt('TMajiroArc.WriteHeader encountered invalid ArcVersion set (%d).', [FArcVersion]);

  FStream.WriteBuffer(FCount, 4);

  FStream.WriteBuffer(FOffsets.FileNames, 4);
  FStream.WriteBuffer(FOffsets.Data, 4);

  WriteFAT;

  if FArcVersion = MjArc_v1 then
  begin
    FStream.Position := FOffsets.FileNames - 4;
    ArcSize := FStream.Size;
    FStream.WriteBuffer(ArcSize, 4);
  end;
end;

procedure TMajiroArc.WriteFAT;
var
  RecordSize: Byte;
  I: Integer;
begin
  RecordSize := 8 + 4 * (FArcVersion - 1);  // = 8 for v1, 12 for v2 and 16 for v3.

  for I := 0 to FCount - 1 do
    with FFiles[I] do
      if FArcVersion = MjArc_v3 then
      begin
        FStream.WriteBuffer(Hash_v3, 8);
        FStream.WriteBuffer(Offset, 8);
      end
        else
          FStream.WriteBuffer(Hash, RecordSize);

  WriteFileNames;
end;

procedure TMajiroArc.WriteFileNames;
var
  I: Integer;
  JIS: String;
begin
  FStream.Position := FOffsets.FileNames;

  for I := 0 to FCount - 1 do
  begin
    JIS := Wide2JIS( FFiles[I].FileName ) + #0;
    FStream.WriteBuffer(JIS[1], Length(JIS));
  end;
end;

function TMajiroArc.GetFile(Index: Integer): TMajiroFile;
begin
  if (Index < 0) or (Index >= FCount) then
    raise EMjArcWrongFileIndex.CreateFmt('Wrong file index (%d) passed to TMajiroArc.GetFile; %d files total',
                                         [Index, FCount]);

  Result := FFiles[Index];
end;

end.
