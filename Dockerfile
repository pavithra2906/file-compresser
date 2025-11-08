# Use Eclipse Temurin (Adoptium) as base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy Java source files
COPY JavaWebServer.java .
COPY FileCompressor.java .
COPY CompressionResult.java .

# Copy documentation and static files
COPY README.md .
COPY index.html .

# Compile Java files
RUN javac JavaWebServer.java FileCompressor.java CompressionResult.java

# Expose port 8080
EXPOSE 8080

# Run the server
CMD ["java", "JavaWebServer"]

