FROM node:alpine

COPY . .

RUN npm i

ENTRYPOINT [ "npm", "run", "start" ]
