# Start from OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /a

# Copy the JAR file
COPY target/*.jar a.jar

# Expose port (optional, for documentation)
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "a.jar"]
