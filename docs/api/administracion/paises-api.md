# Especificación de API: Módulo Países y Geografía

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Países, Ciudades y Sectores.

---

## 1. Endpoints

### A. Listar Países
* **HTTP Method**: `GET`
* **Path**: `/api/v1/pais`
* **Descripción**: Retorna el catálogo completo de países registrados en el sistema.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "codigoIso": "DOM",
    "nombre": "República Dominicana",
    "gentilicio": "Dominicano/a"
  },
  {
    "id": 2,
    "codigoIso": "USA",
    "nombre": "Estados Unidos",
    "gentilicio": "Estadounidense"
  }
]
```

---

### B. Listar Ciudades por País
* **HTTP Method**: `GET`
* **Path**: `/api/v1/pais/ciudad/{idPais}`
* **Descripción**: Obtiene la lista de ciudades / provincias pertenecientes a un país.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idPais` (integer): ID numérico del país.

#### Response 200 OK
```json
[
  {
    "id": 10,
    "idPais": 1,
    "nombre": "Santo Domingo (Distrito Nacional)"
  },
  {
    "id": 11,
    "idPais": 1,
    "nombre": "Santiago de los Caballeros"
  }
]
```

---

### C. Listar Sectores por Ciudad
* **HTTP Method**: `GET`
* **Path**: `/api/v1/pais/sector/{idCiudad}`
* **Descripción**: Muestra los sectores, municipios o zonas registradas dentro de una ciudad.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idCiudad` (integer): ID numérico de la ciudad.

#### Response 200 OK
```json
[
  {
    "id": 100,
    "idCiudad": 10,
    "nombre": "Piantini"
  },
  {
    "id": 101,
    "idCiudad": 10,
    "nombre": "Bella Vista"
  }
]
```
