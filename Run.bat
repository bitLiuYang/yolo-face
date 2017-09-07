@echo off

set DARKNETEXE=../build/darknet/x64/darknet.exe
set DATAPTAH=face.data
set MODEL=yolo-face
set CFG=%MODEL%-test.cfg
set WEIGHTS=%MODEL%_17000.weights
if exist %1 (set IMGFILE=%1) else (set IMGFILE=1.jpg)

"%DARKNETEXE%" detector test %DATAPTAH%  %CFG% %WEIGHTS%  %IMGFILE%

pause