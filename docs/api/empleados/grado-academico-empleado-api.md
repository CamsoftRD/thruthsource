# Especificación de API: Módulo Grado Académico del Empleado

Contrato OpenAPI / Markdown para la interacción con los endpoints de niveles de escolaridad del empleado.

---

## 1. Endpoints

### A. Listar Grados Académicos
* **HTTP Method**: `GET`
* **Path**: `/api/v1/gradoacademico`
* **Descripción**: Obtiene los distintos niveles académicos (Bachiller, Licenciatura, Maestría) registrados en el catálogo.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Crear/Actualizar Grado Académico
* **HTTP Method**: `POST` | `PUT`
* **Path**: `/api/v1/gradoacademico`
* **Descripción**: Permite la inserción o modificación de un nivel de educación para el catálogo general.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
