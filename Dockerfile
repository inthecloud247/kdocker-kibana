FROM kdocker-ubuntu
MAINTAINER inthecloud247 "inthecloud247@gmail.com"

# nginx
RUN apt-get -y install nginx-full

# kibana
RUN wget --no-check-certificate -O - https://download.elasticsearch.org/kibana/kibana/kibana-3.0.0milestone4.tar.gz | tar -zxv -C /usr/share/nginx/www/ --strip-components=1

EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]
CMD ["-h"]