# Linux – Administración de Sistemas Operativos

Esta sección documenta mis competencias prácticas en **administración de sistemas Linux**, enfocadas en operación, configuración, troubleshooting y automatización básica.

Linux es la base de gran parte de la infraestructura moderna (on-premise y cloud), por lo que el enfoque aquí es **práctico, operativo y orientado a entornos reales**.

---

## 🎯 Objetivo de la Competencia

Demostrar dominio funcional de Linux para:
- Administración de servidores
- Soporte y operación de servicios
- Automatización básica
- Diagnóstico y resolución de problemas
- Base para cloud, contenedores y DevOps

---

## 🧠 Conocimientos y Habilidades

### 📁 Sistema de Archivos
- Estructura estándar de Linux (`/`, `/etc`, `/var`, `/home`, `/opt`, etc.)
- Permisos y ownership
- Enlaces simbólicos y duros
- Gestión de espacio en disco

Comandos utilizados:
- `ls`, `cp`, `mv`, `rm`
- `chmod`, `chown`, `umask`
- `df`, `du`, `mount`, `lsblk`

---

### 👤 Gestión de Usuarios y Grupos
- Creación y administración de usuarios
- Grupos primarios y secundarios
- Archivos `/etc/passwd`, `/etc/shadow`, `/etc/group`
- Políticas básicas de seguridad

Comandos utilizados:
- `useradd`, `usermod`, `userdel`
- `groupadd`, `groupdel`
- `passwd`, `id`, `su`, `sudo`

---

### 🔧 Gestión de Procesos y Servicios
- Procesos y estados
- Señales
- Servicios gestionados con `systemd`

Comandos utilizados:
- `ps`, `top`, `htop`
- `kill`, `killall`
- `systemctl`, `journalctl`

---

### 🌐 Networking en Linux
- Configuración básica de red
- Diagnóstico de conectividad
- Puertos y servicios

Comandos utilizados:
- `ip`, `ss`, `ping`
- `traceroute`, `nmcli`
- `netstat` (legacy)

---

### 📦 Gestión de Paquetes
- Instalación, actualización y eliminación de software
- Repositorios

Distribuciones trabajadas:
- Fedora
- Ubuntu / Debian
- CentOS / Rocky Linux

Herramientas:
- `dnf`
- `apt`
- `yum` (legacy)

---

### 📜 Bash Scripting
- Scripts para automatización básica
- Variables, condicionales y bucles
- Permisos de ejecución

Ejemplos de uso:
- Automatización de creación de estructuras
- Scripts de verificación
- Tareas repetitivas de administración

---

### 🛡 Seguridad Básica
- Permisos y privilegios
- Uso de `sudo`
- Firewall básico
- Conceptos de hardening inicial

Herramientas:
- `firewalld`
- `ufw`
- `fail2ban` (conceptual/práctico)

---

## 🧪 Laboratorios y Evidencias

En esta carpeta se incluyen ejemplos prácticos y evidencias como:
- Scripts bash
- Comandos documentados
- Configuraciones de servicios
- Laboratorios reproducibles

📂 Contenido relacionado:
- `scripts/`
- `labs/`
- `notas/`

---

## 🛠 Casos de Uso Prácticos

Algunos escenarios abordados:
- Preparación de un servidor Linux desde cero
- Configuración de acceso SSH seguro
- Diagnóstico de servicios caídos
- Automatización de tareas administrativas
- Base para despliegue de contenedores y bases de datos

---

## 🔗 Relación con Otras Competencias

Linux es base directa para:
- ☁ Cloud Computing
- 🐳 Contenedores y DevOps
- 🗄 Bases de Datos
- 📊 Datos y Analítica

---

## 📌 Estado de la Competencia
✔ Competencia en evolución continua  
✔ Evidencias prácticas reales  
✔ Enfoque operativo y aplicado  

---

> Este material refleja experiencia práctica y aprendizaje continuo aplicado a entornos reales de sistemas Linux.
