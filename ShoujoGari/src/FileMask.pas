unit FileMask;

interface

uses SysUtils, Windows;

type
  TFMStack = class
  protected
    FHeight: Integer;
    FItems: array[0..$FFFF] of record
      BasePath: WideString;
      Handle: DWord;
      Rec: TWin32FindDataW;
    end;

    function GetTopRec: TWin32FindDataW;
    procedure SetTopRec(const Value: TWin32FindDataW);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;

    procedure Push(const BasePath: WideString; const Handle: DWord; const Rec: TWin32FindDataW);
    procedure Pop;
    property Height: Integer read FHeight;
    function TopHandle: DWord;
    property TopRec: TWin32FindDataW read GetTopRec write SetTopRec;
    function TopBasePath: WideString;
    function IsEmpty: Boolean;
  end;

  TMaskResolver = class
  protected
    FMaxRecursionDepth: Word;
    FMask, FNameMask: WideString;
    FSearches: TFMStack;

    procedure AddSearchPath(Path: WideString);
    procedure SearchNextFile;
    function ShouldSkip(const Name: WideString): Boolean;

    procedure SetMaxRecursionDepth(const Value: Word);
    function GetRecursive: Boolean;
    procedure SetRecursive(const Value: Boolean);
    procedure SetMask(const Value: WideString);
  public
    CaseSensitive: Boolean;

    constructor Create;
    destructor Destroy; override;
    procedure ToStart;

    property Recursive: Boolean read GetRecursive write SetRecursive;
    property MaxRecursionDepth: Word read FMaxRecursionDepth write SetMaxRecursionDepth default 50;  // inclusive.
    property Mask: WideString read FMask write SetMask;
    function HasMore: Boolean;
    function Next: WideString;
    // HasMore isn't always accurate and for use in a loop you must call Next and check
    // if it returned ''. Or you can use this method as a shortcut:
    //   while PutNextIn(FileName) do ...
    // instead of
    //   while True do begin FileName := Next; if FileName = '' then Break; ... end;
    function PutNextIn(out NextFile: WideString): Boolean;
  end;

implementation

uses Math;

{ Common routines }

type
  TMaskMatchInfo = record
    Matched: Boolean;
    StrPos: Word;
    MatchLength: Word;
  end;

function MaskMatchInfo(const Str, Mask: WideString; StartingPos: Word = 1): TMaskMatchInfo;
var
  BeginningAnyMatch, EndingAnyMatch: Word;
  Info: TMaskMatchInfo;

  function Match(const StrI, MaskI: Word): Boolean;
  begin
    if MaskI > Length(Mask) then
      Result := StrI = Length(Str) + 1
      else if StrI > Length(Str) then
        Result := MaskI > EndingAnyMatch
        else if (Mask[MaskI] = '*') or (Mask[MaskI] = '+') then
          Result := Match(Succ(StrI), Succ(MaskI)) or Match(Succ(StrI), MaskI) or
                    ((Mask[MaskI] = '*') and (Match(StrI, Succ(MaskI)))) or (MaskI = Length(Mask))
          else
             Result := ((Mask[MaskI] = Str[StrI]) or (Mask[MaskI] = '?')) and
                      Match(Succ(StrI), Succ(MaskI));

    if Result and ((MaskI <= Length(Mask)) and (Mask[MaskI] <> '*')) then
    begin
      Info.StrPos := Min(Info.StrPos, StrI);
      Info.MatchLength := Max(Info.MatchLength, StrI)
    end
  end;

begin
  Info.StrPos := $FFFF;
  Info.MatchLength := 0;

  BeginningAnyMatch := 1;
  while (BeginningAnyMatch < Length(Mask)) and (Mask[BeginningAnyMatch] = '*') do
    Inc(BeginningAnyMatch);

  EndingAnyMatch := Length(Mask);
  while (EndingAnyMatch > 0) and (Mask[EndingAnyMatch] = '*') do
    Dec(EndingAnyMatch);

  Info.Matched := Match(StartingPos, 1);

  if Info.StrPos = $FFFF then
    Info.MatchLength := 0
    else
      Dec(Info.MatchLength, Info.StrPos - 1);
  Result := Info
end;

function MaskMatch(const Str, Mask: WideString): Boolean;
begin
  Result := MaskMatchInfo(Str, Mask).Matched
end;

{ TFMStack }

constructor TFMStack.Create;
begin
  FHeight := 0;
end;

destructor TFMStack.Destroy;
begin
  Clear;
  inherited;
end;

procedure TFMStack.Clear;
begin
  while not IsEmpty do
    Pop;
end;

function TFMStack.TopHandle: DWord;
begin
  if IsEmpty then
    Result := INVALID_HANDLE_VALUE
    else
      Result := FItems[FHeight - 1].Handle;
end;

