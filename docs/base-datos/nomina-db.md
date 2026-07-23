# Documentación de Base de Datos: Módulo Nomina

## 1. Tabla: `hnomanticiposd`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomanticipos_numid` | `int` | No | PK | - |
| `admcia_codigo_dynamic` | `varchar(20)` | No | - | - |
| `nomanticipos_tipo` | `varchar(3)` | No | - | - |
| `empemp_numiddy` | `varchar(20)` | No | - | - |
| `empemp_numid` | `int` | Si | - | - |
| `nomanticipos_monto` | `decimal(12,2)` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomanticiposd.empemp_numid` -> `hempempmst.empemp_numid`

---

## 2. Tabla: `hnomaporteempleadordet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomaporteempleador_numid` | `int` | No | PK | IId secuencial detalle aporte empleador |
| `admcompania_id` | `smallint` | No | - | Id de compañía del momento |
| `admsucursal_id` | `smallint` | No | - | Id de sucursal del momento |
| `empemp_numid` | `int` | No | - | Id empleado |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomdetalleper_numid` | `smallint` | No | - | Id del período de la nómina (eje: 1) |
| `nomdetalleper_fecha_fin` | `date` | No | - | Fecha periodo |
| `nomcon_numid` | `smallint` | No | - | Id de concepto |
| `nomaporteempleador_monto` | `decimal(12,2)` | No | - | Monto del aporte |
| `nomaporteempleador_fecha_reg` | `datetime` | Si | - | Fecha de registro |
| `admusr_numid` | `int` | No | - | Id Usuario |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomaporteempleadordet.nomdetalleper_numid` -> `hnomdetalleperdet.nomdetalleper_numid`
- `hnomaporteempleadordet.nomcon_numid` -> `hnomconmst.nomcon_numid`
- `hnomaporteempleadordet.admsucursal_id` -> `xadmsucursalmst.admsucursal_id`
- `hnomaporteempleadordet.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomaporteempleadordet.nomtno_numid` -> `hnomtnomst.nomtno_numid`
- `hnomaporteempleadordet.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 3. Tabla: `hnomasignaempmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomasignaemp_numid` | `int` | No | PK | Id asignacion empleado a nomina |
| `admcompania_id` | `smallint` | No | - | Id Compania |
| `nomtno_numid` | `smallint` | No | - | Id Tipo de nómina |
| `nomasignaemp_periodo` | `varchar(10)` | Si | - | Código del período |
| `empemp_numid` | `int` | No | - | Id de empleado |
| `nomasignaemp_fecha` | `datetime` | No | - | Fecha de asignación a nómina |
| `admusr_numid` | `int` | No | - | Id de usuario |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomasignaempmst.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomasignaempmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomasignaempmst.nomtno_numid` -> `hnomtnomst.nomtno_numid`

---

## 4. Tabla: `hnombanmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomban_numid` | `smallint` | No | PK | id de Banco |
| `nomban_nombre` | `varchar(50)` | No | - | Nombre |
| `admpais_id` | `smallint` | No | - | Id de pais |
| `nomban_codigo` | `varchar(10)` | Si | - | Código de banco (Util para nómina electrónica) |
| `nomban_digito_veri` | `char(1)` | Si | - | Digito verificador (Util para nómina electrónica) |
| `nomban_referencia` | `varchar(10)` | Si | - | Referencia |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 5. Tabla: `hnombanmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom0` | `varchar(500)` | Si | - | - |
| `nomban_numid` | `int` | No | PK | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 6. Tabla: `hnombonidiasantdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nombonidiasant_numid` | `int` | No | PK | id Configuracion Bonificacion Dias por Antiguedad |
| `nombonidiasant_rangomin` | `smallint` | No | - | Rango Minimo de Años |
| `nombonidiasant_rangomax` | `smallint` | No | - | Rango Maximo de Años |
| `nombonidiasant_cantdias` | `smallint` | No | - | Cantidad de Días |
| `nomconfley_numid` | `int` | No | - | Id de los parametros generales de Ley |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnombonidiasantdet.nomconfley_numid` -> `hnomconfleymst.nomconfley_numid`

---

## 7. Tabla: `hnombonidiasantdetMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nombonidiasant_numid` | `float` | Si | - | - |
| `nombonidiasant_rangomin` | `float` | Si | - | - |
| `nombonidiasant_rangomax` | `float` | Si | - | - |
| `nombonidiasant_cantdias` | `float` | Si | - | - |
| `nomconfley_numid` | `float` | Si | - | - |
| `admsts_codigo` | `float` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 8. Tabla: `hnomcamposlayoutmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcamposlayout_numid` | `smallint` | No | PK | Id de campo para layout |
| `nomcamposlayout_nombre` | `varchar(50)` | No | - | Nombre campo layout |
| `nomcamposlayout_nombreusr` | `varchar(50)` | No | - | Nombre campo para mostrar al usuario |
| `nomcamposlayout_const` | `varchar(50)` | Si | - | Valor/Dato constante |
| `nomcamposlayout_keyfield` | `varchar(30)` | Si | - | Nombre de Campo clave relacionado |
| `nomcamposlayout_fuente` | `varchar(30)` | Si | - | Nombre de artefacto/tabla/entidad que sirve como fuente para campo |
| `nomcamposlayout_endpoint` | `varchar(150)` | Si | - | Endpoint para fuente de datos de campo relacionado |
| `nomcamposlayout_strproc_name` | `varchar(30)` | Si | - | Nombre de objeto Storedprocedure relacionado en la Base de Datos |
| `nomcamposlayout_trigger_name` | `varchar(30)` | Si | - | Nombre de objeto Trigger relacionado en la Base de Datos |
| `admsts_codigo` | `int` | No | - | - |
| `nomcamposlayout_type` | `smallint` | No | - | Tipo de dato del campo del archivo: [1 - Numérico, 2 - Caracter, 3 - Fecha] |
| `nomcamposlayout_format` | `smallint` | No | - | Indica si el campo sera utilizado en: [1 - Archivos Resumen y Detale, 2 - Solo Resumen, 3 - Solo Detalle] |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 9. Tabla: `hnomcamposlayoutmst_bk20240813`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcamposlayout_numid` | `smallint` | No | - | - |
| `nomcamposlayout_nombre` | `varchar(50)` | No | - | - |
| `nomcamposlayout_nombreusr` | `varchar(50)` | No | - | - |
| `nomcamposlayout_const` | `varchar(50)` | Si | - | - |
| `nomcamposlayout_keyfield` | `varchar(30)` | Si | - | - |
| `nomcamposlayout_fuente` | `varchar(30)` | Si | - | - |
| `nomcamposlayout_endpoint` | `varchar(150)` | Si | - | - |
| `nomcamposlayout_strproc_name` | `varchar(30)` | Si | - | - |
| `nomcamposlayout_trigger_name` | `varchar(30)` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `nomcamposlayout_type` | `smallint` | No | - | - |
| `nomcamposlayout_format` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 10. Tabla: `hnomcatactmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcatact_numid` | `int` | No | PK | id Configuracion categoria de actividade |
| `nomcatact_categoria` | `varchar(50)` | Si | - | Descripcion de la categoria |
| `nomcatact_preciohora` | `numeric(10,2)` | Si | - | Precio por hora de la actividad |
| `nomcatact_jorndiara` | `numeric(8,2)` | Si | - | Horas Jornada Diaria |
| `nomcatact_usarate` | `smallint` | Si | - | Indicador para saber si se utiliza o no el rate |
| `nomcatact_rate` | `numeric(8,2)` | Si | - | Valor del Rate |
| `admusr_numid` | `int` | Si | - | Usuario que crea el registro |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 11. Tabla: `hnomcategoriaisrdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcategoriaisr_numid` | `int` | No | PK | id del detalle de la escala impositiva del ISR |
| `nomisr_numid` | `int` | No | - | id del maestro de la escala impositiva del ISR |
| `nomcategoriaisr_categoria` | `smallint` | No | - | Categoria Salarial |
| `nomcategoriaisr_limiteinferior` | `numeric(18,2)` | No | - | Limite interior |
| `nomcategoriaisr_limitesuperior` | `numeric(18,2)` | No | - | Limite superior |
| `nomcategoriaisr_porctasa` | `numeric(5,2)` | No | - | Porciento Tasa |
| `nomcategoriaisr_excedente` | `numeric(18,2)` | No | - | Excedente |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomcategoriaisrdet.nomisr_numid` -> `hnomisrmst.nomisr_numid`

---

## 12. Tabla: `hnomcategoriaisrdetMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcategoriaisr_numid` | `float` | Si | - | - |
| `nomisr_numid` | `float` | Si | - | - |
| `nomcategoriaisr_categoria` | `float` | Si | - | - |
| `nomcategoriaisr_limiteinferior` | `float` | Si | - | - |
| `nomcategoriaisr_limitesuperior` | `float` | Si | - | - |
| `nomcategoriaisr_porctasa` | `float` | Si | - | - |
| `nomcategoriaisr_excedente` | `float` | Si | - | - |
| `admsts_codigo` | `float` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 13. Tabla: `hnomccomst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcco_numid` | `smallint` | No | PK | Id de registro unico |
| `admcompania_id` | `smallint` | No | - | Id Compañía. |
| `nomcon_numid` | `smallint` | No | - | Id concepto. |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomcco_ind_todo_int` | `smallint` | No | - | Indicador de Todos los intervalos de pago: 'S' = 1, 'N' = 0, Default = 1 |
| `nomcco_intervalo` | `smallint` | Si | - | Intervalo de pago |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomccomst.nomtno_numid` -> `hnomtnomst.nomtno_numid`
- `hnomccomst.nomcon_numid` -> `hnomconmst.nomcon_numid`

---

