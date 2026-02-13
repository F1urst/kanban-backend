FROM node:18-alpine
WORKDIR /usr/src/app
# Просто скопируйте всё
COPY . .
RUN npm install  # npm сам найдет package.json
EXPOSE 8081
CMD ["npm", "start"]
