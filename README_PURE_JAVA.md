# Pure Java File Compression Utility

This project demonstrates file compression and decompression using only Java standard library - no external dependencies required.

## Core Components

### FileCompressor.java
Handles all compression and decompression operations:
- `compressFile()` - GZIP compression
- `compressToZip()` - ZIP compression
- `decompressFile()` - GZIP decompression
- `decompressZip()` - ZIP decompression

### JavaWebServer.java
HTTP server implementation:
- Serves web pages
- Handles file uploads
- Processes compression/decompression requests
- Returns results to client

### CompressionResult.java
Encapsulates operation results:
- Success status
- File sizes
- Compression ratio
- Error messages

## Key Features
- Zero external dependencies
- Pure Java implementation
- Server-side processing
- Network accessible

## Usage Example
```java
// Compress a file
CompressionResult result = FileCompressor.compressFile("input.txt", "output.gz");
if (result.isSuccess()) {
    System.out.println("Compressed: " + result.getCompressionRatio() + "%");
}
```

