FROM node:4.6.1-slim
MAINTAINER Peter Bessenyei
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
COPY app.js /app
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
