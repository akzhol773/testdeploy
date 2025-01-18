FROM openjdk:17-jdk-slim
COPY target/testdeploy-0.0.1-SNAPSHOT.jar.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
