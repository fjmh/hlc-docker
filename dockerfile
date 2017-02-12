FROM debian:latest

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install nginx

RUN apt-get remove; \
    apt-get autoremove

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN chmod 0550 /etc/nginx/conf.d/default.conf

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
