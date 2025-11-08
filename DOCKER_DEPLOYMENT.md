# Docker Deployment Guide

This guide explains how to deploy the File Compression Utility using Docker.

## Prerequisites

- Docker installed on your system
- Docker Compose (optional, but recommended)

## Quick Start

### Method 1: Using Docker Compose (Recommended)

1. **Build and run the container:**
   ```bash
   docker-compose up -d
   ```

2. **View logs:**
   ```bash
   docker-compose logs -f
   ```

3. **Stop the container:**
   ```bash
   docker-compose down
   ```

### Method 2: Using Docker Commands

1. **Build the Docker image:**
   ```bash
   docker build -t file-compressor .
   ```

2. **Run the container:**
   ```bash
   docker run -d -p 8080:8080 --name file-compressor-app file-compressor
   ```

3. **View logs:**
   ```bash
   docker logs -f file-compressor-app
   ```

4. **Stop the container:**
   ```bash
   docker stop file-compressor-app
   docker rm file-compressor-app
   ```

## Accessing the Application

Once the container is running, access the application at:
- **Local:** http://localhost:8080
- **Network:** http://<your-ip>:8080

## Container Management

### View running containers:
```bash
docker ps
```

### Restart the container:
```bash
docker-compose restart
# or
docker restart file-compressor-app
```

### Remove the container and image:
```bash
docker-compose down --rmi all
# or
docker stop file-compressor-app
docker rm file-compressor-app
docker rmi file-compressor
```

## Troubleshooting

### Port already in use
If port 8080 is already in use, change it in `docker-compose.yml`:
```yaml
ports:
  - "8081:8080"  # Use 8081 on host, 8080 in container
```

### View container logs
```bash
docker logs file-compressor-app
```

### Access container shell
```bash
docker exec -it file-compressor-app /bin/bash
```

## Production Deployment

For production, consider:
- Using environment variables for configuration
- Setting up reverse proxy (nginx)
- Adding SSL/TLS certificates
- Configuring resource limits
- Setting up health checks

