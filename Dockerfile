FROM ubuntu:latest

RUN apt update
RUN apt install -y packaging-dev vim

VOLUME /Develop

WORKDIR /Develop
