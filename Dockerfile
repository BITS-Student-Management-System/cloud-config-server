#define base docker image
FROM openjdk:8-jdk-alpine
LABEL maintainer="roopika.srinivas"
EXPOSE 9296
ADD target/cloud-config-server-0.0.1-SNAPSHOT.jar cloud-config-server.jar
ENTRYPOINT ["java","-jar","cloud-config-server.jar"]
