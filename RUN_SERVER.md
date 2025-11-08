# How to Run the Server

## Method 1: Docker Compose (Easiest)
```bash
docker-compose up -d --build
```

## Method 2: Manual Java Execution
```bash
# Compile
javac JavaWebServer.java FileCompressor.java CompressionResult.java

# Run
java JavaWebServer
```

## Method 3: Batch Script (Windows)
Double-click `start-java-server.bat`

## Method 4: PowerShell Script (Windows)
```powershell
.\start-server.ps1
```

## Accessing the Application
Once the server is running, open your browser and navigate to:
- **Local**: http://localhost:8080
- **Network**: http://<your-ip>:8080 (for mobile access)

## Stopping the Server
- **Docker**: `docker-compose down`
- **Manual**: Press `Ctrl+C` in the terminal
- **Windows**: Close the command window

## Port Configuration
The server runs on port 8080 by default. If you need to change it, modify the `PORT` constant in `JavaWebServer.java`.

