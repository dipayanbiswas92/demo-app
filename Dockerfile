FROM openjdk:8-jdk

LABEL maintainer "PPES DevOps Team <ppes.devops@accenture.com>" 

RUN apt-get update && apt-get install -y maven curl

COPY . /usr/src/vodacom/app/

WORKDIR /usr/src/vodacom/app/

RUN mvn clean install

EXPOSE 8080
