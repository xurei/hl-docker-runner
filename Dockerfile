FROM node:7.0.0

USER root

WORKDIR /home/app
RUN npm install mocha@^3.2.0 chai@^3.5.0
RUN apt-get update && apt-get install -y openjdk-7-jre openjdk-7-jdk