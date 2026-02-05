📔 Personal Contact Diary - Backend (API)
This is the robust Java-based REST API that powers the Personal Contact Diary. It handles data persistence, security, and contact management logic.

✨ Key Features
RESTful API: Clean endpoints for CRUD (Create, Read, Delete) operations.

Spring Security: Protected by Basic Authentication to ensure only authorized users can manage contacts.

H2 Persistence: Uses a file-based H2 database, so your data stays safe even after the server restarts.

Auto-Schema Generation: Uses Hibernate ddl-auto to manage database tables automatically.

🛠️ Tech Stack
Language: Java 17

Framework: Spring Boot 3.x

Data Access: Spring Data JPA

Database: H2 (File-based)

Build Tool: Maven

🚀 Getting Started
1. Prerequisites
   Java 17 or higher installed.

Maven installed.

Frontend UI: You will need the React Frontend to interact with this API visually.

2. Environment Setup
   Create a .env file in the project root folder:

Plaintext
DB_USERNAME=admin
DB_PASSWORD=your_secure_password
3. Configuration
   Ensure your src/main/resources/application.properties includes the security link:

Properties
spring.security.user.name=${DB_USERNAME}
spring.security.user.password=${DB_PASSWORD}
spring.datasource.url=jdbc:h2:file:./data/contact_db
spring.jpa.hibernate.ddl-auto=update
4. Run the Application
   Using your terminal or IntelliJ IDEA:

Bash
mvn spring-boot:run
The server will start on http://localhost:8081.

