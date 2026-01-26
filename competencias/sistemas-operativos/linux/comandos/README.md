# Linux – Comandos Esenciales

Esta sección documenta los **comandos Linux más utilizados en operación diaria**, organizados por propósito y con un enfoque **práctico y profesional**, orientado a administración de sistemas, soporte y roles SRE.

No es una lista exhaustiva, sino una **referencia estructurada de comandos realmente usados en entornos reales**.

---

## 🎯 Objetivo de la Sección

- Servir como referencia rápida y ordenada
- Demostrar conocimiento operativo de Linux
- Apoyar laboratorios y scripts
- Reflejar experiencia práctica en entornos reales

---

## 📁 Navegación y Sistema de Archivos

### Exploración
```bash
ls -lh
pwd
tree
```

### Manipulación de Archivos
```bash
cp archivo destino
mv archivo destino
rm -rf directorio
```

### Búsqueda
```bash
find /ruta -name archivo
locate archivo
grep -R "texto" .
```

---

## 👤 Usuarios, Grupos y Permisos

### Gestión de Usuarios
```bash
useradd usuario
usermod -aG grupo usuario
userdel usuario
```

### Permisos
```bash
chmod 755 script.sh
chown usuario:grupo archivo
umask
```

### Información
```bash
id usuario
whoami
groups
```

---

## 🔧 Procesos y Recursos

### Procesos
```bash
ps aux
top
htop
```

### Señales
```bash
kill PID
kill -9 PID
```

### Uso de Recursos
```bash
free -h
uptime
vmstat
```

---

## 🧩 Servicios y Systemd

### Gestión de Servicios
```bash
systemctl status servicio
systemctl start servicio
systemctl enable servicio
```

### Logs
```bash
journalctl -xe
journalctl -u servicio
```

---

## 🌐 Networking

### Diagnóstico
```bash
ip a
ip r
ping host
```

### Puertos y Servicios
```bash
ss -tulnp
netstat -tulnp
```

### Conectividad
```bash
curl http://host
wget url
```

---

## 📦 Gestión de Paquetes

### Fedora / RHEL / Rocky
```bash
dnf install paquete
dnf update
dnf remove paquete
```

### Debian / Ubuntu
```bash
apt update
apt install paquete
apt remove paquete
```

---

## 💽 Disco y Almacenamiento

### Espacio
```bash
df -h
du -sh *
```

### Dispositivos
```bash
lsblk
mount
umount
```

---

## 🔐 Seguridad Básica

### Firewall
```bash
firewall-cmd --list-all
firewall-cmd --add-port=80/tcp
```

### Acceso y Autenticación
```bash
ssh usuario@host
ssh-keygen
```

---

## 📌 Relación con Otras Secciones

Estos comandos se utilizan directamente en:

- `linux/scripts`
- `linux/labs`
- Cloud Computing
- Contenedores y DevOps
- Bases de Datos

---

## 📎 Nota Final

> El dominio de estos comandos permite operar, diagnosticar y mantener  
> sistemas Linux de forma eficiente en entornos productivos.

Esta sección se complementa con **laboratorios prácticos**, donde estos comandos se aplican en escenarios reales.
