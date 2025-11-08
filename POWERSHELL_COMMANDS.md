# PowerShell Commands

## Starting the Server
```powershell
.\start-server.ps1
```

## Docker Operations
```powershell
# Build and start
docker-compose up -d --build

# View logs
docker-compose logs -f

# Stop
docker-compose down

# Restart
docker-compose restart
```

## Checking Port 8080
```powershell
Get-NetTCPConnection -LocalPort 8080
```

## Killing Process on Port 8080
```powershell
$processes = Get-NetTCPConnection -LocalPort 8080 | Select-Object -ExpandProperty OwningProcess -Unique
foreach ($pid in $processes) {
    Stop-Process -Id $pid -Force
}
```

## Compiling Java Files
```powershell
javac JavaWebServer.java FileCompressor.java CompressionResult.java
```

## Running Java Application
```powershell
java JavaWebServer
```

