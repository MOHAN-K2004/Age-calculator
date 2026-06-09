FROM nginx:alpine
WORKDIR /app
COPY . /usr/share/nginx/html
RUN npm install
COPY . .
EXPOSE 80
CMD ["node", "server.js"]
