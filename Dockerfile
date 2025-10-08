FROM node:latest

WORKDIR /app
COPY ./package.json /app/
RUN npm install 

COPY . .

CMD [ "node", "server.js" ]

EXPOSE 8086

ENV NODE_ENV=.env.example
