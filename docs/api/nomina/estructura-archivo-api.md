# Especificación de API: Módulo Estructura de Archivo

Contrato OpenAPI / Markdown para la interacción con los endpoints de Estructura de Archivos (TSS, Bancos, etc.).

---

## 1. Endpoints

### A. Listar Estructuras de Archivo
* **HTTP Method**: `GET`
* **Path**: `/api/v1/estructuraarchivo`
* **Descripción**: Obtiene la lista de estructuras o layouts definidos para la exportación de archivos (ej. archivo del banco, novedades TSS).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Obtener Detalle de Estructura
* **HTTP Method**: `GET`
* **Path**: `/api/v1/estructuraarchivo/Detalle/{id}`
* **Descripción**: Consulta el detalle (columnas, posiciones, longitudes) de una estructura de archivo específica.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): ID de la estructura de archivo.

---

### C. Crear Estructura de Archivo
* **HTTP Method**: `POST`
* **Path**: `/api/v1/estructuraarchivo`
* **Descripción**: Define un nuevo layout de archivo de exportación.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Crear Detalle de Estructura
* **HTTP Method**: `POST`
* **Path**: `/api/v1/estructuraarchivo/Detalle`
* **Descripción**: Registra las columnas y configuraciones específicas del archivo.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Listar Campos Disponibles
* **HTTP Method**: `GET`
* **Path**: `/api/v1/estructuraarchivo/Campos`
* **Descripción**: Obtiene los campos del sistema disponibles para mapear en la estructura del archivo.
* **Headers**: `Authorization: Bearer <Token>`
