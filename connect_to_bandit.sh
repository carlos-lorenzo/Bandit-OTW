#!/usr/bin/env bash

INSTANCE_NUMBER=$1
INSTANCE_NAME="bandit$INSTANCE_NUMBER"
INSTANCE_PASSWORD=`cat bandit_pwds.csv | grep $INSTANCE_NAME | cut -d ',' -f 2 | head -1`
INSTANCE_DOMAIN="bandit.labs.overthewire.org"
INSTANCE_PORT=2220
echo "Connecting to $INSTANCE_NAME... with password: $INSTANCE_PASSWORD"

sshpass -p $INSTANCE_PASSWORD ssh -o StrictHostKeyChecking=no -p $INSTANCE_PORT $INSTANCE_NAME@$INSTANCE_DOMAIN