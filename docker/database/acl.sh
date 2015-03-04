#!/bin/bash
echo "FIXING ACL"

cat > /var/lib/postgresql/data/pg_hba.conf <<EOS
# Generated by fix-acl.sh
# TYPE  DATABASE        USER            ADDRESS                 METHOD
# "local" is for Unix domain socket connections only
local   all             all                                     trust
# IPv4 local connections:
host    all             all             127.0.0.1/32            trust
# IPv6 local connections:
host    all             all             ::1/128                 trust

# Allow anyone to connect remotely so long as they have a valid username and 
# password.
host all all 0.0.0.0/0 md5
EOS

echo "FIXING ACL END"
