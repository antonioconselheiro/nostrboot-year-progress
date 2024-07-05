FROM node:16.3.0

ENV LANG C.UTF-8
ENV TZ America/Sao_Paulo

WORKDIR /nostrboot
COPY package.json .
RUN npm install

CMD [ "npm", "start" ]
