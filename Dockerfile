from ubuntu

RUN apt-get update
RUN apt-get install -y nginx

RUN mkdir -p /var/www/gcp/
COPY index.html /var/www/gcp/index.html

COPY nginx-gcp.conf /etc/nginx/sites-enabled/gcp.conf

RUN systemctl restart nginx

EXPOSE 80
