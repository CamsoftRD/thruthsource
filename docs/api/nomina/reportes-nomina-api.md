# Especificación de API: Módulo Reportes de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints de generación de Reportes, Volantes y Resúmenes.

---

## 1. Endpoints

### A. Generar Reporte de Nómina
* **HTTP Method**: `POST`
* **Path**: `/api/v1/utilreportenomina/generar-reporte-nomina`
* **Descripción**: Genera en formato PDF/Excel un reporte parametrizado (ej. Volante de pago, Sábana de Nómina, Resumen).
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "idCompania": 1,
  "idTipoNomina": 2,
  "idPeriodoDetalle": 45,
  "tipoReporte": "VolantePago",
  "formato": "PDF",
  "filtrosAdicionales": {
    "departamentos": [1, 5, 8]
  }
}
```

---

### B. Pagos por Empleado (Histórico)
* **HTTP Method**: `GET`
* **Path**: `/api/v1/utilreportenomina/pagos-empleado/{idEmpleado}`
* **Descripción**: Retorna el historial de los últimos pagos procesados y cerrados de un empleado específico, listos para descargar volante.
* **Headers**: `Authorization: Bearer <Token>`

---

### C. Resumen Macro de Nómina
* **HTTP Method**: `GET`
* **Path**: `/api/v1/utilresumendetallenomina/ResumenMacroNomina`
* **Descripción**: Obtiene los totales globales a nivel macro (Total Ingresos, Total Deducciones, Total Neto) de un período de nómina cerrado.
* **Headers**: `Authorization: Bearer <Token>`

---

### D. Resumen de Ingresos / Descuentos
* **HTTP Method**: `GET`
* **Path**: `/api/v1/utilresumendetallenomina/ResumenIngresosNomina/{idCompania}/{idTipoNomina}/{idDetallePeriodo}`
* **Descripción**: Desglosa los totales sumados por concepto (Ingresos, Descuentos de Ley, Otros Descuentos) para los reportes de cuadre.
* **Headers**: `Authorization: Bearer <Token>`
