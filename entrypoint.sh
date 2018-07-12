#!/bin/sh

wget $SMENV
dpkg -i smenv_0.0.1_amd64.deb
smenv -s $AWS_SECRETS_ENTRY /config.sh
cat /etc/pgbouncer/pgbouncer.ini
service pgbouncer start
tail -f /var/log/postgresql/pgbouncer.log
