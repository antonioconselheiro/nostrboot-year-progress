FROM node

ENV LANG C.UTF-8
ENV TZ America/Sao_Paulo

RUN npm install typescript node-typescript -g
WORKDIR /yearprogress

# Credentials
COPY ./.gitconfig /root/.gitconfig
COPY ./.ssh /root/.ssh
RUN chmod 600 -R /root/.ssh
RUN ssh-add -D && ssh-add /root/.ssh/id_ed25519 || true

# The run the start script
CMD [ "/bin/bash" ]
