@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\Construempleo\xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\ingres\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\ingres\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\mysql\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\mysql\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\postgresql\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\apache\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\apache\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\openoffice\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\apache-tomcat\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\resin\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\resin\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\jetty\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\jetty\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\subversion\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\Construempleo\xampp\lucene\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\lucene\scripts\ctl.bat START)
if exist D:\Construempleo\xampp\third_application\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\Construempleo\xampp\third_application\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\third_application\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\lucene\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\Construempleo\xampp\subversion\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\subversion\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\jetty\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\jetty\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\resin\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\resin\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\Construempleo\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\openoffice\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\apache\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\apache\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\ingres\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\ingres\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\mysql\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\mysql\scripts\ctl.bat STOP)
if exist D:\Construempleo\xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\Construempleo\xampp\postgresql\scripts\ctl.bat STOP)

:end

