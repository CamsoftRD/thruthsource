# Especificación de API: Módulo Prestaciones Laborales

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Prestaciones Laborales por Desvinculación.

---

## 1. Endpoints

### A. Buscar Maestro de Prestaciones Laborales
* **HTTP Method**: `GET`
* **Path**: `/api/v1/prestacioneslaborales`
* **Descripción**: Obtiene la lista histórica o en proceso de empleados con prestaciones laborales calculadas.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Buscar Resumen de Prestaciones (Simulación / Precálculo)
* **HTTP Method**: `GET`
* **Path**: `/api/v1/prestacioneslaborales/{idEmpleado}/{fechaSalida}/{idRazonSalida}`
* **Descripción**: Ejecuta un precálculo o simulación de las prestaciones de un empleado a una fecha de salida determinada.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idEmpleado` (integer): ID del empleado a liquidar.
* `fechaSalida` (string): Fecha proyectada de salida (ej. 2026-10-15).
* `idRazonSalida` (integer): ID de la razón (Desahucio, Dimisión, Renuncia).

---

### C. Buscar Detalle de Prestaciones Laborales
* **HTTP Method**: `GET`
* **Path**: `/api/v1/prestacioneslaborales/{idMaster}/detalles`
* **Descripción**: Obtiene el desglose de los conceptos (Preaviso, Cesantía, Vacaciones, Regalía) asociados a un cálculo maestro de prestaciones.
* **Headers**: `Authorization: Bearer <Token>`

---

### D. Crear/Actualizar Detalle de Prestaciones
* **HTTP Method**: `POST` | `PUT`
* **Path**: `/api/v1/prestacioneslaborales/detalles`
* **Descripción**: Agrega o actualiza de forma manual rubros a pagar o deducir en la liquidación (ej. préstamos pendientes).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Eliminar Detalle de Prestaciones
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/prestacioneslaborales/detalles`
* **Descripción**: Elimina un rubro variable del pago de la liquidación.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
