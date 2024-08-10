unit CommandLine;

// todo: support aliases for tasks and options.

interface

{ This unit is standalone. }

uses Windows, SysUtils, Classes;

const
  MaxCLItemCount = $7FFF;

type
  TCLWaitOnExit = (clAlwaysWait, clWaitOnError, clNeverWait);

  ECommandLine = class (Exception)
  end;
    ECLTooFewArguments = class (ECommandLine)   // not used here; can be used in apps using this unit.
    end;

  TCLHasherClass = class of TCLHasher;
  // inherit your own class to make faster hashing if necessary.
  // For example, make true hasher, like Unicode version of THashedStringList in TIniFiles.
  TCLHasher = class
  public
    constructor Create;
    procedure Clear; virtual; abstract;
    procedure BeginUpdate; virtual;
    procedure EndUpdate; virtual;

    procedure Add(const Key, Value: WideString); virtual; abstract;
    function IndexOfKey(const Key: WideString): Integer; virtual; abstract;  // -1 if not found.
    function ValueByIndex(const Index: Integer): WideString; virtual; abstract;
  end;

  TCLBasicHasher = class (TCLHasher)
  protected
    FCount: Integer;
    FEntries: array[0..MaxCLItemCount] of record
      Key, Value: WideString;
    end;
  public
    procedure Clear; override;
    procedure Add(const Key, Value: WideString); override;
    function IndexOfKey(const Key: WideString): Integer; override;
    function ValueByIndex(const Index: Integer): WideString; override;
  end;

  TCLItemType = (clShortOptions, clLongOption, clArgument);

  TCLSplitter = class
  protected
    FCommandLine: WideString;
    FLastCLPos: Integer;

    procedure SetCommandLine(const Value: WideString);
  public
    constructor Create;
    procedure Clear;
    procedure ToStart;

    property CommandLine: WideString read FCommandLine write SetCommandLine;
    function HasMore: Boolean;
    function Next: WideString;
  end;

  TCLParser = class
  protected
    FNotPassed: WideChar;
    FOptions: TCLHasher;
    FArgCount: Integer;
    FArguments: array[0..MaxCLItemCount] of WideString;

    function GetArgument(Index: Integer): WideString;
    function GetOption(Name: WideString): WideString;

    procedure AppendFrom(const CLParser: TCLSplitter);
    procedure ParseItem(const Item: WideString; out ItemType: TCLItemType; out Key, Value: WideString);
    procedure AddShortOptions(const Key, Value: WideString);
    procedure AddLongOption(const Key, Value: WideString);
    procedure AddArgument(const Key, Value: WideString);
  public
    constructor Create; virtual;
    constructor CreateWithCustomHasher(const HasherClass: TCLHasherClass); virtual;
    procedure Clear;
    destructor Destroy; override;

    procedure ParseCL; overload;
    procedure ParseCL(const CLString: WideString); overload;

    // special value to return when an option or an argument wasn't passed.
    property NotPassed: WideChar read FNotPassed write FNotPassed default #0;
    property Options[Name: WideString]: WideString read GetOption; default;
    property ArgCount: Integer read FArgCount;
    property Arguments[Index: Integer]: WideString read GetArgument;
    function SwitchIsOn(Name: WideString): Boolean;
    function GetArgByExt(const Extension: WideString): WideString;

    function GetApplicationPath: WideString;  // = ParamStr(0) but in Unicode.

    class procedure RunTests;  // debug method.
  end;

  TCLApplicationLanguage = record
    UnknownTask, Exception, FWaitOnExit: WideString;
  end;

  TCLApplication = class
  protected
    F_EOLN: WideString;
    FWaitOnExit: TCLWaitOnExit;

    FLastProgress: String;
    FProgressPrecision: Char;

    FCLParser: TCLParser;
    FRanOK: Boolean;

    function IsConsoleHandle(Handle: DWord): Boolean;
      procedure WriteStringTo(Handle: DWord; const Str: WideString);
        procedure ErrorWrite(const Str: WideString);
          procedure ErrorWriteLn(const Str: WideString = '');
        procedure ConsoleWrite(const Str: WideString);
          procedure ConsoleWriteLn(const Str: WideString = '');
    procedure ConsoleWaitForEnter;
    procedure ConsoleGoUpOneLine;

    procedure UnknownTaskPassed(const Task: WideString);
    procedure BeforeExit; virtual;

    function FormatVersion: WideString;
    function FormatDate: WideString;
    function GetConsoleXY(IncY: SmallInt): TCoord;
    procedure ResetProgress;
    procedure UpdateProgress(Current, Max: DWord; Extra: WideString = '');

    function GetProgressPrecision: Byte;
    procedure SetProgressPrecision(const Value: Byte);
  public
    Name, Author: WideString;
    Version: Word;
    WWW, Email: WideString;
    BuildDate: DWord;

    Help, HelpDetails: WideString;
    Language: TCLApplicationLanguage;

    constructor Create; virtual;
    destructor Destroy; override;
    procedure SetDefaultLanguage;
    procedure Clear;

    property RanOK: Boolean read FRanOK;

    property CommandLine: TCLParser read FCLParser;
    property EOLN: WideString read F_EOLN write F_EOLN;
    property ProgressPrecision: Byte read GetProgressPrecision write SetProgressPrecision default 1;
    property WaitOnExit: TCLWaitOnExit read FWaitOnExit write FWaitOnExit default clWaitOnError;
    function IsNakedTask(const Task: WideString): Boolean; virtual;

    procedure Run; virtual;
    function GetCLString: WideString; virtual;
    procedure AcquireOptions; virtual;
    function GetHeader: WideString;
    procedure DoTask(Task: WideString); virtual;
    function DoStandardTask(Task: WideString): Boolean;
    procedure OutputHeader;
    procedure OutputVersion;
    procedure OutputHelp(const Detailed: Boolean = False);
  end;

