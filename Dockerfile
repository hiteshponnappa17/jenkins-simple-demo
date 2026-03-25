FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . /app
RUN javac Main.java
CMD ["java", "Main"]
