# Especificación de API: Módulo Interfaz Dynamics 365

Contrato OpenAPI / Markdown para la interacción con los endpoints de Integración e Interfaz con Dynamics 365 (ERP Financiero).

---

## 1. Endpoints

### A. Estructuras Contables
* **HTTP Method**: `GET`
* **Path**: `/api/v1/interfazdynamic365/estructuraContable`
* **Descripción**: Consulta las estructuras contables configuradas para la integración.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Guardar Detalle de Relación Concepto/Cuenta
* **HTTP Method**: `POST`
* **Path**: `/api/v1/interfazdynamic365/guardar-detalle-relacion/{id_concepto}`
* **Descripción**: Asigna cuentas contables específicas (de Dynamics) a un concepto de nómina en base al departamento del empleado.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Path Parameters
* `id_concepto` (integer): ID del concepto de nómina.

---

### C. Generar Entrada de Diario
* **HTTP Method**: `POST`
* **Path**: `/api/v1/interfazdynamic365/generar-entrada-diario`
* **Descripción**: Genera el archivo o estructura de la entrada de diario a partir de una nómina calculada y cerrada.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Transferir Entrada de Diario
* **HTTP Method**: `POST`
* **Path**: `/api/v1/interfazdynamic365/transferir-entrada-diario`
* **Descripción**: Ejecuta el proceso de enviar/transferir la entrada de diario generada hacia Dynamics 365.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Verificar Estado de Transferencia
* **HTTP Method**: `GET`
* **Path**: `/api/v1/interfazdynamic365/verificar-transferencia/{idProcessExecution}`
* **Descripción**: Verifica de forma asíncrona el estado de la transferencia de una entrada de diario hacia Dynamics.
* **Headers**: `Authorization: Bearer <Token>`
