REM @echo off
setlocal

c:\winflexbison\win_flex.exe --nounistd -Ssrc/flex.skl -o%1/mhmakelexer.cpp src/mhmakelexer.l

REM FIXME: In actions Python 3.9 is simply on PATH, but likely breaks local assumptions
python.exe addstdafxh.py %1\mhmakelexer.cpp

endlocal

