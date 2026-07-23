# Especificación de API: Módulo Reportes Específicos de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints de generación de reportes particulares relacionados con la nómina.

---

## 1. Endpoints

### A. Reporte de Volante de Pago
* **HTTP Method**: `POST`
* **Path**: `/api/v1/reportenomina/volantepago`
* **Descripción**: Servicio especializado para obtener los datos consolidados que conforman los volantes de pago de una nómina calculada.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "idCompania": 1,
  "idPeriodoNomina": 45,
  "idEmpleado": null
}
```

#### Response 200 OK
```json
{
  "datosEmpresa": {
    "nombre": "Mi Empresa S.A.",
    "rnc": "123456789"
  },
  "volantes": [
    {
      "idEmpleado": 105,
      "nombre": "Carlos Pérez",
      "ingresos": [],
      "descuentos": [],
      "totalIngresos": 50000.00,
      "totalDescuentos": 3000.00,
      "sueldoNeto": 47000.00
    }
  ]
}
```
