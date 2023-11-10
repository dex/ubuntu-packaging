FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
RUN sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
RUN apt update
RUN apt install -y packaging-dev vim

VOLUME /Develop

WORKDIR /Develop
