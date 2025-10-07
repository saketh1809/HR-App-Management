FROM node:latest

WORKDIR /HR-APP-MANAGEMENT

COPY /HR-APP-MANAGEMENT/package.json .

RUN yum install nodejs -y
RUN npm install mongoose
RUN npm install body-parser
RUN npm install dotenv

COPY . .

CMD [ "node", "server.js" ]

EXPOSE 8086

ENV NODE_ENV=.env.example
