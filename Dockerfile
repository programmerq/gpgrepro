#FROM piotrminkina/alpine:3.2
FROM alpine

RUN apk --update add ca-certificates gnupg
RUN wget -qO /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.4/gosu-amd64"
RUN wget -qO /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.4/gosu-amd64.asc"
RUN gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN gpg --verify /usr/local/bin/gosu.asc
