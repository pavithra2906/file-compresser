@echo off
echo ========================================
echo   Building and Running Docker Container
echo ========================================
echo.

REM Check if Docker is running
docker info >nul 2>&1
if errorlevel 1 (
    echo ERROR: Docker is not running or not installed
    echo Please start Docker Desktop
    pause
    exit /b 1
)

echo Building Docker image...
docker build -t file-compressor:latest .

if errorlevel 1 (
    echo ERROR: Docker build failed
    pause
    exit /b 1
)

echo.
echo Stopping and removing existing container (if any)...
docker stop file-compressor-app >nul 2>&1
docker rm file-compressor-app >nul 2>&1

echo.
echo Starting container...
docker run -d -p 8080:8080 --name file-compressor-app file-compressor:latest

if errorlevel 1 (
    echo ERROR: Failed to start container
    pause
    exit /b 1
)

echo.
echo ========================================
echo   Container started successfully!
echo ========================================
echo.
echo Access the application at: http://localhost:8080
echo.
echo To view logs: docker logs -f file-compressor-app
echo To stop: docker stop file-compressor-app
echo.
pause

