# Use the official nginx-unprivileged image from Docker Hub
FROM nginxinc/nginx-unprivileged:stable-alpine

# Copy the HTML files into the container
COPY . /usr/share/nginx/html

# Expose port 8080 to the outside world
EXPOSE 8080

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
