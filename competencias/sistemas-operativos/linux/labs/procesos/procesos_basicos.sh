#!/bin/bash

echo "Tiempo de actividad y carga del sistema:"
uptime

echo -e "\nUso de memoria:"
free -h

echo -e "\nTop 5 procesos por consumo de memoria:"
ps aux --sort=-%mem | head -n 6