implementation

uses Math;

var
  StdError, StdOut, StdIn: THandle;

{ Common Unicode layer functions }

function PosW(const Substr, Str: WideString; Start: Word = 1): Integer;
var
  I, Current: Integer;
begin
  Current := 1;

  if Substr <> '' then
    for I := Max(1, Start) to Length(Str) do
      if Substr[Current] <> Str[I] then
        Current := 1
        else
          if Current >= Length(Substr) then
          begin
            Result := I - Current + 1;
            Exit
          end
          else
            Inc(Current);

  Result := 0
end;

function ExtractFileExt(FileName: WideString): WideString;
var
  I: Word;
begin
  for I := Length(FileName) downto 1 do
    if FileName[I] = '\' then
      Break
      else if FileName[I] = '.' then
      begin
        Result := Copy(FileName, I, Length(FileName));
        Exit
      end;

  Result := ''
end;

{ TCLParser }

constructor TCLParser.Create;
begin
  CreateWithCustomHasher( TCLBasicHasher );
end;

constructor TCLParser.CreateWithCustomHasher(const HasherClass: TCLHasherClass);
begin
  try
    FOptions := HasherClass.Create;
  except
    CreateWithCustomHasher( TCLBasicHasher );
    raise ECommandLine.CreateFmt('Exception occured during the creation of hasher class %s.', [HasherClass.ClassName]);
  end;

  FNotPassed := #0;
  Clear;
end;

procedure TCLParser.Clear;
begin
  FOptions.Clear;
  FArgCount := 0;
end;

destructor TCLParser.Destroy;
begin
  FOptions.Free;
  inherited;
end;

function TCLParser.GetOption(Name: WideString): WideString;
var
  Index: Integer;
begin
  Index := FOptions.IndexOfKey(Name);
  if Index = -1 then
    Result := FNotPassed
    else
      Result := FOptions.ValueByIndex(Index);
end;

function TCLParser.GetArgument(Index: Integer): WideString;
begin
  if Index >= FArgCount then
    Result := FNotPassed
    else
      Result := FArguments[Index];
end;

procedure TCLParser.ParseCL;
begin
  ParseCL( GetCommandLineW );
end;

procedure TCLParser.ParseCL(const CLString: WideString);
var
  CLParser: TCLSplitter;
