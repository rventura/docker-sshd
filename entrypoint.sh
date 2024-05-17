#!/bin/sh
if [ -z "${USER+x}" ]; then USER="user" ;fi
if [ -z "${PASS+x}" ]; then PASS="xpto" ;fi
if [ -z "${UID+x}" ];  then UID=999 ;fi
userdel "$(id -nu ${UID})"
useradd -d /files -M -p $(openssl passwd -1 "${PASS}") -u ${UID} "${USER}"
service ssh start
sleep infinity
# EOF
