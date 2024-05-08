#!/bin/bash

openssl req -x509 -nodes -newkey rsa:2048 -days 365 -keyout ${KEY} -out ${CERTIF} -subj "/CN=${DOMAINE_NAME}"

sed -i "s|ssl_certificate ll|ssl_certificate ${CERTIF}|" /etc/nginx/conf.d/default.conf
sed -i "s|ssl_certificate_key oo|ssl_certificate_key ${KEY}|" /etc/nginx/conf.d/default.conf
sed -i "s|server_name  name;|server_name  ${DOMAINE_NAME};|" /etc/nginx/conf.d/default.conf


exec nginx -g  "daemon off;"