# Especificación de API: Módulo Grados Académicos

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Grados Académicos.

---

## 1. Endpoints

### A. Listar Grados Académicos
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/gradoacademico`
* **Descripción**: Retorna el catálogo completo de nivel instruccional / grados académicos registrados.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "codigo": 1,
    "nombre": "Licenciatura",
    "estado": "Activo"
  },
  {
    "codigo": 2,
    "nombre": "Maestría / Posgrado",
    "estado": "Activo"
  },
  {
    "codigo": 3,
    "nombre": "Doctorado (PhD)",
    "estado": "Activo"
  }
]
```

---

### B. Obtener Grado Académico por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/gradoacademico/{id}`
* **Descripción**: Consulta un grado académico por su código numérico.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): ID numérico del grado académico.

#### Response 200 OK
```json
{
  "codigo": 1,
  "nombre": "Licenciatura",
  "estado": "Activo"
}
```

---

### C. Crear Grado Académico
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/gradoacademico`
* **Descripción**: Agrega un nuevo grado académico al catálogo general.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "nombre": "Técnico Superior",
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Grado académico registrado exitosamente"
}
```

---

### D. Actualizar Grado Académico
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/gradoacademico`
* **Descripción**: Modifica el nombre o estado de un grado académico existente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "codigo": 4,
  "nombre": "Técnico Superior Universitario",
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Grado académico actualizado exitosamente"
}
```