begin
  Clear;

  CLParser := TCLSplitter.Create;
  try
    CLParser.CommandLine := CLString;
    CLParser.Next;  // to skip EXE's path.
    AppendFrom(CLParser);
  finally
    CLParser.Free;
  end;
end;

procedure TCLParser.AppendFrom(const CLParser: TCLSplitter);
var
  ItemType: TCLItemType;
  Key, Value: WideString;
begin
  FOptions.BeginUpdate;
  try
    while CLParser.HasMore do
    begin
      ParseItem( CLParser.Next, ItemType, Key, Value );

      case ItemType of
      clShortOptions: AddShortOptions(Key, Value);
      clLongOption:  AddLongOption(Key, Value);
      else
        AddArgument(Key, Value);
      end;
    end;
  finally
    FOptions.EndUpdate;
  end;
end;

procedure TCLParser.ParseItem(const Item: WideString; out ItemType: TCLItemType;
  out Key, Value: WideString);
var
  Prefix: String[2];
  Delim: Integer;
begin
  Prefix := Item;
  if Prefix = '--' then
  begin
    ItemType := clLongOption;

    Delim := PosW('=', Item);
    if Delim = 0 then
      Delim := $FFFF;  // all is Key.

    Key := Copy(Item, 3, Delim - 3);
    Value := Copy(Item, Delim + 1, $FFFF);
  end
    else if Prefix[1] = '-' then
    begin
      ItemType := clShortOptions;
      Key := Copy(Item, 2, $FFFF);
    end
      else
      begin
        ItemType := clArgument;
        Value := Item;
      end;
end;

procedure TCLParser.AddShortOptions(const Key, Value: WideString);
var
  I: Word;
begin
  for I := 1 to Length(Key) do
    AddLongOption(Key[I], '1');
end;

procedure TCLParser.AddLongOption(const Key, Value: WideString);
begin
  FOptions.Add(Key, Value);
end;

procedure TCLParser.AddArgument(const Key, Value: WideString);
begin
  if FArgCount >= Length(FArguments) then
    raise ECommandLine.CreateFmt('%s: max count of arguments (%d) reached.', [ClassName, Length(FArguments)]);

  FArguments[FArgCount] := Value;
  Inc(FArgCount);
end;

function TCLParser.GetApplicationPath: WideString;
const
  MaxPathLength = $7FFF;
begin
  SetLength(Result, MaxPathLength * 2);
  SetLength(Result, GetModuleFileNameW(0, @Result[1], MaxPathLength));
end;

function TCLParser.GetArgByExt(const Extension: WideString): WideString;
var
  I: Integer;
begin
  for I := 0 to FArgCount - 1 do
    if ExtractFileExt(FArguments[I]) = Extension then
    begin
      Result := FArguments[I];
      Exit;
    end;

  Result := '';
end;

function TCLParser.SwitchIsOn(Name: WideString): Boolean;
begin
  Name := LowerCase( Options[Name] );
  Result := (Name <> FNotPassed) and (Name <> '0') and (Name <> 'false');
end;

{ TCLSplitter }

constructor TCLSplitter.Create;
begin
  Clear;
end;

procedure TCLSplitter.Clear;
begin
  FCommandLine := '';
  ToStart;
end;

procedure TCLSplitter.ToStart;
begin
  FLastCLPos := 0;
end;

procedure TCLSplitter.SetCommandLine(const Value: WideString);
begin
  FCommandLine := Value;
  ToStart;
end;

function TCLSplitter.HasMore: Boolean;
begin
  Result := FLastCLPos < Length(FCommandLine);
end;

function TCLSplitter.Next: WideString;
  procedure SetNext;
  var
    Join: Boolean;
  begin
    Join := False;

    while HasMore do
    begin
      Inc(FLastCLPos);

      if FCommandLine[FLastCLPos] = '"' then
        Join := not Join
        else if (FCommandLine[FLastCLPos] = ' ') and not Join then
          Break
          else
            Result := Result + FCommandLine[FLastCLPos];
    end;
  end;

begin
  repeat
    Result := '';
    SetNext;
  until not HasMore or (Result <> '');
end;

