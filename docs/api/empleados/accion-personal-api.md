# Especificación de API: Módulo Acción de Personal (Maestro)

Contrato OpenAPI / Markdown para la interacción con los endpoints del catálogo y configuración de Acciones de Personal.

---

## 1. Endpoints

### A. Listar Acciones de Personal
* **HTTP Method**: `GET`
* **Path**: `/api/v1/accionpersonal`
* **Descripción**: Retorna el maestro de todas las acciones de personal (Promoción, Aumento, Traslado, etc.) configuradas.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Listar Acciones Permitidas
* **HTTP Method**: `GET`
* **Path**: `/api/v1/accionpersonal/permitidas`
* **Descripción**: Obtiene las acciones de personal que el usuario actual tiene permitidas ejecutar según su rol.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Buscar Campos por Acción
* **HTTP Method**: `GET`
* **Path**: `/api/v1/accionpersonal/campos/accion/{idAccion}`
* **Descripción**: Retorna la estructura dinámica de campos (formularios) requerida para procesar una acción específica.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idAccion` (integer): ID de la acción de personal.

---

### D. Cancelar Autorización / Acción
* **HTTP Method**: `POST`
* **Path**: `/api/v1/accionpersonal/cancelar`
* **Descripción**: Cancela una acción que se encuentra en flujo de autorización.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
