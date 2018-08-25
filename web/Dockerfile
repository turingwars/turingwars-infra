FROM node:10.9-alpine

VOLUME /config

COPY turing-wars.tgz /turing-wars.tgz

RUN npm install -g /turing-wars.tgz

CMD ["turingwars", "--config", "/config/turingwars.conf.json"]