{ Debug }

class procedure TCLParser.RunTests;
  procedure Assert(const Condition: Boolean);
  begin
    if not Condition then
      raise EAssertionFailed.Create('');
  end;

  procedure RunTests;
  const
    NotPassed: WideChar = #5;
  var
    Parser: TCLSplitter;
    CL: TCLParser;
  begin
    Parser := TCLSplitter.Create;
    try
      Assert( not Parser.HasMore );
        Assert( Parser.Next = '' );

      Parser.CommandLine := ' 1st "2 nd" "3 rd " 4th 5 6 "7 "7" 7" ';

      Assert( Parser.HasMore );
        Assert( Parser.Next = '1st' );
        Assert( Parser.Next = '2 nd' );
        Assert( Parser.Next = '3 rd ' );
        Assert( Parser.Next = '4th' );
        Assert( Parser.Next = '5' );
        Assert( Parser.Next = '6' );
        Assert( Parser.Next = '7 7 7' );
      Assert( not Parser.HasMore );
        Assert( Parser.Next = '' );
      Assert( not Parser.HasMore );
    finally
      Parser.Free;
    end;

    CL := TCLParser.Create;
    try
      CL.NotPassed := NotPassed;

      CL.ParseCL('arg_1 --long-opt -sho -rt arg_2 --loo=ong arg_3');

      Assert( CL['not-passed'] = NotPassed );
      Assert( CL['long-opt'] = '' );
      Assert( CL['loo'] = 'ong' );

      Assert( CL['l'] = NotPassed );
      Assert( CL['s'] = '1' );
      Assert( CL['h'] = '1' );
      Assert( CL['o'] = '1' );
      Assert( CL['r'] = '1' );
      Assert( CL['t'] = '1' );

      Assert( CL.Arguments[0] = 'arg_1' );
      Assert( CL.Arguments[1] = 'arg_2' );
      Assert( CL.Arguments[2] = 'arg_3' );
      Assert( CL.Arguments[4] = NotPassed );
    finally
      CL.Free;
    end;
  end;

begin
  try
    RunTests;
  except
    raise;
  end;
end;

{ TCLHasher }

constructor TCLHasher.Create;
begin
  Clear;
end;

procedure TCLHasher.BeginUpdate;
begin
end;

procedure TCLHasher.EndUpdate;
begin
end;

{ TCLBasicHasher }

procedure TCLBasicHasher.Add(const Key, Value: WideString);
begin
  inherited;

  if FCount >= Length(FEntries) then
    raise ECommandLine.CreateFmt('%s: max count of entries (%d) reached.', [ClassName, Length(FEntries)]);

  FEntries[FCount].Key := Key;
  FEntries[FCount].Value := Value;
  Inc(FCount);
end;

procedure TCLBasicHasher.Clear;
begin
  inherited;
  FCount := 0;
end;

function TCLBasicHasher.IndexOfKey(const Key: WideString): Integer;
begin
  for Result := 0 to FCount - 1 do
    if FEntries[Result].Key = Key then
      Exit;

  Result := -1;
end;

function TCLBasicHasher.ValueByIndex(const Index: Integer): WideString;
begin
  if (Index < 0) or (Index >= FCount) then
    raise ECommandLine.CreateFmt('%s: invalid index %d.', [ClassName, Index]);

  Result := FEntries[Index].Value;
end;

{ TCLApplication }

constructor TCLApplication.Create;
begin
  F_EOLN := #13#10;
  FProgressPrecision := '1';
  FWaitOnExit := clWaitOnError;
  FCLParser := TCLParser.Create;
  FRanOK := False;

  SetDefaultLanguage;
  Clear;
end;

destructor TCLApplication.Destroy;
begin
  FCLParser.Free;
  inherited;
end;

procedure TCLApplication.SetDefaultLanguage;
begin
  Language.UnknownTask := 'Unknown task "%s" specified.';
  Language.Exception := StringOfChar('-', 80) +
                        '  Oops! Some <%s> exception has occured. Here''s what it says:' + F_EOLN + '%s';
  Language.FWaitOnExit := '______________________' + F_EOLN +
                          'Press Enter to exit...';
