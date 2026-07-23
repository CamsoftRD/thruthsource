# Especificación de API: Módulo Autorizaciones y Permisos

Contrato OpenAPI / Markdown para la interacción con los endpoints del módulo de Autorizaciones, Roles y Matriz de Seguridad.

---

## 1. Endpoints

### A. Listar Autorizaciones Generales
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/autorizaciones`
* **Descripción**: Retorna la lista global de autorizaciones y permisos configurados en el ERP.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
[
  {
    "id": 1,
    "codigo": "AUTH-NOM-APROBAR",
    "nombre": "Aprobar Nómina General",
    "moduloID": 2,
    "nombreModulo": "Nómina",
    "descripcion": "Permite autorizar la dispersión de pagos de nómina"
  }
]
```

---

### B. Obtener Autorizaciones del Usuario Actual
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/autorizaciones/usuario-actual`
* **Descripción**: Retorna los permisos y autorizaciones concedidos al usuario autenticado.
* **Headers**: `Authorization: Bearer <Token>`

#### Response 200 OK
```json
{
  "usuarioId": 50,
  "nombreUsuario": "cperez",
  "permisos": [
    "VER_EMPLEADOS",
    "CREAR_EMPLEADO",
    "APROBAR_VACACIONES"
  ]
}
```

---

### C. Listar Acciones de un Módulo
* **HTTP Method**: `GET`
* **Path**: `/api/v1/administracion/autorizaciones/modulos/{idModule}/acciones`
* **Descripción**: Muestra la lista de acciones/operaciones que requieren autorización dentro de un módulo específico.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idModule` (integer): Identificador del módulo.

#### Response 200 OK
```json
[
  {
    "idAccion": 12,
    "guidAccion": "ACC-EMP-CREATE",
    "nombreAccion": "Creación de Colaborador",
    "requiereAutorizacion": true
  }
]
```

---

### D. Agregar Permiso a Usuario
* **HTTP Method**: `POST`
* **Path**: `/api/v1/administracion/autorizaciones/modulos/acciones/{idAccion}/{idUsuario}/{compania}`
* **Descripción**: Otorga el permiso de ejecutar una acción específica a un usuario dentro de una compañía.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idAccion` (integer): ID de la acción.
* `idUsuario` (integer): ID del usuario receptor.
* `compania` (integer): ID de la compañía correspondiente.

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Permiso asignado exitosamente al usuario"
}
```

---

### E. Eliminar Permiso de Usuario
* **HTTP Method**: `DELETE`
* **Path**: `/api/v1/administracion/autorizaciones/modulos/acciones/{idAuthUser}/`
* **Descripción**: Revoca un permiso asignado previamente a un usuario.
* **Headers**: `Authorization: Bearer <Token>`

#### Path Parameters
* `idAuthUser` (integer): ID único del registro de autorización de usuario.

#### Response 200 OK
```json
{
  "codigo": 200,
  "mensaje": "Permiso eliminado exitosamente"
}
```
