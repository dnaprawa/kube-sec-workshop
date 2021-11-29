FROM node:lts

WORKDIR /code

ADD package.json ./

RUN npm install

ADD . /code

CMD ["npm", "start"]