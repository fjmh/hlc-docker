FROM debian:latest

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install nginx

COPY ./entrypoint /entrypoint

RUN apt-get remove; \
    apt-get autoremove; \
    chmod +x /entrypoint

COPY ./nginx.conf /etc/nginx/sites-available/default

RUN chmod 0660 /etc/nginx/sites-availabe/default

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

ENTRYPOINT ["/entrypoint"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
