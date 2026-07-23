# Especificación de API: Módulo Escala Impositiva (ISR)

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de configuración del Impuesto Sobre la Renta (ISR).

---

## 1. Endpoints

### A. Buscar Escalas Impositivas
* **HTTP Method**: `GET`
* **Path**: `/api/v1/escalaimpositivaisr`
* **Descripción**: Retorna los rangos, porcentajes y excedentes definidos por la ley para el cálculo del ISR.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "rangoMinimo": 416220.01,
    "rangoMaximo": 624329.00,
    "porcentaje": 15.0,
    "montoAdicional": 0.0,
    "estado": "Activo"
  }
]
```

---

### B. Crear Escala Impositiva
* **HTTP Method**: `POST`
* **Path**: `/api/v1/escalaimpositivaisr`
* **Descripción**: Permite registrar un nuevo tramo de retención impositiva.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Actualizar Escala Impositiva
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/escalaimpositivaisr`
* **Descripción**: Actualiza los límites y porcentajes de una escala tributaria existente.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
