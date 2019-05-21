FROM tanmv/nginx-php-fpm:1.0.0

WORKDIR /var/www
RUN rm -rf /var/www/*

COPY ./index.html /var/www/
COPY ./ckeditor /var/www/
COPY ./ckfinder /var/www/
COPY ./uploads /var/www/

RUN find /var/www/uploads/ -type d -print0 | xargs -0 chmod a+rwx;
RUN find /var/www/uploads/ -type f -print0 | xargs -0 chmod a+rw;

EXPOSE 80 443
