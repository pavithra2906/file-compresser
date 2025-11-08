@echo off
echo Starting File Compression Server...
echo.

REM Compile if needed
if not exist "JavaWebServer.class" (
    echo Compiling...
    javac JavaWebServer.java FileCompressor.java CompressionResult.java
)

REM Start server
java JavaWebServer

