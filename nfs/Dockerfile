#Container OS
FROM debian:jessie

#Maintainer of Dockerfile
MAINTAINER "Alberto Andrades Gil" "alberto.andrades.gil@gmail.com"

#Update and upgrade
RUN apt update && apt upgrade -y

#Install NFSv3 Server
RUN apt install nfs-kernel-server -y

#Share /var/www to apache and php container
RUN mkdir -p /srv/next_cloud; \
    printf '/srv/next_cloud\t*(rw,sync,no_subtree_check)\n' >> /etc/exports; \
    systemctl restart nfs-kernel-server.service; \ 
    exportfs -rav

#Port to expose
EXPOSE 111 2049
