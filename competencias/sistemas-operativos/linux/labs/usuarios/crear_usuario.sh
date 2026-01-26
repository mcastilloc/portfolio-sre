#!/bin/bash

USUARIO="appuser"
GRUPO="appgroup"

echo "Creando grupo $GRUPO..."
sudo groupadd $GRUPO 2>/dev/null

echo "Creando usuario $USUARIO..."
sudo useradd -m -s /bin/bash -G $GRUPO $USUARIO

echo "Asignando contraseña..."
sudo passwd $USUARIO

echo "Verificando usuario:"
id $USUARIO

