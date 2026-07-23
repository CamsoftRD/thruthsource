# Documentación de Base de Datos: Módulo Administracion

## 1. Tabla: `hadmaarazonsaldet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admaarazonsal_numid` | `smallint` | No | PK | Id Documento Adjunto de RazÛn Salida |
| `admrazonsal_numid` | `smallint` | No | - | Id RazÛn de Salida |
| `admaarazonsal_nombre` | `varchar(50)` | No | - | Nombre del Documento Adjunto |
| `blob_data` | `varbinary` | No | - | Documento Adjunto |
| `blob_info` | `varbinary` | No | - | Tipo de Almacenamiento |
| `blob_guid` | `varchar(40)` | No | - | ExtensiÛn del documento adjunto |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmaarazonsaldet.admrazonsal_numid` -> `hadmrazonsalmst.admrazonsal_numid`

---

## 2. Tabla: `hadmacpflddet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admacpfld_numid` | `int` | No | PK | Id secuencial |
| `admacp_numid` | `int` | No | - | Id de la acci?n |
| `admacpfld_field_nombre` | `varchar(30)` | No | - | Nombre del campo que ser? afectado |
| `admacpfld_field_etiqueta` | `varchar(30)` | Si | - | Etiqueta/T?tulo del campo para mostrar en pantalla y/o reporte |
| `admacpfld_field_prop_tipo` | `smallint` | No | - | - |
| `admacpfld_lkp_fuente_prop` | `varchar(30)` | Si | - | - |
| `admacpfld_lkp_keyfield` | `varchar(30)` | Si | - | - |
| `admacpfld_endpoint_prop` | `varchar(150)` | Si | - | - |
| `admacpfld_field_ord` | `smallint` | No | - | Orden de presentaci?n |
| `admacpfld_lkp_descripcion` | `varchar(50)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmacpflddet.admacp_numid` -> `hadmacpmst.admacp_numid`

---

## 3. Tabla: `hadmacpmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admacp_numid` | `int` | No | PK | Id secuencial, acci?n del lado de SRHWeb |
| `sdaacc_numid` | `int` | No | - | Id de la acci?n en xsdaaccmst |
| `sdaacc_numid_master` | `int` | Si | - | Id de la acci?n maestro/padre |
| `admacp_nombre_alt` | `varchar(50)` | Si | - | Nombre alterno al que se defini? en xsdaaccmst |
| `sdamod_codigo` | `int` | Si | - | M?dulo con el que puede estar relacionada directamente |
| `sdaautoriztipo_numid` | `int` | Si | - | Id del tipo de autorizaci?n con que puede estar relacionada la acci?n (xsdaautoriztipomst) |
| `admacp_entidad` | `varchar(20)` | Si | - | Nombre de la entidad con el que puede estar relacionada o afectando directamente |
| `admacp_efecto` | `smallint` | Si | - | Tipo de efecto y clasificaci?n [0=Info, 1=Atributo, 2=Proceso,3=Atributo/Proceso] |
| `admacp_agrupado` | `varchar(50)` | Si | - | Donde se puediera presentar agrupadas en una secci?n particular, eje: [Datos de Empleado] [Nacionalidad] [Datos Pago] |
| `admacp_ind_ley` | `int` | Si | - | Indica si la acci?n relaciona o es de ley |
| `admacp_documid` | `int` | Si | - | Id del template/plantilla con la que puede estar relacionada la acci?n para |
| `admacp_tipo` | `smallint` | No | - | - |
| `admacp_ind_grupo` | `smallint` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 4. Tabla: `hadmactividadesmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admactividades_numid` | `int` | No | PK | - |
| `admactividades_nombre` | `nvarchar(510)` | No | - | - |
| `admactividades_descripcion` | `nvarchar(-1)` | Si | - | - |
| `admactividades_fecha` | `date` | No | - | - |
| `admactividades_hora` | `time` | No | - | - |
| `admactividades_lugar` | `nvarchar(510)` | Si | - | - |
| `admactividades_cupo` | `int` | No | - | - |
| `admactividades_imagen_url` | `nvarchar(1000)` | Si | - | - |
| `created_at` | `datetime` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 5. Tabla: `hadmbenmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admben_numid` | `smallint` | No | PK | Id de beneficio |
| `admben_nombre` | `varchar(50)` | No | - | Nombre de beneficio |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `nomcon_numid` | `smallint` | Si | - | Id concepto equivalente en nómina |
| `admben_fecha` | `datetime` | No | - | Fecha de registro |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmbenmst.nomcon_numid` -> `hnomconmst.nomcon_numid`
- `hadmbenmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 6. Tabla: `hadmbenmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom0` | `varchar(500)` | Si | - | - |
| `admben_numid` | `int` | No | PK | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 7. Tabla: `hadmbenposdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admbenpos_numid` | `smallint` | No | - | - |
| `admpos_id` | `smallint` | No | - | - |
| `admben_numid` | `smallint` | No | - | - |
| `admbenpos_monto` | `decimal(12,2)` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmbenposdet.admben_numid` -> `hadmbenmst.admben_numid`

---

## 8. Tabla: `hadmcartasaccmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcartaacc_numid` | `int` | No | PK | Identificador único autoincremental de la relación carta-acción |
| `sdaacc_numid` | `int` | No | - | Identificador numérico de la acción de personal del sistema (FK a xsdaaccmst) |
| `sdaacc_guid` | `varchar(40)` | No | - | GUID de la acción de personal del sistema |
| `admcarta_numid` | `int` | No | - | Identificador de la carta (FK a hadmcartamst) |
| `fecha_creacion` | `datetime` | Si | - | Fecha y hora de creación del registro |

### Relaciones (Foreign Keys)
- `hadmcartasaccmst.admcarta_numid` -> `hadmcartasmst.admcarta_numid`
- `hadmcartasaccmst.sdaacc_numid` -> `xsdaaccmst.sdaacc_numid`

---

## 9. Tabla: `hadmcartasdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcartadet_numid` | `int` | No | PK | - |
| `admcarta_numid` | `int` | No | - | - |
| `admcartadet_destinatario` | `varchar(200)` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmcartasdet.admcarta_numid` -> `hadmcartasmst.admcarta_numid`

---

## 10. Tabla: `hadmcartasmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcarta_numid` | `int` | No | PK | ID único de la carta (Clave primaria, autoincremental) |
| `admcarta_tipo_id` | `int` | No | - | ID del tipo de carta (referencia a tabla de usos múltiples) |
| `admcarta_emisor_id` | `int` | No | - | ID del empleado que emite la carta (FK a hempempmst) |
| `admcarta_req_aut` | `int` | Si | - | Indicador si la carta requiere autorización (1=Sí, 0=No, NULL=No definido) |
| `admcarta_plantilla_html` | `varchar(-1)` | Si | - | Plantilla HTML para la generación automática de la carta |
| `admsts_codigo` | `int` | Si | - | Código de status/estado del registro |
| `admcarta_system` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |
| `admcarta_nombre` | `varchar(50)` | No | - | Nombre de la carta |
| `admcartas_autoservicio` | `smallint` | No | - | Indica si la carta está habilitada para visualización en el portal de autoservicio. Valores: 0 = No visible, 1 = Visible en autoservicio. |
| `admcarta_firma_empleado` | `smallint` | No | - | Indica si la carta requiere firma del empleado (0=No, 1=Sí) |

### Relaciones (Foreign Keys)
- `hadmcartasmst.admcarta_emisor_id` -> `hempempmst.empemp_numid`

---

## 11. Tabla: `hadmcartaspendmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcartaaccpend_numid` | `int` | No | PK | Identificador único de la carta de acción pendiente (clave primaria) |
| `sdaacc_guid` | `varchar(40)` | No | - | GUID de la acción |
| `empemp_numid` | `int` | No | - | ID del empleado |
| `admsts_codigo` | `smallint` | No | - | Código de estado (1=Pendiente, 2=Generado, 3=Firma Pendiente, 4=Completado) |
| `id_transaccion_generada` | `int` | Si | - | ID de transacción generada |
| `admcarta_numid` | `int` | Si | - | ID de la carta |
| `fecha_creacion` | `datetime` | Si | - | Fecha de creación del registro |
| `fecha_generacion` | `datetime` | Si | - | Fecha de generación del PDF |
| `fecha_completado` | `datetime` | Si | - | Fecha de firma |

---

## 12. Tabla: `hadmcdcmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcdc_id` | `int` | No | PK | Id Centro de costos |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `admcdc_codigo` | `char(3)` | No | - | Codigo Centro de Costo |
| `admcdc_nombre` | `varchar(50)` | No | - | Nomre de Centro de Costo |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo.  Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmcdcmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 13. Tabla: `hadmcladet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admclar_idDetalle` | `int` | No | PK | - |
| `admcla_numid` | `smallint` | No | - | - |
| `admtar_numid` | `smallint` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmcladet.admcla_numid` -> `hadmclamst.admcla_numid`

