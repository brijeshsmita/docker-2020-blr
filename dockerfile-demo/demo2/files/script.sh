sed -e "s/{{POD}}/$(hostname)/g" -e "s/{{PODIP}}/$(hostname -i)/g" index.htm > /usr/share/nginx/html/index.html
nginx -g 'daemon off;'