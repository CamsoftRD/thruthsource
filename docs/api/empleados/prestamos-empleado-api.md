# Especificación de API: Módulo Préstamos a Empleados

Contrato OpenAPI / Markdown para la interacción con los endpoints de gestión de préstamos, anticipos e historial de pagos.

---

## 1. Endpoints

### A. Obtener Préstamos por Empleado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/prestamosempleado/detalle-prestamo/{id}`
* **Descripción**: Obtiene el listado de todos los préstamos vinculados a un empleado específico.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Ver Desglose de Pagos (Amortización)
* **HTTP Method**: `GET`
* **Path**: `/api/v1/prestamosempleado/deglose-pagos/{id}`
* **Descripción**: Obtiene la tabla de amortización o historial de cuotas pagadas de un préstamo.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Registrar Nuevo Préstamo
* **HTTP Method**: `POST`
* **Path**: `/api/v1/prestamosempleado/prestamos`
* **Descripción**: Crea un nuevo préstamo con sus condiciones para que las cuotas sean deducidas por nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Pago Extraordinario (Abono)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/prestamosempleado`
* **Descripción**: Registra un pago adelantado o abono a capital sobre un préstamo existente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
