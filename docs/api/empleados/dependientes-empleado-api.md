# Especificación de API: Módulo Dependientes del Empleado

Contrato OpenAPI / Markdown para la interacción con los endpoints de dependientes (cónyuges, hijos, etc.).

---

## 1. Endpoints

### A. Obtener Dependientes
* **HTTP Method**: `GET`
* **Path**: `/api/v1/detalledependienteempleado/{idEmpleado}`
* **Descripción**: Obtiene la lista de dependientes asociados a un colaborador (usados para seguros médicos o fines impositivos).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Crear Dependiente
* **HTTP Method**: `POST`
* **Path**: `/api/v1/detalledependienteempleado`
* **Descripción**: Registra un nuevo dependiente en el perfil familiar del empleado.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Actualizar Dependiente
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/detalledependienteempleado`
* **Descripción**: Modifica la información de un dependiente existente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Listar Parentescos Disponibles
* **HTTP Method**: `GET`
* **Path**: `/api/v1/detalledependienteempleado/parentescos`
* **Descripción**: Retorna el catálogo de tipos de relaciones familiares (Hijo, Cónyuge, Padre, etc.).
* **Headers**: `Authorization: Bearer <Token>`
