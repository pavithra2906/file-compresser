@echo off
echo ========================================
echo   Starting with Docker Compose
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

echo Building and starting containers...
docker-compose up -d --build

if errorlevel 1 (
    echo ERROR: Docker Compose failed
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
echo To view logs: docker-compose logs -f
echo To stop: docker-compose down
echo.
pause

