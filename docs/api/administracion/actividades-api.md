# Especificación de API: Módulo Actividades e Inscripciones

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Actividades Corporativas e Inscripción de Empleados.

---

## 1. Endpoints....

### A. Listar Actividades Corporativas
* **HTTP Method**: `GET`
* **Path**: `/api/v1/actividades`
* **Descripción**: Muestra la lista de talleres, seminarios, eventos y actividades institucionales.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "idActividad": 5,
    "titulo": "Taller de Liderazgo y Trabajo en Equipo",
    "descripcion": "Jornada formativa para mandos medios y directivos",
    "fechaEvento": "2026-09-15T09:00:00",
    "lugar": "Salón Eventos Hotel Real",
    "cupoMaximo": 30,
    "cupoDisponible": 12,
    "estado": "Activo"
  }
]
```

---

### B. Crear Actividad
* **HTTP Method**: `POST`
* **Path**: `/api/v1/actividades`
* **Descripción**: Registra un nuevo evento o actividad corporativa en el calendario institucional.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "titulo": "Seminario de Ciberseguridad 2026",
  "descripcion": "Buenas prácticas de seguridad de la información",
  "fechaEvento": "2026-10-01T10:00:00",
  "lugar": "Auditorio Principal",
  "cupoMaximo": 50
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Actividad creada exitosamente",
  "idActividad": 6
}
```

---

### C. Listar Inscritos en una Actividad
* **HTTP Method**: `GET`
* **Path**: `/api/v1/actividades/{idActividad}/inscripciones`
* **Descripción**: Obtiene la lista de colaboradores inscritos en una actividad específica.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idActividad` (integer): Identificador de la actividad.

#### Response 200 OK
```json
[
  {
    "empleadoId": 101,
    "nombreEmpleado": "Carlos Pérez",
    "departamento": "Tecnología de la Información",
    "fechaInscripcion": "2026-07-20T14:30:00"
  }
]
```

---

### D. Inscribir Empleado en Actividad
* **HTTP Method**: `POST`
* **Path**: `/api/v1/actividades/{idActividad}/inscripciones`
* **Descripción**: Inscribe formalmente a un colaborador en la actividad seleccionada.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Path Parameters
* `idActividad` (integer): Identificador de la actividad.

#### Request Body (JSON)
```json
{
  "empleadoId": 105,
  "observaciones": "Solicitud aprobada por gerente de área"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Empleado inscrito exitosamente"
}
```

---

### E. Cancelar Inscripción de Empleado
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/actividades/{idActividad}/inscripciones/{empleadoId}`
* **Descripción**: Cancela la participación de un colaborador en una actividad liberando un cupo.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idActividad` (integer): ID de la actividad.
* `empleadoId` (integer): ID del colaborador.

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Inscripción cancelada exitosamente"
}
```
