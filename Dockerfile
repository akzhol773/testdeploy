# Use a base image with JDK 11
FROM openjdk:11-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the application jar from target folder to the working directory
COPY target/testdeploy-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app is running on
EXPOSE 9090

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
