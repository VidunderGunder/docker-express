FROM node:16

WORKDIR /app
COPY package.json .
COPY tsconfig.json .
COPY .env .
COPY index.ts .
RUN npm install
RUN npm run build
EXPOSE 8080

CMD npm start
