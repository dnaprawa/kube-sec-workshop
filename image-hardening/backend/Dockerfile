FROM node:lts

WORKDIR /app

ARG PORT=80
ENV PORT $PORT

ADD package.json package-lock.json ./

RUN npm install

ADD . /app

CMD [ "node", "src/server.js" ]

