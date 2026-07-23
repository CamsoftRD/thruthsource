# Especificación de API: Módulo Requisición de Personal

Contrato OpenAPI / Markdown para la interacción con los endpoints de gestión del ciclo de vida de Requisiciones de Personal (Vacantes).

---

## 1. Endpoints

### A. Obtener Requisiciones Generales
* **HTTP Method**: `GET`
* **Path**: `/api/v1/requisicion`
* **Descripción**: Obtiene la lista maestra de todas las requisiciones de personal creadas en el sistema.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Obtener Requisiciones por Compañía y Estado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/requisicion/compania/{id}/{stateNumber}`
* **Descripción**: Filtra las requisiciones de una compañía según su estado (Borrador, Publicada, Cerrada).
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): ID de la compañía.
* `stateNumber` (integer): Código numérico del estado de la requisición.

---

### C. Crear Requisición
* **HTTP Method**: `POST`
* **Path**: `/api/v1/requisicion`
* **Descripción**: Registra la necesidad de cobertura de una vacante, detallando el puesto, cantidad y perfil requerido.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Actualizar Requisición
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/requisicion`
* **Descripción**: Modifica la información básica o perfil de una requisición existente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Cerrar Requisición
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/requisicion/{id}`
* **Descripción**: Cierra una vacante o requisición, indicando que el proceso de búsqueda ha concluido.
* **Headers**: `Authorization: Bearer <Token>`

---

### F. Aplicar Transición de Estado
* **HTTP Method**: `POST`
* **Path**: `/api/v1/requisicion/aplicar-transicion`
* **Descripción**: Cambia la requisición de una etapa a otra (Ej: De Pendiente Aprobación a Publicada).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
