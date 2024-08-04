FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar
COPY ${JAR_FILE} spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Dserver.port=8080 -Djava.security.egd=file:/dev/./urandom -jar /spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
