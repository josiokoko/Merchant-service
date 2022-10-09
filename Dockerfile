FROM openjdk:11
# FROM openjdk:8-alpine
# FROM maven:3.3-jdk-8

# #Required for starting application up.
# RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/merchant-0.0.1-SNAPSHOT.jar $PROJECT_HOME/merchant.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./merchant.jar"]
