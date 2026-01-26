#!/bin/bash

echo "Discos y particiones:"
lsblk

echo -e "\nUso de espacio:"
df -h

echo -e "\nUso por directorio (/var):"
du -sh /var/* 2>/dev/null | sort -h | tail -n 5

