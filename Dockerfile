FROM node:18-alpine

WORKDIR /app

# Copy package.json first (best practice for caching)
COPY package*.json ./

RUN npm install

# Copy the rest of the app
COPY . .

EXPOSE 80
CMD ["node", "server.js"]
