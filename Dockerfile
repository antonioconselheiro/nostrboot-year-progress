FROM node:16.3.0

ENV LANG C.UTF-8
ENV TZ America/Sao_Paulo

WORKDIR /root/Downloads

RUN apt update
RUN apt install jq tor torsocks -y
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*

# Installing nak, the nostr army knife
RUN wget https://github.com/fiatjaf/nak/releases/download/v0.7.6/nak-v0.7.6-linux-amd64
RUN mv nak-v0.7.6-linux-amd64 /usr/bin/nak
RUN chmod +x /usr/bin/nak

WORKDIR /nostrboot
COPY package.json .
RUN npm install

CMD [ "npm", "start" ]
