# Use the minimal Nginx image from Docker Hub
FROM nginx:alpine

# Copy the static website files to the Nginx HTML directory
COPY index.html /usr/share/nginx/html

# Expose port 8080
EXPOSE 8080

# Run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
