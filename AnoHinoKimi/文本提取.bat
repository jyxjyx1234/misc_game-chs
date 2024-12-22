setlocal

set "DIRECTORY=ori"

for /R "%DIRECTORY%" %%F in (*) do (
    ScriptDecoder.exe "%%F"
)

endlocal