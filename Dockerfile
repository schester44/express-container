ARG NODE_VERSION

FROM node:$NODE_VERSION-buster

RUN apt-get update \
  && apt-get install -y imagemagick \
  && apt-get install -y ghostscript
RUN node --version

EXPOSE 4000

RUN yarn install