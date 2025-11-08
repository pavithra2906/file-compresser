# Running the Pure Java Application

## Quick Start
```bash
# Compile
javac *.java

# Run
java JavaWebServer
```

## Detailed Steps

### 1. Prerequisites
- Java 17 or higher installed
- JDK (not just JRE) for compilation

### 2. Compilation
Compile all Java source files:
```bash
javac JavaWebServer.java FileCompressor.java CompressionResult.java
```

This creates `.class` files that can be executed.

### 3. Execution
Run the main class:
```bash
java JavaWebServer
```

### 4. Access
Open your browser to:
- http://localhost:8080

### 5. Stop
Press `Ctrl+C` in the terminal.

## Troubleshooting

### "javac: command not found"
- Install JDK (Java Development Kit)
- Add Java to your PATH

### "Port 8080 already in use"
- Kill the process using port 8080
- Or change the PORT constant in JavaWebServer.java

### "ClassNotFoundException"
- Make sure you're in the directory with .class files
- Or use `java -cp . JavaWebServer`

## Alternative: Use Batch Scripts
- Windows: Double-click `start-java-server.bat`
- PowerShell: Run `.\start-server.ps1`

