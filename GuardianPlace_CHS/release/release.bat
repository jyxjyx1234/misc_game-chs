copy ..\GuardianPlace_hook\Release\*.dll .\
copy ..\README.md .\
del release.rar
rar a release.rar trans.dat
rar a release.rar *.ttf
rar a release.rar README.md 
rar a release.rar *.dll *.exe
rar a release.rar hook.ini
pause