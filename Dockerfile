FROM node:latest@sha256:6b91515d351353e47b48a2644be4f0581f921b53da0c494be176d6573fe8818e

ENV NODE_OPTIONS=--openssl-legacy-provider

COPY . /app

RUN chown -R node:node /app
WORKDIR /app
USER node
