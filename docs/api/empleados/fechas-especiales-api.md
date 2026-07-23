# Especificación de API: Módulo Fechas Especiales

Contrato OpenAPI / Markdown para la interacción con los endpoints de gestión de fechas no laborables y feriados.

---

## 1. Endpoints

### A. Obtener Días Feriados Anuales
* **HTTP Method**: `GET`
* **Path**: `/api/v1/fechasespeciales/{anio}`
* **Descripción**: Obtiene la matriz de días feriados configurados para un año específico, útil para cálculos de licencias y vacaciones.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `anio` (integer): Año a consultar.

---

### B. Calcular Cantidad de Días Feriados en Rango
* **HTTP Method**: `POST`
* **Path**: `/api/v1/fechasespeciales`
* **Descripción**: Dado un rango de fechas, retorna cuántos de esos días son feriados oficiales.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "fechaInicio": "2026-12-20T00:00:00",
  "fechaFin": "2026-12-30T00:00:00"
}
```
