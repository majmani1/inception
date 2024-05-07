# openssl req -x509 -nodes -sha256 -days 1825 -keyout $KEY -out $CERTS_ -subj="/";

# rm -f /etc/nginx/conf.d/default.conf 
# touch etc/nginx/conf.d/default.conf 
# # Create Nginx configuration file
# cat <<EOF > /etc/nginx/conf.d/tt.conf
# server {
#     listen 443 ssl;

#     ssl_certificate ${CERTS_};
#     ssl_certificate_key ${KEY};
#     ssl_protocols TLSv1.3;
#    server_name ${SERVER_NAME};
#     root /var/www/html/;
#     index index.php;

#     location / {
#         try_files $uri $uri/ =404;
#     }

#      location ~ \.php$ {
#         include /etc/nginx/snippets/fastcgi-php.conf;
#         fastcgi_pass word:9000;
#     }
# }

# EOF


# exec nginx -g "daemon off;"