## 14. Tabla: `hnomconceptofijdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconceptofij_numid` | `int` | No | PK | nomconceptofij_numid |
| `admcompania_id` | `smallint` | No | - | admcompania_id |
| `empemp_numid` | `int` | No | - | empemp_numid |
| `nomtno_numid` | `smallint` | No | - | nomtno_numid |
| `nomdetalleper_numid` | `smallint` | No | - | nomdetalleper_numid |
| `nomcon_numid` | `smallint` | No | - | nomcon_numid |
| `nomconceptofij_origen` | `smallint` | No | - | nomconceptofij_origen |
| `nomconceptofij_cant_horas` | `numeric(5,2)` | Si | - | - |
| `nomconceptofij_tarifa_pago` | `numeric(12,2)` | Si | - | - |
| `nomconceptofij_valor` | `numeric(12,2)` | Si | - | nomconceptofij_valor |
| `nomconceptofij_porciento` | `numeric(5,2)` | Si | - | nomconceptofij_porciento |
| `nomconceptofij_ind_todo_int` | `smallint` | No | - | Indicador de Todos los intervalos de pago:  1 = "Sí"  0 = "No" , Default = 1 |
| `nomconceptofij_intervalo` | `smallint` | Si | - | Intervalo de pago |
| `nomconceptofij_Fecha_venc` | `datetime` | Si | - | Fecha de vencimiento |
| `nomconceptofij_descripcion` | `varchar(300)` | Si | - | nomconceptofij_descripcion |
| `nomconceptofij_referencia` | `varchar(10)` | Si | - | nomconceptofij_referencia |
| `nomconceptofij_fecha_reg` | `datetime` | Si | - | nomconceptofij_fecha_reg |
| `admusr_numid` | `int` | No | - | admusr_numid |
| `admsts_codigo` | `smallint` | No | - | admsts_codigo |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomconceptofijdet.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomconceptofijdet.nomcon_numid` -> `hnomconmst.nomcon_numid`
- `hnomconceptofijdet.nomtno_numid` -> `hnomtnomst.nomtno_numid`
- `hnomconceptofijdet.nomdetalleper_numid` -> `hnomdetalleperdet.nomdetalleper_numid`
- `hnomconceptofijdet.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 15. Tabla: `hnomconceptofijdet_bkMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconceptofij_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `empemp_numid` | `int` | No | - | - |
| `nomtno_numid` | `smallint` | No | - | - |
| `nomdetalleper_numid` | `smallint` | No | - | - |
| `nomcon_numid` | `smallint` | No | - | - |
| `nomconceptofij_origen` | `smallint` | No | - | - |
| `nomconceptofij_cant_horas` | `numeric(5,2)` | Si | - | - |
| `nomconceptofij_tarifa_pago` | `numeric(12,2)` | Si | - | - |
| `nomconceptofij_valor` | `numeric(12,2)` | Si | - | - |
| `nomconceptofij_porciento` | `numeric(5,2)` | Si | - | - |
| `nomconceptofij_ind_todo_int` | `smallint` | No | - | - |
| `nomconceptofij_intervalo` | `smallint` | Si | - | - |
| `nomconceptofij_Fecha_venc` | `datetime` | Si | - | - |
| `nomconceptofij_descripcion` | `varchar(300)` | Si | - | - |
| `nomconceptofij_referencia` | `varchar(10)` | Si | - | - |
| `nomconceptofij_fecha_reg` | `datetime` | Si | - | - |
| `admusr_numid` | `int` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 16. Tabla: `hnomconceptovardet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconceptovar_numid` | `int` | No | PK | Id Concepto Variable |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `empemp_numid` | `int` | No | - | Id de Empleado |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomdetalleper_numid` | `smallint` | No | - | Id del período de la nómina (eje: 1) |
| `nomcon_numid` | `smallint` | No | - | Id Concepto de Nomina |
| `nomconceptovar_origen` | `smallint` | No | - | Origen Concepto: 1 = Ingreso, -1 = Descuento |
| `nomconceptovar_cant_horas` | `numeric(5,2)` | Si | - | Cantidad de Horas |
| `nomcathor_id` | `int` | Si | - | Id Categoría Horas |
| `nomconceptovar_tarifa_pago` | `numeric(12,2)` | Si | - | Tarifa de Pago |
| `nomconceptovar_valor` | `numeric(12,2)` | Si | - | Valor Total |
| `nomconceptovar_porciento` | `numeric(5,2)` | Si | - | Porciento |
| `nomconceptovar_descripcion` | `varchar(300)` | Si | - | Descripcion |
| `nomconceptovar_referencia` | `varchar(10)` | Si | - | Referencia |
| `nomconceptovar_fecha_reg` | `datetime` | Si | - | Fecha de Registro |
| `admusr_numid` | `int` | No | - | Id Usuario |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomconceptovardet.nomdetalleper_numid` -> `hnomdetalleperdet.nomdetalleper_numid`
- `hnomconceptovardet.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomconceptovardet.nomcon_numid` -> `hnomconmst.nomcon_numid`
- `hnomconceptovardet.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomconceptovardet.nomtno_numid` -> `hnomtnomst.nomtno_numid`

---

## 17. Tabla: `hnomconceptovardet_bkMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconceptovar_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `empemp_numid` | `int` | No | - | - |
| `nomtno_numid` | `smallint` | No | - | - |
| `nomdetalleper_numid` | `smallint` | No | - | - |
| `nomcon_numid` | `smallint` | No | - | - |
| `nomconceptovar_origen` | `smallint` | No | - | - |
| `nomconceptovar_cant_horas` | `numeric(5,2)` | Si | - | - |
| `nomcathor_id` | `int` | Si | - | - |
| `nomconceptovar_tarifa_pago` | `numeric(12,2)` | Si | - | - |
| `nomconceptovar_valor` | `numeric(12,2)` | Si | - | - |
| `nomconceptovar_porciento` | `numeric(5,2)` | Si | - | - |
| `nomconceptovar_descripcion` | `varchar(300)` | Si | - | - |
| `nomconceptovar_referencia` | `varchar(10)` | Si | - | - |
| `nomconceptovar_fecha_reg` | `datetime` | Si | - | - |
| `admusr_numid` | `int` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 18. Tabla: `hnomconedym`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconedy_numid` | `int` | No | PK | Id registro. |
| `admcompania_id` | `smallint` | No | - | Id Compañía. |
| `nomcon_numid` | `smallint` | No | - | Código concepto SRH |
| `nomconedy_codigo` | `varchar(30)` | No | - | Código equivalente en Dynamic |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomconedym.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomconedym.nomcon_numid` -> `hnomconmst.nomcon_numid`

---

