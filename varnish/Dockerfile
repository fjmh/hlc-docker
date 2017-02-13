FROM debian:latest

MAINTAINER fjmh "fjm.hidalgo@gmail.com"

RUN apt update && \
    apt install -y varnish && \
    apt-get clean && \
    apt-get autoremove

COPY default.vcl.tpl /etc/varnish/default.vcl
COPY script.sh /usr/local/bin/script.sh
RUN ln -s /usr/local/bin/script.sh /script.sh 

RUN chmod +x /usr/local/bin/script.sh

EXPOSE 6081

ENTRYPOINT ["/script.sh"]
