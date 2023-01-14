FROM node:18.12.1

RUN npm i -g npm

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 3000

CMD npm run dev
