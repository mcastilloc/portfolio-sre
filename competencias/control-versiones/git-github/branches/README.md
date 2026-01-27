# Branches y Flujo de Trabajo con Git

Esta sección documenta el uso de **ramas (branches)** y flujos de trabajo en Git, enfocados en entornos reales de trabajo colaborativo, operación y DevOps.

El objetivo no es solo conocer los comandos, sino **aplicar una estrategia clara y mantenible** para el desarrollo y la operación de software.

---

## 🎯 Objetivo de la Competencia

Demostrar la capacidad de:
- Trabajar con múltiples ramas de forma ordenada
- Separar desarrollo, pruebas y producción
- Reducir riesgos al integrar cambios
- Facilitar trabajo colaborativo y revisión de código

---

## 🌳 Conceptos Clave de Branching

- **Branch**: Línea independiente de desarrollo
- **Main / Master**: Rama estable (producción)
- **Develop**: Rama de integración de cambios
- **Feature branches**: Desarrollo de nuevas funcionalidades
- **Hotfix branches**: Correcciones urgentes

---

## 🔀 Estrategia de Flujo de Trabajo

### 🧭 Enfoque utilizado

Se utiliza un **flujo inspirado en GitFlow**, simplificado y adaptable a equipos pequeños o medianos:

- `main`: código estable y listo para producción
- `develop`: integración de cambios antes de producción
- `feature/*`: nuevas funcionalidades o mejoras
- `hotfix/*`: correcciones críticas sobre `main`

Este enfoque es común en:
- Equipos DevOps / SRE
- Proyectos con CI/CD
- Entornos productivos que requieren estabilidad

---

## 🛠 Comandos Utilizados

Creación de una rama:
```bash
git branch feature/nueva-funcionalidad
git checkout feature/nueva-funcionalidad
```

O en un solo paso:
```bash
git checkout -b feature/nueva-funcionalidad
```

Listar ramas:
```bash
git branch
```

Cambiar de rama:
```bash
git checkout develop
```

Eliminar una rama:
```bash
git branch -d feature/nueva-funcionalidad
```
## 🔁 Integración de Cambios

Merge de una feature a develop:
```bash
git checkout develop
git merge feature/nueva-funcionalidad
```

### Resolución de conflictos:

- Análisis manual del conflicto
- Corrección del archivo afectado
- Commit del merge

## 🧪 Casos de Uso Prácticos

- Desarrollo de nuevas funcionalidades sin afectar producción
- Pruebas aisladas por rama
- Correcciones urgentes en producción (hotfix)
- Preparación para pipelines CI/CD
- Trabajo colaborativo con Pull Requests

## 🔐 Buenas Prácticas Aplicadas

- Ramas con nombres descriptivos
- Commits pequeños y claros
- No trabajar directamente sobre `main`
- Integraciones controladas
- Eliminación de ramas obsoletas

## 🔗 Relación con Otras Competencias

El uso correcto de branches se integra directamente con:
- GitHub (Pull Requests y Code Review)
- CI/CD con GitHub Actions
- Automatización y DevOps
- Cloud y despliegues controlados

## 📌 Estado de la Competencia

- ✔ Uso práctico documentado
- ✔ Flujo de trabajo aplicado
- ✔ Preparado para CI/CD

> Esta estrategia de branching refleja prácticas reales utilizadas en equipos técnicos modernos y entornos productivos.
