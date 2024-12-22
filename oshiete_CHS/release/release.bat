<<<<<<< HEAD
=======
copy ..\Yotsuiro_hook\Release\*.dll .\
>>>>>>> 305a01429aeb061fbf1bc78e9ab5c94ecca341b1
copy ..\README.md .\
del release.rar
rar a release.rar trans.dat
rar a release.rar *.ttf
rar a release.rar README.md 
rar a release.rar *.dll *.exe
rar a release.rar hook.ini
pause