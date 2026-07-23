# Especificación de API: Módulo Dashboards y Analíticas

Contrato OpenAPI / Markdown para la interacción con los endpoints que alimentan los tableros (dashboards) e indicadores clave de Recursos Humanos.

---

## 1. Endpoints

### A. Analítica de Rotación de Personal
* **HTTP Method**: `POST`
* **Path**: `/api/v1/analiticas/rotacion-personal`
* **Descripción**: Obtiene los datos y métricas (índice de rotación, altas, bajas) para alimentar el dashboard de Rotación de Personal.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "idCompania": 1,
  "anio": 2026
}
```

---

### B. Analítica de Ausentismo
* **HTTP Method**: `POST`
* **Path**: `/api/v1/analiticas/ausentismo`
* **Descripción**: Retorna los indicadores de ausentismo (horas perdidas, cantidad de ausencias) segmentados para análisis visual.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### C. Analítica de Estructura de Personal
* **HTTP Method**: `POST`
* **Path**: `/api/v1/analiticas/estructura-personal`
* **Descripción**: Provee los datos demográficos y de distribución de la plantilla (por departamento, género, rango de edad, etc.).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### D. Analítica de Reclutamiento y Selección
* **HTTP Method**: `POST`
* **Path**: `/api/v1/analiticas/reclutamiento-y-seleccion`
* **Descripción**: Devuelve las métricas del embudo de contratación (tiempo de cobertura, candidatos por vacante, etc.).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

### E. Analítica de Costo de Nómina
* **HTTP Method**: `POST`
* **Path**: `/api/v1/analiticas/costo-nomina`
* **Descripción**: Agrega los datos financieros del costo total de nómina, permitiendo comparativas mensuales o anuales.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
