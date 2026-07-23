# Documentación de Base de Datos: Módulo Reclutamiento

## 1. Tabla: `hrecaardet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recaar_numid` | `int` | No | PK | - |
| `recaar_nombre` | `varchar(50)` | No | - | - |
| `admcla_numid` | `smallint` | No | - | - |
| `recreq_numid` | `int` | No | - | - |
| `recaar_archivo` | `varbinary` | Si | - | - |
| `recaar_tipo` | `smallint` | Si | - | - |
| `recaar_tamano` | `smallint` | No | - | - |
| `recaar_unidad_med` | `smallint` | No | - | - |
| `recaar_fecha` | `datetime` | No | - | - |
| `recaar_extension` | `varchar(5)` | Si | - | - |
| `blob_data` | `varbinary` | Si | - | - |
| `blob_info` | `varbinary` | Si | - | - |
| `blob_guid` | `varchar(40)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecaardet.admcla_numid` -> `hadmclamst.admcla_numid`
- `hrecaardet.recreq_numid` -> `hrecreqmst.recreq_numid`

---

## 2. Tabla: `hrecaasdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recsol_numid` | `int` | No | - | - |
| `recaas_archivo` | `varbinary` | Si | - | - |
| `recaas_tipo` | `smallint` | No | - | - |
| `recaas_extension` | `varchar(5)` | Si | - | - |
| `recaas_nombre` | `varchar(50)` | No | - | - |
| `admcla_numid` | `smallint` | No | - | - |
| `recaas_tamano` | `smallint` | No | - | - |
| `recaas_unidad_med` | `smallint` | No | - | - |
| `recaas_fecha` | `datetime` | No | - | - |
| `recaas_numid` | `smallint` | No | PK | - |
| `blob_data` | `varbinary` | Si | - | - |
| `blob_info` | `varbinary` | Si | - | - |
| `blob_guid` | `varchar(40)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecaasdet.recsol_numid` -> `hrecsolmst.recsol_numid`
- `hrecaasdet.admcla_numid` -> `hadmclamst.admcla_numid`

---

## 3. Tabla: `hrecaelmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recael_numid` | `int` | No | PK | - |
| `recsol_numid` | `int` | No | - | - |
| `reccan_numid` | `int` | No | - | - |
| `recreq_numid` | `int` | No | - | - |
| `recael_fecha` | `datetime` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecaelmst.recreq_numid` -> `hrecreqmst.recreq_numid`

---

## 4. Tabla: `hrecarrdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recarr_numid` | `int` | No | PK | id detalle archivo requerido requisición |
| `admcla_numid` | `smallint` | No | - | Clasificacion del documento |
| `recreq_numid` | `int` | No | - | Id Requisición |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecarrdet.recreq_numid` -> `hrecreqmst.recreq_numid`
- `hrecarrdet.admcla_numid` -> `hadmclamst.admcla_numid`

---

## 5. Tabla: `hreccanfotodet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `reccanfoto_numid` | `int` | No | PK | - |
| `reccan_numid` | `int` | No | - | - |
| `reccanfoto_tipo` | `smallint` | No | - | - |
| `reccanfoto__extension` | `varchar(5)` | Si | - | - |
| `blob_data` | `varbinary` | Si | - | - |
| `blob_info` | `varbinary` | Si | - | - |
| `blob_guid` | `varchar(40)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hreccanfotodet.reccan_numid` -> `hreccanmst.reccan_numid`

---

## 6. Tabla: `hreccanmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `reccan_numid` | `int` | No | PK | - |
| `admide_codigo` | `smallint` | No | - | - |
| `reccan_identificacion` | `varchar(20)` | No | - | - |
| `reccan_primer_nombre` | `varchar(50)` | No | - | - |
| `reccan_segundo_nombre` | `varchar(50)` | Si | - | - |
| `reccan_primer_apellido` | `varchar(50)` | No | - | - |
| `reccan_segundo_apellido` | `varchar(50)` | Si | - | - |
| `reccan_email` | `varchar(100)` | Si | - | - |
| `reccan_telefono` | `varchar(20)` | No | - | - |
| `admgradoaca_id` | `smallint` | Si | - | - |
| `reccan_apreciacion` | `smallint` | Si | - | - |
| `reccan_tipo` | `smallint` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `reccan_etiqueta` | `varchar(300)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hreccanmst.admgradoaca_id` -> `hadmgradoacamst.admgradoaca_id`

---

