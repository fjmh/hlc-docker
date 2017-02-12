from debian
MAINTAINER Elizabeth Moreno Begines

COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install libapache2-mod-fastcgi
RUN apt-get install wget -y
RUN apt-get install unzip -y
COPY php5-fpm.conf /etc/apache2/conf-available/
RUN a2enmod fastcgi actions
RUN a2enconf php5-fpm
RUN wget -P /tmp https://download.nextcloud.com/server/releases/nextcloud-11.0.1.zip
RUN unzip -d /var/www /tmp/nextcloud-11.0.1.zip
RUN chown -R www-data:www-data /var
COPY nextcloud.conf /etc/apache2/sites-available/
RUN a2dissite 000-default
RUN a2ensite nextcloud
RUN service apache2 restart

CMD ["apache2ctl","-D","FOREGROUND"]

EXPOSE 80
