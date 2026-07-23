# Especificación de API: Módulo Portal de Autoservicio (Self-Service)

Contrato OpenAPI / Markdown para la interacción con los endpoints del Portal del Empleado.

---

## 1. Endpoints

### A. Obtener Perfil (Mi Información)
* **HTTP Method**: `GET`
* **Path**: `/api/v1/selfservice/me`
* **Descripción**: Retorna la información consolidada del perfil del usuario logueado en el portal.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Buzón de Solicitudes y Requerimientos
* **HTTP Method**: `GET`
* **Path**: `/api/v1/selfservice/requests`
* **Descripción**: Lista las solicitudes realizadas por el empleado (vacaciones, cartas, permisos). Filtros por query (`tipo`, `estado`).
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Crear Solicitud (Carta, Vacaciones, Licencia)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/selfservice/requests`
* **Descripción**: Envía una nueva solicitud formal desde el portal para aprobación de Recursos Humanos.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Obtener Tareas y Autorizaciones Pendientes
* **HTTP Method**: `GET`
* **Path**: `/api/v1/selfservice/autorizaciones/asignadas`
* **Descripción**: Enlista las tareas (flujos de aprobación de acciones de personal, vacaciones) asignadas al usuario para aprobar.
* **Headers**: `Authorization: Bearer <Token>`

---

### E. Autorizar Acción
* **HTTP Method**: `POST`
* **Path**: `/api/v1/selfservice/autorizacion/autorizar`
* **Descripción**: Ejecuta el visto bueno (aprobación) sobre una acción de personal o solicitud pendiente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### F. Postulaciones Internas (Job Postings)
* **HTTP Method**: `GET`
* **Path**: `/api/v1/selfservice/job-postings`
* **Descripción**: Lista las vacantes publicadas internamente a las que el empleado puede aplicar.
* **Headers**: `Authorization: Bearer <Token>`
