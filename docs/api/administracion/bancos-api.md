# Especificación de API: Módulo Bancos

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Bancos e Instituciones Financieras.

---

## 1. Endpoints

### A. Listar Entidades Bancarias
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/banco`
* **Descripción**: Obtiene el catálogo de bancos disponibles para la dispersión de pagos de nómina.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "codigo_Banco": "BPD-01",
    "nombre_Banco": "Banco Popular Dominicano",
    "rnc": "101000154",
    "swift": "BPOPDOXX",
    "estado": "Activo"
  },
  {
    "id": 2,
    "codigo_Banco": "BHD-02",
    "nombre_Banco": "Banco BHD",
    "rnc": "101001234",
    "swift": "BHDBDOXX",
    "estado": "Activo"
  }
]
```

---

### B. Obtener Banco por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/banco/{id}`
* **Descripción**: Muestra los detalles de una entidad bancaria por su ID.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): Identificador de la entidad bancaria.

#### Response 200 OK
```json
{
  "id": 1,
  "codigo_Banco": "BPD-01",
  "nombre_Banco": "Banco Popular Dominicano",
  "rnc": "101000154",
  "swift": "BPOPDOXX",
  "estado": "Activo"
}
```

---

### C. Crear Banco
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/banco`
* **Descripción**: Registra una nueva entidad bancaria en el sistema.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "codigo_Banco": "BS-03",
  "nombre_Banco": "Banco Santa Cruz",
  "rnc": "101554321",
  "swift": "BSCRDOXX",
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Entidad bancaria registrada exitosamente",
  "id": 3
}
```

---

### D. Actualizar Banco
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/banco`
* **Descripción**: Modifica la información o código SWIFT/RNC de una entidad bancaria.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 3,
  "codigo_Banco": "BS-03",
  "nombre_Banco": "Banco Múltiple Santa Cruz",
  "rnc": "101554321",
  "swift": "BSCRDOXX",
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Banco actualizado exitosamente"
}
```

---

### E. Eliminar Banco
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/administracion/banco/{id}`
* **Descripción**: Inactiva o remueve una entidad bancaria del catálogo.
* **Headers**: `Authorization: Bearer <Token>`
