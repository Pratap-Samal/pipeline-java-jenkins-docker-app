# Use OpenJDK base image
FROM eclipse-temurin:17-jdk     


WORKDIR /app

COPY target/pipeline-java-jenkins-docker-app-0.0.1-SNAPSHOT.jar app.jar



ENTRYPOINT ["java", "-jar", "app.jar"]
