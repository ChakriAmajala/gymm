FROM nginx:alpine

# Replace default nginx config with our custom one
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy app files
COPY . /usr/share/nginx/html

EXPOSE 8004

CMD ["nginx", "-g", "daemon off;"]

