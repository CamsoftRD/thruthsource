# Especificación de API: Módulo Beneficios Base

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Beneficios Base.

---

## 1. Endpoints

### A. Listar Beneficios Base por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/beneficiobase/compania/{idCompania}`
* **Descripción**: Obtiene la lista de beneficios corporativos parametrizados para una empresa.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCompania` (integer): ID de la compañía.

#### Response 200 OK
```json
[
  {
    "id": 1,
    "idCompania": 1,
    "codigo": "BEN-SEG-01",
    "nombre": "Seguro Complementario de Salud",
    "descripcion": "Cobertura médica extendida para colaboradores",
    "esMonetario": false,
    "montoDefault": 0.0,
    "estado": "Activo"
  },
  {
    "id": 2,
    "idCompania": 1,
    "codigo": "BEN-FLT-02",
    "nombre": "Bono de Flotilla / Combustible",
    "descripcion": "Asignación mensual de combustible",
    "esMonetario": true,
    "montoDefault": 5000.0,
    "estado": "Activo"
  }
]
```

---

### B. Obtener Beneficio Base por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/beneficiobase/{id}`
* **Descripción**: Consulta las características y configuración de un beneficio específico.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): ID del beneficio base.

#### Response 200 OK
```json
{
  "id": 1,
  "idCompania": 1,
  "codigo": "BEN-SEG-01",
  "nombre": "Seguro Complementario de Salud",
  "descripcion": "Cobertura médica extendida para colaboradores",
  "esMonetario": false,
  "montoDefault": 0.0,
  "estado": "Activo"
}
```

---

### C. Crear Beneficio Base
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/beneficiobase`
* **Descripción**: Registra un nuevo beneficio en el catálogo global de la empresa.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "idCompania": 1,
  "codigo": "BEN-ALM-03",
  "nombre": "Subsidio de Almuerzo Corporativo",
  "descripcion": "Descuento en cafetería corporativa",
  "esMonetario": true,
  "montoDefault": 2500.0,
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Beneficio base registrado correctamente",
  "id": 3
}
```

---

### D. Actualizar Beneficio Base
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/beneficiobase`
* **Descripción**: Actualiza los parámetros o montos por defecto de un beneficio base.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 3,
  "idCompania": 1,
  "codigo": "BEN-ALM-03",
  "nombre": "Subsidio de Almuerzo Incrementado",
  "descripcion": "Descuento actualizado en cafetería",
  "esMonetario": true,
  "montoDefault": 3000.0,
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Beneficio base actualizado correctamente"
}
```

---

### E. Eliminar Beneficios Base
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/beneficiobase/eliminar`
* **Descripción**: Desactiva o remueve masivamente una lista de beneficios base.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
[
  {
    "id": 3,
    "idCompania": 1
  }
]
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Beneficios eliminados correctamente"
}
```
