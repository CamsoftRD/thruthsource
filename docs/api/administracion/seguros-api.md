# Especificación de API: Módulo Seguros (Proveedores y Planes)

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Proveedores de Seguro y Planes de Cobertura.

---

## 1. Endpoints

### A. Listar Proveedores de Seguro
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/proveedorseguro`
* **Descripción**: Retorna la lista de aseguradoras/proveedores de salud y vida registrados.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "rnc": "101888888",
    "nombre_Proveedor": "ARS Humana / Primera ARS",
    "contacto": "Lic. Maria Fernández",
    "telefono": "809-555-9900",
    "email": "contacto@arsprimera.com.do",
    "estado": "Activo"
  },
  {
    "id": 2,
    "rnc": "101777777",
    "nombre_Proveedor": "ARS Palic / Mapfre Salud",
    "contacto": "Lic. Pedro Gómez",
    "telefono": "809-555-8800",
    "email": "contacto@mapfresalud.com.do",
    "estado": "Activo"
  }
]
```

---

### B. Crear Proveedor de Seguro
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/proveedorseguro`
* **Descripción**: Registra una nueva entidad aseguradora en el sistema.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "rnc": "101666666",
  "nombre_Proveedor": "Seguros Universal",
  "contacto": "Juan Almonte",
  "telefono": "809-555-7700",
  "email": "info@universal.com.do",
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Proveedor de seguro registrado exitosamente",
  "id": 3
}
```

---

### C. Listar Planes de Seguro
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/planesseguro`
* **Descripción**: Obtiene todos los planes de seguro parametrizados en el sistema.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 10,
    "id_Proveedor": 1,
    "nombre_Proveedor": "ARS Humana / Primera ARS",
    "nombre_Plan": "Plan Salud Básico Legal",
    "monto_Empleado": 450.0,
    "monto_Empleador": 950.0,
    "estado": "Activo"
  },
  {
    "id": 11,
    "id_Proveedor": 1,
    "nombre_Proveedor": "ARS Humana / Primera ARS",
    "nombre_Plan": "Plan Salud Max Complementario",
    "monto_Empleado": 1200.0,
    "monto_Empleador": 1800.0,
    "estado": "Activo"
  }
]
```

---

### D. Listar Planes por Proveedor
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/planesseguro/proveedor/{idProveedor}`
* **Descripción**: Consulta los planes de cobertura ofertados por un proveedor específico.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idProveedor` (integer): ID del proveedor de seguro.

#### Response 200 OK
```json
[
  {
    "id": 10,
    "id_Proveedor": 1,
    "nombre_Plan": "Plan Salud Básico Legal",
    "monto_Empleado": 450.0,
    "monto_Empleador": 950.0,
    "estado": "Activo"
  }
]
```

---

### E. Crear Plan de Seguro
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/planesseguro`
* **Descripción**: Registra un nuevo plan de cobertura con los aportes estipulados para empleado y empleador.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id_Proveedor": 1,
  "nombre_Plan": "Plan Odontológico Ejecutivo",
  "monto_Empleado": 300.0,
  "monto_Empleador": 300.0,
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Plan de seguro registrado exitosamente",
  "id": 12
}
```

---

### F. Actualizar Plan de Seguro
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/planesseguro`
* **Descripción**: Modifica montos o condiciones de un plan de seguro.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 12,
  "id_Proveedor": 1,
  "nombre_Plan": "Plan Odontológico Ejecutivo Plus",
  "monto_Empleado": 350.0,
  "monto_Empleador": 350.0,
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Plan de seguro actualizado exitosamente"
}
```
