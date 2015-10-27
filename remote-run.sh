#!/bin/zsh

PROGGIE=$0

REMOTEUSER=${REMOTEUSER:-root}
IPADDR=${IPADDR:-10.0.5.150}
VENV=${VENV:-"/root/venv/default/bin/python"}

scp $(dirname $PROGGIE)/main.py $REMOTEUSER@$IPADDR:/root/
ssh -t $REMOTEUSER@$IPADDR "$VENV" /root/main.py $*
