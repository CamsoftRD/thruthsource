# Especificación de API: Módulo Tipos de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints de Configuración de Tipos de Nómina (Catálogo).

---

## 1. Endpoints

### A. Listar Tipos de Nómina
* **HTTP Method**: `GET`
* **Path**: `/api/v1/tiponomina`
* **Descripción**: Retorna la lista global de tipos de nómina configurados en el sistema (Semanal, Quincenal, Mensual, Regalía).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Listar Tipos de Nómina por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/tiponomina/compania/{id}`
* **Descripción**: Obtiene los tipos de nómina aplicables a una compañía en particular.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Crear Tipo de Nómina
* **HTTP Method**: `POST`
* **Path**: `/api/v1/tiponomina`
* **Descripción**: Crea una nueva frecuencia o tipo de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Actualizar Tipo de Nómina
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/tiponomina`
* **Descripción**: Modifica la información básica o configuraciones de un tipo de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Eliminar Tipos de Nómina
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/tiponomina/eliminar`
* **Descripción**: Inactiva o elimina de forma lógica un listado de tipos de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
