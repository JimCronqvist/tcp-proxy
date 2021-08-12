FROM haproxy:2.4-alpine

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

ENV HOST= \
    PORT= \
    TIMEOUT_CLIENT=50s \
    TIMEOUT_CLIENT_FIN=5s \
    TIMEOUT_CONNECT=5s \
    TIMEOUT_SERVER=50s \
    TIMEOUT_SERVER_FIN=5s \
    TIMEOUT_QUEUE=5s \
    MAXCONN=2048