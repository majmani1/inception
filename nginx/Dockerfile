FROM debian:bullseye

RUN apt update && apt install -y nginx && apt install openssl

RUN mkdir /etc/nginx/cert

RUN   openssl req -x509 -nodes -newkey rsa:2048 -days 365 -keyout /etc/nginx/cert/key.key -out /etc/nginx/cert/cert.crt -subj "/CN=majmani.42.fr"

COPY default.conf /etc/nginx/conf.d/default.conf 


EXPOSE 443

CMD [ "nginx", "-g", "daemon off;"]
