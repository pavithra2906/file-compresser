@echo off
echo ========================================
echo   Starting Java Web Server
echo ========================================
echo.

REM Check if Java is installed
java -version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Java is not installed or not in PATH
    echo Please install Java 17 or higher
    pause
    exit /b 1
)

REM Kill any existing process on port 8080
echo Checking for existing processes on port 8080...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8080 ^| findstr LISTENING') do (
    echo Killing process %%a on port 8080...
    taskkill /F /PID %%a >nul 2>&1
)

REM Kill any existing JavaWebServer processes
echo Checking for existing JavaWebServer processes...
for /f "tokens=2" %%a in ('tasklist /FI "IMAGENAME eq java.exe" /FO CSV ^| findstr /i "java"') do (
    wmic process where "name='java.exe' and commandline like '%%JavaWebServer%%'" delete >nul 2>&1
)

timeout /t 2 /nobreak >nul

REM Compile if needed
if not exist "JavaWebServer.class" (
    echo Compiling Java files...
    javac JavaWebServer.java FileCompressor.java CompressionResult.java
    if errorlevel 1 (
        echo ERROR: Compilation failed
        pause
        exit /b 1
    )
)

REM Start the server
echo.
echo Starting server...
echo.
java JavaWebServer

pause

