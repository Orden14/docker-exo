FROM node:18-alpine

WORKDIR /app

COPY mosters/package.json mosters/server.js /app/

RUN npm install

COPY posters /app/posters

ENV POSTER_DIR=/posters

EXPOSE 8080

CMD ["node", "server.js"]
