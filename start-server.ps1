# PowerShell script to start the Java Web Server

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Starting Java Web Server" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Java is installed
try {
    $javaVersion = java -version 2>&1
    Write-Host "Java found:" -ForegroundColor Green
    Write-Host $javaVersion[0] -ForegroundColor Gray
} catch {
    Write-Host "ERROR: Java is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Java 17 or higher" -ForegroundColor Red
    exit 1
}

# Kill existing processes on port 8080
Write-Host "Checking for existing processes on port 8080..." -ForegroundColor Yellow
$processes = Get-NetTCPConnection -LocalPort 8080 -ErrorAction SilentlyContinue | Select-Object -ExpandProperty OwningProcess -Unique
foreach ($pid in $processes) {
    Write-Host "Killing process $pid on port 8080..." -ForegroundColor Yellow
    Stop-Process -Id $pid -Force -ErrorAction SilentlyContinue
}

Start-Sleep -Seconds 2

# Compile if needed
if (-not (Test-Path "JavaWebServer.class")) {
    Write-Host "Compiling Java files..." -ForegroundColor Yellow
    javac JavaWebServer.java FileCompressor.java CompressionResult.java
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: Compilation failed" -ForegroundColor Red
        exit 1
    }
}

# Start the server
Write-Host ""
Write-Host "Starting server..." -ForegroundColor Green
Write-Host ""
java JavaWebServer

