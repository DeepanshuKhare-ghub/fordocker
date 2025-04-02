# Use official OpenJDK image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/demo-app.jar  demo-app.jar

# Expose port 8080 (or your app port)
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "demo-app.jar"]
