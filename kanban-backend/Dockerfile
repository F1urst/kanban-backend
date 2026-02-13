FROM node:18-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install || true  # не упадёт, если нет package.json
EXPOSE 8081
CMD ["node", "server.js"] || echo "No server.js found"
