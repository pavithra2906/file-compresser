# Docker Deployment Commands

## Method 1: Using Docker Compose (Recommended)

### Step 1: Build and Start the Container
```bash
docker-compose up -d
```

### Step 2: View Logs
```bash
docker-compose logs -f
```

### Step 3: Check Container Status
```bash
docker-compose ps
```

### Step 4: Stop the Container
```bash
docker-compose down
```

### Step 5: Rebuild After Code Changes
```bash
docker-compose up -d --build
```

---

## Method 2: Using Docker Commands Directly

### Step 1: Build the Docker Image
```bash
docker build -t file-compressor .
```

### Step 2: Run the Container
```bash
docker run -d -p 8080:8080 --name file-compressor-app file-compressor
```

### Step 3: View Logs
```bash
docker logs -f file-compressor-app
```

### Step 4: Check Container Status
```bash
docker ps
```

### Step 5: Stop the Container
```bash
docker stop file-compressor-app
```

### Step 6: Start the Container (if stopped)
```bash
docker start file-compressor-app
```

### Step 7: Remove the Container
```bash
docker stop file-compressor-app
docker rm file-compressor-app
```

### Step 8: Remove the Image
```bash
docker rmi file-compressor
```

---

## Quick Deployment (One-Line Commands)

### Build and Run with Docker Compose
```bash
docker-compose up -d --build
```

### Build and Run with Docker
```bash
docker build -t file-compressor . && docker run -d -p 8080:8080 --name file-compressor-app file-compressor
```

---

## Access Your Application

Once deployed, access at:
- **Local:** http://localhost:8080
- **Network:** http://<your-ip>:8080

---

## Troubleshooting Commands

### View Container Logs
```bash
docker logs file-compressor-app
# or
docker-compose logs
```

### Access Container Shell
```bash
docker exec -it file-compressor-app /bin/bash
```

### Check if Port is in Use
```bash
netstat -ano | findstr :8080
# or
docker ps | findstr 8080
```

### Remove All Containers and Images
```bash
docker stop file-compressor-app
docker rm file-compressor-app
docker rmi file-compressor
```

### Clean Up Everything
```bash
docker-compose down --rmi all
```

---

## Windows PowerShell Commands

### Build and Run
```powershell
docker-compose up -d
```

### View Logs
```powershell
docker-compose logs -f
```

### Stop
```powershell
docker-compose down
```

### Rebuild
```powershell
docker-compose up -d --build
```

---

## Linux/Mac Commands

### Build and Run
```bash
docker-compose up -d
```

### View Logs
```bash
docker-compose logs -f
```

### Stop
```bash
docker-compose down
```

### Rebuild
```bash
docker-compose up -d --build
```





