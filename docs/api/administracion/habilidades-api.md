# Especificación de API: Módulo Habilidades

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Habilidades, Competencias y Calificaciones.

---

## 1. Endpoints

### A. Listar Habilidades
* **HTTP Method**: `GET`
* **Path**: `/api/v1/habilidades`
* **Descripción**: Retorna el catálogo global de habilidades técnicas, blandas y certificaciones.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "codigo": "HAB-CSHARP",
    "nombre": "Programación C# / .NET Core",
    "categoria": "Técnica",
    "estado": "Activo"
  },
  {
    "id": 2,
    "codigo": "HAB-LIDERAZGO",
    "nombre": "Liderazgo y Gestión de Equipos",
    "categoria": "Blanda",
    "estado": "Activo"
  }
]
```

---

### B. Obtener Habilidad por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/habilidades/{id}`
* **Descripción**: Muestra los detalles de una habilidad por su ID.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): Identificador de la habilidad.

#### Response 200 OK
```json
{
  "id": 1,
  "codigo": "HAB-CSHARP",
  "nombre": "Programación C# / .NET Core",
  "categoria": "Técnica",
  "estado": "Activo"
}
```

---

### C. Crear Habilidades
* **HTTP Method**: `POST`
* **Path**: `/api/v1/habilidades`
* **Descripción**: Registra una o más habilidades en el catálogo corporativo.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
[
  {
    "codigo": "HAB-DOCKER",
    "nombre": "Containerización con Docker & Kubernetes",
    "categoria": "Técnica",
    "estado": "Activo"
  }
]
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Habilidades creadas exitosamente"
}
```

---

### D. Actualizar Habilidad
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/habilidades`
* **Descripción**: Modifica la denominación, categoría o estado de una habilidad.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 3,
  "codigo": "HAB-DOCKER",
  "nombre": "Docker, Kubernetes & Cloud Native",
  "categoria": "Técnica",
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Habilidad actualizada exitosamente"
}
```

---

### E. Eliminar Habilidad
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/habilidades/{id}`
* **Descripción**: Elimina o inactiva una habilidad del catálogo.
* **Headers**: `Authorization: Bearer <Token>`
