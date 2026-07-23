# Especificación de API: Módulo Resumen de CV y Habilidades

Contrato OpenAPI / Markdown para la interacción con los endpoints de perfil profesional del empleado.

---

## 1. Endpoints

### A. Obtener Resumen CV
* **HTTP Method**: `GET`
* **Path**: `/api/v1/resumen-cv/{id}`
* **Descripción**: Obtiene la información académica, experiencia laboral y detalles de currículum de un colaborador.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Listar Habilidades del Empleado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/resumen-cv/habilidades/{id}`
* **Descripción**: Obtiene el mapa de habilidades (competencias blandas y técnicas) de un empleado.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Registrar Habilidades
* **HTTP Method**: `POST`
* **Path**: `/api/v1/resumen-cv/habilidades`
* **Descripción**: Añade habilidades certificadas al perfil profesional del colaborador.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
