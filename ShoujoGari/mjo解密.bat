@echo off
for %%a in (scenario\*.mjo) do (
echo %%a
majiro cs %%a
)

pause