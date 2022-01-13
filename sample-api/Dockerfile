FROM node:16.13.0-alpine

WORKDIR /home/node/app

COPY package.json .
COPY index.js .

RUN yarn

EXPOSE 3000

CMD [ "node", "index.js" ]