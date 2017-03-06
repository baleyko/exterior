FROM alpine:latest

WORKDIR /app

RUN  apk -U add socat supervisor

COPY supervisord.conf /etc/supervisord.conf
COPY port.ini.dist port.ini.dist
COPY docker-entrypoint.sh /

RUN chmod a+x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
