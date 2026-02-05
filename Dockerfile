# Step 1: Use a Java 17 image
FROM openjdk:17-jdk-slim

# Step 2: Copy the built JAR file into the container
# Note: This path assumes your Maven build creates a jar in the /target folder
COPY target/*.jar app.jar

# Step 3: Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]