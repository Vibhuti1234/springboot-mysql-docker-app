FROM openjdk:8-jre-alpine
ENV PORT 8084
EXPOSE 8084
WORKDIR /app
COPY target/spring-boot-aws-0.0.1-SNAPSHOT.jar /app/user-service.jar
ENTRYPOINT exec java $JAVA_OPTS -jar user-service.jar