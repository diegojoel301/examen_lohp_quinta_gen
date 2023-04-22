FROM ubuntu/apache2

RUN apt-get update && apt-get install -y php libapache2-mod-php php-mysql

RUN chmod u+s /usr/bin/php

WORKDIR /var/www/html/
COPY . /var/www/html

COPY php.ini /etc/php/8.1/.
COPY php.ini /etc/php/8.1/apache2/.

EXPOSE 80
CMD apachectl -D FOREGROUND