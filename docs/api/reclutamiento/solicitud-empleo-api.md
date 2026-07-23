# Especificación de API: Módulo Solicitud de Empleo

Contrato OpenAPI / Markdown para la interacción con los endpoints referentes a las aplicaciones y postulaciones de candidatos a vacantes.

---

## 1. Endpoints

### A. Listar Solicitudes por Requisición
* **HTTP Method**: `GET`
* **Path**: `/api/v1/solicitudempleo/requisicion/{id}`
* **Descripción**: Obtiene la lista de postulantes y solicitudes aplicadas a una vacante específica.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Listar Solicitudes por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/solicitudempleo/compania/{id}`
* **Descripción**: Retorna un resumen de todas las solicitudes de empleo activas agrupadas por la compañía.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Crear Solicitud (Postulación)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/solicitudempleo`
* **Descripción**: Registra una nueva aplicación de un candidato a una requisición activa.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Crear Empleado desde Solicitud (Contratación)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/solicitudempleo/crearEmpleadoSolicitud`
* **Descripción**: Proceso crítico que toma a un candidato preseleccionado en una solicitud y lo convierte en Empleado del sistema (Alta).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Mover al Banco de Elegibles
* **HTTP Method**: `POST`
* **Path**: `/api/v1/solicitudempleo/bancoElegibles`
* **Descripción**: Toma solicitudes o candidatos evaluados pero no contratados y los mueve a la cantera de talentos (Banco de Elegibles).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### F. Rechazar Solicitud
* **HTTP Method**: `POST`
* **Path**: `/api/v1/solicitudempleo/rechazar-solicitud`
* **Descripción**: Descarta formalmente la postulación de un candidato para una vacante particular.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