---

## 14. Tabla: `hadmclamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcla_numid` | `smallint` | No | PK | - |
| `admcla_nombre` | `varchar(50)` | No | - | - |
| `admcla_pesomaximo` | `smallint` | Si | - | - |
| `admcla_unidadmed` | `smallint` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 15. Tabla: `hadmclaposdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admclapos_numid` | `smallint` | No | PK | Id Documento de Puesto Base |
| `admpos_id` | `smallint` | No | - | Id del Puesto Base |
| `admcla_numid` | `smallint` | No | - | Id Clasificación Documento |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmclaposdet.admcla_numid` -> `hadmclamst.admcla_numid`
- `hadmclaposdet.admpos_id` -> `hadmposmst.admpos_id`

---

## 16. Tabla: `hadmdccdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcdc_idDetalle` | `int` | No | PK | Id Detalle |
| `admcdc_id` | `int` | No | - | Id Centro de costos |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `admdep_id` | `smallint` | No | - | Id Departamento |
| `admdcc_valor_porc` | `decimal(12,2)` | Si | - | Valor % |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmdccdet.admcdc_id` -> `hadmcdcmst.admcdc_id`
- `hadmdccdet.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hadmdccdet.admdep_id` -> `hadmdepmst.admdep_id`

---

## 17. Tabla: `hadmdeplan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admdep_numid` | `int` | No | PK | Id Idioma por Departamento |
| `admdep_id` | `smallint` | No | - | Id Departamento |
| `sdalan_codigo` | `char(5)` | No | - | Cultura |
| `admdep_nombre` | `varchar(50)` | No | - | Nombre |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmdeplan.admdep_id` -> `hadmdepmst.admdep_id`

---

## 18. Tabla: `hadmdepmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admdep_id` | `smallint` | No | PK | Id Departamento |
| `admcompania_id` | `smallint` | No | - | Id Compania |
| `admdep_nombre` | `varchar(50)` | No | - | Nombre |
| `admdep_padre` | `smallint` | Si | - | Departamento Padre. |
| `admdep_gerente` | `int` | Si | - | Gerente de Departamento. |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `admdep_clasificacion1` | `smallint` | Si | - | Clasificacion Especial 1 para usos variables |
| `admdep_clasificacion2` | `smallint` | Si | - | Clasificacion Especial 2  para usos variables |
| `admdep_clasificacion3` | `smallint` | Si | - | Clasificacion Especial 3  para usos variables |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmdepmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hadmdepmst.admdep_gerente` -> `hempempmst.empemp_numid`

---

## 19. Tabla: `hadmdepmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admdep_id` | `int` | No | PK | - |
| `tblfld_custom0` | `varchar(50)` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 20. Tabla: `hadmdepsucdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admdepsuc_numid` | `smallint` | No | PK | Id Departamento Sucursal |
| `admdep_id` | `smallint` | No | - | Id Departamento |
| `admsucursal_id` | `smallint` | No | - | Id Sucursal |
| `admcompania_id` | `smallint` | No | - | Id Compañia |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmdepsucdet.admdep_id` -> `hadmdepmst.admdep_id`

---

## 21. Tabla: `hadmderadqsaldet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admderadqsal_numid` | `smallint` | No | PK | Id Derechos Adquiridos Salidas |
| `admrazonsal_numid` | `smallint` | No | - | Id Razón de Salida |
| `admderechoadq_numid` | `smallint` | No | - | id Derecho Adquirido |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmderadqsaldet.admderechoadq_numid` -> `hadmderechoadqmst.admderechoadq_numid`
- `hadmderadqsaldet.admrazonsal_numid` -> `hadmrazonsalmst.admrazonsal_numid`

---

## 22. Tabla: `hadmderechoadqmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admderechoadq_numid` | `smallint` | No | PK | - |
| `admderechoadq_nombre` | `varchar(50)` | No | - | Nombre del Derecho Adquirido |
| `nomcon_numid` | `smallint` | Si | - | Id Transaccion/Concepto de Nomina |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmderechoadqmst.nomcon_numid` -> `hnomconmst.nomcon_numid`

---

## 23. Tabla: `hadmencuestasmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admencuestas_numid` | `int` | No | PK | - |
| `admencuestas_titulo` | `nvarchar(510)` | No | - | - |
| `admencuestas_descripcion` | `nvarchar(-1)` | Si | - | - |
| `admencuestas_fecha_creacion` | `datetime` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |
| `admencuestas_estado` | `nvarchar(20)` | No | - | - |
| `admencuestas_fecha_cierre` | `datetime` | Si | - | - |
| `admencuestas_preferences` | `varchar(-1)` | Si | - | - |
| `admencuestas_imagenurl` | `varchar(-1)` | Si | - | URL de la imagen asociada a la encuesta |

---

## 24. Tabla: `hadmferespmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admferesp_numid` | `smallint` | No | PK | Id de la fecha |
| `admferesp_fecha` | `datetime` | No | - | Fecha especial y/o feriada |
| `admferesp_nombre` | `varchar(50)` | No | - | Nombre/Descripci?n |
| `admferesp_cantidad` | `decimal(12,2)` | No | - | Cantidad en d?as que representar? la fecha |
| `admsts_codigo` | `smallint` | No | - | Estado 0 = Inactivo, 1 = Activo |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 25. Tabla: `hadmfileconfigdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admfileconfig_iddet` | `smallint` | No | PK | Id detalle de configuración de archivo |
| `admfileconfig_numid` | `smallint` | No | - | Id Maestro de configuración de archivo |
| `nomcamposlayout_numid` | `smallint` | No | - | Id del Nombre del campo del archivo (Fuente de datos : hnomcamposlayoutmst) |
| `admfileconfig_campo_label` | `varchar(30)` | Si | - | Etiqueta del campo del archivo |
| `admfileconfig_campo_format` | `smallint` | Si | - | Formato del campo del archivo: Tabla para formato |
| `admfileconfig_campo_const` | `varchar(50)` | Si | - | Dato/Valor constante |
| `admfileconfig_campo_long` | `smallint` | Si | - | Longitud del dato del campo del archivo |
| `admfileconfig_campo_sort` | `smallint` | No | - | Posición del campo del archivo |
| `admfileconfig_caracter_fill` | `char(1)` | Si | - | Caracter de relleno del dato del campo |
| `admfileconfig_fill_aling` | `smallint` | Si | - | Alineacion del relleno: 1- Derecha, 2- Izquierda |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmfileconfigdet.nomcamposlayout_numid` -> `hnomcamposlayoutmst.nomcamposlayout_numid`
- `hadmfileconfigdet.admfileconfig_numid` -> `hadmfileconfigmst.admfileconfig_numid`

---

