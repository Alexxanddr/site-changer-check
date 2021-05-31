FROM alpine:latest

RUN apk add curl 

WORKDIR /tmp/

ADD site_monitor.sh .

ENTRYPOINT sh /tmp/site_monitor.sh
