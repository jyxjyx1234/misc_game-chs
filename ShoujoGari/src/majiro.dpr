program majiro;

{$APPTYPE CONSOLE}

uses
  Classes,
  Windows,
  SysUtils,
  MajiroArc,
  MajiroObj,
  MajiroJumpIndex,
  FileMask,
  CommandLine,
  FileStreamW,
  MajiroCommon;

type
  TMajiroApp = class (TCLApplication)
  protected
    function DoMajiroTask(Task: WideString): Boolean;
    procedure HandleException(const E: Exception);
    function GetDragCLFor(const Argument: WideString): WideString;
    function GetCLStringFor(const Argument: WideString): WideString;
    function GetCLForMJO(const MJO: WideString): WideString;
    function SearchForArc(ParentDir: WideString): WideString;

    function GenerateJumpIndexFor(const Obj: TMajiroObj): DWord;
  public
    constructor Create; override;
    procedure DoTask(Task: WideString); override;
    function GetCLString: WideString; override;
  end;

function CurrentDirectory: WideString;
begin
  SetLength(Result, $1000);
  SetLength(Result, GetCurrentDirectoryW($1000, PWideChar(Result)));
  Result := IncludeTrailingPathDelimiter(Result);
end;

{ TMajiroApp }

constructor TMajiroApp.Create;
begin
  inherited;

  Name := 'Majiro archives & objects manipulator';
  Author := 'Proger_XP';
  WWW := 'VN.i-forge.net';
  Email := 'mailme@smtp.ru';
  BuildDate := $14102010;

  {$I MajiroHelp.pas}
end;

procedure TMajiroApp.DoTask(Task: WideString);
begin
  if not DoMajiroTask(Task) then
    inherited;
end;

