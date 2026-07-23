# Especificación de API: Módulo Analítica y Reportería General

Contrato OpenAPI / Markdown para la interacción con los endpoints de generación y gestión de reportes generales.

---

## 1. Endpoints

### A. Buscar Reportes Permitidos
* **HTTP Method**: `GET`
* **Path**: `/api/v1/analiticayreporteria/buscar-reportes`
* **Descripción**: Obtiene la lista de reportes disponibles y permitidos para el usuario autenticado (según la tabla `hadmreportemst`).
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Obtener Datos del Reporte
* **HTTP Method**: `POST`
* **Path**: `/api/v1/analiticayreporteria/datos-reporte`
* **Descripción**: Obtiene la información en formato estructurado (JSON) que alimentará un reporte específico, basándose en los filtros provistos.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "codigoReporte": "RPT-NOM-01",
  "filtros": {
    "fechaInicio": "2026-01-01",
    "fechaFin": "2026-01-31"
  }
}
```

---

### C. Imprimir Reporte
* **HTTP Method**: `POST`
* **Path**: `/api/v1/analiticayreporteria/imprimir-reporte`
* **Descripción**: Procesa los filtros y retorna el archivo binario del reporte renderizado (usualmente en formato PDF o Excel).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Response 200 OK
* **Content-Type**: `application/pdf`
* (Archivo binario del reporte descargable)

---

### D. Enviar Reporte por Correo
* **HTTP Method**: `POST`
* **Path**: `/api/v1/analiticayreporteria/enviar-correo`
* **Descripción**: Genera el reporte y lo envía por correo electrónico a los destinatarios configurados o provistos en el filtro.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
