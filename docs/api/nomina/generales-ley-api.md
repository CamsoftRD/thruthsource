# Especificación de API: Módulo Generales de Ley

Contrato OpenAPI / Markdown para la interacción con los endpoints de Configuraciones Generales de Ley (Topes salariales, porcentajes TSS, etc.).

---

## 1. Endpoints

### A. Obtener Configuración de Ley General
* **HTTP Method**: `GET`
* **Path**: `/api/v1/generalesley`
* **Descripción**: Retorna la configuración general vigente definida por ley para deducciones (SFS, AFP, ISR).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Obtener Bonificación por Antigüedad
* **HTTP Method**: `GET`
* **Path**: `/api/v1/generalesley/bonantg/{idLey}`
* **Descripción**: Obtiene la tabla de días a pagar de bonificación según los años de antigüedad del empleado.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Obtener Días de Vacaciones por Antigüedad
* **HTTP Method**: `GET`
* **Path**: `/api/v1/generalesley/diavacant/{idLey}`
* **Descripción**: Obtiene la cantidad de días de vacaciones otorgados por ley según la antigüedad.
* **Headers**: `Authorization: Bearer <Token>`

---

### D. Configurar Días de Vacaciones por Antigüedad
* **HTTP Method**: `POST`
* **Path**: `/api/v1/generalesley/Antiguedad`
* **Descripción**: Crea o actualiza la configuración de días de vacaciones en función a la antigüedad.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Configurar Días de Diferencial
* **HTTP Method**: `POST`
* **Path**: `/api/v1/generalesley/Diferencial`
* **Descripción**: Crea la configuración para el pago de días diferenciales por antigüedad.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
