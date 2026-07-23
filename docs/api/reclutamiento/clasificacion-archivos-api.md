# Especificación de API: Módulo Clasificación de Archivos de Reclutamiento

Contrato OpenAPI / Markdown para la interacción con el catálogo de tipos de archivos aplicables al proceso de reclutamiento.

---

## 1. Endpoints

### A. Obtener Clasificaciones Globales
* **HTTP Method**: `GET`
* **Path**: `/api/v1/clasificacionarchivos`
* **Descripción**: Retorna la lista de categorías permitidas para los adjuntos (ej. Pruebas psicométricas, Currículum, Récord Policial).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Buscar por Tipo de Clasificación
* **HTTP Method**: `GET`
* **Path**: `/api/v1/clasificacionarchivos/clasificacion/{id}`
* **Descripción**: Obtiene los subtipos o detalles asociados a una clasificación superior de archivo.
* **Headers**: `Authorization: Bearer <Token>`
