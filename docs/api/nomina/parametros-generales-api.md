# Especificación de API: Módulo Parámetros Generales de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints de Configuración de Parámetros Generales.

---

## 1. Endpoints

### A. Buscar Parámetros Generales
* **HTTP Method**: `GET`
* **Path**: `/api/v1/parametrosgenerales`
* **Descripción**: Obtiene los parámetros generales aplicables de forma global en el módulo de nómina.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Buscar Parámetros por ID de Nómina
* **HTTP Method**: `GET`
* **Path**: `/api/v1/parametrosgenerales/{idNomina}`
* **Descripción**: Retorna parámetros específicos configurados para un tipo de nómina particular.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idNomina` (integer): ID del tipo de nómina.

---

### C. Actualizar Parámetros
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/parametrosgenerales`
* **Descripción**: Modifica la configuración de uno o más parámetros de la nómina (como sueldo mínimo sectorial, factor mensual, etc.).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
