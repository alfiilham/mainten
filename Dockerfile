FROM FROM ubi8/s2i-core:1

EXPOSE 8080

COPY index.html /var/www/html

CMD ["/usr/bin/run-httpd"]
