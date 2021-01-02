FROM node:14.15.3-alpine3.12

RUN npm i -g @adonisjs/cli

WORKDIR . /app

COPY package*.json ./

RUN npm install

EXPOSE 3333

CMD [ "npm", "start" ]
