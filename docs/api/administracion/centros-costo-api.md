# Especificación de API: Módulo Centros de Costo

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Centros de Costo.

---

## 1. Endpoints

### A. Listar Centros de Costo por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/centrocosto/compania/{idCompania}`
* **Descripción**: Obtiene la lista de centros de costo financieros asociados a una compañía.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCompania` (integer): ID de la compañía.

#### Response 200 OK
```json
[
  {
    "id": 10,
    "id_Compania": 1,
    "codigo_Centro_Costo": "CC-100-ADM",
    "nombre_Centro_Costo": "Administración General",
    "cuenta_Contable": "6101-01-001",
    "estado": "Activo"
  },
  {
    "id": 11,
    "id_Compania": 1,
    "codigo_Centro_Costo": "CC-200-TEC",
    "nombre_Centro_Costo": "Tecnología e Innovación",
    "cuenta_Contable": "6101-02-005",
    "estado": "Activo"
  }
]
```

---

### B. Obtener Centro de Costo por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/centrocosto/{id}`
* **Descripción**: Consulta el detalle y cuenta contable de un centro de costo por su ID.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): Identificador único del centro de costo.

#### Response 200 OK
```json
{
  "id": 11,
  "id_Compania": 1,
  "codigo_Centro_Costo": "CC-200-TEC",
  "nombre_Centro_Costo": "Tecnología e Innovación",
  "cuenta_Contable": "6101-02-005",
  "estado": "Activo"
}
```

---

### C. Crear Centro de Costo
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/centrocosto`
* **Descripción**: Registra un nuevo centro de costo para la imputación contable de gastos de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id_Compania": 1,
  "codigo_Centro_Costo": "CC-300-VEN",
  "nombre_Centro_Costo": "Ventas y Comercial",
  "cuenta_Contable": "6101-03-010",
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Centro de costo registrado exitosamente",
  "id": 12
}
```

---

### D. Actualizar Centro de Costo
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/centrocosto`
* **Descripción**: Modifica la información del centro de costo o su imputación contable.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 12,
  "id_Compania": 1,
  "codigo_Centro_Costo": "CC-300-VEN",
  "nombre_Centro_Costo": "Ventas & Operaciones Comerciales",
  "cuenta_Contable": "6101-03-010",
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Centro de costo actualizado correctamente"
}
```

---

### E. Eliminar Centro de Costo
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/administracion/centrocosto/{id}`
* **Descripción**: Inactiva o elimina un centro de costo del sistema.
* **Headers**: `Authorization: Bearer <Token>`
