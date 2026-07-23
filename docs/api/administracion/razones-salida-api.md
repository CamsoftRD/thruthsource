# Especificación de API: Módulo Razones de Salida

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Motivos de Salida, Derechos Adquiridos y Documentación de Desvinculación.

---

## 1. Endpoints

### A. Listar Razones de Salida
* **HTTP Method**: `GET`
* **Path**: `/api/v1/razonsalida`
* **Descripción**: Retorna la lista de causales o motivos de terminación de contrato laboral (ej. Renuncia, Despido, Mutuo Acuerdo).
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "codigo": "RENUNCIA_VOLUNTARIA",
    "descripcion": "Renuncia voluntaria del colaborador",
    "aplicaPreaviso": true,
    "aplicaCesantia": false,
    "estado": "Activo"
  },
  {
    "id": 2,
    "codigo": "DESAHUCIO_PATRONAL",
    "descripcion": "Desahucio o despido injustificado por parte del empleador",
    "aplicaPreaviso": true,
    "aplicaCesantia": true,
    "estado": "Activo"
  }
]
```

---

### B. Obtener Razon de Salida por ID
* **HTTP Method**: `GET`
* **Path**: `/api/v1/razonsalida/{id}`
* **Descripción**: Muestra los detalles de configuración legal de un motivo de salida.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `id` (integer): ID de la razón de salida.

#### Response 200 OK
```json
{
  "id": 1,
  "codigo": "RENUNCIA_VOLUNTARIA",
  "descripcion": "Renuncia voluntaria del colaborador",
  "aplicaPreaviso": true,
  "aplicaCesantia": false,
  "estado": "Activo"
}
```

---

### C. Crear Razón de Salida
* **HTTP Method**: `POST`
* **Path**: `/api/v1/razonsalida`
* **Descripción**: Registra una nueva causal de salida con su correspondiente parametrización de prestaciones aplicables.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "codigo": "MUTUO_ACUERDO",
  "descripcion": "Terminación de contrato por acuerdo mutuo entre las partes",
  "aplicaPreaviso": false,
  "aplicaCesantia": true,
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Motivo de salida registrado exitosamente",
  "id": 3
}
```

---

### D. Actualizar Razón de Salida
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/razonsalida`
* **Descripción**: Actualiza las descripciones y configuraciones de cálculo de prestaciones de una razón de salida.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "id": 3,
  "codigo": "MUTUO_ACUERDO",
  "descripcion": "Terminación por mutuo acuerdo con bonificación especial",
  "aplicaPreaviso": false,
  "aplicaCesantia": true,
  "estado": "Activo"
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Motivo de salida actualizado exitosamente"
}
```

---

### E. Gestionar Derechos Adquiridos por Motivo de Salida
* **HTTP Method**: `GET` / `POST` / `DELETE`
* **Path**: `/api/v1/razonsalida/derechos` | `/api/v1/razonsalida/{id_razon}/derechos/{id_derecho}`
* **Descripción**: Asigna o revoca los derechos adquiridos legales (Vacaciones no disfrutadas, Regalia pascual / salario 13) según el motivo de egreso.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (POST)
```json
{
  "id_RazonSalida": 1,
  "id_DerechoAdquirido": 5,
  "aplicaPorcentaje": 100.0
}
```

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Derecho adquirido vinculado correctamente"
}
```

---

### F. Gestionar Documentos Adjuntos Requeridos en Salidas
* **HTTP Method**: `POST` / `GET` / `DELETE`
* **Path**: `/api/v1/razonsalida/documento` | `/api/v1/razonsalida/documento/{id}`
* **Descripción**: Asocia los documentos requeridos (Carta de renuncia, Acta de desahucio, Paz y Salvo) a un motivo de egreso específico.
