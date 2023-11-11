FROM node:20 as build
WORKDIR /app
COPY package*.json ./
RUN apt-get update && apt-get install -y npm && npm ci
COPY . .
RUN ng build
