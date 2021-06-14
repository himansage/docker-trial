FROM node:14.17.0-alpine

ENV DIRPATH=/usr/local/bin
ENV DIRNAME=docker-trial

RUN mkdir ${DIRPATH}/${DIRNAME}
COPY package.json ${DIRPATH}/${DIRNAME}/
COPY src ${DIRPATH}/${DIRNAME}/src
COPY public ${DIRPATH}/${DIRNAME}/public
WORKDIR ${DIRPATH}/${DIRNAME}/

RUN npm install
ENTRYPOINT [ "npm", "start" ]


EXPOSE 8080