## 26. Tabla: `hadmfileconfigdet_bk20240813`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admfileconfig_iddet` | `smallint` | No | - | - |
| `admfileconfig_numid` | `smallint` | No | - | - |
| `nomcamposlayout_numid` | `smallint` | No | - | - |
| `admfileconfig_campo_label` | `varchar(30)` | Si | - | - |
| `admfileconfig_campo_format` | `smallint` | Si | - | - |
| `admfileconfig_campo_const` | `varchar(50)` | Si | - | - |
| `admfileconfig_campo_long` | `smallint` | Si | - | - |
| `admfileconfig_campo_sort` | `smallint` | No | - | - |
| `admfileconfig_caracter_fill` | `char(1)` | Si | - | - |
| `admfileconfig_fill_aling` | `smallint` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 27. Tabla: `hadmfileconfigmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admfileconfig_numid` | `smallint` | No | PK | Id de configuración de archivo |
| `admfileconfig_nombre` | `varchar(50)` | No | - | Nombre de configuración de archivo |
| `admfileconfig_tipo` | `smallint` | No | - | Tipo de configuración de archivo : Text, Excel, Otro |
| `admfileconfig_delimitador` | `char(1)` | Si | - | Caracter delimitador |
| `admfileconfig_condicion` | `text` | Si | - | Condición : Uso futuro complemento para Query |
| `admfileconfig_ind_resumen` | `smallint` | No | - | Es un archivo resumen:	1-Sí, 0-No.  DEFAULT = 0 |
| `admfileconfig_incluye_resumen` | `smallint` | No | - | Incluye archivo resumen:1-Sí, 0-No.  DEFAULT = 0 |
| `admfileconfig_idresumen` | `smallint` | Si | - | Id de archivo resumen |
| `admfileconfig_ubiresumen` | `smallint` | Si | - | Ubicación/Posición de archivo resumen: [1 = Principio de Archivo, 2 = Final de Archivo] |
| `admfileconfig_descrresumen` | `varchar(50)` | Si | - | Alias/Nombre/Descripción para archivo resumen |
| `admfileconfig_ind_secuencial` | `smallint` | Si | - | Maneja secuencia de archivo |
| `admfileconfig_multibanco` | `smallint` | Si | - | Maneja multiplataformas bancarias |
| `admsts_codigo` | `smallint` | No | - | Estado: 1-Activo, 2-Inactivo. DEFAULT = 1 |
| `admfileconfig_idclase` | `smallint` | Si | - | Clase de Archivo: 1 =  Nómina Electrónica, 2 = TSS, 3 = Ministerio Trabajo, 4 = Otro |
| `nomban_numid` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |
| `admstproconfig_tipoproc` | `smallint` | Si | - | Id configuración stored procedure |

---

## 28. Tabla: `hadmfileconfigmst_bk20240813`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admfileconfig_numid` | `smallint` | No | - | - |
| `admfileconfig_nombre` | `varchar(50)` | No | - | - |
| `admfileconfig_tipo` | `smallint` | No | - | - |
| `admfileconfig_delimitador` | `char(1)` | Si | - | - |
| `admfileconfig_condicion` | `text` | Si | - | - |
| `admfileconfig_ind_resumen` | `smallint` | No | - | - |
| `admfileconfig_incluye_resumen` | `smallint` | No | - | - |
| `admfileconfig_idresumen` | `smallint` | Si | - | - |
| `admfileconfig_ubiresumen` | `smallint` | Si | - | - |
| `admfileconfig_descrresumen` | `varchar(50)` | Si | - | - |
| `admfileconfig_ind_secuencial` | `smallint` | Si | - | - |
| `admfileconfig_multibanco` | `smallint` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `admfileconfig_idclase` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 29. Tabla: `hadmformatlayoutmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admformatlayout_numid` | `smallint` | No | PK | Id de formato |
| `admformatlayout_formatdata` | `varchar(30)` | No | - | Farmato |
| `admformatlayout_tipo` | `smallint` | No | - | Tipo de formato: 1 = Formato Numérico, 2 = Formato de fecha, 3 = Formato Texto |
| `admformatlayout_codigo_alt` | `varchar(3)` | Si | - | Código Alterno corto |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 30. Tabla: `hadmgradoacalan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admgradoaca_numid` | `int` | No | PK | Id Idioma por grado academico |
| `admgradoaca_id` | `smallint` | No | - | Id grado academico |
| `sdalan_codigo` | `char(5)` | No | - | Cultura |
| `admgrado_nombre` | `varchar(100)` | No | - | Nombre |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmgradoacalan.admgradoaca_id` -> `hadmgradoacamst.admgradoaca_id`

---

## 31. Tabla: `hadmgradoacamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admgradoaca_id` | `smallint` | No | PK | Id grado academico |
| `admgrado_nombre` | `varchar(100)` | No | - | Nombre |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |
| `admgrado_referencia_mt` | `varchar(10)` | Si | - | Referencia Ministerio de Trabajo |

---

## 32. Tabla: `hadmgradoacamstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom0` | `varchar(50)` | Si | - | - |
| `admgradoaca_id` | `int` | No | PK | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 33. Tabla: `hadmhabmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admhab_numid` | `smallint` | No | PK | Id único de habilidades |
| `admhab_nombre` | `varchar(50)` | No | - | Nombre de la habilidad |
| `admsts_codigo` | `smallint` | No | - | Estado de la habilidad |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |
| `admhab_descripcion` | `varchar(500)` | Si | - | Descripción de la habilidad |

---

## 34. Tabla: `hadmhabmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom0` | `varchar(500)` | Si | - | - |
| `admhab_numid` | `int` | No | PK | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 35. Tabla: `hadmhorariolan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admhorario_numid` | `int` | No | - | Id Idioma por Horario |
| `admhorario_id` | `smallint` | No | PK | Id Horario |
| `sdalan_codigo` | `char(5)` | No | PK | Cultura |
| `admhorario_descripcion` | `varchar(150)` | No | - | Descripcion |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmhorariolan.admhorario_id` -> `hadmhorariomst.admhorario_id`

---

## 36. Tabla: `hadmhorariomst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admhorario_id` | `smallint` | No | PK | Id Horario |
| `admcompania_id` | `smallint` | No | - | Id Compania |
| `admhorario_referencia_mt` | `varchar(10)` | Si | - | Codigo |
| `admhorario_descripcion` | `varchar(150)` | No | - | Descripcion |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admhorario_jornadadiaria` | `decimal(12,2)` | Si | - | - |
| `admhorario_hora_ini` | `varchar(10)` | Si | - | - |
| `admhorario_hora_fin` | `varchar(10)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmhorariomst.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 37. Tabla: `hadmhorariomstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom0` | `varchar(50)` | Si | - | - |
| `admhorario_id` | `int` | No | PK | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 38. Tabla: `hadmincidenciamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admincidencia_numid` | `smallint` | No | PK | Id maestro de incidencia |
| `admincidencia_nombre` | `varchar(50)` | No | - | Nombre |
| `admincidencia_Descripcion` | `varchar(200)` | Si | - | Descripción |
| `admincidencia_tipo` | `smallint` | No | - | Tipo de la incidencia o situación, Ej: 1 = Info., 2 = Warning, 3 = Error |
| `admincidencia_modulo` | `smallint` | Si | - | Modulo |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 39. Tabla: `hadmparentescomst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admparentesco_numid` | `smallint` | No | PK | Id del Parentesco |
| `admparentesco_nombre` | `varchar(50)` | No | - | Descripción del parentesco |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `admparentesco_dependiente_directo` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 40. Tabla: `hadmplansegmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admplanseg_numid` | `smallint` | No | PK | Id Plan de Salud |
| `admprovseg_numid` | `smallint` | No | - | Id Proveedor Seguro |
| `nomcon_numid` | `smallint` | Si | - | Id de concepto/Transaccion |
| `admplanseg_nombre` | `varchar(50)` | No | - | Nombre Plan Salud |
| `admplanseg_tarifa` | `numeric(12,2)` | No | - | Tarifa Mensual x Persona |
| `admplanseg_porcempr` | `numeric(5,2)` | No | - | Porciento Empresa |
| `admplanseg_porcempl` | `numeric(5,2)` | No | - | Porciento Empleado |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmplansegmst.admprovseg_numid` -> `hadmprovsegmst.admprovseg_numid`

---

## 41. Tabla: `hadmplansegmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom0` | `varchar(500)` | Si | - | - |
| `admplanseg_numid` | `int` | No | PK | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 42. Tabla: `hadmposlan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admpos_numid` | `int` | No | PK | Id Idioma por Puesto de Trabajo |
| `admpos_id` | `smallint` | No | - | Id Puesto de Trabajo |
| `sdalan_codigo` | `char(5)` | No | - | Cultura |
| `admpos_nombre` | `varchar(50)` | No | - | Nombre |
| `admpos_descripcion` | `text` | Si | - | Descripcion |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmposlan.admpos_id` -> `hadmposmst.admpos_id`

---

