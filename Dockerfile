FROM node:22-alpine as base

RUN apk add --no-cache libc6-compat
WORKDIR /home/node/app

COPY . .

RUN npm i

# RUN npx tsc 

CMD ["node", "src/foo.js"]
