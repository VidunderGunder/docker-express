FROM node:20-alpine

WORKDIR /app
COPY package.json .
COPY tsconfig.json .
COPY .env .
COPY index.ts .

RUN corepack enable && corepack prepare pnpm@latest --activate
# Enable `pnpm add --global` on Alpine Linux by setting
# home location environment variable to a location already in $PATH
# https://github.com/pnpm/pnpm/issues/784#issuecomment-1518582235
ENV PNPM_HOME=/usr/local/bin

RUN pnpm i
RUN pnpm build
EXPOSE 8080

CMD npm start
