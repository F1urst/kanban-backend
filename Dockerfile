FROM node:18-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production  # вместо npm ci
COPY . .
EXPOSE 8081
CMD ["node", "server.js"]
