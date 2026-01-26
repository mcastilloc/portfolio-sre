#!/bin/bash

echo "Estado del firewall:"
sudo firewall-cmd --state

echo "Zonas activas:"
sudo firewall-cmd --get-active-zones

echo "Puertos permitidos:"
sudo firewall-cmd --list-ports

