# Especificación de API: Módulo Archivos de Requisición

Contrato OpenAPI / Markdown para la interacción con los adjuntos y soportes documentales de una Requisición.

---

## 1. Endpoints

### A. Obtener Archivos por Requisición
* **HTTP Method**: `GET`
* **Path**: `/api/v1/archivosrequisicion/{id}`
* **Descripción**: Obtiene la lista de documentos (justificaciones, perfiles PDF) atados a una requisición.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Descargar Documento
* **HTTP Method**: `GET`
* **Path**: `/api/v1/archivosrequisicion/documento/{idDocumento}`
* **Descripción**: Retorna el archivo binario correspondiente al ID provisto.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Subir Archivos a Requisición
* **HTTP Method**: `POST`
* **Path**: `/api/v1/archivosrequisicion`
* **Descripción**: Carga y vincula uno o más documentos de soporte a una requisición creada.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Eliminar Archivo
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/archivosrequisicion/{id}`
* **Descripción**: Remueve de forma definitiva un documento de soporte de la requisición.
* **Headers**: `Authorization: Bearer <Token>`
