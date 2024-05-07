FROM debian:bullseye

RUN apt  update 

RUN apt-get install -y curl

RUN apt-get update && \
    apt-get install -y php php-mysql php-fpm

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar


RUN  mv wp-cli.phar /usr/local/bin/wp


# ENV PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/local/bin/php"

COPY script.sh /bin/
RUN mkdir -p /run/php/
RUN chmod +x /bin/script.sh
WORKDIR /var/www/html



 

CMD [ "script.sh" ]