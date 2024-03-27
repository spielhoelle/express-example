FROM node:16
RUN mkdir -p /home/app/node_modules && chown -R node:node /home/app
WORKDIR /home/app
COPY package*.json ./
USER node
COPY --chown=node:node . .
RUN npm install
EXPOSE 3000
CMD [ "node", "index.js" ]