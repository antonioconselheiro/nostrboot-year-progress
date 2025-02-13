"Watch therefore: for you know not what hour your Lord does come." Matthew 24:42

# Nostr boot example
Me siga no nostr: `npub16kk2cms92lej97kjkp7wxwj63skdk50q3h6xj5e9e6eu9nt45ccst9f34v`

## Dev Environment
Instale o o devcontainer e o docker para usar o vscode customizado para este projeto; antes de iniciar o ambiente de desenvolvimento você deve criar manualmente uma pasta `node_modules` vazia, ela irá se conectar com o volume configurado no arquivo `.devcontainer/docker-compose.yml`, se o container não estiver abrindo você pode builda-lo ou levanta-lo como container normal usando os respectivos comandos: `docker-compose -f .devcontainer/docker-compose.yml build --no-cache` e `docker-compose -f .devcontainer/docker-compose.yml up`, isso te te mostrar mensagens de erro mais claras.

Para iniciar o ambiente de desenvolvimento execute `devcontainer open .`, para builda-lo `devcontainer build .`.

Se você não tem o docker, docker-compose nem o devcontainer instalado em sua máquina, então confira [meu vídeo sobre como fazer a instalação dessas ferramentas](https://odysee.com/@anarcanudos:5/instalacao-do-docker-docker-compose-e-devcontainer:9), no vídeo faço a configuração para o sistema ubuntu.

## Build
Use `npm run build` para gerar os arquivos de produção, inclua um arquivo `nsec_keys.txt` contendo a nsec privada do nostr. O ambiente de produção contém arquivos para levantar um container customizado, você pode builda-lo e executa-lo com os respectivos comandos: `docker-compose build --no-cache; docker-compose up`.

## Referências
Nostr protocol:
https://github.com/nostr-protocol/nostr

Nostr tools para JavaScript e TypeScript:
https://github.com/nbd-wtf/nostr-tools

## Donate
Lighting donate: <a href="lightning:antonioconselheiro@getalby.com">lightning:antonioconselheiro@getalby.com</a>

![zap me](https://raw.githubusercontent.com/antonioconselheiro/antonioconselheiro/main/img/qrcode-wallet-lighting.png)

Bitcoin onchain donate: <a href="bitcoin:bc1qrm99lmmpwk7zsh7njpgthw87yvdm38j2lzpq7q">bc1qrm99lmmpwk7zsh7njpgthw87yvdm38j2lzpq7q</a>

![zap me](https://raw.githubusercontent.com/antonioconselheiro/antonioconselheiro/main/img/qrcode-wallet-bitcoin.png)
