FROM openjdk:8-jdk

LABEL maintainer "PPES DevOps Team <ppes.devops@accenture.com>" 

ENV http_proxy 'http://vf-root\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80'
ENV https_proxy 'http://vf-root\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80'
ENV ftp_proxy 'http://vf-root\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80'
ENV HTTP_PROXY 'http://vf-root\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80'
ENV HTTPS_PROXY 'http://vf-root\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80'
ENV FTP_PROXY 'http://vf-root\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80'

#RUN export http_proxy="http://vf-root\\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80" && \
#export https_proxy="http://vf-root\\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80"  && \
#export ftp_proxy="http://vf-root\\biswasd01:VZaL2054051@vfproxy.vodacom.corp:80" 

RUN apt-get update && apt-get install -y maven curl

COPY . /usr/src/vodacom/app/

WORKDIR /usr/src/vodacom/app/

RUN mvn clean install

EXPOSE 8080
