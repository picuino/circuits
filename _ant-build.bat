@echo off
set PATH=\Bin\ant\bin;%PATH%
set PATH=\Bin\cygwin64\bin;%PATH%
set PATH=\Bin\jdk180\bin;%PATH%
set JAVA_HOME=\Bin\jdk180\bin
call ant.bat build
pause