function TMajiroApp.DoMajiroTask(Task: WideString): Boolean;
var
  Arc: TMajiroArc;
  Obj: TMajiroObjScripter;
  MaskResolver: TMaskResolver;
  MinArguments: Byte;
  I: Integer;

  procedure ExecList;
  var
    Archive: WideString;
    I: Integer;
  begin
    if CommandLine.ArgCount < 2 then
      HandleException( ECLTooFewArguments.CreateFmt('%d; needs at least %d', [CommandLine.ArgCount - 1, 1]) );

    for I := 1 to CommandLine.ArgCount - 1 do
    begin
      MaskResolver.Mask := CommandLine.Arguments[I];
      while MaskResolver.PutNextIn(Archive) do
      begin
        ConsoleWriteLn('Opening ' + Archive + ' for listing...');
        Arc.Open(Archive);
        ConsoleGoUpOneLine;
        ConsoleWriteLn( Arc.TextDump );
        ConsoleWriteLn;
      end;
    end;
  end;

  function ExecExtractArc: Integer;
  var
    ExtractToDir: WideString;
    ArcFile, ArgIndex: Integer;
    NeedsExtraction: Boolean;
  begin
    Result := 0;

    ExtractToDir := ExtractFileName( ExcludeTrailingPathDelimiter(   // = parent dir's name
      ExtractFilePath( ExpandFileName(Arc.ArcFileName) )
    ) ) + PathDelim;

    ForceDirectories(ExtractToDir);

    for ArcFile := 0 to Arc.Count - 1 do
    begin
      NeedsExtraction := CommandLine.ArgCount = 2 {Task, <arc>};

      for ArgIndex := 2 to CommandLine.ArgCount - 1 do
        if MaskMatch( Arc[ArcFile].FileName, CommandLine.Arguments[ArgIndex] ) then
        begin
          NeedsExtraction := True;
          Break;
        end;

      if NeedsExtraction then
      begin
        UpdateProgress( ArcFile + 1, Arc.Count, Arc[ArcFile].FileName );
        Arc.ExtractToFile( ExtractToDir + Arc[ArcFile].FileName, ArcFile );
        Inc(Result);
      end;
    end;
  end;

  function ExecAddToArc: Integer;
  var
    FilesToAdd: TMaskResolver;
    FileToAdd: WideString;
    ArcFile, ArgIndex: Integer;
  begin
    Result := 0;
    FilesToAdd := TMaskResolver.Create;

    try
      FilesToAdd.Recursive := False;

      for ArgIndex := 2 to CommandLine.ArgCount - 1 do
      begin
        FilesToAdd.Mask := CommandLine.Arguments[ArgIndex];
        while FilesToAdd.PutNextIn(FileToAdd) do
        begin
          ConsoleWriteLn('  ' + FileToAdd + '...');

          ArcFile := Arc.FileIndexByName( ExtractFileName(FileToAdd) );
          if ArcFile = -1 then
            raise Exception.Create('Adding new files currently is not implemented.')
            else
              Arc.ReplaceWithFile(FileToAdd, ArcFile);

          ConsoleGoUpOneLine;
          ConsoleWriteLn('  ' + FileToAdd + '... done.');
          Inc(Result);
        end;
      end;
    finally
      FilesToAdd.Free;
    end;
  end;

  procedure DoArcTaskOn(const Archive: WideString);
  var
    Count: Integer;
  begin
    if Archive <> '' then
    begin
      if Task = 'xa' then
        ConsoleWriteLn('Extracting ' + Archive + '...')
        else
          ConsoleWriteLn('Adding files to ' + Archive + '...');

      Arc.Open(Archive, fmOpenReadWrite or fmShareExclusive);

      if Task = 'xa' then
      begin
        ResetProgress;

        Count := ExecExtractArc;

        ConsoleGoUpOneLine;  // 1 line for progress bar.
        ConsoleGoUpOneLine;
        ConsoleWriteLn('Extracted ' + IntToStr(Count) + ' files from ' + Archive + '.');
      end
        else
          ConsoleWriteLn(IntToStr(ExecAddToArc) + ' files added to ' + Archive + '.');
    end;
  end;

  procedure DoObjTaskOn(FileMask: WideString);
    procedure SetObjClOptions;
    var
      Int: Integer;
    begin
      if TryStrToInt( CommandLine['line-length'], Int ) then
        Obj.WrapLineLength := Int;
    end;

  var
    Operation, StringsFile, OriginalObjBackup, JumpIndexFile, Info: WideString;
    JumpIndex: TJumpIndex;
  begin
    MaskResolver.Mask := FileMask;
    while MaskResolver.PutNextIn(FileMask) do
    begin
      if Task = 'xs' then
        Operation := 'Exporting texts from ' + FileMask + '...'
        else if Task = 'is' then
          Operation := 'Importing texts into ' + FileMask + '...'
          else if Task = 'cs' then
            Operation := 'Converting Majiro object ' + FileMask + '...'
            else
              Operation := '';
      ConsoleWriteLn(Operation);

      StringsFile := ChangeFileExt(FileMask, '.utf');
      OriginalObjBackup := ChangeFileExt(FileMask, '.mjo~');
      JumpIndexFile := ChangeFileExt(FileMask, '.jix');

      if Task = 'is' then
        CopyFileW( PWideChar(OriginalObjBackup), PWideChar(FileMask), False );
      Obj.LoadObjectFromFile(FileMask);

        SetObjClOptions;

      case Char(Task[1]) of
      '?': ConsoleWriteLn( FileMask + ' :: ' + Obj.DumpInfo );
      'x':
        begin
          Obj.HexOffsets := CommandLine.SwitchIsOn('hex-offsets') or not CommandLine.SwitchIsOn('decimal-offsets');
          Info := IntToStr( Obj.ExportTextsToFile(StringsFile) ) + ' lines exported';
        end;
      'i':
        begin
          if not FileExists(JumpIndexFile) then
            GenerateJumpIndexFor(Obj);
          if not FileExists(OriginalObjBackup) then
            CopyFileW( PWideChar(FileMask), PWideChar(OriginalObjBackup), False );

          JumpIndex := TJumpIndex.Create;
          try
            JumpIndex.LoadFrom(JumpIndexFile);
            Info := IntToStr( Obj.ImportTextsFromFile(StringsFile, JumpIndex) ) + ' lines imported';
            Obj.SaveObjectToFile(FileMask);
          finally
            JumpIndex.Free;
          end;
        end;
      'c':
        begin
          if Obj.ObjVersion = MjObj_X then
          begin
            Obj.ObjVersion := MjObj_V;
            Info := 'now it''s unencrypted V-object';
          end
            else
            begin
              Obj.ObjVersion := MjObj_X;
              Info := 'now it''s encrypted X-object';
            end;

          Obj.SaveObjectToFile(FileMask);
        end;
      end;

      if Operation <> '' then
      begin
        ConsoleGoUpOneLine;
        ConsoleWriteLn(Operation + ' done (' + Info + ').');
      end;
    end;
  end;

  procedure ExecJIInfo(FileMask: WideString);
  var
    Jumps: TJumpIndex;
  begin
    Jumps := TJumpIndex.Create;
    try
      MaskResolver.Mask := FileMask;
      while MaskResolver.PutNextIn(FileMask) do
      begin
        ConsoleWriteLn('Jump index table ' + FileMask);
        ConsoleWriteLn(StringOfChar('=', 79));
        Jumps.LoadFrom(FileMask);
        ConsoleWriteLn(Jumps.TextDump);
      end;
    finally
      Jumps.Free;
    end;
  end;

  procedure ExecJIGenerate(FileMask: WideString);
  var
    Count: DWord;
  begin
    MaskResolver.Mask := FileMask;
    while MaskResolver.PutNextIn(FileMask) do
    begin
      ConsoleWriteLn('Generating jump index table for object ' + FileMask + '.');
      Obj.LoadObjectFromFile(FileMask);
      Count := GenerateJumpIndexFor(Obj);

      ConsoleGoUpOneLine;
      ConsoleWrite('Done generating jump index table for ' + FileMask + ' (');
      ConsoleWriteLn(IntToStr(Count) + ' records).');
    end;
  end;

