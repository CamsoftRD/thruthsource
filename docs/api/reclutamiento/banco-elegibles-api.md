# Especificación de API: Módulo Banco de Elegibles y Descartados

Contrato OpenAPI / Markdown para la interacción con los endpoints de gestión de la cantera de talento (candidatos potenciales o descartados).

---

## 1. Endpoints

### A. Listar Banco de Elegibles
* **HTTP Method**: `GET`
* **Path**: `/api/v1/bancoelegiblesydescartados`
* **Descripción**: Obtiene la cantera global de talento, tanto candidatos elegibles (disponibles para vacantes futuras) como descartados.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Listar Banco por Estado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/bancoelegiblesydescartados/{sts}`
* **Descripción**: Filtra los candidatos según su estado (ej. Solo elegibles o Solo descartados).
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Mover Candidato al Banco
* **HTTP Method**: `POST`
* **Path**: `/api/v1/bancoelegiblesydescartados`
* **Descripción**: Añade explícitamente a un candidato a la cantera de talento, catalogando sus perfiles o intereses.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Enviar Candidatos (Sugerencias)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/bancoelegiblesydescartados/enviar-candidatos`
* **Descripción**: Envía perfiles sugeridos desde el banco de elegibles hacia reclutadores o gerentes contratantes.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
