# Especificación de API: Módulo Capacitación de Empleado

Contrato OpenAPI / Markdown para la interacción con los endpoints de entrenamientos y capacitaciones del colaborador.

---

## 1. Endpoints

### A. Listar Capacitaciones del Empleado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/capacitacionempleado/{idEmpleado}`
* **Descripción**: Retorna el historial de cursos, seminarios o entrenamientos registrados para un empleado.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idEmpleado` (integer): ID del empleado.

---

### B. Crear Registro de Capacitación
* **HTTP Method**: `POST`
* **Path**: `/api/v1/capacitacionempleado`
* **Descripción**: Asigna una o más capacitaciones al récord del colaborador.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Actualizar Capacitación
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/capacitacionempleado`
* **Descripción**: Actualiza el estado (ej. de En Progreso a Completado) o los datos de un curso asignado.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Subir Documentos de Capacitación (Certificados)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/capacitacionempleado/documentos`
* **Descripción**: Permite adjuntar diplomas o certificados que validan la culminación de un entrenamiento.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
