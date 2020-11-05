FROM node:8.12.0-alpine

WORKDIR /srv

# Default Port
ARG NODE_PORT=8000

ENV NODE_PORT="${NODE_PORT}"
ENV NODE_HOST "0.0.0.0"

COPY package.json /srv

COPY . /srv

EXPOSE "${NODE_PORT}"

CMD ["npm", "start"]
