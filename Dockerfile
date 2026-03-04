FROM node:18-alpine
WORKDIR /app

RUN npm init -y && \
    npm install express
у
RUN echo "const express = require('express'); \
const app = express(); \
const port = process.env.PORT || 8081; \
app.get('/', (req, res) => res.send('Kanban backend')); \
app.listen(port, () => console.log('Server on port ' + port));" > server.js

EXPOSE 8081
CMD ["node", "server.js"]
