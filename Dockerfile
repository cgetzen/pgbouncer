FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -qqy install pgbouncer
ADD config.sh ./