## 43. Tabla: `hadmposmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admpos_id` | `smallint` | No | PK | Id Puesto de Trabajo |
| `admcompania_id` | `smallint` | No | - | Id Compania |
| `admpos_nombre` | `varchar(50)` | No | - | Nombre |
| `admpos_referencia_mt` | `varchar(10)` | Si | - | Referencia Ministerio de Trabajo |
| `admpos_descripcion` | `varchar(-1)` | Si | - | Descripcion |
| `admpos_ind_comisiona` | `smallint` | Si | - | Indicador de Comision |
| `admpos_tope_comision` | `decimal(12,2)` | Si | - | Tope Comision |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `admpos_limite` | `smallint` | No | - | Indica la cantidad maxima de puestos disponible para ser ocupados por un empleado |
| `admpos_requisitos` | `varchar(-1)` | Si | - | - |
| `admpos_responsabilidades` | `varchar(-1)` | Si | - | - |
| `admpos_clasificacion1` | `smallint` | Si | - | Clasificacion Especial 1 para usos variables |
| `admpos_clasificacion2` | `smallint` | Si | - | Clasificacion Especial 2 para usos variables |
| `admpos_clasificacion3` | `smallint` | Si | - | Clasificacion Especial 3 para usos variables |
| `admpos_salmin` | `decimal(12,2)` | No | - | Salario minimo del puesto |
| `admpos_salmax` | `decimal(12,2)` | No | - | Salario máximo del puesto |
| `tag` | `varchar(-1)` | Si | - | - |
| `admpos_nivel` | `smallint` | No | - | Indica el nivel del puesto |

### Relaciones (Foreign Keys)
- `hadmposmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 44. Tabla: `hadmposmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admpos_id` | `int` | No | PK | - |
| `tblfld_custom0` | `varchar(50)` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 45. Tabla: `hadmpreguntasmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admpreguntas_numid` | `int` | No | PK | - |
| `admencuestas_numid` | `int` | No | - | - |
| `admpreguntas_pregunta` | `nvarchar(-1)` | No | - | - |
| `admpreguntas_tipo_pregunta` | `nvarchar(100)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |
| `admpreguntas_opciones` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmpreguntasmst.admencuestas_numid` -> `hadmencuestasmst.admencuestas_numid`

---

## 46. Tabla: `hadmprovsegmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admprovseg_numid` | `smallint` | No | PK | Id Proveedor Seguro |
| `admprovseg_nombre` | `varchar(50)` | No | - | Nombre Proveedor |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 47. Tabla: `hadmprovsegmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom0` | `varchar(500)` | Si | - | - |
| `admprovseg_numid` | `int` | No | PK | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 48. Tabla: `hadmrazonsalmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admrazonsal_numid` | `smallint` | No | PK | Id Razon de Salida |
| `admrazonsal_razon` | `varchar(50)` | No | - | Razón de Salida |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 49. Tabla: `hadmrazonsalmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom0` | `varchar(500)` | Si | - | - |
| `admrazonsal_numid` | `int` | No | PK | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 50. Tabla: `hadmregistroactividadesdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `registroactividades_numid` | `int` | No | PK | - |
| `admactividades_numid` | `int` | No | - | - |
| `empemp_numid` | `int` | No | - | - |
| `fecha_inscripcion` | `datetime` | Si | - | - |
| `estado` | `nvarchar(100)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmregistroactividadesdet.admactividades_numid` -> `hadmactividadesmst.admactividades_numid`
- `hadmregistroactividadesdet.empemp_numid` -> `hempempmst.empemp_numid`

---

## 51. Tabla: `hadmreportemst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admreporte_numid` | `int` | No | PK | Id del Reporte |
| `admreporte_guid` | `varchar(40)` | Si | - | Campo que se utiliza como id único para identificar el reporte en procesos internos de la aplicación |
| `sdaacc_numid` | `int` | Si | - | Relaciona el reporte con la acción del framework para el manejo de los permisos |
| `admreporte_nombre` | `varchar(50)` | No | - | Nombre del reporte |
| `admreporte_descripcion` | `varchar(255)` | Si | - | Breve descripcion de lo que muestra el reporte |
| `admreporte_tipo` | `smallint` | No | - | Indica el tipo de reporte (Se relaciona con Uso Multiple) |
| `sdareport_numid` | `int` | No | - | Indica cual es el reporte relacionado con Framework (xsdareportmst) |
| `admreporte_fuente` | `varchar(50)` | No | - | Indica el nombre de la opcion que alimentara el reporte |
| `admreporte_tipofuente` | `smallint` | No | - | Indica el Tipo de fuente que alimentara el reporte (1-> Vista, 2-> StoreProcedure) |
| `admreporte_TipoNomina` | `smallint` | No | - | - |
| `admreporte_Periodo` | `smallint` | No | - | - |
| `admreporte_Fecha` | `smallint` | No | - | - |
| `admreporte_sucursal` | `smallint` | No | - | - |
| `admreporte_departamento` | `smallint` | No | - | - |
| `admreporte_puesto` | `smallint` | No | - | - |
| `admreporte_empleado` | `smallint` | No | - | - |
| `admreporte_concepto` | `smallint` | No | - | - |
| `admreporte_origenconcepto` | `smallint` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `tag` | `varchar(-1)` | Si | - | - |
| `admreporte_genero` | `smallint` | No | - | Indicador si el reporte filtra por género del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_tipo_sangre` | `smallint` | No | - | Indicador si el reporte filtra por tipo de sangre del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_estado_civil` | `smallint` | No | - | Indicador si el reporte filtra por estado civil del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_fecha_nacimiento` | `smallint` | No | - | Indicador si el reporte filtra por fecha de nacimiento del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_fecha_inicio` | `smallint` | No | - | Indicador si el reporte filtra por fecha de inicio/ingreso del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_fecha_desvinc` | `smallint` | No | - | Indicador si el reporte filtra por fecha de desvinculación/salida del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_fecha_final` | `smallint` | No | - | Indicador si el reporte filtra por fecha de finalización de contrato del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_salario` | `smallint` | No | - | Indicador si el reporte filtra por salario base del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_tipo_salario` | `smallint` | No | - | Indicador si el reporte filtra por tipo de salario del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_tipo_contrato` | `smallint` | No | - | Indicador si el reporte filtra por tipo de contrato del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_forma_pago` | `smallint` | No | - | Indicador si el reporte filtra por forma de pago del empleado. 0 = No filtra, 1 = Sí filtra |
| `admreporte_mes` | `smallint` | No | - | - |
| `admreporte_anio` | `smallint` | No | - | - |
| `admreporte_AccionPersonal` | `smallint` | Si | - | Indica si el reporte muestra el filtro de Accion de Personal. 1 = aplica, 0 o NULL = no aplica. |
| `admreporte_TipoAusencia` | `smallint` | Si | - | Indica si el reporte muestra el filtro de Tipo de Ausencia. 1 = aplica, 0 o NULL = no aplica. |
| `admreporte_FechaEfectiva` | `smallint` | Si | - | Indica si el reporte muestra el filtro de Fecha Efectiva. 1 = aplica, 0 o NULL = no aplica. |

---

## 52. Tabla: `hadmrespuestasmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admrespuestas_numid` | `int` | No | PK | - |
| `admpreguntas_numid` | `int` | No | - | - |
| `empemp_numid` | `int` | Si | - | - |
| `admrespuestas_respuesta` | `nvarchar(-1)` | Si | - | - |
| `admrespuestas_fecha_respuesta` | `datetime` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hadmrespuestasmst.admpreguntas_numid` -> `hadmpreguntasmst.admpreguntas_numid`
- `hadmrespuestasmst.empemp_numid` -> `hempempmst.empemp_numid`

---

## 53. Tabla: `hadmsegplancondet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `segplancon_numid` | `int` | No | PK | Id único del detalle de concepto por plan de seguro |
| `admcompania_id` | `int` | No | - | Id de la compañía |
| `nomcon_numid` | `smallint` | No | - | Id del concepto de nómina asociado al plan de seguro |
| `admplanseg_numid` | `smallint` | No | - | Id del plan de seguro |

### Relaciones (Foreign Keys)
- `hadmsegplancondet.admplanseg_numid` -> `hadmplansegmst.admplanseg_numid`

---

