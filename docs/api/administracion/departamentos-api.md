# Especificación de API: Módulo Departamentos

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Departamentos.

---

## 1. Endpoints

### A. Listar Departamentos por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/departamento/compania/{idCompania}`
* **Descripción**: Obtiene la jerarquía y lista de departamentos registrados para una compañía.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCompania` (integer): ID único de la empresa/compañía.

#### Response 200 OK
```json
[
  {
    "id_Departamento": 5,
    "id_Compania": 1,
    "nombre": "Tecnología de la Información",
    "departamento_Padre": null,
    "gerente_Departamento": 101,
    "nombreGerente": "Carlos Pérez",
    "estado": "Activo"
  },
  {
    "id_Departamento": 6,
    "id_Compania": 1,
    "nombre": "Desarrollo de Software",
    "departamento_Padre": 5,
    "gerente_Departamento": 105,
    "nombreGerente": "Laura Jiménez",
    "estado": "Activo"
  }
]
```

---

### B. Obtener Departamento por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/departamento/{id}`
* **Descripción**: Consulta el detalle de un departamento específico mediante su identificador.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): Identificador único del departamento.

#### Response 200 OK
```json
{
  "id_Departamento": 5,
  "id_Compania": 1,
  "nombre": "Tecnología de la Información",
  "departamento_Padre": null,
  "gerente_Departamento": 101,
  "estado": "Activo"
}
```

---

### C. Crear Departamento
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/departamento`
* **Descripción**: Registra una nueva unidad organizacional o departamento en la estructura de la empresa.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id_Compania": 1,
  "nombre": "Recursos Humanos",
  "departamento_Padre": null,
  "gerente_Departamento": 102,
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Departamento creado exitosamente",
  "id_Departamento": 7
}
```

---

### D. Actualizar Departamento
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/administracion/departamento`
* **Descripción**: Actualiza los datos de un departamento (nombre, gerente asignado, estado o departamento padre).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id_Departamento": 7,
  "id_Compania": 1,
  "nombre": "Talento Humano & Cultura",
  "departamento_Padre": null,
  "gerente_Departamento": 102,
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Departamento actualizado exitosamente"
}
```

---

### E. Eliminar Departamento(s)
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/administracion/departamento`
* **Descripción**: Desactiva o elimina lógicamente una lista de departamentos.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
[
  {
    "id_Departamento": 7,
    "id_Compania": 1
  }
]
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Departamentos procesados exitosamente"
}
```

---

### F. Gestionar Detalle de Centro de Costo por Departamento
* **HTTP Method**: `POST` / `DELETE`
* **Path**: `/api/v1/administracion/departamento/detalle` | `/api/v1/administracion/departamento/detalle/{id}`
* **Descripción**: Asigna o elimina la vinculación de un centro de costo contable a un departamento específico.
