@echo off
echo ========================================
echo   Configuring Windows Firewall
echo ========================================
echo.
echo This script will add a firewall rule to allow
echo incoming connections on port 8080.
echo.
echo NOTE: This script requires Administrator privileges.
echo.
pause

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: This script must be run as Administrator
    echo Right-click and select "Run as administrator"
    pause
    exit /b 1
)

echo Adding firewall rule for port 8080...
netsh advfirewall firewall add rule name="File Compressor Server" dir=in action=allow protocol=TCP localport=8080

if errorlevel 1 (
    echo ERROR: Failed to add firewall rule
    pause
    exit /b 1
)

echo.
echo Firewall rule added successfully!
echo Port 8080 is now open for incoming connections.
echo.
pause