## 54. Tabla: `hadmstproconfigmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admstproconfig_numid` | `int` | No | PK | Id configuración stored procedure |
| `admpai_id` | `smallint` | No | - | Id Pais |
| `admstproconfig_tipoproc` | `smallint` | No | - | Tipo de proceso: 1 = Regalía, 2 = Bonificación, 4 = Bonificación x Factor |
| `admstproconfig_nombre` | `varchar(50)` | No | - | Nombre del Stored Procedure |
| `admsts_codigo` | `smallint` | No | - | Estado: 1-Activo, 2-Inactivo |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 55. Tabla: `hadmtarmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admtar_numid` | `smallint` | No | PK | - |
| `admtar_nombre` | `varchar(50)` | No | - | - |
| `admtar_extension` | `varchar(5)` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 56. Tabla: `hadmurlintftmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admurlintft_numid` | `smallint` | No | PK | Id |
| `admurlintft_intf_target` | `varchar(20)` | No | - | Aplicativo Destino/Dueño. Ejemplo: Dynamics 365 |
| `admurlintft_descripcion` | `varchar(50)` | Si | - | Descripcion |
| `admurlintft_url_token` | `varchar(200)` | Si | - | url para maenejo de token |
| `admurlintft_Bearer` | `varchar(10)` | Si | - | Bearer; util para configuración en Postman |
| `admurlintft_url_header` | `varchar(200)` | Si | - | url para header/cabecera |
| `admurlintft_url_linedetail` | `varchar(200)` | Si | - | url para línea/detalle |
| `admurlintft_url_resource` | `varchar(200)` | Si | - | url para resource de configuracion |
| `admurlintft_username` | `varchar(50)` | Si | - | Username |
| `admurlintft_password` | `varchar(50)` | Si | - | Password |
| `admurlintft_grant_type` | `varchar(50)` | Si | - | Para maenejo seguridad y acceso |
| `admurlintft_Client_id` | `varchar(200)` | Si | - | Para maenejo seguridad y acceso |
| `admurlintft_Client_secret` | `varchar(200)` | Si | - | Para maenejo seguridad y acceso |
| `admurlintft_tipo_proceso` | `smallint` | No | - | Tipo de Proceso: 1 = Ent.Diario Nomina, 2 = Ent.Diario Cheque, 3 = Anticipos |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 57. Tabla: `hadmurlintftmst_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admurlintft_numid` | `float` | Si | - | - |
| `admurlintft_intf_target` | `nvarchar(510)` | Si | - | - |
| `admurlintft_descripcion` | `nvarchar(510)` | Si | - | - |
| `admurlintft_url_token` | `nvarchar(510)` | Si | - | - |
| `admurlintft_Bearer` | `nvarchar(510)` | Si | - | - |
| `admurlintft_url_header` | `nvarchar(510)` | Si | - | - |
| `admurlintft_url_linedetail` | `nvarchar(510)` | Si | - | - |
| `admurlintft_url_resource` | `nvarchar(510)` | Si | - | - |
| `admurlintft_username` | `nvarchar(510)` | Si | - | - |
| `admurlintft_password` | `nvarchar(510)` | Si | - | - |
| `admurlintft_grant_type` | `nvarchar(510)` | Si | - | - |
| `admurlintft_Client_id` | `nvarchar(510)` | Si | - | - |
| `admurlintft_Client_secret` | `nvarchar(510)` | Si | - | - |
| `admurlintft_tipo_proceso` | `float` | Si | - | - |
| `admsts_codigo` | `float` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 58. Tabla: `padmautpendmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admautpend_numid` | `int` | No | PK | - |
| `admautpend_payload` | `nvarchar(-1)` | No | - | - |
| `admautpend_url` | `nvarchar(1000)` | No | - | - |
| `admautpend_method` | `nvarchar(20)` | No | - | - |
| `admcli_requesterid` | `int` | No | - | - |
| `admautpend_status` | `nvarchar(100)` | Si | - | - |
| `admautpend_createdat` | `datetime` | Si | - | - |
| `admautpend_executedat` | `datetime` | Si | - | - |

### Relaciones (Foreign Keys)
- `padmautpendmst.admcli_requesterid` -> `xadmusrmst.admusr_numid`

---

## 59. Tabla: `padmautrulemst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admautrule_numid` | `int` | No | PK | - |
| `admautrule_path` | `nvarchar(1000)` | No | - | - |
| `admautrule_method` | `nvarchar(20)` | No | - | - |
| `admautrule_sigrequired` | `int` | No | - | - |
| `admautrule_users` | `nvarchar(-1)` | Si | - | - |
| `admautrule_description` | `nvarchar(-1)` | Si | - | - |
| `admautrule_condition` | `nvarchar(40)` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |

---

## 60. Tabla: `padmautsigmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admautsig_numid` | `int` | No | PK | - |
| `admautpend_numid` | `int` | No | - | - |
| `admusr_numid` | `int` | No | - | - |
| `admautsig_action` | `nvarchar(100)` | No | - | - |
| `admautsig_comment` | `nvarchar(-1)` | Si | - | - |
| `admautsig_signedat` | `datetime` | Si | - | - |

### Relaciones (Foreign Keys)
- `padmautsigmst.admautpend_numid` -> `padmautpendmst.admautpend_numid`
- `padmautsigmst.admusr_numid` -> `xadmusrmst.admusr_numid`

---

## 61. Tabla: `padmcliassigmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcliassig_numid` | `int` | No | PK | - |
| `admcli_numid` | `int` | No | - | - |
| `admcliassig_usrimplementerid` | `int` | Si | - | - |
| `admcliassig_accessstartdate` | `date` | Si | - | - |
| `admcliassig_accessenddate` | `date` | Si | - | - |
| `admcliassig_updatedat` | `datetime2` | Si | - | - |

### Relaciones (Foreign Keys)
- `padmcliassigmst.admcli_numid` -> `xadmclimst.admcli_numid`
- `padmcliassigmst.admcliassig_usrimplementerid` -> `xadmusrmst.admusr_numid`

---

## 62. Tabla: `padmclidet_NOUSAR`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcli_idDetalle` | `int` | No | PK | - |
| `admcli_numid` | `int` | No | - | - |
| `sdamod_codigo` | `char(3)` | No | - | - |
| `admcli_cantUsuarios` | `smallint` | No | - | - |
| `admcli_cantEmpleados` | `smallint` | No | - | - |
| `sdamod_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 63. Tabla: `padmclimst_NOUSAR`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcli_numid` | `int` | No | PK | - |
| `admcli_nombre` | `varchar(30)` | No | - | - |
| `admgre_numid` | `int` | No | - | - |
| `admcli_tipoIdentificacion` | `smallint` | No | - | - |
| `admcli_Identificacion` | `varchar(20)` | No | - | - |
| `admcli_nombreresponsable` | `varchar(100)` | No | - | - |
| `admcli_emailresponsable` | `varchar(100)` | No | - | - |
| `admcli_telefonoresponsable` | `varchar(15)` | No | - | - |
| `admcli_fecexpresponsable` | `date` | Si | - | - |
| `admcli_indadmresponsable` | `smallint` | Si | - | - |
| `admcli_nombreconsultor` | `varchar(100)` | Si | - | - |
| `admcli_emailconsultor` | `varchar(100)` | Si | - | - |
| `admcli_telefonoconsultor` | `varchar(15)` | Si | - | - |
| `admcli_fecexpconsultor` | `date` | Si | - | - |
| `admcli_indadmconsultor` | `smallint` | Si | - | - |
| `admcli_indImplementacion` | `smallint` | No | - | - |
| `admcli_fechainicioimp` | `date` | Si | - | - |
| `admcli_fechafinimp` | `date` | Si | - | - |
| `admcli_calle1` | `varchar(100)` | Si | - | - |
| `admcli_calle2` | `varchar(100)` | Si | - | - |
| `admciu_numid` | `int` | Si | - | - |
| `admprv_numid` | `int` | Si | - | - |
| `admpai_numid` | `smallint` | Si | - | - |
| `admcli_codigopostal` | `varchar(10)` | Si | - | - |
| `admcli_latitud` | `decimal(10,6)` | Si | - | - |
| `admcli_longitud` | `decimal(10,6)` | Si | - | - |
| `admcli_telefono1cia` | `varchar(15)` | Si | - | - |
| `admcli_telefono2cia` | `varchar(15)` | Si | - | - |
| `admcli_emailcia` | `varchar(100)` | Si | - | - |
| `admcli_sitioweb` | `varchar(100)` | Si | - | - |
| `admlsp_numid` | `int` | No | - | - |
| `admcli_frecuenciapago` | `int` | No | - | - |
| `admcli_fechainiciofac` | `date` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 64. Tabla: `padmcliprodmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcliprod_numid` | `int` | No | PK | - |
| `admcli_numid` | `int` | No | - | - |
| `admplstdet_numid` | `int` | No | - | - |
| `admcliprod_assignedat` | `datetime` | Si | - | - |
| `admcliprod_quantity` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `padmcliprodmst.admplstdet_numid` -> `padmplstdet.admplstdet_numid`

