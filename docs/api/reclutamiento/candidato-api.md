# Especificación de API: Módulo Gestión del Candidato

Contrato OpenAPI / Markdown para la interacción con los endpoints orientados puramente a los datos maestros del candidato y su CV.

---

## 1. Endpoints

### A. Obtener Perfil del Candidato
* **HTTP Method**: `GET`
* **Path**: `/api/v1/candidato/{id}`
* **Descripción**: Retorna la ficha completa y perfil profesional del candidato.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Crear / Registrar Candidato
* **HTTP Method**: `POST`
* **Path**: `/api/v1/candidato/crear`
* **Descripción**: Da de alta un nuevo candidato en la base de datos de talento independiente de una requisición.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Procesar CV (Parser)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/candidato/procesar-cv`
* **Descripción**: Sube un documento (PDF/Word) y extrae o vincula la información del currículum al perfil del candidato.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
