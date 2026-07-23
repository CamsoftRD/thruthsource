# Especificación de API: Módulo Cuentas Contables

Contrato OpenAPI / Markdown para la interacción con los endpoints del catálogo de Cuentas Contables.

---

## 1. Endpoints

### A. Listar Cuentas Contables
* **HTTP Method**: `GET`
* **Path**: `/api/v1/cuentacontable`
* **Descripción**: Retorna la estructura general del catálogo de cuentas aplicables a conceptos de nómina.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "cuenta": "6101-01-001",
    "descripcion": "Gasto de Salarios",
    "estado": "Activa"
  }
]
```

---

### B. Obtener Cuenta por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/cuentacontable/{id}`
* **Descripción**: Consulta el detalle de una cuenta contable específica.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): ID de la cuenta contable.

#### Response 200 OK
```json
{
  "id": 1,
  "cuenta": "6101-01-001",
  "descripcion": "Gasto de Salarios",
  "estado": "Activa"
}
```

---

### C. Crear Cuenta Contable
* **HTTP Method**: `POST`
* **Path**: `/api/v1/cuentacontable`
* **Descripción**: Agrega una nueva cuenta al catálogo.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "cuenta": "6101-01-002",
  "descripcion": "Bonificaciones",
  "estado": "Activa"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Cuenta contable creada exitosamente"
}
```

---

### D. Actualizar Cuenta Contable
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/cuentacontable`
* **Descripción**: Modifica la información de una cuenta.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Eliminar Cuentas Contables
* **HTTP Method**: `POST`
* **Path**: `/api/v1/cuentacontable/eliminar`
* **Descripción**: Inactiva o elimina de forma masiva cuentas contables enviadas en el body.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
