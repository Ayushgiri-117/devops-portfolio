# Use the official Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your site’s files into Nginx’s web directory
COPY . /usr/share/nginx/html

# Expose port 80 (used by Nginx)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
