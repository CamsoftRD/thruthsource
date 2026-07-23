# Especificación de API: Módulo Aprobación de Requisición

Contrato OpenAPI / Markdown para los flujos de autorización y control sobre la publicación de nuevas vacantes.

---

## 1. Endpoints

### A. Autorizar Requisición
* **HTTP Method**: `POST`
* **Path**: `/api/v1/solicitudaprobacion/autorizar`
* **Descripción**: Procesa la aprobación final (visto bueno de gerencia o RRHH) requerida para que una requisición pase a estado "Publicada" o de búsqueda activa.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### B. Rechazar Requisición
* **HTTP Method**: `POST`
* **Path**: `/api/v1/solicitudaprobacion/rechazar`
* **Descripción**: Rechaza la apertura de la vacante, finalizando el flujo e impidiendo que se comience a reclutar.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