## 19. Tabla: `hnomconedym_Bk20250326`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconedy_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `nomcon_numid` | `smallint` | No | - | - |
| `nomconedy_codigo` | `varchar(20)` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 20. Tabla: `hnomconedym_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconedy_numid` | `int` | Si | - | - |
| `admcompania_id` | `smallint` | Si | - | - |
| `nomcon_numid` | `smallint` | Si | - | - |
| `nomconedy_codigo` | `varchar(20)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 21. Tabla: `hnomconfleymst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconfley_numid` | `int` | No | PK | Id de los parametros generales de Ley |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `nomconfley_jorndiaria` | `numeric(8,2)` | No | - | Horas Jornada Diaria |
| `nomconfley_jornsemanal` | `numeric(8,2)` | No | - | Horas Jornada Semanal |
| `nomconfley_cantsemmes` | `smallint` | No | - | Cantidad Semanas del Mes |
| `nomconfley_cantdiasmes` | `numeric(8,2)` | No | - | Dias Promedio del Mes |
| `nomconfley_mediodiasabado` | `smallint` | No | - | Trabaja medio dia sabado |
| `nomconfley_minafp` | `numeric(18,2)` | No | - | Salario Minimo Cotizable AFP |
| `nomconfley_topeafp` | `numeric(18,2)` | No | - | Salario Tope Cotizable AFP |
| `nomconfley_porcdescafp` | `numeric(5,2)` | No | - | Porciento Descuento AFP a Empleado |
| `nomconfley_porcaporteafp` | `numeric(5,2)` | No | - | Porciento Aporte AFP a Empleador |
| `nomconfley_minars` | `numeric(18,2)` | No | - | Salario Minimo Cotizable ARS |
| `nomconfley_topears` | `numeric(18,2)` | No | - | Salario Tope Cotizable ARS |
| `nomconfley_porcdescars` | `numeric(5,2)` | No | - | Porciento Descuento ARS a Empleado |
| `nomconfley_porcaportears` | `numeric(5,2)` | No | - | Porciento Descuento ARS a Empleador |
| `nomconfley_toperl` | `numeric(18,2)` | No | - | Salario Tope Cotizable Riesgo Laboral |
| `nomconfley_porcaporterl` | `numeric(5,2)` | No | - | Porciento Aporte ARS a Empleador |
| `nomconfley_porcaporteinfotep` | `numeric(5,2)` | No | - | Porciento Aporte INFOTEP Empleador |
| `nomconfley_porcaportepa` | `numeric(5,2)` | No | - | Porciento Aporte Poliza Accidente Empleador |
| `nomconfley_porcaportebonifinfotep` | `numeric(5,2)` | No | - | Porciento Aporte Sobre Bonificacion para INFOTEP |
| `nomconfley_maxdiasvac` | `smallint` | No | - | Cantidad Maximo Dias Disfrute Vacaciones |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 22. Tabla: `hnomconfleymstMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconfley_numid` | `float` | Si | - | - |
| `admcompania_id` | `float` | Si | - | - |
| `nomconfley_jorndiaria` | `float` | Si | - | - |
| `nomconfley_jornsemanal` | `float` | Si | - | - |
| `nomconfley_cantsemmes` | `float` | Si | - | - |
| `nomconfley_cantdiasmes` | `float` | Si | - | - |
| `nomconfley_mediodiasabado` | `float` | Si | - | - |
| `nomconfley_minafp` | `float` | Si | - | - |
| `nomconfley_topeafp` | `float` | Si | - | - |
| `nomconfley_porcdescafp` | `float` | Si | - | - |
| `nomconfley_porcaporteafp` | `float` | Si | - | - |
| `nomconfley_minars` | `float` | Si | - | - |
| `nomconfley_topears` | `float` | Si | - | - |
| `nomconfley_porcdescars` | `float` | Si | - | - |
| `nomconfley_porcaportears` | `float` | Si | - | - |
| `nomconfley_toperl` | `float` | Si | - | - |
| `nomconfley_porcaporterl` | `float` | Si | - | - |
| `nomconfley_porcaporteinfotep` | `float` | Si | - | - |
| `nomconfley_porcaportepa` | `float` | Si | - | - |
| `nomconfley_porcaportebonifinfotep` | `float` | Si | - | - |
| `nomconfley_maxdiasvac` | `float` | Si | - | - |
| `admsts_codigo` | `float` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 23. Tabla: `hnomconfleymst_bk2024_25`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomconfley_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `nomconfley_jorndiaria` | `numeric(8,2)` | No | - | - |
| `nomconfley_jornsemanal` | `numeric(8,2)` | No | - | - |
| `nomconfley_cantsemmes` | `smallint` | No | - | - |
| `nomconfley_cantdiasmes` | `numeric(8,2)` | No | - | - |
| `nomconfley_mediodiasabado` | `smallint` | No | - | - |
| `nomconfley_minafp` | `numeric(18,2)` | No | - | - |
| `nomconfley_topeafp` | `numeric(18,2)` | No | - | - |
| `nomconfley_porcdescafp` | `numeric(5,2)` | No | - | - |
| `nomconfley_porcaporteafp` | `numeric(5,2)` | No | - | - |
| `nomconfley_minars` | `numeric(18,2)` | No | - | - |
| `nomconfley_topears` | `numeric(18,2)` | No | - | - |
| `nomconfley_porcdescars` | `numeric(5,2)` | No | - | - |
| `nomconfley_porcaportears` | `numeric(5,2)` | No | - | - |
| `nomconfley_toperl` | `numeric(18,2)` | No | - | - |
| `nomconfley_porcaporterl` | `numeric(5,2)` | No | - | - |
| `nomconfley_porcaporteinfotep` | `numeric(5,2)` | No | - | - |
| `nomconfley_porcaportepa` | `numeric(5,2)` | No | - | - |
| `nomconfley_porcaportebonifinfotep` | `numeric(5,2)` | No | - | - |
| `nomconfley_maxdiasvac` | `smallint` | No | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 24. Tabla: `hnomconmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcon_numid` | `smallint` | No | PK | Id de concepto |
| `nomcon_codigo_alt` | `varchar(5)` | Si | - | Código alterno del concepto |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `nomcon_nombre` | `varchar(50)` | No | - | Nombre |
| `nomcon_origen` | `smallint` | No | - | Origen: 1 = Ingreso, -1 = Descuento |
| `nomcon_tipo_concepto` | `smallint` | No | - | Tipo Concepto (para uso interno) |
| `nomcon_clase` | `smallint` | No | - | Clase: Ingreso, Descuento, Descuentos Ley |
| `nomcon_tipo_ingreso` | `char(1)` | Si | - | Tipo Ingreso: "N" = Normal, "E" = Extra |
| `nomcon_porciento_hora` | `decimal(12,2)` | Si | - | Valor porcentual para pago de horas trabajadas |
| `nomcon_tipo_valor` | `smallint` | No | - | Tipo valor: 1 = Cantidad, 2 = Porcentual |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `nomcon_tipo_acumulcta` | `smallint` | Si | - | Tipo de acumulaci n cuenta contable: 1 = Acumula por Concepto, 2 = Acumula por Depto, 3 = Acumula por Empleado |
| `nomcon_cta_numero` | `int` | Si | - | Numero de cuenta (Mayormente cta d bito) |
| `nomcon_cta_afectar` | `int` | Si | - | Numero de cuenta (Mayormente cta cr dito) |
| `nomcon_cta_numero_ccosto` | `int` | Si | - | centro costos para cuenta contable (si es necesario) |
| `nomcon_cta_afectar_ccosto` | `int` | Si | - | centro costos para cuenta contable a afectar (si es necesario) |
| `nomcon_cta_numero_folder` | `int` | Si | - | Folder para cuenta contable (si es necesario) |
| `nomcon_cta_afectar_folder` | `int` | Si | - | Folder para cuenta contable a afectar (si es necesario) |
| `nomcon_idtrx_cxp` | `varchar(5)` | Si | - | Id de concepto usado para Cuentas por pagar ERP |
| `nomcon_idsuplidor_cxp` | `varchar(5)` | Si | - | Id de suplidor usado para Cuentas por pagar ERP |
| `nomcon_ind_desglosar` | `smallint` | Si | - | Indica si se desglosar  el detalle en CxP en ERP: 1 = "S ", 0 = "No" |
| `nomcon_idtrx_horaAltr` | `smallint` | Si | - | C digo de concepto alterno para pago de horas trabajadas por RATE |
| `nomcon_apl_AFP` | `smallint` | No | - | Indicador aplica para AFP: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_SFS` | `smallint` | No | - | Indicador aplica para SFS: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_ISR` | `smallint` | No | - | Indicador aplica para ISR: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_INFOTEP` | `smallint` | No | - | Indicador aplica para INFOTEP: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_rlaboral` | `smallint` | No | - | Indicador aplica para Riesgo Laboral: 1 = Aplica, 0 = No Aplica |
| `nomcon_incluir_autod` | `smallint` | No | - | Se incluye en Autodeterminaci n: 1 = "S ", 0 = "No" |
| `nomcon_descantes_isr` | `smallint` | No | - | Se descuenta antes del c lculo del ISR: 1 = "S ", 0 = "No" |
| `nomcon_apl_regal` | `smallint` | No | - | Indicador aplica para c lcular regal a: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_bonif` | `smallint` | No | - | Indicador aplica para c lcular bonificaci n: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_prestalab` | `smallint` | No | - | Indicador aplica para c lcular prestaciones laborales: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_provision` | `smallint` | No | - | Indicador aplica para c lcular provisiones: 1 = Aplica, 0 = No Aplica |
| `nomcon_ind_acumula` | `smallint` | No | - | Indicador se acumula: 1 = "S ", 0 = "No" |
| `nomcon_ind_devolucion` | `smallint` | Si | - | Indicador se usa para devolver ISR: 1 = "S ", 0 = "No" |
| `nomcon_ind_comisionERP` | `smallint` | Si | - | Indicador se usa como comisi n en ERP: 1 = "S ", 0 = "No" |
| `nomcon_ind_relacion_EBank` | `smallint` | Si | - | Indicador se usa como relaci n con EasyBank: 1 = "S ", 0 = "No" |
| `nomcon_cuentacrdym` | `varchar(30)` | Si | - | - |
| `nomcon_ind_ExtraNorm` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 25. Tabla: `hnomconmst2`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcon_numid` | `smallint` | No | PK | Id de concepto |
| `nomcon_codigo_alt` | `varchar(5)` | Si | - | Código alterno del concepto |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `nomcon_nombre` | `varchar(50)` | No | - | Nombre |
| `nomcon_origen` | `smallint` | No | - | Origen: 1 = Ingreso, -1 = Descuento |
| `nomcon_tipo_concepto` | `smallint` | No | - | Tipo Concepto (para uso interno) |
| `nomcon_clase` | `smallint` | No | - | Clase: Ingreso, Descuento, Descuentos Ley |
| `nomcon_tipo_ingreso` | `char(1)` | Si | - | Tipo Ingreso: "N" = Normal, "E" = Extra |
| `nomcon_porciento_hora` | `decimal(12,2)` | Si | - | Valor porcentual para pago de horas trabajadas |
| `nomcon_tipo_valor` | `smallint` | No | - | Tipo valor: 1 = Cantidad, 2 = Porcentual |
| `nomcon_tipo_acumulcta` | `smallint` | Si | - | Tipo de acumulación cuenta contable: 1 = Acumula por Concepto, 2 = Acumula por Depto, 3 = Acumula por Empleado |
| `nomcon_cta_numero` | `varchar(30)` | Si | - | Numero de cuenta (Mayormente cta débito) |
| `nomcon_cta_afectar` | `varchar(30)` | Si | - | Numero de cuenta (Mayormente cta crédito) |
| `nomcon_cta_numero_ccosto` | `int` | Si | - | centro costos para cuenta contable (si es necesario) |
| `nomcon_cta_afectar_ccosto` | `int` | Si | - | centro costos para cuenta contable a afectar (si es necesario) |
| `nomcon_cta_numero_folder` | `int` | Si | - | Folder para cuenta contable (si es necesario) |
| `nomcon_cta_afectar_folder` | `int` | Si | - | Folder para cuenta contable a afectar (si es necesario) |
| `nomcon_idtrx_cxp` | `varchar(5)` | Si | - | Id de concepto usado para Cuentas por pagar ERP |
| `nomcon_idsuplidor_cxp` | `varchar(5)` | Si | - | Id de suplidor usado para Cuentas por pagar ERP |
| `nomcon_ind_desglosar` | `smallint` | Si | - | Indica si se desglosará el detalle en CxP en ERP: 1 = "Sí", 0 = "No" |
| `nomcon_idtrx_horaAltr` | `smallint` | Si | - | Código de concepto alterno para pago de horas trabajadas por RATE |
| `nomcon_apl_AFP` | `smallint` | No | - | Indicador aplica para AFP: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_SFS` | `smallint` | No | - | Indicador aplica para SFS: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_ISR` | `smallint` | No | - | Indicador aplica para ISR: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_INFOTEP` | `smallint` | No | - | Indicador aplica para INFOTEP: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_rlaboral` | `smallint` | No | - | Indicador aplica para Riesgo Laboral: 1 = Aplica, 0 = No Aplica |
| `nomcon_incluir_autod` | `smallint` | No | - | Se incluye en Autodeterminación: 1 = "Sí", 0 = "No" |
| `nomcon_descantes_isr` | `smallint` | No | - | Se descuenta antes del cálculo del ISR: 1 = "Sí", 0 = "No" |
| `nomcon_apl_regal` | `smallint` | No | - | Indicador aplica para cálcular regalía: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_bonif` | `smallint` | No | - | Indicador aplica para cálcular bonificación: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_prestalab` | `smallint` | No | - | Indicador aplica para cálcular prestaciones laborales: 1 = Aplica, 0 = No Aplica |
| `nomcon_apl_provision` | `smallint` | No | - | Indicador aplica para cálcular provisiones: 1 = Aplica, 0 = No Aplica |
| `nomcon_ind_acumula` | `smallint` | No | - | Indicador se acumula: 1 = "Sí", 0 = "No" |
| `nomcon_ind_devolucion` | `smallint` | No | - | Indicador se usa para devolver ISR: 1 = "Sí", 0 = "No" |
| `nomcon_ind_comisionERP` | `smallint` | No | - | Indicador se usa como comisión en ERP: 1 = "Sí", 0 = "No" |
| `nomcon_ind_relacion_EBank` | `smallint` | No | - | Indicador se usa como relación con EasyBank: 1 = "Sí", 0 = "No" |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomconmst2.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 26. Tabla: `hnomconmst_bakup`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcon_numid` | `smallint` | No | - | - |
| `nomcon_codigo_alt` | `varchar(5)` | Si | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `nomcon_nombre` | `varchar(50)` | No | - | - |
| `nomcon_origen` | `smallint` | No | - | - |
| `nomcon_tipo_concepto` | `smallint` | No | - | - |
| `nomcon_clase` | `smallint` | No | - | - |
| `nomcon_tipo_ingreso` | `char(1)` | No | - | - |
| `nomcon_porciento_hora` | `decimal(12,2)` | Si | - | - |
| `nomcon_tipo_valor` | `smallint` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `nomcon_tipo_acumulcta` | `smallint` | Si | - | - |
| `nomcon_cta_numero` | `int` | Si | - | - |
| `nomcon_cta_afectar` | `int` | Si | - | - |
| `nomcon_cta_numero_ccosto` | `int` | Si | - | - |
| `nomcon_cta_afectar_ccosto` | `int` | Si | - | - |
| `nomcon_cta_numero_folder` | `int` | Si | - | - |
| `nomcon_cta_afectar_folder` | `int` | Si | - | - |
| `nomcon_idtrx_cxp` | `varchar(5)` | Si | - | - |
| `nomcon_idsuplidor_cxp` | `varchar(5)` | Si | - | - |
| `nomcon_ind_desglosar` | `smallint` | Si | - | - |
| `nomcon_idtrx_horaAltr` | `smallint` | Si | - | - |
| `nomcon_apl_AFP` | `smallint` | No | - | - |
| `nomcon_apl_SFS` | `smallint` | No | - | - |
| `nomcon_apl_ISR` | `smallint` | No | - | - |
| `nomcon_apl_INFOTEP` | `smallint` | No | - | - |
| `nomcon_apl_rlaboral` | `smallint` | No | - | - |
| `nomcon_incluir_autod` | `smallint` | No | - | - |
| `nomcon_descantes_isr` | `smallint` | No | - | - |
| `nomcon_apl_regal` | `smallint` | No | - | - |
| `nomcon_apl_bonif` | `smallint` | No | - | - |
| `nomcon_apl_prestalab` | `smallint` | No | - | - |
| `nomcon_apl_provision` | `smallint` | No | - | - |
| `nomcon_ind_acumula` | `smallint` | No | - | - |
| `nomcon_ind_devolucion` | `smallint` | No | - | - |
| `nomcon_ind_comisionERP` | `smallint` | No | - | - |
| `nomcon_ind_relacion_EBank` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 27. Tabla: `hnomctacdym`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomctacdy_numid` | `int` | No | PK | Id registro. |
| `admcompania_id` | `smallint` | No | - | Id Compañía. |
| `nomctacdy_numcuenta` | `varchar(30)` | No | - | Cuenta contable |
| `nomctacdy_nombre` | `varchar(100)` | Si | - | Nombre Cuenta contable |
| `admsts_codigo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomctacdym.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 28. Tabla: `hnomctacdym_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomctacdy_numid` | `int` | Si | - | - |
| `admcompania_id` | `smallint` | Si | - | - |
| `nomctacdy_numcuenta` | `varchar(30)` | Si | - | - |
| `nomctacdy_nombre` | `varchar(100)` | Si | - | - |
| `admsts_codigo` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 29. Tabla: `hnomcuentacontablemst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcuentacontable_numid` | `smallint` | No | PK | Id Configuracion cuenta contable |
| `admcompania_id` | `smallint` | No | - | - |
| `nomcuentacontable_nocuenta` | `varchar(20)` | No | - | Numero de cuenta contable |
| `nomcuentacontable_descripcion` | `varchar(50)` | No | - | Descripcion Cuenta Contable |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 30. Tabla: `hnomcuentascontxdepdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomcuentascontxdep_numid` | `int` | No | PK | Id Configuracion cuenta contable x departamento |
| `admcompania_id` | `smallint` | No | - | Id Compañia |
| `nomcon_numid` | `smallint` | No | - | Id Concepto de Nomina |
| `nomcuentacontable_numid` | `smallint` | No | - | Id Configuracion cuenta contable debito |
| `nomfolderscont_numid` | `smallint` | Si | - | Id Configuración Folders Contable |
| `admsucursal_id` | `smallint` | No | - | id de sucursal |
| `admdep_id` | `smallint` | No | - | Id Departamento |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomcuentascontxdepdet.nomcuentacontable_numid` -> `hnomcuentacontablemst.nomcuentacontable_numid`
- `hnomcuentascontxdepdet.nomcon_numid` -> `hnomconmst.nomcon_numid`
- `hnomcuentascontxdepdet.nomfolderscont_numid` -> `hnomfolderscontmst.nomfolderscont_numid`
- `hnomcuentascontxdepdet.admdep_id` -> `hadmdepmst.admdep_id`

---

## 31. Tabla: `hnomdetalleperdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomdetalleper_numid` | `smallint` | No | PK | Id secuencial detalle |
| `nomperiodosnom_numid` | `smallint` | No | - | Id Maestro período nómina por año |
| `nomdetalleper_ano` | `smallint` | No | - | Año de período |
| `nomdetalleper_codigo` | `varchar(10)` | No | - | Código del período |
| `nomdetalleper_fecha_ini` | `date` | No | - | Fecha inicio periodos |
| `nomdetalleper_fecha_fin` | `date` | No | - | Fecha fin periodos |
| `nomdetalleper_intervalo` | `smallint` | No | - | Número de intervalo correspondiente |
| `nomdetalleper_descripcion` | `varchar(50)` | Si | - | Descripción |
| `nomdetalleper_fecha_gen` | `datetime` | Si | - | Ultima fecha de generación |
| `nomdetalleper_fecha_cie` | `datetime` | Si | - | Fecha de cierre de período |
| `nomdetalleper_cantidad` | `smallint` | Si | - | Cantidad de empleados que participan/participaron |
| `admmon_numid` | `smallint` | Si | - | Id de moneda usada |
| `nomdetalleper_monto` | `decimal(12,2)` | Si | - | Monto del período/Monto pagado |
| `admusr_numid` | `int` | No | - | Id Usuario del registro |
| `admusr_numid_gen` | `int` | Si | - | Id Usuario ultima generación de nómina |
| `admusr_numid_cie` | `int` | Si | - | Id Usuario cerró período de nómina |
| `nomdetalleper_stage` | `int` | Si | - | Etapa del proceso de nómina relacionado al período: [En Proceso, Elaborado, Aprobado, Auditado, Pagado, Cerrado] |
| `nomdetalleper_estado` | `smallint` | No | - | Estado del período: 1-Activo, 2-Generado, 3-Cerrado. DEFAULT = 1 |
| `admsts_codigo` | `smallint` | No | - | Estado del proceso: 1-Iniciado, 2-Pendiente Aut., 3-Autorizado, 4-Rechazado. DEFAULT = 1 |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomdetalleperdet.nomperiodosnom_numid` -> `hnomperiodosnommst.nomperiodosnom_numid`

