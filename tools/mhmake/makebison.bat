REM @echo off
setlocal

set BISON_PKGDATADIR=src/bisondata

c:\winflexbison\win_bison.exe -d -Ssrc/bisondata/skeletons/lalr1.cc -o%1/mhmakeparser.cpp src\mhmakeParser.y

REM FIXME: In actions Python 3.9 is simply on PATH, but likely breaks local assumptions
python.exe addstdafxh.py %1\mhmakeparser.cpp

endlocal
