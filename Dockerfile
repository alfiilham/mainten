FROM httpd:latest

COPY index.html /var/www/html

EXPOSE 8080

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
