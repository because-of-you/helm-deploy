FROM node:22-alpine as node

RUN apk add helm

COPY . /usr/src/
ENTRYPOINT ["node", "/usr/src/index.js"]