begin
  MaskResolver := TMaskResolver.Create;
  MaskResolver.Recursive := False;
  Arc := TMajiroArc.Create;
  Obj := TMajiroObjScripter.Create;
  try
    try
      Result := True;
      Task := LowerCase(Task);

      if Task = 'l' then
        ExecList
        else if (Task = 'xa') or (Task = 'aa') then
        begin
          MinArguments := 2 + 1 * Byte(Task = 'aa');
          if CommandLine.ArgCount < MinArguments then
            HandleException( ECLTooFewArguments.CreateFmt('%d; needs at least %d', [CommandLine.ArgCount - 1, MinArguments - 1]) )
            else
            begin
              MaskResolver.Mask := CommandLine.Arguments[1];
              while MaskResolver.HasMore do
                DoArcTaskOn( MaskResolver.Next );
            end;
        end
          else if (Task = '?s') or (Task = 'xs') or (Task = 'is') or (Task = 'cs') then
          begin
            if CommandLine.ArgCount < 2 then
              DoObjTaskOn('*.mjo')
              else
                for I := 1 to CommandLine.ArgCount - 1 do
                  DoObjTaskOn( CommandLine.Arguments[I] );
          end
            else if (Task = 'ji?') or (Task = 'jig') then
            begin
              if CommandLine.ArgCount < 2 then
                HandleException( ECLTooFewArguments.CreateFmt('%d; needs at least %d', [CommandLine.ArgCount - 1, 1]) )
                else
                  for I := 1 to CommandLine.ArgCount - 1 do
                    if Task = 'ji?' then
                      ExecJIInfo( CommandLine.Arguments[I] )
                      else
                        ExecJIGenerate( CommandLine.Arguments[I] );
            end
              else
                Result := False;
    except
      on E: Exception do
      begin
        HandleException(E);
        Result := True;
        Exit;
      end;
    end;
  finally
    Obj.Free;
    Arc.Free;
    MaskResolver.Free;
  end;
end;

function TMajiroApp.GenerateJumpIndexFor(const Obj: TMajiroObj): DWord;
var
  Jumps: TJumpIndex;
  Script: TStream;
begin
  Jumps := TJumpIndex.Create;
  Script := TMemoryStream.Create;
  try
    ResetProgress;

    Obj.DumpScriptTo(Script);
    Script.Position := 0;
    Jumps.CollectFrom(Script, Script.Size);

    Jumps.SaveTo( ChangeFileExt(Obj.ObjFileName, '.jix') );
    Result := Jumps.Count;
  finally
    Script.Free;
      Jumps.Free;
  end;
end;

