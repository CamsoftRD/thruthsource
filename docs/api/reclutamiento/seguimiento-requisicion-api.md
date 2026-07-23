# Especificación de API: Módulo Seguimiento y Estados de Requisición

Contrato OpenAPI / Markdown para la interacción con los endpoints de monitoreo de etapas (pipeline) y estados del ciclo de reclutamiento.

---

## 1. Endpoints de Estados (Configuración)

### A. Listar Estados por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/estadosseguimientorequisicion/compania/{id}`
* **Descripción**: Devuelve la configuración del embudo (pipeline) de reclutamiento aplicable a una compañía (ej. Filtro CV, Entrevista RH, Entrevista Técnica).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Crear Estado de Seguimiento
* **HTTP Method**: `POST`
* **Path**: `/api/v1/estadosseguimientorequisicion`
* **Descripción**: Configura una nueva fase para el pipeline de seguimiento a vacantes.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

## 2. Endpoints de Seguimiento (Transaccional)

### A. Ver Seguimiento por Requisición
* **HTTP Method**: `GET`
* **Path**: `/api/v1/seguimientorequisicion/requisicion/{id}`
* **Descripción**: Obtiene la traza histórica y los comentarios de todas las etapas por las que han pasado los candidatos en una requisición.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Registrar Evento de Seguimiento
* **HTTP Method**: `POST`
* **Path**: `/api/v1/seguimientorequisicion`
* **Descripción**: Registra una nueva acción o hito en el seguimiento (ej. "El candidato pasó la entrevista con el gerente").
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
