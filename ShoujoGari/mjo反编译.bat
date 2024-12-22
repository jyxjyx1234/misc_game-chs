@echo off
for %%a in (scenario\*.mjo) do (
echo %%a
maji disassemble %%a
)

pause