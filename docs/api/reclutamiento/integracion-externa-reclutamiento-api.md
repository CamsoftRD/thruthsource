# Especificación de API: Módulo Integración Externa de Reclutamiento

Contrato OpenAPI / Markdown para los endpoints orientados a portales públicos de empleo (Careers Site) o ATS externos.

---

## 1. Endpoints

### A. Listar Requisiciones Publicadas (Públicas)
* **HTTP Method**: `GET`
* **Path**: `/api/v1/external/requisicion/publicadas`
* **Descripción**: Expone las vacantes marcadas como "Visibles Externamente" para ser consumidas por el portal de carreras de la empresa.
* **Headers**: `Authorization: Bearer <Token>` (O API Key según configuración externa).

---

### B. Crear Solicitud de Empleo Externa
* **HTTP Method**: `POST`
* **Path**: `/api/v1/external/SolicitudEmpleo`
* **Descripción**: Endpoint abierto para recibir aplicaciones o postulaciones de candidatos provenientes de páginas web públicas.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "idRequisicion": 1502,
  "nombre": "Pedro Sánchez",
  "email": "pedro.sanchez@email.com",
  "telefono": "809-555-1234",
  "linkedinUrl": "https://linkedin.com/in/pedrosanchez",
  "cvBase64": "JVBERi0xLjQKJcOkw7zDtsO..."
}
```
