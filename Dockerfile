FROM java:8-jre-alpine
MAINTAINER Steve Sloka <steve@stevesloka.com>

EXPOSE 8443

RUN mkdir -p /app
RUN mkdir -p /data/logs
COPY ./build/libs/java-microservice-0.0.1-SNAPSHOT.jar /app/app-0.0.1-SNAPSHOT.jar

WORKDIR /app
CMD ["java", "-jar", "app-0.0.1-SNAPSHOT.jar"]