---

## 65. Tabla: `padmclisetmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcliset_numid` | `int` | No | PK | - |
| `admcli_numid` | `int` | No | - | - |
| `admplst_numid` | `int` | No | - | - |
| `admcliset_internalnotes` | `nvarchar(-1)` | Si | - | - |
| `admcliset_isprospect` | `bit` | Si | - | - |
| `admcliset_convertedat` | `datetime` | No | - | - |

### Relaciones (Foreign Keys)
- `padmclisetmst.admplst_numid` -> `padmplstmst.admplst_numid`
- `padmclisetmst.admcli_numid` -> `xadmclimst.admcli_numid`

---

## 66. Tabla: `padmgremst_NOUSAR`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admgre_numid` | `int` | No | PK | - |
| `admgre_nombre` | `varchar(30)` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 67. Tabla: `padmplstdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admplstdet_numid` | `int` | No | PK | - |
| `admplst_numid` | `int` | No | - | - |
| `admprod_numid` | `int` | No | - | - |
| `admplstdet_price` | `decimal(18,2)` | No | - | - |
| `admplstdet_minquantity` | `int` | Si | - | - |
| `admplstdet_maxquantity` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `padmplstdet.admplst_numid` -> `padmplstmst.admplst_numid`
- `padmplstdet.admprod_numid` -> `padmprodmst.admprod_numid`

---

## 68. Tabla: `padmplstmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admplst_numid` | `int` | No | PK | - |
| `admplst_name` | `nvarchar(400)` | No | - | - |
| `admplst_billingmodel` | `nvarchar(100)` | No | - | - |
| `admplst_implementationhfee` | `decimal(18,2)` | Si | - | - |
| `admmon_codigo` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `admplst_createdat` | `datetime` | Si | - | - |

---

## 69. Tabla: `padmprodcatmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admprodcat_numid` | `int` | No | PK | - |
| `admprodcat_name` | `varchar(100)` | No | - | - |
| `admprodcat_description` | `nvarchar(1000)` | Si | - | - |
| `admprodcat_createat` | `datetime` | Si | - | - |

---

## 70. Tabla: `padmprodmod`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admprodmod_numid` | `int` | No | PK | - |
| `admprod_numid` | `int` | No | - | - |
| `sdamod_numid` | `int` | No | - | - |

### Relaciones (Foreign Keys)
- `padmprodmod.sdamod_numid` -> `xsdamodmst.sdamod_numid`
- `padmprodmod.admprod_numid` -> `padmprodmst.admprod_numid`

---

## 71. Tabla: `padmprodmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admprod_numid` | `int` | No | PK | - |
| `admprod_name` | `nvarchar(400)` | No | - | - |
| `admprod_description` | `nvarchar(-1)` | Si | - | - |
| `admprodcat_numid` | `int` | No | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `admprod_createdat` | `datetime` | Si | - | - |
| `admprod_is_emp_limited` | `bit` | No | - | - |
| `admprod_min_emp` | `int` | No | - | - |
| `admprod_max_emp` | `int` | No | - | - |
| `admprod_is_user_limited` | `bit` | No | - | - |
| `admprod_min_users` | `int` | No | - | - |
| `admprod_max_users` | `int` | No | - | - |
| `admprod_reference_code` | `varchar(50)` | Si | - | - |

### Relaciones (Foreign Keys)
- `padmprodmst.admprodcat_numid` -> `padmprodcatmst.admprodcat_numid`

---

## 72. Tabla: `xadmcfgdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcfg_seq` | `smallint` | No | PK | Secuencia |
| `admcfg_nombre` | `varchar(500)` | No | PK | Código o clave |
| `admcfg_valor` | `varchar(-1)` | Si | - | Valor |
| `admsuc_codigo` | `char(3)` | Si | - | Filtro por suc |
| `admcia_codigo` | `char(3)` | Si | - | Filtro por cia |
| `admcli_numid` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xadmcfgdet.admcfg_nombre` -> `xadmcfgmst.admcfg_nombre`

---

## 73. Tabla: `xadmcfgmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcfg_nombre` | `varchar(500)` | No | PK | Código o clave a configurar |
| `admcfg_descrip` | `varchar(100)` | Si | - | Descripción |
| `admcfg_tipo` | `smallint` | No | - | Tipo:0:Key simple, |
| `admcfg_valor` | `varchar(-1)` | Si | - | Valor |
| `sdapry_codigo` | `int` | No | - | Id del proyecto. Manera informativa |
| `admcfg_isencrypted` | `int` | No | - | - |

---

## 74. Tabla: `xadmciudadmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admciudad_numid` | `int` | No | PK | Id ciudad |
| `admciudad_nombre` | `varchar(250)` | No | - | Nombre ciudad |
| `admpais_numid` | `smallint` | No | - | Id de país |
| `admciudad_referencia` | `varchar(50)` | Si | - | Nombre de ciudad referencia |
| `admsts_codigo` | `smallint` | No | - | Estado: 1-Activo 0-Inactivo |

### Relaciones (Foreign Keys)
- `xadmciudadmst.admpais_numid` -> `xadmpaismst.admpais_numid`

---

## 75. Tabla: `xadmciudadmstBk20250421`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admciudad_numid` | `smallint` | No | PK | - |
| `admciudad_nombre` | `varchar(50)` | No | - | - |
| `admpais_numid` | `smallint` | No | - | - |
| `admciudad_referencia` | `varchar(50)` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |

---

## 76. Tabla: `xadmclicfgmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admclicfg_numid` | `int` | No | PK | - |
| `sdaenv_numid` | `int` | Si | - | - |
| `sdacfgdata_numid` | `int` | Si | - | - |
| `admcli_numid` | `int` | No | - | - |

### Relaciones (Foreign Keys)
- `xadmclicfgmst.admcli_numid` -> `xadmclimst.admcli_numid`
- `xadmclicfgmst.sdaenv_numid` -> `xsdaenvmst.sdaenv_numid`
- `xadmclicfgmst.sdacfgdata_numid` -> `xsdacfgdatamst.sdacfgdata_numid`

---

