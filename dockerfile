FROM node:latest
MAINTAINER 콘센트 (박원호) toolscomfact@gmail.com

ENV HTTPS_PRIV_KEY="/app/privkey.pem"
ENV HTTPS_CERT="/api/fullchain.pem"

WORKDIR /app
ADD . /app

RUN apt-get update
RUN apt-get install npm
RUN npm install

EXPOSE 443 80

RUN node node.js
