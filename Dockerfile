FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install -g ts-node typescript || true

CMD ["npx", "ts-node", "Helper/proxyip.ts"]
