FROM registry.redhat.io/rhel8/httpd-24

COPY index.html /var/www/html

CMD run-httpd
