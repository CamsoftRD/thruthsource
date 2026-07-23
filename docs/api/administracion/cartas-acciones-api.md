# Especificación de API: Módulo Cartas y Acciones de Personal

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Plantillas de Cartas y Acciones de Personal.

---

## 1. Endpoints

### A. Listar Tipos de Cartas
* **HTTP Method**: `GET`
* **Path**: `/api/v1/tipos-cartas`
* **Descripción**: Retorna las plantillas de cartas administrativas (Certificación de trabajo, Amonestación, Ascenso, etc.).
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "titulo": "Certificación Laboral Estándar",
    "contenidoPlantilla": "Por medio de la presente se hace constar que {NOMBRE_EMPLEADO} labora en esta empresa...",
    "estado": "Activo"
  },
  {
    "id": 2,
    "titulo": "Carta de Amonestación Escrita",
    "contenidoPlantilla": "Nos dirigimos a usted para notificarle la siguiente falta...",
    "estado": "Activo"
  }
]
```

---

### B. Crear Tipo de Carta
* **HTTP Method**: `POST`
* **Path**: `/api/v1/tipos-cartas`
* **Descripción**: Registra una nueva plantilla de comunicación formal/carta.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "titulo": "Carta de Aumento Salarial",
  "contenidoPlantilla": "Nos complace comunicarle que a partir del {FECHA_EFECTIVA} su salario será...",
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Plantilla de carta registrada exitosamente",
  "id": 3
}
```

---

### C. Listar Cartas Disponibles por Accion de Personal
* **HTTP Method**: `GET`
* **Path**: `/api/v1/cartas-acciones/{sdaaccGuid}/disponibles`
* **Descripción**: Consulta las plantillas de cartas asociadas a un tipo específico de Acción de Personal.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `sdaaccGuid` (string): GUID de la acción de personal.

#### Response 200 OK
```json
[
  {
    "id": 5,
    "cartaId": 3,
    "tituloCarta": "Carta de Aumento Salarial",
    "sdaaccGuid": "GUID-ACCION-SALARIAL-01"
  }
]
```

---

### D. Asociar Carta a Acción de Personal
* **HTTP Method**: `POST`
* **Path**: `/api/v1/cartas-acciones`
* **Descripción**: Vincula una plantilla de carta a una acción de personal determinada.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "sdaaccGuid": "GUID-ACCION-SALARIAL-01",
  "cartaId": 3
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Carta asociada exitosamente a la acción de personal"
}
```

---

### E. Eliminar Vinculación de Carta y Acción
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/cartas-acciones/{id}`
* **Descripción**: Elimina la relación entre una plantilla de carta y la acción de personal.
* **Headers**: `Authorization: Bearer <Token>`
