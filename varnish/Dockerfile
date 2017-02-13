FROM debian:latest

MAINTAINER fjmh "fjm.hidalgo@gmail.com"

RUN apt update && \
    apt install -y varnish && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY default.vcl.tpl /etc/varnish/default.vcl
ADD script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

EXPOSE 6080

CMD ["/usr/local/bin/script.sh"]

#ENTRYPOINT ["script.sh"]