## 77. Tabla: `xadmclidet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcli_idDetalle` | `int` | No | PK | - |
| `admcli_numid` | `int` | No | - | - |
| `sdamod_codigo` | `char(3)` | No | - | - |
| `admcli_cantUsuarios` | `smallint` | No | - | - |
| `admcli_cantEmpleados` | `smallint` | No | - | - |
| `sdamod_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 78. Tabla: `xadmclidommst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admclidom_numid` | `int` | No | PK | - |
| `sdaenv_numid` | `int` | Si | - | - |
| `admcli_numid` | `int` | No | - | - |
| `sdadomain_numid` | `int` | No | - | - |

### Relaciones (Foreign Keys)
- `xadmclidommst.sdaenv_numid` -> `xsdaenvmst.sdaenv_numid`
- `xadmclidommst.sdadomain_numid` -> `xsdadomainmst.sdadomain_numid`
- `xadmclidommst.admcli_numid` -> `xadmclimst.admcli_numid`

---

## 79. Tabla: `xadmclimst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcli_numid` | `int` | No | PK | - |
| `admcli_nombre` | `varchar(30)` | No | - | - |
| `admgre_numid` | `int` | No | - | - |
| `admcli_tipoIdentificacion` | `smallint` | No | - | - |
| `admcli_Identificacion` | `varchar(20)` | No | - | - |
| `admcli_nombreresponsable` | `varchar(100)` | No | - | - |
| `admcli_emailresponsable` | `varchar(100)` | No | - | - |
| `admcli_telefonoresponsable` | `varchar(15)` | No | - | - |
| `admcli_fecexpresponsable` | `date` | Si | - | - |
| `admcli_indadmresponsable` | `smallint` | Si | - | - |
| `admcli_nombreconsultor` | `varchar(100)` | Si | - | - |
| `admcli_emailconsultor` | `varchar(100)` | Si | - | - |
| `admcli_telefonoconsultor` | `varchar(15)` | Si | - | - |
| `admcli_fecexpconsultor` | `date` | Si | - | - |
| `admcli_indadmconsultor` | `smallint` | Si | - | - |
| `admcli_indImplementacion` | `smallint` | No | - | - |
| `admcli_fechainicioimp` | `date` | Si | - | - |
| `admcli_fechafinimp` | `date` | Si | - | - |
| `admcli_calle1` | `varchar(100)` | Si | - | - |
| `admcli_calle2` | `varchar(100)` | Si | - | - |
| `admciu_numid` | `int` | Si | - | - |
| `admprv_numid` | `int` | Si | - | - |
| `admpai_numid` | `smallint` | Si | - | - |
| `admcli_codigopostal` | `varchar(10)` | Si | - | - |
| `admcli_latitud` | `decimal(10,6)` | Si | - | - |
| `admcli_longitud` | `decimal(10,6)` | Si | - | - |
| `admcli_telefono1cia` | `varchar(15)` | Si | - | - |
| `admcli_telefono2cia` | `varchar(15)` | Si | - | - |
| `admcli_emailcia` | `varchar(100)` | Si | - | - |
| `admcli_sitioweb` | `varchar(100)` | Si | - | - |
| `admlsp_numid` | `int` | No | - | - |
| `admcli_frecuenciapago` | `int` | No | - | - |
| `admcli_fechainiciofac` | `date` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 80. Tabla: `xadmcompaniamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admCompania_codigo` | `varchar(10)` | Si | - | Codigo Compania |
| `admcompania_nombre` | `varchar(50)` | No | - | Nombre Compania |
| `admcompania_direccion` | `varchar(250)` | Si | - | Dirección |
| `admcompania_telefono` | `varchar(50)` | Si | - | Teléfono |
| `admcompania_rnc` | `varchar(30)` | Si | - | RNC |
| `admcompania_clasificacion` | `char(1)` | Si | - | Clasificacion |
| `admpai_id` | `smallint` | No | - | Id Pais |
| `admcompania_email` | `varchar(80)` | Si | - | Email |
| `admcompania_smtp` | `varchar(80)` | Si | - | SMTP |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `admcli_numid` | `int` | Si | - | - |
| `admgre_numid` | `int` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admcompania_descripcion` | `varchar(150)` | Si | - | - |
| `admcompania_logoimgnumid` | `bigint` | Si | - | - |
| `admcompania_logoimgurl` | `nvarchar(-1)` | Si | - | - |
| `admcompania_selloimgnumid` | `bigint` | Si | - | - |
| `admcompania_selloimgurl` | `nvarchar(-1)` | Si | - | - |
| `admciudad_id` | `int` | Si | - | - |
| `admcompania_id` | `smallint` | No | PK | - |

### Relaciones (Foreign Keys)
- `xadmcompaniamst.admciudad_id` -> `xadmciudadmst.admciudad_numid`

---

## 81. Tabla: `xadmcompaniamst_seq`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admcompany_id` | `int` | No | PK | - |
| `sequence_date` | `datetime` | Si | - | - |
| `sdacust_numid` | `int` | Si | - | - |

---

## 82. Tabla: `xadmgremst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admgre_numid` | `int` | No | PK | - |
| `admgre_nombre` | `varchar(30)` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 83. Tabla: `xadmgrpdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admgrp_numiddet` | `int` | No | PK | - |
| `admgrp_numid` | `int` | No | - | - |
| `admrole_numid` | `int` | No | - | - |
| `sdamod_numid` | `int` | Si | - | - |

---

## 84. Tabla: `xadmgrpmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admgrp_numid` | `int` | No | PK | - |
| `admgrp_nombre` | `varchar(50)` | No | - | - |
| `admgrp_guid` | `varchar(40)` | Si | - | - |
| `admgrp_descr` | `varchar(150)` | Si | - | - |
| `admgrp_system` | `smallint` | Si | - | - |
| `admcli_numid` | `int` | Si | - | - |

---

## 85. Tabla: `xadmgrppermst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admgrpper_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdaacc_master` | `int` | No | - | - |
| `admrole_numid` | `int` | Si | - | - |
| `admgrp_numid` | `int` | Si | - | - |

---

## 86. Tabla: `xadmidemst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admide_codigo` | `int` | No | PK | - |
| `admide_nombre` | `varchar(40)` | Si | - | - |
| `admide_abrev` | `char(10)` | Si | - | - |
| `admide_mascarilla` | `varchar(20)` | Si | - | - |
| `admide_metval` | `varchar(30)` | Si | - | - |
| `admsts_codigo` | `smallint` | Si | - | - |
| `admide_coddgii` | `char(1)` | Si | - | - |
| `admide_personeria` | `char(1)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |

---

## 87. Tabla: `xadmlspmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admlsp_numid` | `int` | No | PK | - |
| `admlsp_nombre` | `varchar(100)` | No | - | - |
| `admmon_numid` | `smallint` | No | - | - |
| `admlsp_espaciocloud` | `smallint` | No | - | - |
| `admlsp_precioespacio` | `decimal(13,2)` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |

### Relaciones (Foreign Keys)
- `xadmlspmst.admmon_numid` -> `xadmmonmst.admmon_numid`

---

## 88. Tabla: `xadmmonmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admmon_numid` | `smallint` | No | PK | Id de moneda |
| `admmon_nombre` | `varchar(50)` | No | - | Nombre de la moneda |
| `admmon_abrev` | `varchar(3)` | Si | - | Abreviatura de la moneda |
| `admsts_codigo` | `smallint` | No | - | Estados: 1-Activo 0-Inactivo |

---

## 89. Tabla: `xadmmsgdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admmsg_numid` | `int` | No | PK | - |
| `admmsg_cultura` | `char(5)` | No | PK | Cultura (idioma-Pais:es-DO) |
| `admmsg_nombre` | `varchar(200)` | Si | - | Descripción del mensaje |
| `admmsg_nombrefinal` | `varchar(200)` | Si | - | Descripción del mensaje para usuario final |

### Relaciones (Foreign Keys)
- `xadmmsgdet.admmsg_numid` -> `xadmmsgmst.admmsg_numid`

---

## 90. Tabla: `xadmmsggmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admmsgg_numid` | `int` | No | PK | - |
| `admmsgg_nombre` | `varchar(60)` | Si | - | - |

---

## 91. Tabla: `xadmmsgmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admmsg_numid` | `int` | No | PK | ID único del mensaje |
| `admmsg_codigo` | `varchar(20)` | No | - | Cdigo alfanumrico del mensaje |
| `sdapry_codigo` | `int` | No | - | Proyecto |
| `admmsg_tipo` | `int` | Si | - | Tipo:1:Informacion, 2:Error, 3:Warning |
| `admmsg_niveluso` | `int` | Si | - | Nivel de uso. 1 interno, 2 para un usuario final |
| `admmsgg_numid` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xadmmsgmst.admmsgg_numid` -> `xadmmsggmst.admmsgg_numid`

---

## 92. Tabla: `xadmpaismst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admpais_numid` | `smallint` | No | PK | Id de país |
| `admmon_numid` | `smallint` | Si | - | Id de moneda |
| `admpais_nombre` | `varchar(50)` | No | - | Nombre del país |
| `admpais_abrev` | `varchar(3)` | Si | - | Abreviatura del país |
| `admpais_gentilicio` | `varchar(50)` | Si | - | Gentilicio |
| `admarea_mascarilla` | `varchar(20)` | Si | - | Mascarillo para área telefónica |
| `admsts_codigo` | `smallint` | No | - | Estados: 1-Activo 0-Inactivo |

### Relaciones (Foreign Keys)
- `xadmpaismst.admmon_numid` -> `xadmmonmst.admmon_numid`

---