---

## 32. Tabla: `hnomdetestrfdyd`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomdetestrfdy_numid` | `int` | No | PK | - |
| `nomestrfdy_numid` | `int` | No | - | - |
| `nomdetestrfdy_ind_cia` | `smallint` | No | - | - |
| `nomdetestrfdy_ind_emp` | `smallint` | No | - | - |
| `nomdetestrfdy_ind_depto` | `smallint` | No | - | - |
| `nomdetestrfdy_ind_divn` | `smallint` | No | - | - |
| `nomdetestrfdy_ind_lab` | `smallint` | No | - | - |
| `nomdetestrfdy_ind_admp` | `smallint` | No | - | - |
| `nomdetestrfdy_ind_linc` | `smallint` | No | - | - |
| `nomdetestrfdy_ind_prest` | `smallint` | No | - | - |
| `nomdetestrfdy_ind_reten` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomdetestrfdyd.nomestrfdy_numid` -> `hnomestrfdym.nomestrfdy_numid`

---

## 33. Tabla: `hnomdetestrfdyd_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomdetestrfdy_numid` | `float` | Si | - | - |
| `nomestrfdy_numid` | `float` | Si | - | - |
| `nomdetestrfdy_ind_cia` | `float` | Si | - | - |
| `nomdetestrfdy_ind_emp` | `float` | Si | - | - |
| `nomdetestrfdy_ind_depto` | `float` | Si | - | - |
| `nomdetestrfdy_ind_divn` | `float` | Si | - | - |
| `nomdetestrfdy_ind_lab` | `float` | Si | - | - |
| `nomdetestrfdy_ind_admp` | `float` | Si | - | - |
| `nomdetestrfdy_ind_linc` | `float` | Si | - | - |
| `nomdetestrfdy_ind_prest` | `float` | Si | - | - |
| `nomdetestrfdy_ind_reten` | `float` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 34. Tabla: `hnomdimenctacd`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomdimenctac_numid` | `int` | No | PK | Id registro. |
| `admcompania_id` | `smallint` | No | - | Id Compañía. |
| `nomcon_numid` | `smallint` | No | - | Código de concepto de nómina |
| `nomdimenctac_numcuenta` | `varchar(30)` | No | - | Cuenta contable Relacionada. |
| `nomdimenctac_cia_rel` | `varchar(20)` | Si | - | Dimension de Empresa Relacionada. |
| `admdep_id` | `smallint` | No | - | Dimension del departamento Relacionado. |
| `nomdimenctac_divi` | `varchar(20)` | Si | - | Dimension de división Relacionada. |
| `nomdimenctac_lab` | `varchar(20)` | Si | - | Dimension del laboratorio Relacionado. |
| `nomdimenctac_admport` | `varchar(20)` | Si | - | Dimension de adm portuaria Relacionada. |
| `nomdimenctac_lineacr` | `varchar(20)` | Si | - | Dimension de línea crédito Relacionada. |
| `nomdimenctac_prestban` | `varchar(20)` | Si | - | Dimension de préstamos bancario. |
| `nomdimenctac_retencben` | `varchar(20)` | Si | - | Dimension de retenciones y beneficios. |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomdimenctacd.admdep_id` -> `hadmdepmst.admdep_id`
- `hnomdimenctacd.nomcon_numid` -> `hnomconmst.nomcon_numid`
- `hnomdimenctacd.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 35. Tabla: `hnomdimenctacd_Bk20250326`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomdimenctac_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `nomcon_numid` | `smallint` | No | - | - |
| `nomdimenctac_numcuenta` | `varchar(30)` | No | - | - |
| `nomdimenctac_cia_rel` | `varchar(20)` | Si | - | - |
| `admdep_id` | `smallint` | No | - | - |
| `nomdimenctac_divi` | `varchar(20)` | Si | - | - |
| `nomdimenctac_lab` | `varchar(20)` | Si | - | - |
| `nomdimenctac_admport` | `varchar(20)` | Si | - | - |
| `nomdimenctac_lineacr` | `varchar(20)` | Si | - | - |
| `nomdimenctac_prestban` | `varchar(20)` | Si | - | - |
| `nomdimenctac_retencben` | `varchar(20)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 36. Tabla: `hnomdimenctacd_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomdimenctac_numid` | `int` | Si | - | - |
| `admcompania_id` | `smallint` | Si | - | - |
| `nomcon_numid` | `smallint` | Si | - | - |
| `nomdimenctac_numcuenta` | `varchar(30)` | Si | - | - |
| `nomdimenctac_cia_rel` | `varchar(20)` | Si | - | - |
| `admdep_id` | `smallint` | Si | - | - |
| `nomdimenctac_divi` | `varchar(20)` | Si | - | - |
| `nomdimenctac_lab` | `varchar(20)` | Si | - | - |
| `nomdimenctac_admport` | `varchar(20)` | Si | - | - |
| `nomdimenctac_lineacr` | `varchar(20)` | Si | - | - |
| `nomdimenctac_prestban` | `varchar(20)` | Si | - | - |
| `nomdimenctac_retencben` | `varchar(20)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 37. Tabla: `hnomdnomdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomdnom_numid` | `int` | No | PK | Id secuencial detalle de nómina |
| `admcompania_id` | `smallint` | No | - | Id de compañía del momento |
| `empemp_cia_retencion` | `smallint` | No | - | id Compañía de retención para isr del momento |
| `admsucursal_id` | `smallint` | No | - | Id de sucursal del momento |
| `admdep_id` | `smallint` | No | - | Id Departamento del momento |
| `empemp_numid` | `int` | No | - | Id empleado |
| `admpos_id` | `smallint` | No | - | id de puesto del momento |
| `empemp_salario` | `decimal(12,2)` | No | - | Salario base del momento |
| `empemp_saldofavor_isr` | `decimal(12,2)` | Si | - | Saldo a favor del ISR del momento |
| `empemp_estado_empleado` | `smallint` | No | - | Estado del Empleado:  1 = Activo, 2 = Inactivo, 3 = Suspensión, 4 = Vacaciones, 5 = Licencia |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomperiodosnom_numid` | `smallint` | No | - | Id maestro del periodos por año para el tipo de nómina (eje: 1) |
| `nomdetalleper_numid` | `smallint` | No | - | Id del período de la nómina (eje: 1) |
| `nomdetalleper_codigo` | `varchar(10)` | No | - | Código del período (eje: 202300102) |
| `nomdetalleper_fecha_fin` | `date` | No | - | Fecha fin/tope periodo (eje: fecha tope de la semana, quincena, mes, año) |
| `nomcon_numid` | `smallint` | No | - | Id concepto. |
| `nomdnom_origen` | `smallint` | No | - | Origen del concepto/valor. 1 = Ingreso, -1 = Descuento. |
| `nomdnom_ind_afp` | `smallint` | Si | - | Indicador si el concepto aplica para descuento de AFP : 1 = "Sí"  0 = "No" del momento |
| `nomdnom_ind_sfs` | `smallint` | Si | - | Indicador si el concepto aplica para descuento de SFS : 1 = "Sí" 0 = "No" del momento |
| `nomdnom_ind_isr` | `smallint` | Si | - | Indicador si el concepto aplica para descuento de ISR : 1 = "Sí", 0 = "No" del momento |
| `nomdnom_cant_horas` | `numeric(5,2)` | Si | - | Cantidad de horas |
| `nomcathor_id` | `int` | Si | - | Categoria de horas       falta la tabla reference ???? |
| `nomdnom_tarifa_pago` | `decimal(12,2)` | Si | - | Tarifa usada para las horas pagadas |
| `nomdnom_valor` | `decimal(12,2)` | No | - | Valor/Monto del concepto para el detalle. |
| `nomdnom_porciento` | `numeric(5,2)` | Si | - | Valor porcentual del concepto. |
| `nomdnom_referencia` | `varchar(10)` | Si | - | Referencia |
| `nomdnom_idtrx` | `int` | Si | - | Id de concepto de nómina como transacción relacionada |
| `nomdnom_tipotrx` | `smallint` | Si | - | Tipo de transacción transacción relacionada (1= variable, 2 = Fija, 3 = Recurrente, 4 = Ley) |
| `nomdnom_balance` | `decimal(12,2)` | Si | - | Balance actualizado del momento, cuando la transacción es Recurrente (eje: Préstamo) |
| `nomdnom_escuota_esp` | `smallint` | Si | - | Indica si el valor es un monto especial, relacionado a trx. recurrente: 1-Sí, 0-No |
| `nomdnom_fecha_reg` | `datetime` | Si | - | Fecha de registro |
| `admusr_numid` | `int` | No | - | Id Usuario |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomdnomdet.admdep_id` -> `hadmdepmst.admdep_id`
- `hnomdnomdet.nomdetalleper_numid` -> `hnomdetalleperdet.nomdetalleper_numid`
- `hnomdnomdet.nomtno_numid` -> `hnomtnomst.nomtno_numid`
- `hnomdnomdet.admpos_id` -> `hadmposmst.admpos_id`
- `hnomdnomdet.admsucursal_id` -> `xadmsucursalmst.admsucursal_id`
- `hnomdnomdet.nomcon_numid` -> `hnomconmst.nomcon_numid`
- `hnomdnomdet.nomperiodosnom_numid` -> `hnomperiodosnommst.nomperiodosnom_numid`
- `hnomdnomdet.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomdnomdet.empemp_numid` -> `hempempmst.empemp_numid`