function TFMStack.GetTopRec: TWin32FindDataW;
begin
  if IsEmpty then
    Result.cFileName[0] := #0
    else
      Result := FItems[FHeight - 1].Rec;
end;

procedure TFMStack.SetTopRec(const Value: TWin32FindDataW);
begin
  if not IsEmpty then
    FItems[FHeight - 1].Rec := Value;
end;

function TFMStack.TopBasePath: WideString;
begin
  if IsEmpty then
    Result := ''
    else
      Result := FItems[FHeight - 1].BasePath;
end;

procedure TFMStack.Pop;
begin
  if not IsEmpty then
  begin
    Dec(FHeight);
    Windows.FindClose( FItems[FHeight].Handle );
  end;
end;

procedure TFMStack.Push(const BasePath: WideString; const Handle: DWord; const Rec: TWin32FindDataW);
begin
  FItems[FHeight].BasePath := BasePath;
  FItems[FHeight].Handle := Handle;
  FItems[FHeight].Rec := Rec;

  Inc(FHeight);
  if FHeight >= Length(FItems) then
    raise Exception.Create('TFMStack: too high!');
end;

function TFMStack.IsEmpty: Boolean;
begin
  Result := FHeight = 0;
end;

{ TMaskResolver }

constructor TMaskResolver.Create;
begin
  FMaxRecursionDepth := 0;
  Recursive := True;
  CaseSensitive := False;
  FSearches := TFMStack.Create;

  Mask := '';
end;

destructor TMaskResolver.Destroy;
begin
  FSearches.Free;
  inherited;
end;

procedure TMaskResolver.SetMaxRecursionDepth(const Value: Word);
begin
  if Value < 1 then
    FMaxRecursionDepth := 1
    else
      FMaxRecursionDepth := Value;
end;

function TMaskResolver.GetRecursive: Boolean;
begin
  Result := FMaxRecursionDepth > 1;
end;

procedure TMaskResolver.SetRecursive(const Value: Boolean);
begin
  if not Value then
    FMaxRecursionDepth := 1
    else if not GetRecursive then
      FMaxRecursionDepth := 50;
end;

procedure TMaskResolver.SetMask(const Value: WideString);
begin
  FMask := Value;
  if (FMask <> '') and (ExtractFilePath(FMask) = '') then
    Insert('.' + PathDelim, FMask, 1);

  FNameMask := ExtractFileName(FMask);
  if not CaseSensitive then
    FNameMask := WideLowerCase(FNameMask);
  if FNameMask = '' then
    FNameMask := '*';

  ToStart;
end;

procedure TMaskResolver.ToStart;
begin
  FSearches.Clear;
  AddSearchPath( ExtractFilePath(FMask) );
end;

procedure TMaskResolver.AddSearchPath(Path: WideString);
var
  Handle: DWord;
  SR: TWin32FindDataW;
begin
  if Path <> '' then
    if FMaxRecursionDepth > FSearches.Height then
    begin
      Path := IncludeTrailingPathDelimiter( Path );
      Handle := FindFirstFileW(PWideChar(Path + '*'), SR);
      if Handle <> INVALID_HANDLE_VALUE then
        FSearches.Push(Path, Handle, SR);
    end
      else
        SearchNextFile;
end;

procedure TMaskResolver.SearchNextFile;
var
  SR: TWin32FindDataW;
begin
  while not FSearches.IsEmpty do
    if FindNextFileW(FSearches.TopHandle, SR) then
    begin
      FSearches.SetTopRec(SR);
      Break;
    end
      else
        FSearches.Pop;
end;

function TMaskResolver.HasMore: Boolean;
begin
  Result := (FMask <> '') and not FSearches.IsEmpty;
end;

function TMaskResolver.Next: WideString;
var
  BasePath: WideString;
begin
  while HasMore do
  begin
    Result := FSearches.TopRec.cFileName;
    if ShouldSkip(Result) then
      SearchNextFile
      else
      begin
        BasePath := FSearches.TopBasePath;

        if (FSearches.TopRec.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY <> 0) then
          AddSearchPath(FSearches.TopBasePath + Result)
          else
            SearchNextFile;

        if (CaseSensitive and MaskMatch(Result, FNameMask)) or
           (not CaseSensitive and MaskMatch(WideLowerCase(Result), FNameMask)) then
        begin
          Insert(BasePath, Result, 1);
          Exit;
        end;
      end;
  end;

  Result := '';
end;

function TMaskResolver.ShouldSkip(const Name: WideString): Boolean;
begin
  Result := (Length(Name) = 0) or (Name = '.') or (Name = '..');
end;

function TMaskResolver.PutNextIn(out NextFile: WideString): Boolean;
begin
  NextFile := Next;
  Result := Length(NextFile) <> 0;
end;

end.
