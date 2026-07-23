# Especificación de API: Módulo Períodos de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints de gestión de Períodos de Nómina (Maestro y Detalles).

---

## 1. Endpoints

### A. Buscar Períodos de Nómina
* **HTTP Method**: `GET`
* **Path**: `/api/v1/periodosnomina`
* **Descripción**: Obtiene la lista maestra de los períodos o calendarios anuales de nómina.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Buscar Períodos por Nómina Activa
* **HTTP Method**: `GET`
* **Path**: `/api/v1/periodosnomina/detalles/nomina/{id}`
* **Descripción**: Lista los detalles de los períodos (quincenas, semanas) correspondientes a una nómina en estado activa.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Generar Detalle de Período
* **HTTP Method**: `POST`
* **Path**: `/api/v1/periodosnomina/detalle`
* **Descripción**: Genera el desglose de los pagos (quincenales, semanales, mensuales) dentro del período maestro anual.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Crear Período Maestro
* **HTTP Method**: `POST`
* **Path**: `/api/v1/periodosnomina`
* **Descripción**: Crea el año/calendario maestro de un tipo de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Actualizar Período de Nómina
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/periodosnomina`
* **Descripción**: Modifica la información a nivel maestro del período anual de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### F. Actualizar Detalle de Período
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/periodosnomina/detallePerido`
* **Descripción**: Modifica las fechas y el estado (Abierto, Cerrado, En Proceso) de un detalle de período específico.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### G. Inactivar Período de Nómina
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/periodosnomina/inactivar/{id}`
* **Descripción**: Inactiva o cierra lógicamente un período maestro de nómina.
* **Headers**: `Authorization: Bearer <Token>`
