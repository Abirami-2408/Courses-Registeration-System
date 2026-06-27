FROM maven:3.9.6-eclipse-temurin-17
WORKDIR /app
COPY Courses-Registeration-System/pom.xml .
COPY Courses-Registeration-System/src ./src
RUN mvn clean package -DskipTests
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/Courses-Registeration-System-0.0.1-SNAPSHOT.jar"]
