FROM tanmv/nginx-php-fpm:1.0.0

WORKDIR /var/www
RUN rm -rf /var/www/*
COPY ./ /var/www/

# RUN chmod -R 777 /var/www/uploads/

RUN find /var/www/uploads/ -type d -print0 | xargs -0 chmod a+rwx;
RUN find /var/www/uploads/ -type f -print0 | xargs -0 chmod a+rw;

EXPOSE 80 443