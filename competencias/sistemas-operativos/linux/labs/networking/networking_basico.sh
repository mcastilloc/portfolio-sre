#!/bin/bash

echo "Interfaces de red:"
ip a

echo -e "\nPuertos en escucha:"
ss -tulnp

echo -e "\nPrueba de conectividad (8.8.8.8):"
ping -c 4 8.8.8.8
