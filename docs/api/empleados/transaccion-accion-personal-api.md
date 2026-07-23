# Especificación de API: Módulo de Transacciones de Acciones de Personal

Contrato OpenAPI / Markdown para la interacción con los endpoints del flujo de transacciones de Recursos Humanos.

---

## 1. Endpoints

### A. Consultar Historial de Acciones del Empleado
* **HTTP Method**: `GET`
* **Path**: `/api/v1/transaccionaccionpersonalempleado/{idEmpleado}`
* **Descripción**: Retorna todas las transacciones o movimientos realizados sobre la ficha del empleado (Aumentos, Vacaciones, Faltas).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Crear Transacción de Personal
* **HTTP Method**: `POST`
* **Path**: `/api/v1/transaccionaccionpersonalempleado`
* **Descripción**: Registra una nueva acción que afecta al empleado, desencadenando los flujos de autorización necesarios.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
[
  {
    "idEmpleado": 125,
    "idTipoAccion": 3,
    "fechaEfectiva": "2026-10-01",
    "comentarios": "Promoción por méritos",
    "camposDinamicos": {
      "nuevoSalario": 60000.00
    }
  }
]
```

---

### C. Analítica AI de Transacciones (Recomendación)
* **HTTP Method**: `GET`
* **Path**: `/api/v1/transaccionaccionpersonalempleado/AI/{idEmpleado}`
* **Descripción**: Retorna predicciones o recomendaciones basadas en IA sobre posibles acciones de personal (riesgo de fuga, mérito a promoción).
* **Headers**: `Authorization: Bearer <Token>`
