# this is for a non-development env!
FROM node:8-alpine

WORKDIR /server

COPY ./package*.json ./

RUN npm install -g typescript
RUN npm install pm2 -g
RUN npm install

ARG BUILD_ENV
ENV PORT 3001


COPY ./tsconfig.json .
COPY ./tslint.json .
COPY ./src/ ./src/

RUN tsc --v
RUN npm run build

CMD npm start