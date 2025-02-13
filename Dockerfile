FROM node:16.3.0

ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV TZ=America/Sao_Paulo
ENV DEBUG_COLORS=true
ENV FORCE_COLOR=true

WORKDIR /root/Downloads

RUN apt update
RUN apt install jq tor torsocks -y

# Installing nak, the nostr army knife
RUN wget https://github.com/fiatjaf/nak/releases/download/v0.11.4/nak-v0.11.4-linux-amd64
RUN mv nak-v0.11.4-linux-amd64 /usr/bin/nak
RUN chmod +x /usr/bin/nak

RUN apt clean
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /nostrboot
COPY package.json .
RUN npm install

CMD [ "npm", "start" ]