## 7. Tabla: `hrecreqdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recreq_idDetalle` | `int` | No | PK | Id detalle requisición |
| `recreq_numid` | `int` | No | - | Id Requisición |
| `empemp_aSustituir` | `int` | No | - | Id de empleado a sustituir |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecreqdet.recreq_numid` -> `hrecreqmst.recreq_numid`

---

## 8. Tabla: `hrecreqmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recreq_numid` | `int` | No | PK | Id Requisición |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `admsucursal_id` | `smallint` | No | - | Id de sucursal |
| `recreq_nombre` | `varchar(50)` | No | - | - |
| `admdep_id` | `smallint` | No | - | Id de departamento |
| `admpos_id` | `smallint` | No | - | Id de puesto |
| `admusr_reclutador` | `int` | No | - | Usuario reclutador |
| `recreq_fecha` | `datetime` | No | - | Fecha de creación |
| `recreq_fechaCierre` | `datetime` | Si | - | Fecha de cierre |
| `recreq_razonSolicitud` | `smallint` | No | - | Razón de Solicitud: 1-Creación, 2-Sustitución. |
| `recreq_tipoContrato` | `smallint` | No | - | Tipo de Contrato: 1-Fijo, 2-Temporal, 3-Pasantía, 4-Por Servicio. |
| `admhorario_id` | `smallint` | No | - | Id de horario |
| `recreq_indRotativo` | `smallint` | No | - | Indicador Rotativo. 1-Rotativo, 0-No Rotativo |
| `recreq_cantEmpleado` | `smallint` | No | - | Cantidad de empleados requerida |
| `empemp_supervisor` | `int` | Si | - | Empleado supervisor |
| `recreq_descripcion` | `text` | No | - | Descripción |
| `recreq_comentario` | `text` | Si | - | Comentario |
| `recreq_stage` | `smallint` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | Estado: 1-Iniciada, 2-Pendiente Autorización, 3-Autorizada, 4-Pausada, 5-Rechazada, 6-Cerrada. DEFAULT = 1 |
| `admusr_numid` | `int` | Si | - | - |
| `recreq_modalidad` | `smallint` | Si | - | - |
| `recreq_publicado` | `smallint` | Si | - | Indica si la requisición estará publicada para que se puedan realizar solicitudes externas desde fuera de la aplicación |
| `recreq_requisitos` | `varchar(-1)` | Si | - | - |
| `recreq_responsabilidades` | `varchar(-1)` | Si | - | - |
| `recreq_ubicacion` | `varchar(200)` | Si | - | Ubicación física donde se realizará la entrevista de trabajo |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecreqmst.admhorario_id` -> `hadmhorariomst.admhorario_id`
- `hrecreqmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hrecreqmst.admsucursal_id` -> `xadmsucursalmst.admsucursal_id`
- `hrecreqmst.admpos_id` -> `hadmposmst.admpos_id`
- `hrecreqmst.admdep_id` -> `hadmdepmst.admdep_id`

---

## 9. Tabla: `hrecreqmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recreq_numid` | `int` | No | PK | - |
| `admusr_numid` | `int` | Si | - | - |
| `tblfld_custom3` | `varchar(50)` | Si | - | - |
| `tblfld_custom4` | `varchar(50)` | Si | - | - |
| `tblfld_custom6` | `varchar(50)` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 10. Tabla: `hrecreqmstextra`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recreqextra_numid` | `int` | No | PK | Id de la tabla extra de las requisiciones |
| `recreq_numid` | `int` | No | - | Relacion 1 a 1 con las requisiciones |
| `recreqextra_custom_fields` | `nvarchar(-1)` | Si | - | Definicion de los campos extras de las requisiciones |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecreqmstextra.recreq_numid` -> `hrecreqmst.recreq_numid`

---

