# Especificación de API: Módulo Principal de Empleados

Contrato OpenAPI / Markdown para la interacción con los endpoints principales de gestión de la ficha del Empleado.

---

## 1. Endpoints de Consulta

### A. Listar Todos los Empleados
* **HTTP Method**: `GET`
* **Path**: `/api/v1/empleados`
* **Descripción**: Obtiene el listado general de empleados. Soporta filtrado por grupo económico vía Query String.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Obtener Empleado por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/empleados/{id}`
* **Descripción**: Recupera el perfil completo de un colaborador usando su ID interno.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Obtener Cumpleaños
* **HTTP Method**: `GET`
* **Path**: `/api/v1/empleados/cumpleanios`
* **Descripción**: Retorna la lista de empleados que cumplen años en el mes/período actual.
* **Headers**: `Authorization: Bearer <Token>`

---

## 2. Endpoints de Modificación

### A. Crear Empleado (Alta)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/empleados`
* **Descripción**: Registra un nuevo empleado en el sistema (Alta).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### B. Actualizar Empleado
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/empleados/{seccion}`
* **Descripción**: Actualiza los datos de un empleado, segmentado por sección (Datos Personales, Datos Laborales, etc.).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

## 3. Endpoints de Módulos Adjuntos

### A. Centros de Costos
* **HTTP Method**: `GET` | `POST`
* **Path**: `/api/v1/empleados/centrocostos/{idEmpleado}`
* **Descripción**: Consulta o actualiza el prorrateo de centros de costo del empleado.

### B. Seguros y Beneficios
* **HTTP Method**: `POST`
* **Path**: `/api/v1/empleados/detalle-planes-seguro`
* **Descripción**: Inscribe al empleado en planes de seguro médico o de vida.
