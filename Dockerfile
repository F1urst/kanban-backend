FROM node:18-alpine
WORKDIR /app
COPY . .
RUN echo "=== ВСЕ ФАЙЛЫ В КОНТЕЙНЕРЕ ===" && \
    ls -la && \
    echo "=== ИЩЕМ package.json ===" && \
    find . -name "package.json" -type f || echo "package.json НЕ НАЙДЕН!" && \
    echo "=== ИЩЕМ server.js ===" && \
    find . -name "server.js" -type f || echo "server.js НЕ НАЙДЕН!"
RUN if [ -f "kanban-backend/package.json" ]; then \
        cd kanban-backend && npm install; \
    elif [ -f "package.json" ]; then \
        npm install; \
    else \
        echo "package.json не найден!" && exit 1; \
    fi

EXPOSE 8081
CMD if [ -f "kanban-backend/server.js" ]; then \
        node kanban-backend/server.js; \
    elif [ -f "server.js" ]; then \
        node server.js; \
    else \
        echo "server.js не найден!" && exit 1; \
    fi
