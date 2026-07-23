# Especificación de API: Módulo Horarios

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Horarios y Jornadas Laborales.

---

## 1. Endpoints

### A. Listar Horarios por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/horario/compania/{idCompania}`
* **Descripción**: Muestra la lista de horarios de trabajo configurados para una compañía.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCompania` (integer): ID de la compañía.

#### Response 200 OK
```json
[
  {
    "id": 1,
    "compania": 1,
    "horario_codigo": "HOR-MAT-01",
    "descripcion": "Jornada Diurna Regular (8:00 AM - 5:00 PM)",
    "horaEntrada": "08:00:00",
    "horaSalida": "17:00:00",
    "estado": "Activo"
  }
]
```

---

### B. Obtener Horario por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/horario/{id}`
* **Descripción**: Muestra los detalles de un turno u horario específico.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): Identificador único del horario.

#### Response 200 OK
```json
{
  "id": 1,
  "compania": 1,
  "horario_codigo": "HOR-MAT-01",
  "descripcion": "Jornada Diurna Regular (8:00 AM - 5:00 PM)",
  "estado": "Activo"
}
```

---

### C. Crear Horario
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/horario`
* **Descripción**: Registra un nuevo horario o turno laboral en la base de datos.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "compania": 1,
  "horario_codigo": "HOR-VES-02",
  "descripcion": "Jornada Vespertina (2:00 PM - 10:00 PM)",
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Horario registrado exitosamente",
  "id": 2
}
```

---

### D. Actualizar Horario
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/horario`
* **Descripción**: Modifica la información o estado de un horario laboral.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 2,
  "compania": 1,
  "horario_codigo": "HOR-VES-02",
  "descripcion": "Jornada Vespertina Modificada (1:00 PM - 9:00 PM)",
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Horario actualizado exitosamente"
}
```

---

### E. Importar Horarios Masivos
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/horario/importar`
* **Descripción**: Importación de plantillas masivas de horarios vía Excel.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: multipart/form-data`
