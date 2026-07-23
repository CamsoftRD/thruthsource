# Especificación de API: Módulo Asignación de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Asignación de Nómina a Empleados.

---

## 1. Endpoints

### A. Buscar Asignación de Nómina por Empleado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/asignacionnomina/{idEmpleado}/{idCompania}`
* **Descripción**: Obtiene la información sobre las nóminas a las que está asignado un empleado en particular dentro de una compañía.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idEmpleado` (integer): ID del empleado.
* `idCompania` (integer): ID de la compañía.

#### Response 200 OK
```json
[
  {
    "id": 1,
    "idEmpleado": 105,
    "idTipoNomina": 2,
    "nombreNomina": "Nómina Quincenal Operativa",
    "fechaAsignacion": "2026-01-15T00:00:00",
    "estado": "Activa"
  }
]
```

---

### B. Crear Asignación de Nómina a Empleado
* **HTTP Method**: `POST`
* **Path**: `/api/v1/asignacionnomina`
* **Descripción**: Asigna a uno o más empleados a los diferentes tipos de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
[
  {
    "idEmpleado": 110,
    "idTipoNomina": 1,
    "fechaAsignacion": "2026-08-01T00:00:00",
    "estado": "Activa"
  }
]
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Asignación de nómina creada exitosamente"
}
```

---

### C. Eliminar Asignación de Nómina
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/asignacionnomina`
* **Descripción**: Desasigna a uno o más empleados de un tipo de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
[
  {
    "idEmpleado": 110,
    "idTipoNomina": 1
  }
]
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Asignación eliminada exitosamente"
}
```
