# Especificación de API: Módulo Conceptos de Nómina

Contrato OpenAPI / Markdown para la interacción con los endpoints de Conceptos de Nómina y su Comportamiento.

---

## 1. Endpoints de Conceptos

### A. Listar Conceptos por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/conceptonomina/compania/{idCompania}`
* **Descripción**: Retorna la lista de conceptos de nómina (ingresos, descuentos) parametrizados para la compañía.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCompania` (integer): ID de la compañía.

#### Response 200 OK
```json
[
  {
    "id": 1,
    "idCompania": 1,
    "codigo": "CON-SAL-01",
    "descripcion": "Salario Ordinario",
    "tipoConcepto": "Ingreso",
    "estado": "Activo"
  }
]
```

---

### B. Crear Concepto de Nómina
* **HTTP Method**: `POST`
* **Path**: `/api/v1/conceptonomina`
* **Descripción**: Registra un nuevo concepto aplicable en cálculos de nómina.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

#### Request Body (JSON)
```json
{
  "idCompania": 1,
  "codigo": "CON-BON-02",
  "descripcion": "Bono por Desempeño",
  "tipoConcepto": "Ingreso",
  "estado": "Activo"
}
```

#### Response 201 Created
```json
{
  "codigo": 201,
  "mensaje": "Concepto registrado exitosamente"
}
```

---

### C. Actualizar Concepto de Nómina
* **HTTP Method**: `PUT`
* **Path**: `/api/v1/conceptonomina`
* **Descripción**: Modifica la información básica o la clasificación de un concepto.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`

---

## 2. Endpoints de Comportamiento de Conceptos

### A. Listar Comportamientos por Compañía
* **HTTP Method**: `GET`
* **Path**: `/api/v1/comportamientoconceptonomina/compania/{idCompania}`
* **Descripción**: Obtiene los comportamientos y reglas asociadas a los conceptos para el motor de cálculo.
* **Headers**: `Authorization: Bearer <Token>`

---

### B. Crear Comportamiento
* **HTTP Method**: `POST`
* **Path**: `/api/v1/comportamientoconceptonomina`
* **Descripción**: Configura un nuevo comportamiento o regla sobre un concepto.
* **Headers**: `Authorization: Bearer <Token>`, `Content-Type: application/json`
