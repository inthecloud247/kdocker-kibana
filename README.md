kdocker-kibana
==============

Kibana for kdocker

ifconfig eth4:136 10.90.70.136 netmask 255.255.255.192
docker run -d -i -t -name kibana1 -h kibana1 -p $kibana1:22:22 -p $kibana1:8080:80 -e ES_HOST=198.23.101.198 -e ES_PORT=9200 inthecloud247/kdocker-kibana

docker run -i -t -name kibana1 -h kibana1 -p $kibana1:80:80 -e ES_HOST=$machine1 -e ES_PORT=9200 inthecloud247/kdocker-kibana /bin/bash

docker run -d -i -t -name kibana1 -h kibana1 -p $kibana1:22:22 -p $kibana1:8080:80 -e ES_HOST=198.23.101.198 -e ES_PORT=9200 inthecloud247/kdocker-kibana

ufw allow proto tcp from any to 198.23.101.198 port 8088



printf "keen:$(openssl passwd -crypt vryk33n)\n" >> .htpasswd
