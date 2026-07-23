# Especificación de API: Módulo Categoría de Actividades de Pago

Contrato OpenAPI / Markdown para la interacción con los endpoints de Categoría de Actividades.

---

## 1. Endpoints

### A. Listar Categorías de Actividades
* **HTTP Method**: `GET`
* **Path**: `/api/v1/categoriaactividades`
* **Descripción**: Obtiene la lista global de categorías para clasificación de actividades de pago o nómina.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "codigo": "CAT-HORAS",
    "descripcion": "Pago por horas trabajadas",
    "estado": "Activo"
  },
  {
    "id": 2,
    "codigo": "CAT-BONOS",
    "descripcion": "Pago de Bonificaciones",
    "estado": "Activo"
  }
]
```

---

### B. Listar Categorías de Pago
* **HTTP Method**: `GET`
* **Path**: `/api/v1/categoriaactividades/categoria-pago`
* **Descripción**: Retorna las categorías específicamente diseñadas para rubros de pago al personal.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 2,
    "codigo": "CAT-BONOS",
    "descripcion": "Pago de Bonificaciones",
    "estado": "Activo"
  }
]
```

---

### C. Crear Categoría
* **HTTP Method**: `POST`
* **Path**: `/api/v1/categoriaactividades`
* **Descripción**: Crea una nueva categoría de actividad.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "codigo": "CAT-COMISION",
  "descripcion": "Pago de Comisiones por Venta",
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Categoría creada exitosamente",
  "id": 3
}
```

---

### D. Actualizar Categoría
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/categoriaactividades`
* **Descripción**: Actualiza los datos de una categoría de actividad.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 3,
  "codigo": "CAT-COMISION-MOD",
  "descripcion": "Pago de Comisiones por Venta y Logro",
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Categoría actualizada correctamente"
}
```

---

### E. Eliminar Categorías
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/categoriaactividades`
* **Descripción**: Elimina o inactiva una lista de categorías de actividades.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
