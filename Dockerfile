FROM openjdk:8-jdk

LABEL maintainer "PPES DevOps Team <ppes.devops@accenture.com>" 

RUN apt-get update && apt-get install -y maven curl

COPY . /usr/src/vodacom/app/

WORKDIR /usr/src/vodacom/app/

RUN mvn clean install -Dhttp.proxyHost=zactn13001p1.vodacom.corp -Dhttp.proxyPort=8080 -Dhttps.proxyHost=zactn13001p1.vodacom.corp -Dhttps.proxyPort=8080

WORKDIR /usr/src/vodacom/app/target

CMD ["java","-jar","SampleProject-0.0.1-SNAPSHOT.jar"

EXPOSE 8080