## 93. Tabla: `xadmprvmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admprv_numid` | `int` | No | PK | - |
| `admpais_numid` | `smallint` | No | - | - |
| `admprv_nombre` | `varchar(50)` | No | - | - |
| `admprv_referencia` | `varchar(20)` | Si | - | - |
| `admprv_localidad` | `varchar(6)` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |

### Relaciones (Foreign Keys)
- `xadmprvmst.admpais_numid` -> `xadmpaismst.admpais_numid`

---

## 94. Tabla: `xadmrolemst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admrole_numid` | `int` | No | PK | - |
| `admrole_guid` | `varchar(40)` | No | - | - |
| `admrole_nombre` | `varchar(50)` | Si | - | - |
| `admrole_descr` | `varchar(150)` | Si | - | - |
| `admrol_system` | `smallint` | Si | - | - |
| `admcli_numid` | `int` | Si | - | - |

---

## 95. Tabla: `xadmsectormst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admsector_numid` | `int` | No | PK | Id Sector |
| `admsector_nombre` | `varchar(250)` | No | - | Nombre Sector |
| `admciudad_numid` | `int` | Si | - | Id de ciudad |
| `admsector_referencia` | `varchar(50)` | Si | - | Nombre referencia del sector |
| `admsectordir_zonapostal` | `varchar(10)` | Si | - | Zona postal |
| `admsts_codigo` | `smallint` | No | - | Estado: 1-Activo 0-Inactivo |

### Relaciones (Foreign Keys)
- `xadmsectormst.admciudad_numid` -> `xadmciudadmst.admciudad_numid`

---

## 96. Tabla: `xadmsectormstBk20250421`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admsector_numid` | `int` | No | PK | - |
| `admsector_nombre` | `varchar(50)` | No | - | - |
| `admciudad_numid` | `smallint` | No | - | - |
| `admsector_referencia` | `varchar(50)` | Si | - | - |
| `admsectordir_zonapostal` | `varchar(10)` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |

---

## 97. Tabla: `xadmstsdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admsts_codigo` | `int` | No | PK | Código de estado |
| `admsts_tabla` | `varchar(40)` | No | PK | Nombre de tabla |

---

## 98. Tabla: `xadmstslan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admstslan_numid` | `int` | No | PK | - |
| `admsts_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | Si | - | - |
| `admsts_nombre` | `varchar(30)` | Si | - | - |

### Relaciones (Foreign Keys)
- `xadmstslan.admsts_numid` -> `xadmstsmst.admsts_numid`

---

## 99. Tabla: `xadmstsmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admsts_numid` | `int` | No | PK | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `admsts_nombre` | `varchar(30)` | Si | - | - |
| `admsts_grupo` | `varchar(40)` | No | - | - |
| `sdapry_codigo` | `int` | Si | - | - |

---

## 100. Tabla: `xadmsucursalmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admsucursal_id` | `smallint` | No | PK | Id Sucursal |
| `admcompania_id` | `smallint` | No | - | Id Compania |
| `admsucursal_nombre` | `varchar(50)` | No | - | Nombre Sucursal |
| `admsucursal_direccion` | `varchar(150)` | Si | - | Dirección |
| `admsucursal_telefono` | `varchar(50)` | Si | - | Teléfono |
| `admsucursal_rnl` | `varchar(20)` | Si | - | RNL |
| `admsucursal_referencia` | `varchar(20)` | Si | - | Referencia |
| `admsucursal_latitud` | `decimal(12,2)` | Si | - | Latitud |
| `admsucursal_longitud` | `decimal(12,2)` | Si | - | Longitud |
| `admsucursal_email` | `varchar(50)` | Si | - | Email |
| `admsucursal_rpatronal` | `varchar(20)` | Si | - | Registro Patronal |
| `admsuc_codigo` | `char(3)` | Si | - | Codigo Sucursal |
| `admrelacionado_id` | `int` | Si | - | Id Relacionado |
| `admsucursal_tipo` | `smallint` | Si | - | Tipo Sucursal |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `admusr_numid` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xadmsucursalmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 101. Tabla: `xadmsucursalmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admsucursal_id` | `int` | No | PK | - |
| `tblfld_custom2` | `varchar(500)` | Si | - | - |

---

## 102. Tabla: `xadmusrblob`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admusr_numid` | `int` | No | PK | - |
| `blob_data` | `varbinary` | Si | - | - |
| `blob_info` | `varbinary` | Si | - | - |
| `blob_guid` | `varchar(40)` | Si | - | - |

---

## 103. Tabla: `xadmusrciamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admusrcia_numid` | `int` | No | PK | - |
| `admcompania_id` | `int` | No | - | - |
| `admusr_numid` | `int` | No | - | - |

---

## 104. Tabla: `xadmusrmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admusr_codigo` | `varchar(70)` | No | - | - |
| `admcia_codigo` | `int` | Si | - | - |
| `admsuc_codigo` | `int` | Si | - | - |
| `admusr_nombre` | `varchar(70)` | No | - | - |
| `admusr_password` | `varbinary` | No | - | - |
| `admusr_passwdsalt` | `varbinary` | No | - | - |
| `admusr_IsAuthenticated` | `smallint` | No | - | - |
| `admusr_needLogin` | `int` | No | - | - |
| `admusr_indCambiarContrasena` | `smallint` | No | - | - |
| `admusr_indContrasenaExp` | `smallint` | No | - | - |
| `admusr_fechaCreacion` | `datetime` | No | - | - |
| `admusr_fechaUltAcceso` | `datetime` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `admusr_mail` | `varchar(100)` | Si | - | - |
| `admusr_codeaut` | `varbinary` | Si | - | - |
| `admusr_changepwd` | `smallint` | Si | - | - |
| `sdalan_codigo` | `char(5)` | No | - | - |
| `admide_codigo` | `smallint` | Si | - | - |
| `admide_numero` | `varchar(20)` | Si | - | - |
| `admusr_telefono` | `varchar(30)` | Si | - | - |
| `admgrp_numid` | `int` | Si | - | - |
| `admusr_isadmin` | `smallint` | Si | - | - |
| `admusr_verifpend` | `smallint` | Si | - | - |
| `admgre_numid` | `int` | Si | - | - |
| `admusr_creator` | `int` | Si | - | - |
| `admusr_custom1` | `varchar(100)` | Si | - | - |
| `admusr_custom2` | `varchar(100)` | Si | - | - |
| `admusr_numid` | `int` | No | PK | - |
| `admusr_tipo` | `smallint` | No | - | 1: System User , 2: Other |
| `admusr_defaultuser` | `smallint` | No | - | - |

---

## 105. Tabla: `xadmusrmst_seq`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admusr_numid` | `int` | No | PK | - |
| `sequence_date` | `datetime` | Si | - | - |

---

## 106. Tabla: `xadmusrmstblob`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admusr_numid` | `int` | No | PK | - |
| `admusr_Imagen` | `varchar(-1)` | Si | - | - |

---

## 107. Tabla: `xadmusrpreferencesmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admusrpref_numid` | `int` | No | PK | - |
| `admusr_numid` | `int` | No | - | - |
| `admusrpref_key` | `varchar(100)` | No | - | - |
| `admusrpref_value` | `nvarchar(-1)` | Si | - | - |
| `admusrpref_created` | `datetime` | Si | - | - |
| `admusrpref_updated` | `datetime` | Si | - | - |

---

## 108. Tabla: `xadmusrprefmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admusrpref_numid` | `int` | No | PK | - |
| `admusrpref_preference` | `varchar(25)` | No | - | - |
| `admusrpref_filterKey` | `varchar(15)` | Si | - | - |
| `admusrpref_filterKeyValue` | `varchar(-1)` | Si | - | - |
| `admusrpref_field` | `varchar(25)` | Si | - | - |
| `admusrpref_visible` | `int` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `sdatbl_numid` | `int` | Si | - | - |
| `sdaacc_numid` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xadmusrprefmst.sdatbl_numid` -> `xsdatblmst.sdatbl_numid`

---

## 109. Tabla: `xadmusrroldet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `admusrrol_numid` | `int` | No | PK | - |
| `admcia_codigo` | `int` | No | - | - |
| `admsuc_codigo` | `int` | Si | - | - |
| `admusr_numid` | `int` | No | - | - |
| `admgrp_numid` | `int` | Si | - | - |
| `admrole_numid` | `int` | Si | - | - |

---

