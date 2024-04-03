FROM openjdk:17-oracle

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

WORKDIR /app

COPY target/*.jar /app/app.jar


RUN ls -ltrh /

ENV JAVA_OPTS=""

ENV SPRING_OPTS=""

EXPOSE 8080


ENTRYPOINT ["java", "-jar", "/app.jar"]
