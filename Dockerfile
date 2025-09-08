# Use official lightweight Nginx image
FROM nginx:alpine

# Set working directory inside container
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy app files from repo into container
COPY . .

# Copy custom Nginx config (make sure this file is in your repo root)
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose container port
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
