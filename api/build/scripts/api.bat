@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  api startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and API_OPTS to pass JVM options to this script.
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

set CLASSPATH=%APP_HOME%\lib\api-0.1.0-SNAPSHOT.jar;%APP_HOME%\lib\groovy-all-2.4.1.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jersey-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-security-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-hystrix-1.0.0.RC3.jar;%APP_HOME%\lib\spring-cloud-netflix-hystrix-amqp-1.0.0.RC3.jar;%APP_HOME%\lib\spring-integration-java-dsl-1.0.0.RELEASE.jar;%APP_HOME%\lib\spring-integration-amqp-4.1.1.RELEASE.jar;%APP_HOME%\lib\core-0.1.0-SNAPSHOT.jar;%APP_HOME%\lib\jersey-media-multipart-2.13.jar;%APP_HOME%\lib\jaxrs-ast-0.1.11.jar;%APP_HOME%\lib\jaxrs-providers-0.0.4.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.10.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.10.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.10.jar;%APP_HOME%\lib\logback-classic-1.1.2.jar;%APP_HOME%\lib\spring-boot-starter-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.2.2.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.4.5.jar;%APP_HOME%\lib\hibernate-validator-5.1.3.Final.jar;%APP_HOME%\lib\spring-core-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-web-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-actuator-1.2.2.RELEASE.jar;%APP_HOME%\lib\jersey-server-2.14.jar;%APP_HOME%\lib\jersey-container-servlet-core-2.14.jar;%APP_HOME%\lib\jersey-container-servlet-2.14.jar;%APP_HOME%\lib\jersey-spring3-2.14.jar;%APP_HOME%\lib\jersey-media-json-jackson-2.14.jar;%APP_HOME%\lib\spring-beans-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-context-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-security-config-3.2.6.RELEASE.jar;%APP_HOME%\lib\spring-security-web-3.2.6.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.1.5.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-1.0.0.RC3.jar;%APP_HOME%\lib\spring-cloud-netflix-core-1.0.0.RC3.jar;%APP_HOME%\lib\hystrix-core-1.4.0.jar;%APP_HOME%\lib\hystrix-metrics-event-stream-1.4.0.jar;%APP_HOME%\lib\hystrix-javanica-1.4.0-RC6.jar;%APP_HOME%\lib\spring-cloud-commons-1.0.0.RC3.jar;%APP_HOME%\lib\spring-boot-starter-amqp-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-integration-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-rabbit-1.4.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-1.2.2.RELEASE.jar;%APP_HOME%\lib\commons-0.1.0-SNAPSHOT.jar;%APP_HOME%\lib\domain-0.1.0-SNAPSHOT.jar;%APP_HOME%\lib\binding-util-0.1.15.jar;%APP_HOME%\lib\gson-2.3.1.jar;%APP_HOME%\lib\okhttp-2.2.0.jar;%APP_HOME%\lib\exceptions-0.1.2.jar;%APP_HOME%\lib\spring-security-oauth2-2.0.6.RELEASE.jar;%APP_HOME%\lib\commons-validator-1.4.1.jar;%APP_HOME%\lib\postgresql-9.3-1102-jdbc41.jar;%APP_HOME%\lib\flyway-core-3.0.jar;%APP_HOME%\lib\mimepull-1.9.3.jar;%APP_HOME%\lib\slf4j-api-1.7.10.jar;%APP_HOME%\lib\logback-core-1.1.2.jar;%APP_HOME%\lib\spring-boot-1.2.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.2.2.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.14.jar;%APP_HOME%\lib\tomcat-embed-core-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-el-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.0.20.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.1.3.GA.jar;%APP_HOME%\lib\classmate-1.0.0.jar;%APP_HOME%\lib\jersey-client-2.14.jar;%APP_HOME%\lib\javax.ws.rs-api-2.0.1.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\hk2-api-2.4.0-b06.jar;%APP_HOME%\lib\javax.inject-2.4.0-b06.jar;%APP_HOME%\lib\hk2-locator-2.4.0-b06.jar;%APP_HOME%\lib\hk2-2.4.0-b06.jar;%APP_HOME%\lib\spring-bridge-2.4.0-b06.jar;%APP_HOME%\lib\jackson-jaxrs-base-2.3.2.jar;%APP_HOME%\lib\jackson-jaxrs-json-provider-2.3.2.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\spring-security-core-3.2.6.RELEASE.jar;%APP_HOME%\lib\spring-cloud-config-client-1.0.0.RC3.jar;%APP_HOME%\lib\archaius-core-0.4.1.jar;%APP_HOME%\lib\rxjava-1.0.7.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\guava-15.0.jar;%APP_HOME%\lib\jsr305-2.0.0.jar;%APP_HOME%\lib\commons-lang3-3.1.jar;%APP_HOME%\lib\spring-messaging-4.1.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-integration-file-4.1.1.RELEASE.jar;%APP_HOME%\lib\spring-integration-http-4.1.1.RELEASE.jar;%APP_HOME%\lib\spring-integration-ip-4.1.1.RELEASE.jar;%APP_HOME%\lib\spring-integration-stream-4.1.1.RELEASE.jar;%APP_HOME%\lib\amqp-client-3.4.2.jar;%APP_HOME%\lib\spring-retry-1.1.2.RELEASE.jar;%APP_HOME%\lib\spring-amqp-1.4.1.RELEASE.jar;%APP_HOME%\lib\spring-jdbc-4.1.5.RELEASE.jar;%APP_HOME%\lib\tomcat-jdbc-8.0.20.jar;%APP_HOME%\lib\joda-time-2.7.jar;%APP_HOME%\lib\usertype.jodatime-2.0.1.jar;%APP_HOME%\lib\gorm-hibernate4-spring-boot-1.1.0.RELEASE.jar;%APP_HOME%\lib\grails-datastore-gorm-hibernate4-3.1.3.RELEASE.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\okio-1.2.0.jar;%APP_HOME%\lib\lombok-1.14.8.jar;%APP_HOME%\lib\commons-codec-1.6.jar;%APP_HOME%\lib\jackson-mapper-asl-1.9.13.jar;%APP_HOME%\lib\commons-beanutils-1.8.3.jar;%APP_HOME%\lib\commons-digester-1.8.1.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\hk2-utils-2.4.0-b06.jar;%APP_HOME%\lib\aopalliance-repackaged-2.4.0-b06.jar;%APP_HOME%\lib\javassist-3.18.1-GA.jar;%APP_HOME%\lib\config-types-2.4.0-b06.jar;%APP_HOME%\lib\core-2.4.0-b06.jar;%APP_HOME%\lib\hk2-config-2.4.0-b06.jar;%APP_HOME%\lib\hk2-runlevel-2.4.0-b06.jar;%APP_HOME%\lib\class-model-2.4.0-b06.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.3.2.jar;%APP_HOME%\lib\spring-security-crypto-3.2.5.RELEASE.jar;%APP_HOME%\lib\commons-configuration-1.8.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\tomcat-juli-8.0.20.jar;%APP_HOME%\lib\usertype.spi-2.0.1.jar;%APP_HOME%\lib\spring-boot-cli-1.1.1.RELEASE.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\tiger-types-1.4.jar;%APP_HOME%\lib\bean-validator-2.4.0-b06.jar;%APP_HOME%\lib\asm-all-repackaged-2.4.0-b06.jar;%APP_HOME%\lib\spring-boot-loader-tools-1.1.1.RELEASE.jar;%APP_HOME%\lib\maven-aether-provider-3.2.1.jar;%APP_HOME%\lib\jline-2.11.jar;%APP_HOME%\lib\jopt-simple-4.6.jar;%APP_HOME%\lib\aether-connector-basic-0.9.1.v20140329.jar;%APP_HOME%\lib\maven-settings-builder-3.1.1.jar;%APP_HOME%\lib\aether-api-0.9.1.v20140329.jar;%APP_HOME%\lib\aether-impl-0.9.1.v20140329.jar;%APP_HOME%\lib\aether-spi-0.9.1.v20140329.jar;%APP_HOME%\lib\aether-transport-file-0.9.1.v20140329.jar;%APP_HOME%\lib\aether-transport-http-0.9.1.v20140329.jar;%APP_HOME%\lib\aether-util-0.9.1.v20140329.jar;%APP_HOME%\lib\maven-model-3.2.1.jar;%APP_HOME%\lib\maven-model-builder-3.2.1.jar;%APP_HOME%\lib\maven-repository-metadata-3.2.1.jar;%APP_HOME%\lib\plexus-component-annotations-1.5.5.jar;%APP_HOME%\lib\plexus-utils-3.0.17.jar;%APP_HOME%\lib\plexus-interpolation-1.19.jar;%APP_HOME%\lib\maven-settings-3.1.1.jar;%APP_HOME%\lib\plexus-sec-dispatcher-1.3.jar;%APP_HOME%\lib\httpclient-4.2.6.jar;%APP_HOME%\lib\plexus-cipher-1.4.jar;%APP_HOME%\lib\httpcore-4.2.5.jar;%APP_HOME%\lib\jersey-bean-validation-2.14.jar;%APP_HOME%\lib\javax.el-api-2.2.4.jar;%APP_HOME%\lib\javax.el-2.2.4.jar;%APP_HOME%\lib\spring-integration-core-4.1.1.RELEASE.jar;%APP_HOME%\lib\reactor-core-1.1.4.RELEASE.jar;%APP_HOME%\lib\gs-collections-5.1.0.jar;%APP_HOME%\lib\disruptor-3.2.1.jar;%APP_HOME%\lib\jsr166e-1.0.jar;%APP_HOME%\lib\gs-collections-api-5.1.0.jar;%APP_HOME%\lib\jersey-common-2.14.jar;%APP_HOME%\lib\jersey-guava-2.14.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.1.jar;%APP_HOME%\lib\spring-tx-4.1.5.RELEASE.jar;%APP_HOME%\lib\aspectjrt-1.8.4.jar;%APP_HOME%\lib\aspectjweaver-1.8.4.jar;%APP_HOME%\lib\grails-datastore-gorm-hibernate-core-3.1.3.RELEASE.jar;%APP_HOME%\lib\hibernate-core-4.3.5.Final.jar;%APP_HOME%\lib\hibernate-commons-annotations-4.0.4.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\grails-core-2.3.11.jar;%APP_HOME%\lib\grails-async-2.3.11.jar;%APP_HOME%\lib\grails-datastore-gorm-plugin-support-3.1.3.RELEASE.jar;%APP_HOME%\lib\grails-datastore-gorm-3.1.3.RELEASE.jar;%APP_HOME%\lib\spring-orm-3.2.9.RELEASE.jar;%APP_HOME%\lib\grails-datastore-core-3.1.3.RELEASE.jar;%APP_HOME%\lib\grails-bootstrap-2.3.11.jar;%APP_HOME%\lib\jta-1.1.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jboss-logging-annotations-1.2.0.Beta1.jar;%APP_HOME%\lib\jboss-transaction-api_1.2_spec-1.0.0.Final.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\jandex-1.1.0.Final.jar;%APP_HOME%\lib\gpars-1.1.0.jar;%APP_HOME%\lib\concurrentlinkedhashmap-lru-1.3.1.jar;%APP_HOME%\lib\multiverse-core-0.7.0.jar;%APP_HOME%\lib\jsr166y-1.7.0.jar;%APP_HOME%\lib\jackson-core-asl-1.9.13.jar;%APP_HOME%\lib\jackson-annotations-2.4.0.jar;%APP_HOME%\lib\jackson-core-2.4.5.jar

@rem Execute api
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %API_OPTS%  -classpath "%CLASSPATH%" gex.example.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable API_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%API_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
