# GitHub Actions – CI con Lint y Ejecución de Scripts Bash

Esta sección documenta la implementación de **Integración Continua (CI)** que combina:

- **Linting de scripts Bash** con ShellCheck
- **Ejecución controlada de scripts** en el pipeline

Este enfoque permite validar **calidad y comportamiento**, alineado con prácticas reales de **DevOps y SRE**.

---

## 🎯 Objetivo de la Competencia

Demostrar la capacidad de:
- Validar scripts Bash automáticamente
- Ejecutar scripts en un entorno controlado
- Detectar errores lógicos y de ejecución
- Asegurar que los scripts funcionan antes del merge
- Reducir riesgos operativos en producción

---

## 🛠 Herramientas Utilizadas

- **GitHub Actions**: Orquestación del pipeline CI
- **ShellCheck**: Análisis estático de scripts Bash
- **Runner Linux (Ubuntu)**: Entorno de ejecución

---

## 📂 Estructura Utilizada

Estructura recomendada del repositorio:

```text
.github/
└── workflows/
    └── bash-lint-exec.yml

scripts/
├── check_disk.sh
├── check_service.sh
└── example_safe.sh
```

---

## 🧭 Flujo de CI Implementado

1. Se crea o actualiza un Pull Request
2. Se ejecuta el lint de scripts Bash
3. Si el lint es exitoso, se ejecutan scripts seguros
4. El pipeline falla ante errores
5. El merge queda bloqueado si el CI no pasa

---

## ⚠ Consideraciones de Seguridad

En CI **solo se ejecutan scripts que**:
- No modifican el sistema
- No requieren privilegios elevados
- No afectan recursos externos
- Son idempotentes o de solo lectura

Esto evita impactos no deseados en el runner.

---

## ⚙ Workflow CI con Lint y Ejecución

Ejemplo de workflow funcional:

```yaml
name: Bash Lint and Execute

on:
  pull_request:
    branches:
      - main
      - develop

jobs:
  bash-validation:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout del repositorio
        uses: actions/checkout@v4

      - name: Instalar ShellCheck
        run: sudo apt-get update && sudo apt-get install -y shellcheck

      - name: Lint de scripts Bash
        run: |
          shellcheck scripts/*.sh

      - name: Dar permisos de ejecución
        run: |
          chmod +x scripts/*.sh

      - name: Ejecutar scripts seguros
        run: |
          ./scripts/example_safe.sh
```

---

## 🧪 Ejemplo de Script Seguro

Ejemplo de script ejecutable en CI:

```bash
#!/bin/bash
echo "Ejecución correcta del script"
exit 0
```

---

## 🛡 Buenas Prácticas Aplicadas

- Separación entre validación y ejecución
- Scripts simples y controlados
- Fallo temprano del pipeline
- Permisos explícitos
- Evitar operaciones destructivas

---

## 🧪 Casos de Uso Prácticos

- Verificación automática de scripts administrativos
- Validación previa a despliegues
- Prevención de errores humanos
- Control de calidad en equipos colaborativos
- Base para automatización avanzada

---

## 🔗 Relación con Otras Competencias

Esta implementación se conecta con:
- Linux y Bash Scripting
- Git y Pull Requests
- GitHub Actions
- DevOps y SRE
- Automatización de Infraestructura

---

## 📌 Estado de la Competencia

✔ CI con validación real  
✔ Ejecución controlada de scripts  
✔ Enfoque seguro y profesional  

---

> Ejecutar scripts Bash dentro de CI, de forma controlada, es una práctica clave para asegurar confiabilidad y reducir riesgos en entornos productivos.
