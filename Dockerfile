# Step 1: Use a reliable Java 17 image (Eclipse Temurin)
FROM eclipse-temurin:17-jdk-alpine

# Step 2: Create a directory for the app
WORKDIR /app

# Step 3: Copy the built JAR file into the container
# This assumes your Maven build puts the jar in target/
COPY target/*.jar app.jar

# Step 4: Run the application
# We use -Dserver.port=10000 because Render expects that port
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=10000"]