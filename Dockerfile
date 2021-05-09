FROM node:alpine

WORKDIR /app
COPY package.json /app
RUN npm install

COPY . /app

RUN chmod +x /app/app.js

EXPOSE 3000
CMD ["npm", "start"]