---

## 38. Tabla: `hnomdpagodet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomdpago_numid` | `int` | No | PK | Id secuencial detalle pago nómina |
| `admcompania_id` | `smallint` | No | - | Id de compañía del momento |
| `admsucursal_id` | `smallint` | No | - | Id de sucursal del momento |
| `admdep_id` | `smallint` | No | - | Id Departamento del momento |
| `empemp_numid` | `int` | No | - | Id empleado |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomdetalleper_numid` | `smallint` | No | - | Id del período de la nómina (eje: 1) |
| `nomtno_forma_pago` | `smallint` | No | - | Tipo/Forma de pago: 1 = Transferencia, 2 = Cheque, 3 = Efectivo |
| `nomdpago_num_chk` | `int` | Si | - | Número de cheque |
| `nomdpago_tipo_cuenta` | `smallint` | Si | - | Tipo de cuenta. 1 = Ahorro, 2 = Corriente |
| `nomdpago_num_cuenta` | `varchar(30)` | Si | - | Número de cuenta |
| `nomban_numid` | `smallint` | Si | - | Id de Banco relacionado |
| `nomdpago_valor` | `decimal(12,2)` | No | - | Valor/Monto pago de nómina al empleado |
| `nomdpago_referencia` | `varchar(10)` | Si | - | Referencia |
| `nomdpago_fecha_reg` | `datetime` | Si | - | Fecha de registro |
| `admusr_numid` | `int` | No | - | Id Usuario |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomdpagodet.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomdpagodet.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomdpagodet.nomdetalleper_numid` -> `hnomdetalleperdet.nomdetalleper_numid`
- `hnomdpagodet.admdep_id` -> `hadmdepmst.admdep_id`
- `hnomdpagodet.admsucursal_id` -> `xadmsucursalmst.admsucursal_id`
- `hnomdpagodet.nomtno_numid` -> `hnomtnomst.nomtno_numid`

---

