FROM nginx:alpine

# Copy app files
COPY . /usr/share/nginx/html

# Expose container port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
