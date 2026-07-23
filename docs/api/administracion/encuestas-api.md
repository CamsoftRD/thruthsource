# Especificación de API: Módulo Encuestas

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Encuestas Organizacionales y Clima Laboral.

---

## 1. Endpoints

### A. Listar Encuestas
* **HTTP Method**: `GET`
* **Path**: `/api/v1/encuestas`
* **Descripción**: Retorna la lista de encuestas registradas en la organización.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "titulo": "Evaluación de Clima Organizacional 2026",
    "descripcion": "Encuesta anual sobre satisfacción laboral",
    "fechaInicio": "2026-07-01",
    "fechaFin": "2026-07-31",
    "estado": "Abierta"
  }
]
```

---

### B. Listar Encuestas Abiertas
* **HTTP Method**: `GET`
* **Path**: `/api/v1/encuestas/abiertas`
* **Descripción**: Consulta únicamente las encuestas disponibles para ser respondidas por los colaboradores.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "titulo": "Evaluación de Clima Organizacional 2026",
    "estado": "Abierta"
  }
]
```

---

### C. Crear Encuesta
* **HTTP Method**: `POST`
* **Path**: `/api/v1/encuestas`
* **Descripción**: Registra una nueva encuesta con su banco de preguntas y opciones de respuesta.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "titulo": "Encuesta de Satisfacción de Teletrabajo",
  "descripcion": "Medición de efectividad y herramientas de trabajo remoto",
  "fechaInicio": "2026-08-01",
  "fechaFin": "2026-08-15",
  "preguntas": [
    {
      "textoPregunta": "¿Cuenta con el equipamiento necesario para trabajar desde casa?",
      "tipoPregunta": "OPCION_MULTIPLE",
      "opciones": ["Sí, totalmente", "Parcialmente", "No"]
    }
  ]
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Encuesta creada exitosamente",
  "id": 2
}
```

---

### D. Registrar Respuestas de Encuesta
* **HTTP Method**: `POST`
* **Path**: `/api/v1/encuestas/{idEncuesta}/respuestas`
* **Descripción**: Almacena las respuestas de un colaborador a una encuesta determinada.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Path Parameters
* `idEncuesta` (integer): ID de la encuesta.

#### Request Body (JSON)
```json
{
  "empleadoId": 101,
  "respuestas": [
    {
      "preguntaId": 10,
      "respuestaTexto": "Sí, totalmente"
    }
  ]
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Respuestas guardadas exitosamente"
}
```

---

### E. Cerrar Encuesta
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/encuestas/{idEncuesta}/cerrar`
* **Descripción**: Finaliza el periodo de recepción de respuestas de una encuesta.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idEncuesta` (integer): ID de la encuesta.

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Encuesta cerrada exitosamente"
}
```
