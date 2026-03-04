FROM node:18-alpine
WORKDIR /app
COPY . .
RUN ls -la && npm install
EXPOSE 8081
CMD ["node", "server.js"]
