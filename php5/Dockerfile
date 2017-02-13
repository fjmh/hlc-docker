#Container OS
FROM debian:jessie

#Maintainer of Dockerfile
MAINTAINER "Alberto Andrades Gil" "alberto.andrades.gil@gmail.com"

#Update and upgrade
RUN apt update && apt upgrade -y

#Install php5-fpm
RUN apt install php5 php5-fpm php5-curl php5-mcrypt php5-mysql php5-memcached unzip -y

#Configure php5-fpm to listen on eth0 IP's at port 9000
RUN sed -ri 's/^listen[[:space:]]*=.*/listen = #Change_IP:9000/' /etc/php5/fpm/pool.d/www.conf;\
    systemctl restart php5-fpm

#Mount remote NFS directory
RUN printf '#Change_IP:/var/www\t/var/www\tnfs\tdefaults,nofail,auto\t0\t0\n' >> /etc/fstab;\ 
    mkdir -p /var/www;\
    mount -a

#Download and deploy Joomla
RUN wget https://downloads.joomla.org/cms/joomla3/3-6-5/joomla_3-6-5-stable-full_package-zip?format=zip\ 
    mkdir -p /var/www/joomla;\
    unzip joomla_3-6-5-stable-full_package-zip\?format=zip -d /var/www/joomla;\
    chown -R www-data:www-data /var/www/joomla

#Port to expose
EXPOSE 9000

#Memory limit
CMD ["-m", "256"]

#User to run php5-fpm master process
USER root
