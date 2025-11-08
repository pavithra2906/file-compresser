# Java Web Server - File Compression Utility

A pure Java web server implementation for file compression and decompression.

## Architecture
- **Backend**: Java HTTP Server (com.sun.net.httpserver)
- **Frontend**: Server-rendered HTML
- **Compression**: GZIP and ZIP formats
- **No Dependencies**: Uses only Java standard library

## Server Endpoints
- `/` - Home page
- `/compress` - Compression page
- `/decompress` - Decompression page
- `/api/compress` - Compression API endpoint
- `/api/decompress` - Decompression API endpoint

## Building
```bash
javac JavaWebServer.java FileCompressor.java CompressionResult.java
```

## Running
```bash
java JavaWebServer
```

## Configuration
- Port: 8080 (configurable in JavaWebServer.java)
- Network binding: 0.0.0.0 (all interfaces)

