#Container OS
FROM debian:jessie

#Maintainer of Dockerfile
MAINTAINER "Alberto Andrades Gil" "alberto.andrades.gil@gmail.com"

#Update and upgrade
RUN apt update && apt upgrade -y

#Install php5-fpm
RUN apt install php5 php5-fpm php5-curl php5-mcrypt php5-mysql php5-memcached -y

#Copy configuration files
COPY ./conf/www.conf /etc/php5/fpm/pool.d/www.conf
COPY ./conf/container-start /usr/local/bin/container-start

RUN chmod 0550 /usr/local/bin/container-start; \
    ln -s /usr/local/bin/container-start /docker-entrypoint; \
    chmod 0550 /docker-entrypoint

#Cleaning container
RUN apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove -y && \
    rm -rf /build && \
    rm -rf /tmp/* /var/tmp/* && \
    rm -rf /var/lib/apt/lists/* 

#Port to expose
EXPOSE 9000

#Memory limit
CMD ["-m", "256"]

#User to run php5-fpm master process
USER root

#Entrypoint configuration
ENTRYPOINT ["/docker-entrypoint"]
