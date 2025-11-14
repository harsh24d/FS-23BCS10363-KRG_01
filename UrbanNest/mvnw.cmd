@echo off
REM ----------------------------------------------------------------------------
REM Licensed to the Apache Software Foundation (ASF) under one or more
REM contributor license agreements.  See the NOTICE file distributed with this
REM work for additional information regarding copyright ownership.
REM The ASF licenses this file to You under the Apache License, Version 2.0
REM (the "License"); you may not use this file except in compliance with
REM the License.  You may obtain a copy of the License at
REM
REM    https://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software
REM distributed under the License is distributed on an "AS IS" BASIS,
REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM See the License for the specific language governing permissions and
REM limitations under the License.
REM ----------------------------------------------------------------------------

setlocal EnableDelayedExpansion

set ERROR_CODE=0

set MAVEN_PROJECTBASEDIR=%MAVEN_BASEDIR%
IF NOT "%MAVEN_PROJECTBASEDIR%"=="" goto endDetectBaseDir

set EXEC_DIR=%CD%
set WDIR=%EXEC_DIR%
:findBaseDir
IF EXIST "%WDIR%\.mvn" goto baseDirFound
cd ..
IF "%WDIR%"=="%CD%" goto baseDirNotFound
set WDIR=%CD%
goto findBaseDir

:baseDirFound
set MAVEN_PROJECTBASEDIR=%WDIR%
cd "%EXEC_DIR%"
goto endDetectBaseDir

:baseDirNotFound
set MAVEN_PROJECTBASEDIR=%EXEC_DIR%
cd "%EXEC_DIR%"

:endDetectBaseDir

IF EXIST "%MAVEN_PROJECTBASEDIR%\.mvn\jvm.config" (
  set JVM_CONFIG_MAVEN_PROPS=
  for /F "usebackq delims=" %%A in ("%MAVEN_PROJECTBASEDIR%\.mvn\jvm.config") do set JVM_CONFIG_MAVEN_PROPS=!JVM_CONFIG_MAVEN_PROPS! %%A
)

set JAVACMD=%JAVA_HOME%\bin\java.exe
if not exist "%JAVACMD%" set JAVACMD=java.exe

if "%JAVA_HOME%"=="" goto skipJavaHomeWarning
if exist "%JAVACMD%" goto checkWrapperJar

:skipJavaHomeWarning
where java.exe >nul 2>nul
IF ERRORLEVEL 1 goto missingJavaExe

:checkWrapperJar
set WRAPPER_JAR=%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.jar
set WRAPPER_PROPERTIES=%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.properties

IF EXIST "%WRAPPER_JAR%" goto afterWrapperDownload

IF NOT EXIST "%WRAPPER_PROPERTIES%" goto downloadError

for /F "usebackq tokens=1,2 delims==" %%A in ("%WRAPPER_PROPERTIES%") do (
  if "%%A"=="wrapperUrl" set WRAPPER_URL=%%B
)

IF "%WRAPPER_URL%"=="" goto downloadError

echo Downloading Maven Wrapper JAR from %WRAPPER_URL%
powershell -Command "Try { Invoke-WebRequest -Uri '%WRAPPER_URL%' -OutFile '%WRAPPER_JAR%' -UseBasicParsing } Catch { Exit 1 }"
IF ERRORLEVEL 1 goto downloadError

:afterWrapperDownload
set MAVEN_CMD_LINE_ARGS=%*
"%JAVACMD%" %JVM_CONFIG_MAVEN_PROPS% %MAVEN_OPTS% -classpath "%WRAPPER_JAR%" "-Dmaven.multiModuleProjectDirectory=%MAVEN_PROJECTBASEDIR%" org.apache.maven.wrapper.MavenWrapperMain %*
goto end

:downloadError
echo Error: Failed to download Maven Wrapper from provided URL.
set ERROR_CODE=1
goto end

:missingJavaExe
echo Error: JAVA_HOME is not defined correctly.
echo   We cannot execute %JAVACMD%
set ERROR_CODE=1

:end
endlocal & exit /B %ERROR_CODE%
