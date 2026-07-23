# Especificación de API: Módulo Proceso de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints del motor de Cálculo de Nómina.

---

## 1. Endpoints

### A. Ejecutar Generación / Cálculo de Nómina
* **HTTP Method**: `POST`
* **Path**: `/api/v1/procesonomina/generar-nomina`
* **Descripción**: Inicializa de forma asíncrona (background job) el proceso de cálculo completo de un período de nómina (ingresos, deducciones, ISR, TSS).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "idCompania": 1,
  "idTipoNomina": 2,
  "idDetallePeriodo": 45,
  "usuarioEjecutor": "admin",
  "soloEmpleadosSeleccionados": []
}
```

#### Response 202 Accepted
```json
{
  "codigo": 202,
  "idProcessExecution": 10594,
  "mensaje": "El proceso de cálculo de nómina se ha encolado exitosamente"
}
```

---

### B. Verificar Estado del Proceso de Nómina
* **HTTP Method**: `GET`
* **Path**: `/api/v1/procesonomina/verificar-nomina/{idProcessExecution}`
* **Descripción**: Consulta el estatus (En Progreso, Completado, Fallido) y el porcentaje de avance de un proceso de cálculo enviado a background.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idProcessExecution` (integer): ID del proceso devuelto en el endpoint de ejecución.

#### Response 200 OK
```json
{
  "idProcessExecution": 10594,
  "estado": "Completado",
  "porcentajeAvance": 100,
  "errores": []
}
```

---

### C. Seguimiento de Procesos de Nómina
* **HTTP Method**: `GET`
* **Path**: `/api/v1/procesonomina/seguimiento-nomina`
* **Descripción**: Obtiene la lista histórica de las corridas de nómina ejecutadas, permitiendo acceder a bitácoras de auditoría o de errores.
* **Headers**: `Authorization: Bearer <Token>`
