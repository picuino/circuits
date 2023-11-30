@echo off
set PATH=\Bin\cygwin64\bin;%PATH%
set PATH=\Bin\jdk210\bin;%PATH%
set JAVA_HOME=\Bin\jdk210\bin
set PATH=\Bin\ant-1.10\bin;%PATH%

call ant.bat build
rm -f docs/*.cache.js
cp -p war/circuitjs1/*.js docs
cp -p -r war/circuitjs1/*.txt docs

pause
