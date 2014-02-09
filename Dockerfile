FROM inthecloud247/kdocker-base
MAINTAINER inthecloud247 "inthecloud247@gmail.com"

# nginx
RUN apt-get -y install nginx-full

# kibana
RUN wget --no-check-certificate -O - https://download.elasticsearch.org/kibana/kibana/kibana-3.0.0milestone4.tar.gz | tar -zxv -C /usr/share/nginx/www/ --strip-components=1

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

ADD run.sh /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

CMD ["/usr/local/bin/run"]

# CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]
