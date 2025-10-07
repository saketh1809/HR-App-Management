FROM node:latest

WORKDIR /usr/src/app

COPY /HR-APP-MANAGEMENT/package.json .

RUN npm install nodejs -y
RUN npm install mongoose
RUN npm install body-parser
RUN npm install dotenv
RUN npm install package.json

COPY . .

CMD [ "node", "server.js" ]

EXPOSE 8086

ENV NODE_ENV=.env.example
