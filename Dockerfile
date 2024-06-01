# Use the minimal Nginx image from Docker Hub
FROM nginx:alpine

# Set up a non-root user and group
RUN addgroup -S nginxgroup && adduser -S nginxuser -G nginxgroup

# Ensure the required directories have the correct permissions
RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R nginxuser:nginxgroup /var/cache/nginx && \
    chown -R nginxuser:nginxgroup /etc/nginx/conf.d && \
    chown -R nginxuser:nginxgroup /usr/share/nginx/html

# Copy the static website files to the Nginx HTML directory
COPY index.html /usr/share/nginx/html

# Expose port 8080
EXPOSE 8080

# Run Nginx as the non-root user
USER nginxuser

# Run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
