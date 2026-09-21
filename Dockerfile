FROM node:18-alpine

WORKDIR /app

# Copy seluruh file repositori
COPY . .

# Install dependensi TypeScript jika ada
RUN npm install -g ts-node typescript || true

# Perintah untuk menjalankan skrip scanner/server
CMD ["npx", "ts-node", "Helper/proxyip.ts"]

