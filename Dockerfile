FROM nginx:alpine

# Copy the static website content to Nginx's default html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to access the Nginx container
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