end;

procedure TCLApplication.Clear;
begin
  Name := '';
  Version := 0;
  Author := '';
  WWW := '';
  Email := '';
  BuildDate := 0;

  Help := '';
  HelpDetails := '';

  FCLParser.Clear;
  ResetProgress;
end;

procedure TCLApplication.OutputHeader;
begin
  ConsoleWriteLn( GetHeader );
end;

function TCLApplication.GetHeader: WideString;
  function SecondLine: WideString;
  begin
    if Author <> '' then
    begin
      Result := '  by ' + Author;
      if BuildDate <> 0 then
        Result := Result + ',';
    end;

    if BuildDate <> 0 then
      Result := Result + ' ' + FormatDate;
  end;

begin
  Result := '~ ' + Name + ' ';
  if Version <> 0 then
    Result := Result + FormatVersion + ' ';
  Result := Result + '~ ';

  if WWW <> '' then
    Result := Result + ' ' + WWW + ' ';
  if Email <> '' then
    Result := Result + ' ' + Email + ' ';

  Result := WideFormat('%-79s' + F_EOLN + '%80s', [Result, SecondLine]);
end;

function TCLApplication.FormatVersion: WideString;
begin
  Result := Format('%d.%d', [Hi(Version), Lo(Version)]);
end;

function TCLApplication.FormatDate: WideString;
var
  StrDate: String;
begin
  StrDate := IntToHex(BuildDate, 8);
  Result := DateTimeToStr(EncodeDate(StrToInt(Copy(StrDate, 5, 4)),   {year}
                                     StrToInt(Copy(StrDate, 3, 2)),   {month}
                                     StrToInt(Copy(StrDate, 1, 2)))); {day}
end;

function TCLApplication.DoStandardTask(Task: WideString): Boolean;
begin
  Task := LowerCase(Task);  // loosing Unicode isn't a problem here; standard task names are ANSI.
  Result := True;

  if Task = FCLParser.NotPassed then
    OutputHelp(False)
    else if Task = 'h' then
      OutputHelp(True)
      else if Task = 'v' then
        OutputVersion
        else
          Result := False;
end;

procedure TCLApplication.OutputHelp(const Detailed: Boolean = False);
begin
  ConsoleWrite(Help);
  FRanOK := False;

  if Detailed then
  begin
    ConsoleWriteLn;
    ConsoleWrite(HelpDetails);
  end;
end;

procedure TCLApplication.ErrorWriteLn(const Str: WideString);
begin
  ErrorWrite(Str);
  ErrorWrite(F_EOLN);
end;

procedure TCLApplication.ErrorWrite(const Str: WideString);
begin
  WriteStringTo(StdError, Str);
end;

procedure TCLApplication.ConsoleWriteLn(const Str: WideString = '');
begin
  ConsoleWrite(Str);
  ConsoleWrite(F_EOLN);
end;

procedure TCLApplication.ConsoleWrite(const Str: WideString);
begin
  WriteStringTo(StdOut, Str);
end;

procedure TCLApplication.WriteStringTo(Handle: DWord; const Str: WideString);
var
  WrittenCount: DWord;
begin
  if IsConsoleHandle(Handle) then
    WriteConsoleW(Handle, @Str[1], Length(Str), WrittenCount, NIL)
    else
      WriteFile(Handle, Str[1], Length(Str) * 2, WrittenCount, NIL);
end;

function TCLApplication.IsConsoleHandle(Handle: DWord): Boolean;
begin
  Result := GetFileType(Handle) = FILE_TYPE_CHAR;
end;

procedure TCLApplication.ConsoleWaitForEnter;
var
  Ch: WideChar;
  CharsRead: DWord;
begin
  if IsConsoleHandle(StdIn) and IsConsolehandle(StdOut) then
    repeat
      if not ReadConsoleW(StdIn, @Ch, 1, CharsRead, NIL) then
        Break;
    until (Byte(Ch) in [13, 10]) or (CharsRead = 0);
end;

function TCLApplication.GetConsoleXY(IncY: SmallInt): TCoord;
var
  Info: TConsoleScreenBufferInfo;
