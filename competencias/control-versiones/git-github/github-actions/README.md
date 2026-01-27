# GitHub Actions – Integración Continua (CI)

Esta sección documenta el uso de **GitHub Actions** para implementar **Integración Continua (CI)**, permitiendo validar automáticamente cambios antes de ser integrados al repositorio principal.

El enfoque es **práctico**, orientado a flujos reales usados en entornos **DevOps / SRE**.

---

## 🎯 Objetivo de la Competencia

Demostrar la capacidad de:
- Automatizar validaciones mediante CI
- Ejecutar pipelines en eventos de GitHub
- Detectar errores tempranamente
- Proteger ramas principales
- Integrar CI con Pull Requests

---

## 🤖 ¿Qué es GitHub Actions?

**GitHub Actions** es la plataforma de automatización de GitHub que permite ejecutar workflows basados en eventos como:

- Push a una rama
- Creación de Pull Requests
- Merges
- Ejecución manual

Los workflows se definen mediante archivos **YAML** dentro del repositorio.

---

## 📂 Estructura Utilizada

Ubicación estándar de los workflows:

```text
.github/
└── workflows/
    └── ci.yml
```

---

## 🧭 Flujo de CI Implementado

Flujo básico aplicado:

1. Se crea o actualiza un Pull Request
2. GitHub Actions ejecuta el workflow
3. Se validan scripts o configuraciones
4. El resultado se reporta en el PR
5. El merge depende del estado del pipeline

---

## ⚙ Ejemplo de Workflow CI Básico

Workflow de validación simple:

```yaml
name: CI Básica

on:
  pull_request:
    branches:
      - main
      - develop

jobs:
  validate:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout del repositorio
        uses: actions/checkout@v4

      - name: Validar scripts Bash
        run: |
          echo "Validación básica completada"
```

---

## 🛡 Buenas Prácticas Aplicadas

- CI ejecutándose en Pull Requests
- Uso de runners oficiales (`ubuntu-latest`)
- Workflows simples y legibles
- Fallo automático ante errores
- Base para pipelines más complejos

---

## 🧪 Casos de Uso Prácticos

- Validación de scripts administrativos
- Control de calidad antes de merge
- Prevención de errores en producción
- Automatización de tareas repetitivas
- Base para despliegues automatizados

---

## 🔐 Protección de Ramas

GitHub Actions se combina con:
- Branch protection rules
- Requerimiento de CI exitoso
- Revisión obligatoria de PRs

Esto asegura:
- Cambios controlados
- Mayor estabilidad
- Menor riesgo operativo

---

## 🔗 Relación con Otras Competencias

GitHub Actions se integra directamente con:
- Git y Pull Requests
- Linux y Bash
- Cloud Computing
- Contenedores y DevOps

---

## 📌 Estado de la Competencia

✔ CI funcional documentada  
✔ Integración con Pull Requests  
✔ Base sólida para automatización DevOps  

---

> GitHub Actions permite escalar desde validaciones simples hasta pipelines complejos de CI/CD usados en producción.
