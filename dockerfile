FROM ubuntu/apache2

RUN apt-get update && apt-get install -y php libapache2-mod-php php-mysql

# Create PHP directory structure
RUN mkdir -p /etc/php/8.1/apache2/

# Set permissions if necessary
# RUN chmod -R <permissions> /etc/php/8.1/apache2/

# Set up other configurations as needed
# COPY other_config_files /etc/php/8.1/apache2/

RUN chmod u+s /usr/bin/php

WORKDIR /var/www/html/

COPY . /var/www/html

COPY php.ini /etc/php/8.2/.
COPY php.ini /etc/php/8.2/apache2/.

EXPOSE 80
CMD apachectl -D FOREGROUND
