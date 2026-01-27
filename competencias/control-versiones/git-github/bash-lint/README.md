# GitHub Actions – CI con Lint de Bash (ShellCheck)

Esta sección documenta la implementación de **Integración Continua (CI)** para validar scripts Bash usando **ShellCheck**, una herramienta estándar para análisis estático de scripts en entornos Linux.

El objetivo es **detectar errores y malas prácticas antes del merge**, alineado con flujos DevOps y SRE.

---

## 🎯 Objetivo de la Competencia

Demostrar la capacidad de:
- Validar scripts Bash automáticamente
- Detectar errores comunes y malas prácticas
- Integrar herramientas de linting en CI
- Mejorar la calidad y mantenibilidad del código
- Proteger ramas mediante automatización

---

## 🛠 Herramienta Utilizada: ShellCheck

**ShellCheck** es una herramienta de análisis estático que:
- Detecta errores sintácticos
- Advierte sobre malas prácticas
- Mejora la portabilidad de scripts
- Ayuda a escribir Bash más seguro y robusto

Es ampliamente usada en:
- Automatización
- DevOps
- SRE
- Scripts de producción

---

## 📂 Estructura Utilizada

Ubicación de archivos relevantes:

```text
.github/
└── workflows/
    └── bash-lint.yml

scripts/
└── *.sh
```

---

## 🧭 Flujo de CI Implementado

1. Se crea o actualiza un Pull Request
2. GitHub Actions ejecuta el workflow
3. ShellCheck analiza los scripts Bash
4. Si hay errores, el pipeline falla
5. El merge queda bloqueado hasta corregirlos

---

## ⚙ Workflow CI con ShellCheck

Ejemplo de workflow funcional:

```yaml
name: Bash Lint (ShellCheck)

on:
  pull_request:
    branches:
      - main
      - develop

jobs:
  shellcheck:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout del repositorio
        uses: actions/checkout@v4

      - name: Instalar ShellCheck
        run: sudo apt-get update && sudo apt-get install -y shellcheck

      - name: Ejecutar ShellCheck
        run: |
          shellcheck scripts/*.sh
```

---

## 🛡 Buenas Prácticas Aplicadas

- Lint automático en Pull Requests
- Fallo temprano ante errores
- Scripts revisados antes del merge
- Separación clara de scripts
- Uso de herramientas estándar

---

## 🧪 Casos de Uso Prácticos

- Validación de scripts administrativos
- Prevención de errores en automatización
- Mejora de calidad en repositorios compartidos
- Base para pipelines más complejos
- Refuerzo de buenas prácticas Bash

---

## 🔐 Integración con Protección de Ramas

Este workflow se combina con:
- Branch protection rules
- CI obligatorio para merge
- Revisión de Pull Requests

Resultado:
- Menor riesgo operativo
- Mayor estabilidad
- Control de calidad continuo

---

## 🔗 Relación con Otras Competencias

Esta implementación se conecta con:
- Linux y Bash Scripting
- Git y Pull Requests
- GitHub Actions
- DevOps y SRE

---

## 📌 Estado de la Competencia

✔ CI con lint real implementada  
✔ Uso de herramientas estándar  
✔ Enfoque preventivo y operativo  

---

> La validación automática de scripts Bash es una práctica clave para mantener infraestructuras confiables y seguras.
