# Use official OpenJDK image
FROM eclipse-temurin:21-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/demo-app.jar  demo-app.jar

# Expose port 8080 (or your app port)
EXPOSE 9090

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "demo-app.jar"]
