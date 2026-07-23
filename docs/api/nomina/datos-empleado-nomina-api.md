# Especificación de API: Módulo Datos de Empleado para Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints de visualización de datos del empleado relacionados a cálculos de nómina.

---

## 1. Endpoints

### A. Buscar Datos de Empleados
* **HTTP Method**: `GET`
* **Path**: `/api/v1/datosempleadonomina/{tipo}`
* **Descripción**: Realiza búsquedas de colaboradores en función de ciertos criterios de estado en nómina.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `tipo` (integer): Tipo de búsqueda a ejecutar.

#### Response 200 OK
```json
[
  {
    "empleadoId": 101,
    "nombreCompleto": "Carlos Pérez",
    "departamento": "Desarrollo",
    "fechaIngreso": "2026-01-01T00:00:00"
  }
]
```

---

### B. Empleados de Nuevo Ingreso Sin Nómina
* **HTTP Method**: `GET`
* **Path**: `/api/v1/datosempleadonomina/BuscaEmpleadosNuevoIngresoSinNomina/{idCompania}/{culture}`
* **Descripción**: Retorna la lista de empleados recientemente contratados que aún no tienen nómina asignada.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCompania` (integer): ID de la compañía.
* `culture` (string): Código de cultura/idioma (ej. es-DO).

---

### C. Empleados de Salida en Vista
* **HTTP Method**: `GET`
* **Path**: `/api/v1/datosempleadonomina/EmpleadoDeSalidaView/{idCompania}`
* **Descripción**: Obtiene la vista de empleados en proceso de desvinculación para la generación de liquidación.
* **Headers**: `Authorization: Bearer <Token>`
