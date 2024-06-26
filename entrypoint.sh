#!/bin/sh
if [ -z "${USER+x}" ]; then USER="user" ;fi
if [ -z "${PASS+x}" ]; then PASS="xpto" ;fi
if [ -z "${UID+x}" ];  then UID=1001 ;fi
if [ -z "${GID+x}" ];  then GID=1001 ;fi
userdel "$(id -nu ${UID})"
groupadd -g ${GID} "${USER}"
useradd -d /files -M -p $(openssl passwd -1 "${PASS}") -u ${UID} -g ${GID} "${USER}"
service ssh start
sleep infinity
# EOF
