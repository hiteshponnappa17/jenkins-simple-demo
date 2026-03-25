FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/myapp.jar /app/myapp.jar
CMD ["java", "-jar", "myapp.jar"]
