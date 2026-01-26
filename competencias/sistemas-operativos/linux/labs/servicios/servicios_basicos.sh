#!/bin/bash

SERVICIO="sshd"

echo "Estado del servicio $SERVICIO:"
systemctl status $SERVICIO --no-pager

echo "Últimos logs:"
journalctl -u $SERVICIO -n 10 --no-pager

