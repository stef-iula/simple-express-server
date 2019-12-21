# Express / TypeScript server

!! This requires `node 8` ~~ there are problems installing `@types/jest` with higher versions !!  

## Develop

`npm run dev` will start on port 3000 with nodemon. 

## Locally with Docker

`docker-compose up` will start a docker container. The folder `/src` is listed in the volumes, so nodemon can keep its watching feature.

## Production

`docker build -t server .`

