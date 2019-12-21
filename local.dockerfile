FROM node:8-alpine

WORKDIR /server

COPY ./package*.json ./

RUN npm install -g typescript

RUN npm install

ARG BUILD_ENV
ENV PORT 3001

COPY ./tsconfig.json .
COPY ./tslint.json .

RUN tsc --v

CMD npm run dev