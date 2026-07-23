# Especificación de API: Módulo Dimensiones Financieras del Empleado

Contrato OpenAPI / Markdown para la interacción con los endpoints de Dimensiones Financieras.

---

## 1. Endpoints

### A. Maestro de Dimensiones Financieras
* **HTTP Method**: `GET`
* **Path**: `/api/v1/dimensionesfinancieras`
* **Descripción**: Obtiene la configuración global de dimensiones (centros de costos, departamentos, unidades de negocio) integradas al ERP.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Asignar Dimensión a Empleado
* **HTTP Method**: `POST`
* **Path**: `/api/v1/dimensionesfinancieras/detalle`
* **Descripción**: Asocia una dimensión financiera o contable al perfil del empleado.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Actualizar Dimensión de Empleado
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/dimensionesfinancieras/detalle`
* **Descripción**: Modifica la dimensión financiera activa de un empleado.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
