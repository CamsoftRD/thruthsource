# Especificación de API: Módulo Pagos de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints de Movimientos Fijos, Variables y Detalles de Pago.

---

## 1. Endpoints de Movimientos Fijos

### A. Crear Movimiento Fijo
* **HTTP Method**: `POST`
* **Path**: `/api/v1/movimientoconceptofijos`
* **Descripción**: Crea una asignación recurrente de un concepto (ingreso o deducción) a un empleado.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### B. Actualizar Movimiento Fijo
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/movimientoconceptofijos`
* **Descripción**: Modifica parámetros de un movimiento fijo.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

## 2. Endpoints de Movimientos Variables

### A. Crear Movimiento Variable
* **HTTP Method**: `POST`
* **Path**: `/api/v1/movimientoconceptovariable/Crear`
* **Descripción**: Crea una asignación única de un concepto para un período determinado.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### B. Actualizar Detalle de Pago
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/detallepagonomina`
* **Descripción**: Actualiza los montos u horas registrados en los detalles de nómina generados.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Cálculo de Beneficios (Diferencial de Vacaciones, Regalía)
* **HTTP Method**: `POST`
* **Path**: `/api/v1/movimientoconceptovariable/calcular-regalias`
* **Descripción**: Calcula y registra en movimientos variables los montos correspondientes a beneficios de ley.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
