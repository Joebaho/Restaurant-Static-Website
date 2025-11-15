# Use lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx static website
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 (default for Nginx)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
