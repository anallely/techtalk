@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  web startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and WEB_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\web-0.1.0-SNAPSHOT.jar;%APP_HOME%\lib\groovy-all-2.4.1.jar;%APP_HOME%\lib\spring-boot-starter-web-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-security-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-hystrix-dashboard-1.0.0.RC3.jar;%APP_HOME%\lib\spring-boot-starter-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.2.2.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.4.5.jar;%APP_HOME%\lib\hibernate-validator-5.1.3.Final.jar;%APP_HOME%\lib\spring-core-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-web-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-context-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-security-config-3.2.6.RELEASE.jar;%APP_HOME%\lib\spring-security-web-3.2.6.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-actuator-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-1.0.0.RC3.jar;%APP_HOME%\lib\spring-cloud-netflix-hystrix-dashboard-1.0.0.RC3.jar;%APP_HOME%\lib\spring-boot-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.2.2.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.14.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\spring-security-core-3.2.6.RELEASE.jar;%APP_HOME%\lib\spring-cloud-config-client-1.0.0.RC3.jar;%APP_HOME%\lib\spring-cloud-commons-1.0.0.RC3.jar;%APP_HOME%\lib\spring-boot-starter-freemarker-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-cloud-netflix-core-1.0.0.RC3.jar;%APP_HOME%\lib\httpclient-4.3.6.jar;%APP_HOME%\lib\hystrix-core-1.4.0.jar;%APP_HOME%\lib\hystrix-metrics-event-stream-1.4.0.jar;%APP_HOME%\lib\jquery-2.1.1.jar;%APP_HOME%\lib\d3js-3.4.11.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.10.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.10.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.10.jar;%APP_HOME%\lib\logback-classic-1.1.2.jar;%APP_HOME%\lib\jackson-annotations-2.4.0.jar;%APP_HOME%\lib\jackson-core-2.4.5.jar;%APP_HOME%\lib\spring-security-crypto-3.2.5.RELEASE.jar;%APP_HOME%\lib\freemarker-2.3.21.jar;%APP_HOME%\lib\spring-context-support-4.1.4.RELEASE.jar;%APP_HOME%\lib\httpcore-4.3.3.jar;%APP_HOME%\lib\commons-codec-1.6.jar;%APP_HOME%\lib\archaius-core-0.4.1.jar;%APP_HOME%\lib\rxjava-1.0.7.jar;%APP_HOME%\lib\jackson-core-asl-1.9.2.jar;%APP_HOME%\lib\commons-configuration-1.8.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\tomcat-embed-core-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-el-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.0.20.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.1.3.GA.jar;%APP_HOME%\lib\classmate-1.0.0.jar;%APP_HOME%\lib\logback-core-1.1.2.jar;%APP_HOME%\lib\slf4j-api-1.7.10.jar;%APP_HOME%\lib\commons-logging-1.2.jar

@rem Execute web
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %WEB_OPTS%  -classpath "%CLASSPATH%" gex.example.web.App %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable WEB_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%WEB_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
