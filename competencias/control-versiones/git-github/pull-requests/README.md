# Pull Requests y Code Review con GitHub

Esta sección documenta el uso de **Pull Requests (PRs)** y procesos de **Code Review**, fundamentales para el trabajo colaborativo, el control de calidad y la operación segura en equipos técnicos.

El enfoque es **práctico y orientado a entornos reales**, alineado con prácticas DevOps y SRE.

---

## 🎯 Objetivo de la Competencia

Demostrar la capacidad de:
- Proponer cambios mediante Pull Requests
- Revisar código de forma estructurada
- Detectar errores antes de llegar a producción
- Facilitar colaboración y trazabilidad
- Integrarse con flujos CI/CD

---

## 🔁 ¿Qué es un Pull Request?

Un **Pull Request** es una solicitud para integrar cambios de una rama a otra, permitiendo revisión, discusión y validación antes del merge.

Se utiliza comúnmente para:
- `feature/*` → `develop`
- `hotfix/*` → `main`
- `develop` → `main`

---

## 🧭 Flujo de Trabajo Aplicado

Flujo utilizado en entornos colaborativos:

1. Crear una rama desde `develop` o `main`
2. Desarrollar los cambios
3. Subir la rama al repositorio remoto
4. Crear el Pull Request
5. Realizar Code Review
6. Aprobar y hacer merge
7. Eliminar la rama

Este flujo reduce riesgos y mejora la calidad del código.

---

## 🛠 Comandos Utilizados

Subir una rama al repositorio remoto:

```bash
git push origin feature/nueva-funcionalidad
```

Actualizar la rama antes de abrir el Pull Request:

```bash
git checkout develop
git pull origin develop
git checkout feature/nueva-funcionalidad
git merge develop
```

---

## 👀 Proceso de Code Review

Durante la revisión se evalúa:

- Legibilidad y claridad del código
- Uso de buenas prácticas
- Impacto en otras áreas del proyecto
- Seguridad y manejo de errores
- Coherencia con el objetivo del cambio

Acciones comunes:
- Comentarios en líneas específicas
- Solicitud de ajustes
- Aprobación del Pull Request

---

## 🔐 Buenas Prácticas Aplicadas

- Pull Requests pequeños y enfocados
- Descripciones claras del cambio
- Commits atómicos y descriptivos
- Revisión antes del merge
- Eliminación de ramas una vez integradas

---

## 🧪 Casos de Uso Prácticos

- Integración segura de nuevas funcionalidades
- Revisión de scripts operativos
- Validación de cambios antes de despliegues
- Trabajo colaborativo en equipos distribuidos
- Auditoría y trazabilidad de cambios

---

## 🤖 Integración con Automatización

Los Pull Requests se integran con:

- GitHub Actions
- Validaciones automáticas
- Pruebas y linting
- Reglas de protección de ramas

Esto permite:
- Detectar errores tempranamente
- Evitar merges defectuosos
- Mantener estándares de calidad

---

## 🔗 Relación con Otras Competencias

Esta competencia se relaciona directamente con:
- Git y Branching
- CI/CD
- DevOps y SRE
- Linux y Cloud Computing

---

## 📌 Estado de la Competencia

✔ Flujo colaborativo aplicado  
✔ Code Review documentado  
✔ Base para automatización CI/CD  

---

> El uso correcto de Pull Requests y Code Review es clave para mantener calidad, seguridad y estabilidad en entornos productivos.