procedure TMajiroApp.HandleException(const E: Exception);
begin
  FRanOK := False;

  if E is ECLTooFewArguments then
  begin
      ConsoleWrite('  You have passed too few arguments for this task (');
      ConsoleWrite(E.Message);
    ConsoleWriteLn('). Run');
    ConsoleWriteLn('    majiro.exe h');
    ConsoleWriteLn('  for help and see the Arguments section.');
  end
    else
    begin
      if E is EMjArcInvalidArcSign then
        ErrorWrite('  Cannot open the archive: wrong signature. Maybe it''s not a Majiro archive?')
        else if E is EMjArcTooManyFiles then
          ErrorWrite('  This archive contains too many files. It''s probably corrupted.')
          else if E is EMjObjInvalidArcSign then
            ErrorWrite('  Cannot recognize this script: wrong signature. Maybe it''s not a Majiro object?')
            else if E is EMjObjEmptyScript then
              ErrorWrite('  This script is empty. Most likely, it''s corrupted.')
              else if E is EJumpIndex then
                ErrorWrite('  The jump index table seems to be corrupted or not existing.' + F_EOLN +
                           '  You can regenerate it by using jig task (see the detailed help).')
                else
                  ErrorWrite('  Some unexpected error has occured!');

      ErrorWriteLn;
      ErrorWriteLn('Details of <' + E.ClassName + '>: ');
      ErrorWriteLn('  ' + E.Message);
    end;
end;

function TMajiroApp.GetCLString: WideString;
var
  CL: TCLSplitter;
  AppPath, SoleArgument: WideString;
begin
  CL := TCLSplitter.Create;
  try
    Result := inherited GetCLString;

    CL.CommandLine := Result;
    SoleArgument := '';

    if CL.HasMore then
    begin
      AppPath := CL.Next;
      if CL.HasMore then
      begin
        SoleArgument := CL.Next;
        if CL.HasMore then     // we need exactly one argument for drag-and-drop usage.
          SoleArgument := '';
      end;
    end;
  finally
    CL.Free;
  end;

  if SoleArgument <> '' then
  begin
    SoleArgument := GetDragCLFor(SoleArgument);
    if SoleArgument <> '' then
      Result := '"' + AppPath + '" ' + SoleArgument;
  end;
end;

function TMajiroApp.GetDragCLFor(const Argument: WideString): WideString;
var
  OldDir: WideString;
begin
  Result := '';
  OldDir := CurrentDirectory;
  try
    if SetCurrentDirectoryW(PWideChar( ExtractFilePath(ExpandFileName(Argument)) )) then
      Result := GetCLStringFor(Argument);
  except
    SetCurrentDirectoryW( PWideChar(OldDir) );
    raise;
  end;

  if Result = '' then
    SetCurrentDirectoryW( PWideChar(OldDir) );
end;

function TMajiroApp.GetCLStringFor(const Argument: WideString): WideString;
var
  Ext: String;
begin
  Result := '';

  Ext := ExtractFileExt(Argument);
  if Ext = '.arc' then
    Result := 'xa "' + Argument + '"'
    else if IsDirectory(Argument) then
      Result := 'xs "' + Argument + '\*.mjo"'
      else if Ext = '.utf' then
        Result := 'is "' + ChangeFileExt(Argument, '.mjo') + '"'
        else if Ext = '.mjo' then
          Result := GetCLForMJO(Argument);
end;

function TMajiroApp.GetCLForMJO(const MJO: WideString): WideString;
begin
  Result := SearchForArc( ExtractFilePath(MJO) );
  if Result <> '' then
    Result := 'aa "' + Result + '" "' + MJO + '"';
end;

function TMajiroApp.SearchForArc(ParentDir: WideString): WideString;
  function SetArc(const ArcFile: WideString; out WriteTo: WideString): Boolean;
  begin
    Result := FileExists(ParentDir + ArcFile);
    if Result then
      WriteTo := ExpandFileName(ParentDir + ArcFile);
  end;
begin
  if ParentDir = '' then
    ParentDir := '.\'
    else
     ParentDir := IncludeTrailingPathDelimiter(ParentDir);

  if not SetArc('.\scenario1.arc', Result) then
    if not SetArc('.\scenario.arc', Result) then
      if not SetArc('..\scenario1.arc', Result) then
        if not SetArc('..\scenario.arc', Result) then
          Result := '';
end;


{ Entry point }

var
  App: TCLApplication;
begin
  App := TMajiroApp.Create;
  try
    App.Run;
  finally
    ExitCode := Integer(not App.RanOK);
    App.Free;
  end;
end.
