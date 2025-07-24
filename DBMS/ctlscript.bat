@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\musa\Desktop\6Th_Semester\dbs\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\ingres\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\ingres\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\mysql\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\mysql\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\postgresql\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\apache\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\apache\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\openoffice\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\resin\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\resin\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\jetty\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\jetty\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\subversion\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\lucene\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\lucene\scripts\ctl.bat START)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\third_application\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\third_application\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\third_application\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\lucene\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\subversion\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\subversion\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\jetty\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\jetty\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\resin\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\resin\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\musa\Desktop\6Th_Semester\dbs\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\apache\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\apache\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\ingres\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\ingres\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\mysql\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\mysql\scripts\ctl.bat STOP)
if exist C:\Users\musa\Desktop\6Th_Semester\dbs\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\musa\Desktop\6Th_Semester\dbs\postgresql\scripts\ctl.bat STOP)

:end

