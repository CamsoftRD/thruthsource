# Especificación de API: Módulo Sucursales

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Sucursales.

---

## 1. Endpoints

### A. Listar Sucursales por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/sucursal/compania/{idCompania}`
* **Descripción**: Retorna la lista de todas las sucursales u oficinas pertenecientes a una compañía.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCompania` (integer): ID único de la compañía.

#### Response 200 OK
```json
[
  {
    "id_Sucursal": 10,
    "id_Compania": 1,
    "nombre_Sucursal": "Sucursal Central Santo Domingo",
    "direccion": "Av. Winston Churchill 101, Santo Domingo",
    "telefono": "809-555-0100",
    "rnl": "RNL-2026-001",
    "referencia": "Frente a Plaza Central",
    "latitud": 18.47186,
    "longitud": -69.93605
  }
]
```

---

### B. Obtener Sucursal por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/sucursal/{id}`
* **Descripción**: Obtiene los datos detallados de una sucursal específica a partir de su ID.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): Identificador de la sucursal.

#### Response 200 OK
```json
{
  "id_Sucursal": 10,
  "id_Compania": 1,
  "nombre_Sucursal": "Sucursal Central Santo Domingo",
  "direccion": "Av. Winston Churchill 101",
  "telefono": "809-555-0100",
  "rnl": "RNL-2026-001",
  "referencia": "Frente a Plaza Central",
  "latitud": 18.47186,
  "longitud": -69.93605
}
```

---

### C. Crear Sucursal
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/sucursal`
* **Descripción**: Registra una nueva sucursal en el sistema.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id_Compania": 1,
  "nombre_Sucursal": "Sucursal Santiago Norte",
  "direccion": "Av. 27 de Febrero #45, Santiago",
  "telefono": "809-555-0200",
  "rnl": "RNL-2026-002",
  "referencia": "Próximo al Monumento",
  "latitud": 19.4517,
  "longitud": -70.6970
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Sucursal creada exitosamente",
  "id_Sucursal": 11
}
```

---

### D. Actualizar Sucursal
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/sucursal`
* **Descripción**: Modifica la información general de una sucursal existente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id_Sucursal": 11,
  "id_Compania": 1,
  "nombre_Sucursal": "Sucursal Santiago Centro",
  "direccion": "Av. Juan Pablo Duarte #88, Santiago",
  "telefono": "809-555-0201",
  "rnl": "RNL-2026-002",
  "referencia": "Esquina Calle El Sol",
  "latitud": 19.4520,
  "longitud": -70.6980
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Sucursal actualizada correctamente"
}
```

---

### E. Descargar Plantilla e Importación Masiva
* **HTTP Method**: `GET` / `POST`
* **Path**: `/api/v1/administracion/sucursal/plantilla` | `/api/v1/administracion/sucursal/importar`
* **Descripción**: `GET` descarga el formato Excel para carga masiva. `POST` procesa e importa el archivo Excel enviado en un `multipart/form-data`.
* **Headers**: `Authorization: Bearer <Token>`
