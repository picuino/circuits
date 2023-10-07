@echo off
set PATH=\Bin\ant\bin;%PATH%
set PATH=\Bin\cygwin64\bin;%PATH%
set PATH=\Bin\jdk180\bin;%PATH%
set JAVA_HOME=\Bin\jdk180\bin
call ant.bat build
rm -f build/*.cache.js
cp -p war/circuitjs1/*.cache.js build
cp -p war/circuitjs1/*.js build
cp -p -r war/circuitjs1/*.txt build

pause
