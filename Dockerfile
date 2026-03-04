FROM node:18-alpine
WORKDIR /app
COPY kanban-backend/package*.json ./
COPY kanban-backend/. .
RUN npm install
EXPOSE 8081
CMD ["node", "server.js"]