## 39. Tabla: `hnomestrfdym`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomestrfdy_numid` | `int` | No | PK | - |
| `admcompania_id` | `smallint` | No | - | - |
| `nomestrfdy_nombre` | `varchar(50)` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomestrfdym.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 40. Tabla: `hnomestrfdym_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomestrfdy_numid` | `float` | Si | - | - |
| `admcompania_id` | `float` | Si | - | - |
| `nomestrfdy_nombre` | `nvarchar(510)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 41. Tabla: `hnomfolderscontmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomfolderscont_numid` | `smallint` | No | PK | Id Configuración Folders Contable |
| `admcompania_id` | `smallint` | No | - | Id Compañia |
| `nomfolderscont_nombre` | `varchar(50)` | No | - | Nombre del folder |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 42. Tabla: `hnomincigeddet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomincied_numid` | `int` | No | PK | Id secuencial detalle incidencia |
| `admcompania_id` | `smallint` | No | - | Id de compañía del momento |
| `empemp_numid` | `int` | No | - | Id empleado |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomdetalleper_numid` | `smallint` | No | - | Id del período de la nómina (eje: 1) |
| `admincidencia_numid` | `smallint` | No | - | Id de la incidencia o situacion, Ej: 1 = Info., 2 = Warning, 3 = Error |
| `nomincied_fecha_reg` | `datetime` | Si | - | Fecha de registro |
| `admusr_numid` | `int` | No | - | Id Usuario |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomincigeddet.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomincigeddet.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomincigeddet.admincidencia_numid` -> `hadmincidenciamst.admincidencia_numid`
- `hnomincigeddet.nomtno_numid` -> `hnomtnomst.nomtno_numid`
- `hnomincigeddet.nomdetalleper_numid` -> `hnomdetalleperdet.nomdetalleper_numid`

---

## 43. Tabla: `hnomincignndet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomincign_numid` | `int` | No | PK | Id secuencial detalle incidencia |
| `admcompania_id` | `smallint` | No | - | Id de compañía del momento |
| `admsucursal_id` | `smallint` | No | - | Id de sucursal del momento |
| `empemp_numid` | `int` | No | - | Id empleado |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomdetalleper_numid` | `smallint` | No | - | Id del período de la nómina (eje: 1) |
| `nomincign_incidenciaid` | `smallint` | No | - | Id de la incidencia o situacion, Ej: 1 = Empleado en cero/negativo, 2 = Empleado no tiene un Sueldo Base |
| `nomincign_fecha_reg` | `datetime` | Si | - | Fecha de registro |
| `admusr_numid` | `int` | No | - | Id Usuario |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomincignndet.admsucursal_id` -> `xadmsucursalmst.admsucursal_id`
- `hnomincignndet.nomdetalleper_numid` -> `hnomdetalleperdet.nomdetalleper_numid`
- `hnomincignndet.nomtno_numid` -> `hnomtnomst.nomtno_numid`
- `hnomincignndet.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomincignndet.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 44. Tabla: `hnomisrmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomisr_numid` | `int` | No | PK | id del maestro de la escala impositiva del ISR |
| `nomcon_numid` | `smallint` | No | - | Id concepto. |
| `nomisr_descripcion` | `varchar(50)` | No | - | Descripcion de la Escala impositiva del ISR |
| `nomisr_fecha` | `date` | No | - | Fecha de inicio de la Escala impositiva del ISR |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomisrmst.nomcon_numid` -> `hnomconmst.nomcon_numid`

---

## 45. Tabla: `hnommontoproextmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nommontoproext_numid` | `int` | No | PK | Id detalle Monto extraordinario |
| `admcompania_id` | `smallint` | No | - | Id Compania |
| `empemp_numid` | `int` | No | - | Id de Empleado |
| `nommontoproext_ano` | `smallint` | No | - | Año del periodo |
| `nommontoproext_tipo` | `smallint` | No | - | Tipo de Monto: 1 = Regalía, 2 = Bonificación, 3 = Regalia Extra, 4 = Bonificacion Extra, 5 = Diferencial de Vacaciones, 6 = Diferencial de Vacaciones Extra |
| `nommontoproext_origen` | `smallint` | No | - | Origen: 1 = Ingreso, -1 = Descuento |
| `nommontoproext_antigano` | `smallint` | Si | - | Cantidad de Año.Antiguedad |
| `nommontoproext_antigmes` | `smallint` | Si | - | Cantidad de Meses.Antiguedad |
| `nommontoproext_antigdia` | `smallint` | Si | - | Cantidad de días.Antiguedad |
| `nommontoproext_acumulado` | `decimal(12,2)` | Si | - | Acumulado |
| `nommontoproext_prommen` | `decimal(12,2)` | Si | - | Promedio Mensual |
| `nommontoproext_promdia` | `decimal(12,2)` | Si | - | Promedio díario |
| `nommontoproext_base_cal` | `smallint` | Si | - | Base del calculo: 1 = Salario Promedio, 2 = Ultimo Salario |
| `nommontoproext_monto` | `decimal(12,2)` | No | - | Monto |
| `nommontoproext_factordist` | `float` | No | - | Factor multiplicador para distribución de la utilidad para bonif. |
| `nomcon_tipo_concepto` | `smallint` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | Estado: 1-En Proceso, 2-Usado. Default=1 |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnommontoproextmst.empemp_numid` -> `hempempmst.empemp_numid`
- `hnommontoproextmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 46. Tabla: `hnomnedadyd`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomnedady_linea` | `int` | No | PK | Id línea/detalle. |
| `nomnedady_numid` | `int` | No | - | Id registro Maestro/Cabecera. |
| `nomnedady_fecha` | `datetime` | No | - | Fecha |
| `nomnedady_tipocta` | `varchar(20)` | No | - | Tipo cuenta según Dynamic. |
| `nomnedady_ctadimen` | `varchar(200)` | No | - | Número cuenta y/o Dimensión según Dynamic. |
| `nomnedady_descripcion` | `varchar(100)` | Si | - | Descripción. |
| `nomnedady_valor` | `decimal(12,2)` | No | - | Valor de la línea/detalle |
| `nomnedady_moneda` | `varchar(5)` | No | - | Moneda según Dynamic |
| `nomnedady_origen` | `smallint` | No | - | Origen: 1 Debito, -1 Crédito (SRH). |
| `nomnedady_numdiariody` | `varchar(20)` | Si | - | Número de diario según Dynamic |
| `nomcon_numid` | `smallint` | Si | - | - |
| `nomnedady_esviatico` | `char(1)` | Si | - | - |
| `nomnedady_valorneto` | `decimal(12,2)` | Si | - | - |
| `nomnedady_valorbruto` | `decimal(12,2)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomnedadyd.nomnedady_numid` -> `hnomnedadym.nomnedady_numid`

---

## 47. Tabla: `hnomnedadym`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomnedady_numid` | `int` | No | PK | Id registro. |
| `admcompania_id` | `smallint` | No | - | Id Compañía SRH. |
| `empemp_numid` | `int` | No | - | Id empleado SRH. |
| `empemp_numiddy` | `varchar(30)` | Si | - | Código empleado en dynamic (conocido como...) |
| `nomtno_numid` | `smallint` | No | - | Tipo de nómina |
| `nomdetalleper_codigo` | `varchar(10)` | No | - | Período de nómina |
| `nomnedady_ciady` | `varchar(20)` | No | - | Id Compañía en Dynamic. |
| `nomnedady_nombre` | `varchar(100)` | Si | - | Nombre. |
| `nomnedady_descripcion` | `varchar(100)` | Si | - | Descripción. |
| `nomnedady_numdiariody` | `varchar(20)` | Si | - | Número de diario según Dynamic |
| `nomnedady_tipo` | `smallint` | No | - | Tipo : 1 = Diario, 2 = Pago |
| `nomnedady_tiene_exc` | `char(1)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomnedadym.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomnedadym.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 48. Tabla: `hnomnedcdyd`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomnedcdy_linea` | `int` | No | PK | Id línea/detalle. |
| `nomnedcdy_numid` | `int` | No | - | Id registro Maestro/Cabecera. |
| `nomnedcdy_fecha` | `datetime` | No | - | Fecha |
| `nomnedcdy_tipocta` | `varchar(20)` | No | - | Tipo cuenta según Dynamic. |
| `nomnedcdy_ctadimen` | `varchar(200)` | No | - | Número cuenta y/o Dimensión según Dynamic. |
| `nomnedcdy_descripcion` | `varchar(100)` | Si | - | Descripción. |
| `nomnedcdy_valor` | `decimal(12,2)` | No | - | Valor de la línea/detalle |
| `nomnedcdy_moneda` | `varchar(5)` | No | - | Moneda según Dynamic |
| `nomnedcdy_origen` | `smallint` | No | - | Origen: 1 Debito, -1 Crédito (SRH). |
| `nomnedcdy_numdiariody` | `varchar(20)` | Si | - | Número de diario según Dynamic |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomnedcdyd.nomnedcdy_numid` -> `hnomnedcdym.nomnedcdy_numid`

---

## 49. Tabla: `hnomnedcdym`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomnedcdy_numid` | `int` | No | PK | Id registro. |
| `admcompania_id` | `smallint` | No | - | Id Compañía SRH. |
| `empemp_numid` | `int` | No | - | Id empleado SRH. |
| `empemp_numiddy` | `varchar(30)` | Si | - | Código empleado en dynamic (conocido como...) |
| `nomtno_numid` | `smallint` | No | - | Tipo de nómina |
| `nomdetalleper_codigo` | `varchar(10)` | No | - | Período de nómina |
| `nomnedcdy_ciady` | `varchar(20)` | No | - | Id Compañía en Dynamic. |
| `nomnedcdy_nombre` | `varchar(100)` | Si | - | Nombre. |
| `nomnedcdy_descripcion` | `varchar(100)` | Si | - | Descripción. |
| `nomnedcdy_numdiariody` | `varchar(20)` | Si | - | Número de diario según Dynamic |
| `nomnedcdy_tipo` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomnedcdym.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 50. Tabla: `hnomneddyd`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomneddy_linea` | `int` | No | PK | Id línea/detalle. |
| `nomneddy_numid` | `int` | No | - | Id registro Maestro/Cabecera. |
| `nomneddy_fecha` | `datetime` | No | - | Fecha |
| `nomneddy_tipocta` | `varchar(20)` | No | - | Tipo cuenta según Dynamic. |
| `nomneddy_ctadimen` | `varchar(200)` | No | - | Número cuenta y/o Dimensión según Dynamic. |
| `nomneddy_descripcion` | `varchar(100)` | Si | - | Descripción. |
| `nomneddy_valor` | `decimal(12,2)` | No | - | Valor de la línea/detalle |
| `nomneddy_moneda` | `varchar(5)` | No | - | Moneda según Dynamic |
| `nomneddy_origen` | `smallint` | No | - | Origen: 1 Debito, -1 Crédito (SRH). |
| `nomneddy_numdiariody` | `varchar(20)` | Si | - | Número de diario según Dynamic |
| `empemp_numid` | `int` | No | - | Código empleado de srh |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomneddyd.nomneddy_numid` -> `hnomneddym.nomneddy_numid`

