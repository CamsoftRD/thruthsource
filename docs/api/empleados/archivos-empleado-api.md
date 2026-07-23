# Especificación de API: Módulo Archivos y Documentos del Empleado

Contrato OpenAPI / Markdown para la interacción con los endpoints de gestión documental y expedientes.

---

## 1. Endpoints

### A. Obtener Documentos del Empleado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/archivoempleado/documentos/{idempleado}/{tipodoc}`
* **Descripción**: Obtiene los documentos subidos al expediente de un colaborador, filtrados por tipo (ej. Copia de Cédula, Contratos).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Generar Cartas Pendientes
* **HTTP Method**: `POST`
* **Path**: `/api/v1/archivoempleado/cartas-pendientes/generar-carta`
* **Descripción**: Genera el archivo físico de cartas pendientes de emisión (como cartas de trabajo o constancias).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Gestionar Foto del Empleado
* **HTTP Method**: `GET` | `POST`
* **Path**: `/api/v1/archivoempleado/foto` | `/api/v1/archivoempleado/{id}`
* **Descripción**: Permite subir (`POST`) o visualizar (`GET`) la foto de perfil del colaborador en el expediente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Subir Nuevo Documento
* **HTTP Method**: `POST`
* **Path**: `/api/v1/archivoempleado/documentos`
* **Descripción**: Carga un nuevo archivo adjunto al perfil del empleado.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
