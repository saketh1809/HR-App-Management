FROM node:latest

WORKDIR /HR-APP-MANAGEMENT

RUN npm install 

COPY . .
COPY package*.json ./

CMD [ "node", "server.js" ]

EXPOSE 8086

ENV NODE_ENV=.env.example
