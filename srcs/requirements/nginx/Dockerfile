FROM debian:bullseye

RUN apt update && apt install -y nginx && apt install openssl

RUN mkdir /etc/nginx/cert

COPY default.conf /etc/nginx/conf.d/default.conf 

COPY ./tools/script.sh .

RUN chmod +x script.sh

EXPOSE 443

CMD [ "./script.sh"]
