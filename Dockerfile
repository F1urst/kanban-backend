FROM node:18-alpine
WORKDIR /app
COPY kanban-backend/package*.json ./
RUN npm install
COPY kanban-backend/. .
EXPOSE 8081
CMD ["node", "server.js"]
