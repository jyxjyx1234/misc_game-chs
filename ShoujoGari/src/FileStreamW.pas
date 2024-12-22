unit FileStreamW;

interface

uses                                   
  Classes, Windows, SysUtils;

type
  TFileStreamW = class (TFileStream)
  protected
    FFileName: WideString;
  public
    constructor Create(const FileName: WideString; Mode: Word); overload;

    // it will always create a new file but with the specified access (not like
    //   FileCreate, which always opens it with exclusive access).
    constructor CreateCustom(const FileName: WideString; Mode: Word);

    property FileName: WideString read FFileName;
  end;

implementation

// SysUtils.pas: 4788
function FileCreateW(const FileName: WideString; Mode: LongWord; CreationMode: LongWord = CREATE_ALWAYS): Integer;
const
  AccessMode: array[0..2] of LongWord = (
    GENERIC_READ,
    GENERIC_WRITE,
    GENERIC_READ or GENERIC_WRITE);
  ShareMode: array[0..4] of LongWord = (
    0,
    0,
    FILE_SHARE_READ,
    FILE_SHARE_WRITE,
    FILE_SHARE_READ or FILE_SHARE_WRITE);
begin
  Result := Integer(CreateFileW(PWideChar(FileName), AccessMode[Mode and 3],
                    ShareMode[(Mode and $F0) shr 4], NIL, CreationMode, FILE_ATTRIBUTE_NORMAL, 0))
end;

function FileOpenW(const FileName: WideString; Mode: LongWord): Integer;
begin
  Result := FileCreateW(FileName, Mode, OPEN_EXISTING)
end;

constructor TFileStreamW.Create(const FileName: WideString; Mode: Word);
begin
  FFileName := FileName;
  
  if Mode = fmCreate then
  begin
    inherited Create(FileCreateW(FileName, fmOpenReadWrite or fmShareExclusive));
    if FHandle < 0 then
      raise EFCreateError.CreateFmt('TFileStreamW: Cannot create file "%s". %s', [ExpandFileName(FileName), SysErrorMessage(GetLastError)])
  end
    else
    begin
      inherited Create(FileOpenW(FileName, Mode));
      if FHandle < 0 then
        raise EFOpenError.CreateFmt('TFileStreamW: Cannot open file "%s". %s', [ExpandFileName(FileName), SysErrorMessage(GetLastError)])
    end
end;

constructor TFileStreamW.CreateCustom;
begin
  FFileName := FileName;

  if Mode = fmCreate then
    raise EFCreateError.CreateFmt('TFileStreamW: don''t use fmCreate with CreateCustom, it is already implied.', [])
    else
    begin
      inherited Create(FileCreateW(FileName, Mode));
      if FHandle < 0 then
        raise EFOpenError.CreateFmt('TFileStreamW: Cannot create file with custom access "%s". %s', [ExpandFileName(FileName), SysErrorMessage(GetLastError)])
    end
end;

end.

