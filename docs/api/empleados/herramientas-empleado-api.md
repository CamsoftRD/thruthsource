# Especificación de API: Módulo Herramientas de Empleado

Contrato OpenAPI / Markdown para la interacción con los endpoints de gestión de herramientas de trabajo asignadas.

---

## 1. Endpoints

### A. Listar Herramientas por Empleado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/herramientasempleado/{id}`
* **Descripción**: Obtiene la lista de equipos, vehículos o herramientas asignados al empleado (ID de empleado).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Asignar Herramientas
* **HTTP Method**: `POST`
* **Path**: `/api/v1/herramientasempleado`
* **Descripción**: Asigna una lista de nuevas herramientas al empleado, registrando su entrega.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Descargo de Herramientas
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/herramientasempleado`
* **Descripción**: Realiza el descargo o devolución de un grupo de herramientas asignadas.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
