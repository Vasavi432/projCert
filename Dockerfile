FROM ubuntu:16.04

RUN apt-get update -y

RUN apt-get install -y apache2

RUN apt-get install -y  php libapache2-mod-php

RUN rm -rf /var/www/html/*

ADD projCert/website /var/www/html

EXPOSE 80

CMD ["sh", "-c", "/etc/init.d/mysqld start && /etc/init.d/httpd start"]
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
