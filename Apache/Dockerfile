from debian
MAINTAINER Elizabeth Moreno Begines

COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install apache2 libapache2-mod-fastcgi wget unzip dnsutils -y
COPY php5-fpm.conf /etc/apache2/conf-available/
COPY container-start /usr/local/bin/container-start
RUN a2enmod fastcgi actions
RUN a2enconf php5-fpm
RUN wget -P /tmp https://downloads.joomla.org/es/cms/joomla3/3-6-5/joomla_3-6-5-stable-full_package-zip?format=zip
RUN mkdir /var/www/joomla
RUN unzip -d /var/www/joomla /tmp/joomla_3-6-5-stable-full_package-zip?format=zip
RUN chown -R www-data:www-data /var/www
COPY joomla.conf /etc/apache2/sites-available/
RUN a2dissite 000-default
RUN a2ensite joomla
#RUN service apache2 restart
RUN chmod +x /usr/local/bin/container-start; ln -s /usr/local/bin/container-start /entrypoint


ENTRYPOINT ["/entrypoint"]
#CMD ["apache2ctl","-D","FOREGROUND"]

EXPOSE 80
