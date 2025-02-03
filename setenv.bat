@echo off
set PATH=%PATH%;c:\windows\system32\Wbem
set > env_before.txt

REM TODO ciis0 parameterize community vs enterprise edition
pushd "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Auxiliary\Build"
CALL vcvarsall.bat %1 > nul
popd

set > env_after.txt

