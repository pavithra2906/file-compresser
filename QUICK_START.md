# Quick Start Guide

## Prerequisites
- Java 17 or higher
- Docker (optional, for containerized deployment)

## Running the Application

### Option 1: Using Docker (Recommended)
```bash
docker-compose up -d --build
```
Then open http://localhost:8080 in your browser.

### Option 2: Manual Setup
1. Compile the Java files:
   ```bash
   javac JavaWebServer.java FileCompressor.java CompressionResult.java
   ```

2. Run the server:
   ```bash
   java JavaWebServer
   ```

3. Open http://localhost:8080 in your browser.

### Option 3: Using Batch Scripts (Windows)
- Double-click `start-java-server.bat` to start the server
- Or use `docker-compose-up.bat` for Docker deployment

## Features
- Compress files using GZIP or ZIP
- Decompress .gz and .zip files
- Web-based interface accessible from any device
- Mobile-friendly design

## Troubleshooting
- **Port 8080 already in use**: The start script will automatically kill existing processes
- **Firewall blocking**: Run `configure-firewall.bat` as Administrator
- **Java not found**: Install Java 17+ and ensure it's in your PATH