---

## 51. Tabla: `hnomneddym`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomneddy_numid` | `int` | No | PK | Id registro. |
| `admcompania_id` | `smallint` | No | - | Id Compañía SRH. |
| `nomtno_numid` | `smallint` | No | - | Tipo de nómina |
| `nomdetalleper_codigo` | `varchar(10)` | No | - | Período de nómina |
| `nomneddy_ciady` | `varchar(20)` | No | - | Id Compañía en Dynamic. |
| `nomneddy_nombre` | `varchar(100)` | Si | - | Nombre. |
| `nomneddy_descripcion` | `varchar(100)` | Si | - | Descripción. |
| `nomneddy_numdiariody` | `varchar(20)` | Si | - | Número de diario según Dynamic |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomneddym.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 52. Tabla: `hnompagosextradet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nompagosextra_numid` | `int` | No | PK | id del pago extraordinario |
| `nomprestamosemp_numid` | `int` | No | - | Id del prestamo del empleado |
| `nomprestamosemp_monto` | `numeric(12,2)` | No | - | Monto del pago Extraordinario |
| `nomprestamosemp_fecha` | `date` | No | - | Fecha de la nomina del pago extraordinario |
| `nomprestamosemp_comentario` | `varchar(-1)` | Si | - | Comentario |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnompagosextradet.nomprestamosemp_numid` -> `hnomprestamosempdet.nomprestamosemp_numid`

---

## 53. Tabla: `hnomparametrognmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomparametrogn_numid` | `smallint` | No | PK | Id parámetro general de nómina |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomparametrogn_salminimo` | `decimal(12,2)` | Si | - | Salario mínimo de ley |
| `nomparametrogn_codbanco` | `varchar(6)` | Si | - | Código de banco para transferencia electrónica |
| `nomparametrogn_clase` | `smallint` | No | - | Clase tipo de nomina: 1-Salarios, 2-Comisiones, 3-Vacaciones, 4-Regalías, 5-Bonificaciones, 6-Liquidados, 7-Otro |
| `nomparametrogn_ctabanco` | `varchar(20)` | Si | - | Cuenta de banco relacionada a nómina |
| `nomparametrogn_ctacheque` | `varchar(20)` | Si | - | Cuenta de banco relacionada a nómina para solicitud de cheques |
| `nomparametrogn_ctanomina` | `varchar(20)` | Si | - | Cuenta del pasivo de nómina |
| `nomparametrogn_frecuencia` | `smallint` | No | - | Frecuencia Salarial de la nómina: (Tabla de uso multiple: 1-Semanal, 2-Quincenal, 3-Mensual, 4-BiSemanal, 5-Anual |
| `nomparametrogn_tiponom` | `smallint` | No | - | Tipo de nómina: (Tabla de uso multiple: 1-Normal, 2-Extraordinaria) |
| `nomparametrogn_idarchivonom` | `smallint` | Si | - | Id de formato de archivo para nómina electrónica |
| `nomparametrogn_ind_afp_todoint` | `smallint` | No | - | Indica si el descuento de AFP es en todos los intervalos. : 1= Sí, 2= No |
| `nomparametrogn_ind_sfs_todoint` | `smallint` | No | - | Indica si el descuento de SFS es en todos los intervalos. : 1= Sí, 2= No |
| `nomparametrogn_ind_isr_todoint` | `smallint` | No | - | Indica si el descuento de ISR es en todos los intervalos. : 1= Sí, 2= No |
| `nomparametrogn_intervalo_afp` | `smallint` | Si | - | Número de intervalo para el descuento de AFP |
| `nomparametrogn_intervalo_sfs` | `smallint` | Si | - | Número de intervalo para el descuento de SFS |
| `nomparametrogn_intervalo_isr` | `smallint` | Si | - | Número de intervalo para el descuento de ISR |
| `nomparametrogn_ind_nom_defecto` | `smallint` | No | - | Indica si es la nómina por defecto: 1= Sí, 2= No |
| `nomparametrogn_ind_nom_empliq` | `smallint` | No | - | Indica si es la nómina de empleados liquidados: 1= Sí, 2= No |
| `nomparametrogn_ind_cal_salb` | `smallint` | No | - | Indica si la nómina calcula Salario Base: 1= Sí, 2= No |
| `nomparametrogn_ind_trxoca` | `smallint` | No | - | Indica si la nómina calcula transacciones Ocasionales Base: 1= Sí, 2= No |
| `nomparametrogn_ind_trxfij` | `smallint` | No | - | Indica si la nómina calcula transacciones fijas		 Base: 1= Sí, 2= No |
| `nomparametrogn_ind_trxrec` | `smallint` | No | - | Indica si la nómina calcula transacciones Recurrentes Base: 1= Sí, 2= No |
| `nomparametrogn_ind_provi` | `smallint` | No | - | Indica si la nómina calcula provisiones: 1= Sí, 2= No |
| `nomparametrogn_ind_pdferiado` | `smallint` | No | - | Indica si la nómina paga días feriados: 1= Sí, 2= No |
| `nomparametrogn_ind_msjneg` | `smallint` | No | - | Indica si la nómina presenta mensaje de cero/negativo: 1= Sí, 2= No |
| `nomparametrogn_ind_duplica` | `smallint` | No | - | Indica si la nómina permite duplicar registro de transacciones: 1= Sí, 2= No |
| `nomparametrogn_ind_cal_retroa` | `smallint` | No | - | Indica si la nómina calcula salario retroactivo: 1= Sí, 2= No |
| `nomparametrogn_ind_cal_afp` | `smallint` | No | - | Indica si la nómina calcula AFP: 1= Sí, 2= No |
| `nomparametrogn_ind_cal_sfs` | `smallint` | No | - | Indica si la nómina calcula SFS: 1= Sí, 2= No |
| `nomparametrogn_ind_cal_isr` | `smallint` | No | - | Indica si la nómina calcula ISR: 1= Sí, 2= No |
| `nomparametrogn_ind_cierreisr` | `smallint` | No | - | Indica si la nómina cierra el ISR: 1= Sí, 2= No |
| `nomparametrogn_ind_modefe` | `smallint` | No | - | Indica si la nómina se integra con ERP/módulo de efectivo : 1= Sí, 2= No |
| `nomparametrogn_ind_pagcomi` | `smallint` | No | - | Indica si la nómina se integra con ERP/pago comisiones : 1= Sí, 2= No |
| `nomparametrogn_cant_diatope` | `smallint` | Si | - | Indica si la nómina se integra con ERP/cantidad dias tope para entrega de cheques : 1= Sí, 2= No |
| `nomparametrogn_ind_modeasyb` | `smallint` | No | - | Indica si la nómina se integra con EBank/módulo de préstamos : 1= Sí, 2= No |
| `nomparametrogn_fecha_reg` | `datetime` | No | - | Fecha del registro |
| `admusr_numid` | `int` | No | - | Id Usuario del registro |
| `admsts_codigo` | `int` | No | - | - |
| `nomparametrogn_nomxpagdy` | `varchar(30)` | Si | - | - |
| `scpcta_nombancody` | `varchar(30)` | Si | - | - |
| `nomparametrogn_ind_nvia` | `char(1)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomparametrognmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomparametrognmst.nomtno_numid` -> `hnomtnomst.nomtno_numid`

---

## 54. Tabla: `hnomperiodosnommst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomperiodosnom_numid` | `smallint` | No | PK | Id periodos por año |
| `admcompania_id` | `smallint` | No | - | Id Compania |
| `nomperiodosnom_ano` | `smallint` | No | - | Año de periodos |
| `nomtno_numid` | `smallint` | No | - | Id Tipo de nómina |
| `nomperiodosnom_fecha_ini` | `date` | No | - | Fecha inicio periodos |
| `nomperiodosnom_cantidad` | `smallint` | No | - | Cantidad de períodos |
| `admusr_numid` | `int` | No | - | Id Usuario |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. DEFAULT = 1 |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomperiodosnommst.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomperiodosnommst.nomtno_numid` -> `hnomtnomst.nomtno_numid`

---

## 55. Tabla: `hnomporcincluyecondet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomporcincluyecon_numid` | `smallint` | No | PK | Id Porciento incluye Concepto Nomina |
| `nomcon_numid` | `smallint` | No | - | Id de concepto master |
| `nomporcincluyecon_numidcon` | `smallint` | No | - | id de conceptos que se incluyen en el concepto master |
| `nomporcincluyecon_porcincluye` | `numeric(12,2)` | No | - | Porciento que aplica al concepto de nomina seleccionado |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomporcincluyecondet.nomporcincluyecon_numidcon` -> `hnomconmst.nomcon_numid`
- `hnomporcincluyecondet.nomcon_numid` -> `hnomconmst.nomcon_numid`

---

## 56. Tabla: `hnomprestamosempdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomprestamosemp_numid` | `int` | No | PK | Id del prestamo del empleado |
| `empemp_numid` | `int` | No | - | Id de Empleado |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomcon_numid` | `smallint` | No | - | Id de concepto/Transaccion |
| `nomprestamosemp_institucion` | `varchar(50)` | No | - | Instituicion Corporativa qe otorga el prestamo |
| `nomprestamosemp_monto` | `numeric(12,2)` | No | - | Monto que se descontará en cada frecuencia de la nomina |
| `nomprestamosemp_montoini` | `numeric(12,2)` | No | - | Monto inicial o total del prestamo |
| `nomprestamosemp_balance` | `numeric(12,2)` | No | - | Balance actual del prestamo |
| `admsts_codigo` | `smallint` | No | - | Estado |
| `nomint_numid` | `smallint` | No | - | Intervalo o Frencuencia que aparecera el concepto en nomina |
| `nomprestamosemp_fechaini` | `date` | No | - | Fecha Inicial |
| `nomprestamosemp_fechafin` | `date` | Si | - | Fecha Final |
| `nomprestamosemp_plazo` | `int` | No | - | Plazo o cantidad de pagos que tendra el prestamo |
| `nomprestamosemp_referencia` | `varchar(20)` | Si | - | Codigo de Referencia del prestamo |
| `nomprestamosemp_aplicanom` | `smallint` | No | - | Indica si el prestamo sera descontado por nomina |
| `nomprestamosemp_comentario` | `varchar(-1)` | Si | - | Comentario del prestamo |
| `admcompania_id` | `smallint` | No | - | Id Compañía. |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomprestamosempdet.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomprestamosempdet.nomcon_numid` -> `hnomconmst.nomcon_numid`

---

## 57. Tabla: `hnomprestamosempdet_bk`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomprestamosemp_numid` | `int` | No | - | - |
| `empemp_numid` | `int` | No | - | - |
| `nomtno_numid` | `smallint` | No | - | - |
| `nomcon_numid` | `smallint` | No | - | - |
| `nomprestamosemp_institucion` | `varchar(50)` | No | - | - |
| `nomprestamosemp_monto` | `numeric(12,2)` | No | - | - |
| `nomprestamosemp_montoini` | `numeric(12,2)` | No | - | - |
| `nomprestamosemp_balance` | `numeric(12,2)` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `nomint_numid` | `smallint` | No | - | - |
| `nomprestamosemp_fechaini` | `date` | No | - | - |
| `nomprestamosemp_fechafin` | `date` | Si | - | - |
| `nomprestamosemp_plazo` | `int` | No | - | - |
| `nomprestamosemp_referencia` | `varchar(20)` | Si | - | - |
| `nomprestamosemp_aplicanom` | `smallint` | No | - | - |
| `nomprestamosemp_comentario` | `varchar(-1)` | Si | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 58. Tabla: `hnomprestamosempdet_bkMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomprestamosemp_numid` | `int` | No | - | - |
| `empemp_numid` | `int` | No | - | - |
| `nomtno_numid` | `smallint` | No | - | - |
| `nomcon_numid` | `smallint` | No | - | - |
| `nomprestamosemp_institucion` | `varchar(50)` | No | - | - |
| `nomprestamosemp_monto` | `numeric(12,2)` | No | - | - |
| `nomprestamosemp_montoini` | `numeric(12,2)` | No | - | - |
| `nomprestamosemp_balance` | `numeric(12,2)` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `nomint_numid` | `smallint` | No | - | - |
| `nomprestamosemp_fechaini` | `date` | No | - | - |
| `nomprestamosemp_fechafin` | `date` | Si | - | - |
| `nomprestamosemp_plazo` | `int` | No | - | - |
| `nomprestamosemp_referencia` | `varchar(20)` | Si | - | - |
| `nomprestamosemp_aplicanom` | `smallint` | No | - | - |
| `nomprestamosemp_comentario` | `varchar(-1)` | Si | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 59. Tabla: `hnomprocentdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `hnomprocent_numid` | `int` | No | PK | Id secuencial para proceso/entidad |
| `sdaprocexec_numid` | `int` | No | - | Id de ejecución del proceso |
| `admcompania_id` | `smallint` | No | - | id Compañía |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomdetalleper_numid` | `smallint` | No | - | Id del período de la nómina (eje: 1) |
| `nomdetalleper_fecha_fin` | `date` | No | - | Fecha tope del periodo nómina |
| `hnomprocent_fecha_reg` | `datetime` | Si | - | Fecha de registro |

---

## 60. Tabla: `hnomprocentdydet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `hnomprocentdy_numid` | `int` | No | PK | Id secuencial para proceso/entidad |
| `sdaprocexec_numid` | `int` | No | - | Id de ejecución del proceso |
| `admcompania_id` | `smallint` | No | - | id Compañía |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomdetalleper_numid` | `smallint` | No | - | Id del período de la nómina (eje: 1) |
| `nomdetalleper_fecha_fin` | `date` | No | - | Fecha tope del periodo nómina |
| `hnomprocent_fecha_reg` | `datetime` | Si | - | Fecha de registro |

---

## 61. Tabla: `hnomtemppcontdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomtemppcont_id` | `int` | No | PK | - |
| `admcompania_id` | `smallint` | No | - | - |
| `admsucursal_id` | `smallint` | No | - | - |
| `nomtno_numid` | `smallint` | No | - | - |
| `nomtemppcont_ctadb` | `varchar(25)` | Si | - | - |
| `nomtemppcont_ctacr` | `varchar(25)` | Si | - | - |
| `nomtemppcont_valor` | `decimal(12,2)` | No | - | - |
| `nomtemppcont_tip_acumul` | `smallint` | No | - | - |
| `empemp_numid` | `int` | Si | - | - |
| `nomcon_origen` | `smallint` | No | - | - |
| `nomcon_numid` | `smallint` | No | - | - |
| `nomdetalleper_numid` | `smallint` | No | - | - |
| `nomdetalleper_codigo` | `varchar(10)` | No | - | - |
| `admdep_id` | `smallint` | Si | - | - |
| `admcdc_codigo` | `varchar(3)` | Si | - | - |
| `admfol_codigo` | `varchar(25)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomtemppcontdet.admsucursal_id` -> `xadmsucursalmst.admsucursal_id`
- `hnomtemppcontdet.nomdetalleper_numid` -> `hnomdetalleperdet.nomdetalleper_numid`
- `hnomtemppcontdet.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hnomtemppcontdet.empemp_numid` -> `hempempmst.empemp_numid`
- `hnomtemppcontdet.admdep_id` -> `hadmdepmst.admdep_id`
- `hnomtemppcontdet.nomtno_numid` -> `hnomtnomst.nomtno_numid`

---

## 62. Tabla: `hnomtnddet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomtnd_numid` | `smallint` | No | PK | Id del detalle |
| `nomtno_numid` | `smallint` | No | - | Id tipo de nomina |
| `nomtnd_intervalo` | `smallint` | No | - | Intervalo de pago |
| `nomtnd_valor_porc_int` | `decimal(12,2)` | No | - | Valor porcentual del intervalo de pago |
| `nomtnd_nombre` | `varchar(50)` | Si | - | Nombre del intervalo |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomtnddet.nomtno_numid` -> `hnomtnomst.nomtno_numid`

---

## 63. Tabla: `hnomtnomst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomtno_numid` | `smallint` | No | PK | id Tipo de Nómina |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `nomtno_codigo` | `varchar(3)` | No | - | - |
| `nomtno_nombre` | `varchar(50)` | No | - | Nombre del tipo de nómina |
| `nomtno_forma_cal` | `smallint` | No | - | Forma cálculo: 1 = Fijo, 2 = Salario x Hora, 3 = Ajuste |
| `nomtno_frecuencia` | `smallint` | No | - | Frecuencia Salarial: 1 = Semanal, 2 = Quincenal, 3 = Mensual, 4 = BiSemanal, 5 = Anual |
| `nomtno_tipo_emp` | `smallint` | No | - | Tipo Empleado permitido |
| `nomtno_cant_intervalo` | `smallint` | No | - | Cantidad de Intervalo de pago |
| `nomcon_nomina_TSS` | `smallint` | No | - | Código nómina para TSS |
| `admmon_numid` | `smallint` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `nomtno_ind_reap` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 64. Tabla: `hnomtrxestrdyd`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomtrxestrdy_numid` | `int` | No | PK | - |
| `nomestrfdy_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `nomcon_numid` | `smallint` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomtrxestrdyd.nomcon_numid` -> `hnomconmst.nomcon_numid`
- `hnomtrxestrdyd.nomestrfdy_numid` -> `hnomestrfdym.nomestrfdy_numid`
- `hnomtrxestrdyd.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 65. Tabla: `hnomtrxestrdyd_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomtrxestrdy_numid` | `int` | Si | - | - |
| `nomestrfdy_numid` | `int` | Si | - | - |
| `admcompania_id` | `smallint` | Si | - | - |
| `nomcon_numid` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 66. Tabla: `hnomvacdiasantdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomvacdiasant_numid` | `int` | No | PK | id Configuracion Dias de Vacaciones por Antiguedad |
| `nomvacdiasant_rangomin` | `smallint` | No | - | Rango Minimo de Años |
| `nomvacdiasant_rangomax` | `smallint` | No | - | Rango Maximo de Años |
| `nomvacdiasant_cantdias` | `smallint` | No | - | Cantidad de Días |
| `nomconfley_numid` | `int` | No | - | Id de los parametros generales de Ley |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomvacdiasantdet.nomconfley_numid` -> `hnomconfleymst.nomconfley_numid`

---

## 67. Tabla: `hnomvacdiasantdetMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomvacdiasant_numid` | `float` | Si | - | - |
| `nomvacdiasant_rangomin` | `float` | Si | - | - |
| `nomvacdiasant_rangomax` | `float` | Si | - | - |
| `nomvacdiasant_cantdias` | `float` | Si | - | - |
| `nomconfley_numid` | `float` | Si | - | - |
| `admsts_codigo` | `float` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 68. Tabla: `hnomvacdifantdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomvacdifant_numid` | `int` | No | PK | id Configuracion Dias de Vacaciones por Antiguedad |
| `nomvacdifant_rangomin` | `smallint` | No | - | Rango Minimo de Meses |
| `nomvacdifant_rangomax` | `smallint` | No | - | Rango Maximo de Meses |
| `nomvacdifant_cantdias` | `smallint` | No | - | Cantidad de Días |
| `nomconfley_numid` | `int` | No | - | Id de los parametros generales de Ley |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hnomvacdifantdet.nomconfley_numid` -> `hnomconfleymst.nomconfley_numid`

---

## 69. Tabla: `hnomvacdifantdetMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nomvacdifant_numid` | `float` | Si | - | - |
| `nomvacdifant_rangomin` | `float` | Si | - | - |
| `nomvacdifant_rangomax` | `float` | Si | - | - |
| `nomvacdifant_cantdias` | `float` | Si | - | - |
| `nomconfley_numid` | `float` | Si | - | - |
| `admsts_codigo` | `float` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

