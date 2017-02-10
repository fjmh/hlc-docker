FROM debian:latest

MAINTAINER "Antonio Luna" "equinoxe4@gmail.com"

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/container-start /usr/local/bin/container-start

RUN apt-get remove; \
    apt-get autoremove

RUN chmod 0550 /usr/local/bin/container-start; \
    ln -s /usr/local/bin/container-start /docker-entrypoint; \
    chmod 0550 /docker-entrypoint
    

ENV MARIA_DB_ROOT_PASSWORD=""
ENV MARIA_DB_DATABASE=""
ENV MARIA_DB_USER=""
ENV MARIA_DB_USER_PASSWORD=""

ENTRYPOINT ["/docker-entrypoint"]

EXPOSE 3306
