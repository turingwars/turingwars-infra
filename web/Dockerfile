FROM node:10.9-alpine

COPY turing-wars.tgz /turing-wars.tgz

RUN npm install -g /turing-wars.tgz

COPY config.json /config.json

CMD ["turingwars", "--config", "/config.json"]
