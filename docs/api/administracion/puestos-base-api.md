# Especificación de API: Módulo Puestos Base

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Puestos de Trabajo (Cargos Base).

---

## 1. Endpoints

### A. Listar Puestos Base por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/puestobase/compania/{idCompania}`
* **Descripción**: Retorna la lista de cargos o puestos de trabajo definidos para una compañía.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCompania` (integer): ID de la compañía.

#### Response 200 OK
```json
[
  {
    "id": 15,
    "id_compania": 1,
    "nombre": "Desarrollador Senior",
    "referencia": "DEV-SR-01",
    "descripcion": "Encargado de arquitectura y programación de módulos core",
    "comisiona": 0,
    "tope_comision": 0.0,
    "estado": "Activo"
  }
]
```

---

### B. Obtener Puesto Base por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/puestobase/{id}`
* **Descripción**: Muestra la información descriptiva y parametrización de un puesto de trabajo.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): Identificador único del puesto base.

#### Response 200 OK
```json
{
  "id": 15,
  "id_compania": 1,
  "nombre": "Desarrollador Senior",
  "referencia": "DEV-SR-01",
  "descripcion": "Encargado de arquitectura y programación de módulos core",
  "comisiona": 0,
  "tope_comision": 0.0,
  "estado": "Activo"
}
```

---

### C. Crear Puesto Base
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/puestobase`
* **Descripción**: Crea un nuevo cargo o puesto base en el catálogo organizacional.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id_compania": 1,
  "nombre": "Analista de Calidad QA",
  "referencia": "QA-MID-02",
  "descripcion": "Diseño y ejecución de pruebas automatizadas y funcionales",
  "comisiona": 0,
  "tope_comision": 0.0,
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Puesto base creado exitosamente",
  "id": 16
}
```

---

### D. Actualizar Puesto Base
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/puestobase`
* **Descripción**: Actualiza los datos de un puesto base existente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 16,
  "id_compania": 1,
  "nombre": "Ingeniero de Calidad QA Senior",
  "referencia": "QA-SR-01",
  "descripcion": "Líder de estrategia de pruebas de software",
  "comisiona": 0,
  "tope_comision": 0.0,
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Puesto base actualizado exitosamente"
}
```

---

### E. Asignar Beneficios por Puesto
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/puestobase/beneficiosdetail`
* **Descripción**: Asocia una lista de beneficios corporativos (ej. Seguro Médico, Bonos) a un puesto base.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
[
  {
    "idPuestoBase": 15,
    "idBeneficioBase": 3,
    "montoOporcentaje": 100.0,
    "estado": "Activo"
  }
]
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Detalle de beneficios registrado exitosamente"
}
```

---

### F. Asignar Documentos Requeridos por Puesto
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/puestobase/documentosdetail`
* **Descripción**: Define los documentos obligatorios requeridos para la contratación en un puesto de trabajo.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
[
  {
    "idPuestoBase": 15,
    "idTipoDocumento": 1,
    "esObligatorio": true
  }
]
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Requisitos documentales asociados correctamente"
}
```
