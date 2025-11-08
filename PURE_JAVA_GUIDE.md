# Pure Java Implementation Guide

This project uses only Java standard library - no frameworks, no external dependencies.

## Why Pure Java?
- **Simplicity**: No dependency management
- **Portability**: Runs anywhere Java runs
- **Security**: No third-party code
- **Learning**: Understand core Java I/O

## Implementation Details

### File I/O Streams
The project uses Java's stream-based I/O:
- `FileInputStream` / `FileOutputStream` - File operations
- `BufferedInputStream` / `BufferedOutputStream` - Performance
- `GZIPOutputStream` / `GZIPInputStream` - GZIP compression
- `ZipOutputStream` / `ZipInputStream` - ZIP compression

### HTTP Server
Uses Java's built-in HTTP server:
- `com.sun.net.httpserver.HttpServer`
- No need for Tomcat, Jetty, or other servers
- Lightweight and simple

### Multipart Form Parsing
Custom implementation for file uploads:
- Parses multipart/form-data manually
- Handles binary file data correctly
- No external libraries needed

## Benefits
1. **Easy Deployment**: Just compile and run
2. **Small Footprint**: No large frameworks
3. **Fast Startup**: Minimal overhead
4. **Educational**: Learn Java fundamentals

