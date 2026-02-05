# STAGE 1: Build
FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# STAGE 2: Run
FROM eclipse-temurin:17-jdk-alpine
COPY --from=build /target/*.jar app.jar
EXPOSE 10000
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=10000"]