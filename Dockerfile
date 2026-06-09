FROM nginx:alpine

WORKDIR /app

# If you have package.json
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


# Copy static files into Nginx’s default directory



