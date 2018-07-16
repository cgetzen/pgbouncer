FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -qqy install wget
RUN apt-get -qqy install pgbouncer
RUN apt-get -qqy install tmate openssh-client
RUN rm /etc/pgbouncer/pgbouncer.ini
ADD entrypoint.sh ./
ADD config.sh ./