## 11. Tabla: `hrecsegdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `reqseg_idDetalle` | `int` | No | PK | Id de detalle |
| `recreq_numid` | `int` | No | - | Id Requisicion |
| `recseg_fecha` | `datetime` | No | - | Fecha |
| `recsts_numid` | `int` | No | - | Estado de seguimiento |
| `admusr_numid` | `int` | No | - | Id Usuario |
| `recseg_comentario` | `varchar(300)` | No | - | Comentario |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecsegdet.recreq_numid` -> `hrecreqmst.recreq_numid`

---

## 12. Tabla: `hrecsolfotodet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recsolfoto_numid` | `int` | No | PK | - |
| `recsol_numid` | `int` | No | - | - |
| `recsolfoto_tipo` | `smallint` | No | - | - |
| `recsolfoto__extension` | `varchar(5)` | Si | - | - |
| `blob_data` | `varbinary` | Si | - | - |
| `blob_info` | `varbinary` | Si | - | - |
| `blob_guid` | `varchar(40)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecsolfotodet.recsol_numid` -> `hrecsolmst.recsol_numid`

---

## 13. Tabla: `hrecsolmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recsol_numid` | `int` | No | PK | Id de solicitud de empleo |
| `recsol_fecha_solicitud` | `datetime` | No | - | Fecha de la solicitud |
| `admide_codigo` | `int` | No | - | Tipo de identificación |
| `recsol_identificacion` | `varchar(20)` | No | - | Identificación |
| `recsol_primer_nombre` | `varchar(50)` | No | - | Primer nombre |
| `recsol_segundo_nombre` | `varchar(50)` | Si | - | Segundo nombre |
| `recsol_primer_apellido` | `varchar(50)` | No | - | Primer apellido |
| `recsol_segundo_apellido` | `varchar(50)` | Si | - | Segundo apellido |
| `recsol_nombre_completo` | `varchar(100)` | Si | - | Nombre completo |
| `recsol_email` | `varchar(100)` | Si | - | EMail |
| `recsol_telefono` | `varchar(20)` | No | - | Teléfono |
| `admgradoaca_id` | `smallint` | Si | - | Id de grado académico |
| `recsol_etiqueta` | `varchar(300)` | Si | - | Etiqueta |
| `recreq_numid` | `int` | No | - | Id de la requisición relacionada |
| `cpeemp_supervisor` | `int` | Si | - | Supervisor |
| `admdep_id` | `smallint` | No | - | Id del departamento |
| `admsts_codigo` | `smallint` | Si | - | Estado del Solicitante: Nuevos cambios, el Estado : [1 = INICIADA 2 = PENDIENTE AUTORIZACION 3 = AUTORIZADA 4 = RECHAZADA Antes] |
| `recsol_stage` | `smallint` | Si | - | Etapas del flujo : [1 = Solicitado/Iniciado, 2 = 1ra Entrevista, 3 = 2da Entrevista, 4 = 3ra Entrevista, 5 = Propuesta Economica, 6 = Creacion Empleado |
| `recsol_salario` | `decimal(12,2)` | Si | - | Salario |
| `recsol_apreciacion` | `smallint` | Si | - | valor de apreciación : Mínimo 1 máximo 5 |
| `recsol_estado_laboral` | `smallint` | Si | - | Id del estado laboral: [1 = Empleado, 2 = Desempleado] |
| `recsol_comentario` | `text` | Si | - | Comentario |
| `reccan_numid` | `int` | No | - | Id de candidato |
| `recsol_fecha_ingreso` | `datetime` | Si | - | Fecha de ingreso |
| `recsol_beneficios_actuales` | `text` | Si | - | Beneficios actuales |
| `recsol_origen` | `smallint` | No | - | Origen de la solicitud: 1 = Externa, 2 = Interna |
| `recsol_vehiculo_empresarial` | `char(1)` | Si | - | Indicador de vehiculo empresarial. "N" = No usa Veh.Empr, "S" = Sí usa Veh.Empr |
| `admusr_numid` | `int` | Si | - | - |
| `recsol_ultsalario` | `decimal(12,2)` | Si | - | Ultimo Salario |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecsolmst.recreq_numid` -> `hrecreqmst.recreq_numid`
- `hrecsolmst.admide_codigo` -> `xadmidemst.admide_codigo`
- `hrecsolmst.admdep_id` -> `hadmdepmst.admdep_id`

---

## 14. Tabla: `hrecsolmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recsol_numid` | `int` | No | PK | - |
| `cliente_fecha` | `date` | Si | - | - |
| `cliente_sucursal` | `int` | Si | - | - |
| `recsol_cust20` | `varchar(50)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `tblfld_custom6` | `varchar(50)` | Si | - | - |
| `tblfld_custom8` | `int` | Si | - | - |
| `tblfld_custom9` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 15. Tabla: `hrecsolmstextra`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recsolextra_numid` | `int` | No | PK | Id de los campos extras de la requisicion |
| `recsol_numid` | `int` | No | - | Relacion 1 a 1 con las solicitudes |
| `recsolextra_custom_data` | `nvarchar(-1)` | Si | - | Definicion de la data asociada a los campos extras de la requisicion asociada a la solicitud |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecsolmstextra.recsol_numid` -> `hrecsolmst.recsol_numid`

---

## 16. Tabla: `hrecsolotrobendet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recsolotroben_numid` | `int` | No | PK | Id detalle otro beneficios |
| `recsol_numid` | `int` | No | - | Id de solicitud de empleo |
| `admben_numid` | `smallint` | No | - | Id de beneficio |
| `recsolotroben_monto` | `decimal(12,2)` | No | - | Monto valor del beneficio |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecsolotrobendet.admben_numid` -> `hadmbenmst.admben_numid`
- `hrecsolotrobendet.recsol_numid` -> `hrecsolmst.recsol_numid`

---

## 17. Tabla: `hrecstsmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `recsts_numid` | `int` | No | PK | Id de estado para seguimiento de requisiciones |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `recsts_nombre` | `varchar(50)` | No | - | Nombre de Estado |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo.  Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hrecstsmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

