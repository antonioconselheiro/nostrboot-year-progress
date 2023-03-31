FROM node:16.3.0

#RUN useradd -d /nostrboot -m nostrboot
WORKDIR /nostrboot
COPY package.json .
RUN npm install

CMD [ "npm", "start" ]