begin
  FillMemory(@Result, SizeOf(Result), 0);
  if GetConsoleScreenBufferInfo(StdOut, Info) then
    with Info.dwCursorPosition do
    begin
      Result.X := X;
      Result.Y := Y + IncY
    end
end;

procedure TCLApplication.ResetProgress;
begin
  FLastProgress := '';
end;

procedure TCLApplication.UpdateProgress(Current, Max: DWord; Extra: WideString = '');
var
  Str: WideString;
begin
  Str := Format( '  [ %.' + FProgressPrecision + 'f%% ]... ', [Current / Max * 100] ) + Extra;
  if Str <> FLastProgress then
  begin
    if FLastProgress <> '' then
      ConsoleGoUpOneLine;

    ConsoleWriteLn(Str);
    FLastProgress := Str;
  end;
end;

function TCLApplication.GetProgressPrecision: Byte;
begin
  Result := StrToInt(FProgressPrecision);
end;

procedure TCLApplication.SetProgressPrecision(const Value: Byte);
begin
  FProgressPrecision := IntToStr( Min(9, Value) )[1];
end;

procedure TCLApplication.ConsoleGoUpOneLine;
begin
  if SetConsoleCursorPosition(StdOut, GetConsoleXY(-1)) then
  begin
    ConsoleWrite( StringOfChar(' ', 80) );
    SetConsoleCursorPosition(StdOut, GetConsoleXY(-1));
  end;
end;

procedure TCLApplication.Run;
var
  Task: WideString;
begin
  FRanOK := True;  // note that tasks in DoTask may also set this.

  try
    FCLParser.ParseCL( GetCLString );
    AcquireOptions;

    Task := FCLParser.Arguments[0];

    if IsNakedTask(Task) then
      FWaitOnExit := clNeverWait
      else
      begin
        OutputHeader;
        ConsoleWriteLn;
      end;

    DoTask(Task);
  except
    on E: Exception do
    begin
      FRanOK := False;
      ConsoleWrite( WideFormat(Language.Exception, [E.ClassName, E.Message]) );
    end;
  end;

  BeforeExit;
end;

function TCLApplication.GetCLString: WideString;
begin
  Result := GetCommandLineW;
end;

procedure TCLApplication.AcquireOptions;
begin
  if FCLParser.SwitchIsOn('no-wait') then
    FWaitOnExit := clNeverWait
    else if FCLParser.SwitchIsOn('wait') then
      FWaitOnExit := clAlwaysWait
      else if FCLParser.SwitchIsOn('wait-on-error') then
        FWaitOnExit := clWaitOnError;
end;

// recall naked C functions and the name probably won't seem strange to you...
function TCLApplication.IsNakedTask(const Task: WideString): Boolean;
begin
  Result := LowerCase(Task) = 'v';
end;

procedure TCLApplication.DoTask(Task: WideString);
begin
  if not DoStandardTask(Task) then
    UnknownTaskPassed(Task);
end;

procedure TCLApplication.UnknownTaskPassed(const Task: WideString);
begin
  ConsoleWriteLn( WideFormat(Language.UnknownTask, [Task]) );
  ConsoleWriteLn;
  OutputHelp;
end;

procedure TCLApplication.BeforeExit;
begin
  if ((FWaitOnExit = clAlwaysWait) or ((FWaitOnExit = clWaitOnError) and not FRanOK)) and IsConsolehandle(StdOut) then
  begin
    ConsoleWriteLn;
    ConsoleWriteLn;
    ConsoleWrite(Language.FWaitOnExit);
    ConsoleWaitForEnter;
  end;
end;

procedure TCLApplication.OutputVersion;
begin
  ConsoleWrite(Name);
  ConsoleWrite('  v');

  if Version = 0 then
    ConsoleWrite( FormatDate )
    else
      ConsoleWrite( FormatVersion );
end;

initialization
  StdError := GetStdHandle(STD_ERROR_HANDLE);
  StdOut := GetStdHandle(STD_OUTPUT_HANDLE);
  StdIn := GetStdHandle(STD_INPUT_HANDLE);

end.
