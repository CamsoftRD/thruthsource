# Documentación de Base de Datos: Módulo Empleados

## 1. Tabla: `hempaaacptdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empaaacpt_numid` | `int` | No | PK | id secuencial de los documentos adjuntos de las acciones de personal |
| `empacpt_numid` | `int` | No | - | - |
| `empaaacpt_nombre` | `varchar(50)` | No | - | Nombre del archivo adjunto |
| `empaaacpt_fecha` | `datetime` | No | - | Fecha del archivo adjunto |
| `blob_data` | `varbinary` | No | - | - |
| `blob_info` | `varbinary` | No | - | - |
| `blob_guid` | `varchar(40)` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempaaacptdet.empacpt_numid` -> `hempacpttrx.empacpt_numid`

---

## 2. Tabla: `hempaacapdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empaacap_numid` | `smallint` | No | PK | - |
| `empcapacitaciones_numid` | `int` | No | - | id Capacitacion del Empleado |
| `empaacap_nombre` | `varchar(50)` | No | - | Nombre del Archivo Adjunto |
| `empaacap_fecha` | `datetime` | No | - | Fecha de carga/creación del documento |
| `blob_data` | `varbinary` | No | - | - |
| `blob_info` | `varbinary` | No | - | - |
| `blob_guid` | `varchar(40)` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempaacapdet.empcapacitaciones_numid` -> `hempcapacitacionesdet.empcapacitaciones_numid`

---

## 3. Tabla: `hempaaempdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empaaemp_numid` | `int` | No | PK | id del otros documento adjunto  del Empleado |
| `empemp_numid` | `int` | No | - | Id de Empleado |
| `empaaemp_nombre` | `varchar(250)` | Si | - | Nombre de archivo/documento |
| `empaaemp_fecha` | `datetime` | No | - | Fecha de carga/creación del documento |
| `empaaemp_tipodoc` | `smallint` | No | - | Tipo de Documento almacenado en la tabla xsdausomultmst filtrado por el grupo 'RRHH-TipoDocEmpleado' |
| `blob_data` | `varbinary` | Si | - | Contenido o dato binario |
| `blob_info` | `varbinary` | Si | - | Contiene json con { extension:, storage_schema:, y cualquier otra cosa que se pueda necesitar en el futuro} |
| `blob_guid` | `varchar(40)` | Si | - | identificación por guid |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempaaempdet.empemp_numid` -> `hempempmst.empemp_numid`

---

## 4. Tabla: `hempaaempdet3`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empaaemp_numid` | `int` | No | PK | - |
| `empemp_numid` | `int` | No | - | - |
| `empaaemp_nombre` | `varchar(50)` | No | - | - |
| `empaaemp_fecha` | `datetime` | No | - | - |
| `empaaemp_tipodoc` | `smallint` | No | - | - |
| `blob_data` | `varbinary` | No | - | - |
| `blob_info` | `varbinary` | No | - | - |
| `blob_guid` | `varchar(40)` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 5. Tabla: `hempaaherrdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empaaherr_numid` | `smallint` | No | PK | - |
| `empherramientas_numid` | `smallint` | No | - | Id Herramienta del Empleado |
| `empaaherr_nombre` | `varchar(50)` | No | - | Nombre del Archivo Adjunto |
| `empaaherr_fecha` | `datetime` | No | - | Fecha de carga/creación del documento |
| `blob_data` | `varbinary` | No | - | Contenido o dato binario |
| `blob_info` | `varbinary` | No | - | contiene json con { extension:, storage_schema:, y cualquier otra cosa que se pueda necesitar en el futuro} |
| `blob_guid` | `varchar(40)` | No | - | identificación por guid |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempaaherrdet.empherramientas_numid` -> `hempherramientasdet.empherramientas_numid`

---

## 6. Tabla: `hempacptddet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empacptd_numid` | `int` | No | PK | Id secuencial |
| `empacpt_numid` | `int` | No | - | Id transaccional de la acci?n que se ejecuta (Master/Detail : hempacpttrx/hempacptddet) |
| `admacptd_field_nombre` | `varchar(30)` | No | - | Nombre del campo que ser? afectado |
| `empacptd_dato_actual` | `varchar(70)` | Si | - | Dato/Valor actual del campo que ser? afectado |
| `empacptd_dato_propuesto` | `varchar(70)` | No | - | Dato/Valor propuesto del campo que ser? afectado |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempacptddet.empacpt_numid` -> `hempacpttrx.empacpt_numid`

---

## 7. Tabla: `hempacpttrx`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empacpt_numid` | `int` | No | PK | Id secuencial |
| `admacp_numid` | `int` | No | - | Id acci?n del lado de SRHWeb |
| `admacp_entidad` | `varchar(20)` | No | - | Nombre de la entidad con el que puede estar relacionada o afectando directamente |
| `empacpt_ident` | `int` | No | - | Id/Valor clave del registro que ser? relacionado/afectado de una entidad |
| `admcompania_id` | `smallint` | Si | - | Id de la compa??a |
| `admsucursal_id` | `smallint` | Si | - | Id de la sucursal |
| `empacpt_fecha_efectiva` | `date` | No | - | Fecha efectiva de la acci?n de personal |
| `empacpt_fecha_apl` | `date` | Si | - | Fecha de aplicacion (Fecha efectiva para fines de calculos retroactivo relacionado a n?mina) |
| `empacpt_fecha_ini` | `datetime` | Si | - | Fecha de inicio, cuando la accion relacionada una ausencia: Permiso, Licencia, Vacaciones |
| `empacpt_fecha_fin` | `datetime` | Si | - | Fecha fin, cuando la accion relacionada una ausencia: Permiso, Licencia, Vacaciones |
| `empacpt_cantidad` | `decimal(12,2)` | Si | - | Cantidad. Util para cuando se necesite especificar cantidad de d?as/hora |
| `empacpt_tipo_dho` | `smallint` | Si | - | Indica si la cantidad es de d?a/hora/Otro Util para cuando se necesite especificar cantidad de d?as/hora/otros |
| `empacpt_incluye_salario` | `smallint` | Si | - | Indica si la acci?n incluye o no pago de salario en n?mina.Ej. Lincencia sin disfrute de salario. 0 = No, 1 = S? |
| `empacpt_tipo_notificacion` | `smallint` | Si | - | Indica si la acci?n guarda una referencia de tipo verbal o escrita, cuando es amonestacion. 0 = Verbal, 1 = Escrita |
| `empacpt_reportado_ley` | `smallint` | Si | - | Indica si la acci?n de tipo verbal o escrita, se reportar? a algun ministerio o insitucion del estado. 0 = No, 1 = S? |
| `empacpt_motivo_razon` | `smallint` | Si | - | Motivo o raz?n. Ej: [RENUNCIA, DESPIDO, DESAHUCIO] Cuando la acci?n es una Desvinculaci?n |
| `empacpt_justificado` | `smallint` | Si | - | Indica si la acci?n esta justificada o no, ej: Una accion de Permiso. 0 = No, 1 = S? |
| `empacpt_tipo_porc_mfijo` | `smallint` | Si | - | Indica si la acci?n usa porciento o monto fijo. 0 = Porciento, Monto Fijo |
| `empacpt_valor_tipo` | `decimal(12,2)` | Si | - | Valor para cuando usa un tipo (tipo porcentual o un monto fijo) |
| `empacpt_fecha_registro` | `datetime` | No | - | Fecha de registro |
| `admusr_numid` | `int` | No | - | Usuario que registr? la acci?n |
| `admsts_codigo` | `smallint` | No | - | Estado de la acci?n: [PENDIENTE AUT, AUTORIZADA] Depender? de si la acci?n requiere o no autorizaci?n |
| `empacpt_fecha_autoriz` | `datetime` | Si | - | Igual a la Fecha de registro o Depender? de si la acci?n requiere o no autorizaci?n, la fecha en que se autoriz? |
| `admusr_numid_aut` | `int` | Si | - | - |
| `empacpt_comentario_obs` | `varchar(-1)` | Si | - | Comentario u observaci?n de la acci?n de personal |
| `empacpt_tipo_ausencia` | `smallint` | Si | - | - |
| `admcartadet_numid` | `int` | Si | - | Campo que indica el detalle de la carta generada por el empleado |
| `tag` | `varchar(-1)` | Si | - | - |
| `empacpt_enviar_correo` | `smallint` | Si | - | Indica si se le va a enviar o no un correo al empleado de la acción realizada |
| `admcarta_numid` | `int` | Si | - | Número identificador de la carta asociada al detalle de la acción de personal |

### Relaciones (Foreign Keys)
- `hempacpttrx.admacp_numid` -> `hadmacpmst.admacp_numid`
- `hempacpttrx.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hempacpttrx.admsucursal_id` -> `xadmsucursalmst.admsucursal_id`

---

## 8. Tabla: `hempbendet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empben_numid` | `int` | No | PK | id del beneficio del empleado |
| `admcompania_id` | `smallint` | No | - | Id Compañía |
| `empemp_numid` | `int` | No | - | Id de empleado |
| `admben_numid` | `smallint` | No | - | Id del beneficio |
| `empben_valor` | `decimal(12,2)` | Si | - | Valor o monto del beneficio |
| `empben_fecha_ini` | `date` | No | - | Fecha de inicio |
| `empben_fecha_fin` | `date` | Si | - | Fecha de fin |
| `empben_comentario` | `text` | Si | - | Comentario |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo, -1 - Eliminado. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `nomcon_numid` | `smallint` | Si | - | - |
| `empben_ind_apl_nom` | `smallint` | No | - | - |
| `nomtno_numid` | `smallint` | Si | - | - |
| `nomint_numid` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempbendet.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hempbendet.admben_numid` -> `hadmbenmst.admben_numid`
- `hempbendet.empemp_numid` -> `hempempmst.empemp_numid`

---

## 9. Tabla: `hempcapacitacionesdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empcapacitaciones_numid` | `int` | No | PK | id Capacitacion del Empleado |
| `empemp_numid` | `int` | No | - | Id de empleado |
| `empcapacitaciones_nombre` | `varchar(50)` | No | - | Nombre de la Capacitacion |
| `empcapacitaciones_descripcion` | `varchar(-1)` | Si | - | Descripcion de la Capacitacion |
| `empcapacitaciones_centro` | `varchar(50)` | Si | - | Centro de la Capacitacion |
| `empcapacitaciones_facilitador` | `varchar(50)` | Si | - | Facilitador de la Capacitacion |
| `empcapacitaciones_costo` | `numeric(12,2)` | Si | - | Costo de la Capacitacion |
| `empcapacitaciones_invempresa` | `numeric(12,2)` | Si | - | Inversion de la empresa |
| `empcapacitaciones_fechaini` | `date` | No | - | Fecha Inicio |
| `empcapacitaciones_fechafin` | `date` | Si | - | Fecha fin |
| `empcapacitaciones_canthoras` | `numeric(12,2)` | Si | - | Cantidad de horas |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo, -1 - Eliminado. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `empcapacitaciones_frecuencia` | `smallint` | Si | - | Campo que indica la frecuencia con la que la capacitacion debe de ser renovada |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempcapacitacionesdet.empemp_numid` -> `hempempmst.empemp_numid`

---

## 10. Tabla: `hempcdcedet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empcdce_numid` | `smallint` | No | PK | Id |
| `admcdc_id` | `int` | No | - | Id del centro de costo |
| `empcdce_valor_porc` | `numeric(5,2)` | No | - | Porciento correspondiente al centro de costo |
| `empemp_numid` | `int` | No | - | Id de Empleado |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo, -1 - Eliminado. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempcdcedet.empemp_numid` -> `hempempmst.empemp_numid`
- `hempcdcedet.admcdc_id` -> `hadmcdcmst.admcdc_id`

---

## 11. Tabla: `hempdepempdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empdepemp_numid` | `smallint` | No | PK | Id del dependiente del empleado |
| `empemp_numid` | `int` | No | - | Id de empleado |
| `admparentesco_numid` | `smallint` | No | - | Id del Parentesco |
| `admide_codigo` | `int` | No | - | id de tipo de identificación |
| `empdepemp_identificacion` | `varchar(20)` | No | - | dato de identificación |
| `empdepemp_primer_nombre` | `varchar(50)` | No | - | Primer nombre de dependiente |
| `empdepemp_segundo_nombre` | `varchar(50)` | Si | - | Segundo nombre de dependiente |
| `empdepemp_primer_apellido` | `varchar(50)` | No | - | Primer apellido de dependiente |
| `empdepemp_segundo_apellido` | `varchar(50)` | Si | - | Segundo apellido de dependiente |
| `empdepemp_nombre_completo` | `varchar(100)` | Si | - | Nombre completo de dependiente |
| `empdepemp_genero` | `smallint` | No | - | Género : 1 = Masculino, 2 = Femenino, 0 = Indistinto |
| `empdepemp_fecha_nacimiento` | `date` | No | - | Fecha nacimiento |
| `empdepemp_dependiente_directo` | `smallint` | No | - | Dependiente directo Si = 1, No = 0 |
| `empdepemp_discapacidad` | `varchar(-1)` | Si | - | Discapacidad del Depediente |
| `admprovseg_numid` | `smallint` | Si | - | id Proveedor Seguro |
| `admplanseg_numid` | `smallint` | Si | - | id Plan de Salud |
| `admplanseg_tarifa` | `numeric(12,2)` | Si | - | Tarifa Mensual x Persona |
| `admplanseg_porcempr` | `numeric(5,2)` | Si | - | Porciento Empresa |
| `admplanseg_porcempl` | `numeric(5,2)` | Si | - | Porciento Empleado |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempdepempdet.admparentesco_numid` -> `hadmparentescomst.admparentesco_numid`
- `hempdepempdet.empemp_numid` -> `hempempmst.empemp_numid`
- `hempdepempdet.admprovseg_numid` -> `hadmprovsegmst.admprovseg_numid`
- `hempdepempdet.admide_codigo` -> `xadmidemst.admide_codigo`
- `hempdepempdet.admplanseg_numid` -> `hadmplansegmst.admplanseg_numid`

---

## 12. Tabla: `hempdesvddet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empdesvd_numid` | `int` | No | PK | id del detalle |
| `empdesv_numid` | `int` | No | - | id del maestro |
| `empdesvd_cantidad` | `decimal(5,2)` | Si | - | cantidad relacionada al concepto/derecho/beneficio, si aplica |
| `empdesvd_monto` | `decimal(12,2)` | No | - | Monto del concepto/derecho/beneficio |
| `empdesvd_origen` | `smallint` | No | - | Origen: 1 = Ingreso, -1 = Descuento |
| `nomcon_numid` | `smallint` | No | - | id del concepto en nómina,relacionada al concepto/derecho/beneficio |
| `nomcon_tipo_concepto` | `smallint` | Si | - | Tipo Concepto para uso interno |
| `admderechoadq_numid` | `int` | Si | - | Clasificacion: 1 = Derechos Adquiridos, 2 = Otros ingresos, 3 = Descuentos |
| `empdesvd_clasificacion` | `smallint` | No | - | id del Derecho que lo relaciona, si aplica |
| `empdesvd_referencia` | `varchar(20)` | Si | - | Referencia |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempdesvddet.empdesv_numid` -> `hempdesvmst.empdesv_numid`
- `hempdesvddet.nomcon_numid` -> `hnomconmst.nomcon_numid`

---

## 13. Tabla: `hempdesvmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empdesv_numid` | `int` | No | PK | Id Mastro prestaciones |
| `admcompania_id` | `smallint` | No | - | Id de compañía |
| `empacpt_numid` | `int` | Si | - | Id de transacción de acción  de personal |
| `empemp_numid` | `int` | No | - | id empleado relacionado |
| `empdesv_fecha_ing` | `datetime` | No | - | Fecha de Ingreso/Inicio del empleado |
| `empdesv_fecha_sal` | `datetime` | Si | - | Fecha de Salida/desvinculación del empleado |
| `empdesv_ult_salario` | `decimal(12,2)` | Si | - | Ultimo salario base |
| `empdesv_salario_prom` | `decimal(12,2)` | Si | - | Salario promedio del ultimo año |
| `admrazonsal_numid` | `smallint` | No | - | Razón de la saslida |
| `admsts_codigo` | `smallint` | No | - | Estado del proceso de la prestaciones: [1=INICIADA, 2=PENDIENTE AUT, 3=AUTORIZADA, 4=RECHAZADA] |
| `empdesv_stage` | `smallint` | Si | - | Etapa del proceso de prestaciones: [En Proceso, Elaborada, Aprobada, Pago Solicitado, Entregada] |
| `empdesv_fecha_reg` | `datetime` | No | - | Fecha de registro |
| `empdesv_fecha_mod` | `datetime` | Si | - | Fecha de modificación |
| `admusr_numid_reg` | `int` | No | - | Id de usuario que registra |
| `admusr_numid_mod` | `int` | Si | - | Id de usuario que modifica |
| `empdesv_monto_totbruto` | `decimal(12,2)` | Si | - | Monto total bruto de las prestaciones |
| `empdesv_monto_totdescuentos` | `decimal(12,2)` | Si | - | Monto total de descuentos |
| `empdesv_monto_neto` | `decimal(12,2)` | Si | - | Monto Neto de las prestaciones |
| `empdesv_num_sol_chk` | `int` | Si | - | Número de solicitud de cheque |
| `empdesv_num_chk` | `int` | Si | - | Número de cheque |
| `empdesv_fecha_chk` | `datetime` | Si | - | Fecha de entra de cheque |
| `empdesv_comentario_obs` | `varchar(-1)` | Si | - | Comentario u observación |
| `empdesv_acum_ult_ano` | `decimal(12,2)` | Si | - | Monto acumulado de los ingresos en último año |
| `empdesv_acum_este_ano` | `decimal(12,2)` | Si | - | Monto acumulado de los ingresos año actual |
| `empdesv_otros_ingresos` | `decimal(12,2)` | Si | - | Monto de otros ingresos y comisiones |
| `empdesv_antig_ano` | `int` | Si | - | Antiguedad: Cantidad de años |
| `empdesv_antig_mes` | `int` | Si | - | Antiguedad: Cantidad de Meses |
| `empdesv_antig_dia` | `decimal(5,2)` | Si | - | Antiguedad: Cantidad de días |
| `empdesv_modo_consulta` | `smallint` | Si | - | Es modo consulta. 1 = Sí, 2 = no |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempdesvmst.empacpt_numid` -> `hempacpttrx.empacpt_numid`
- `hempdesvmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hempdesvmst.empemp_numid` -> `hempempmst.empemp_numid`

---

## 14. Tabla: `hempdimendym`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empdimendy_numid` | `int` | No | PK | Id registro. |
| `admcompania_id` | `smallint` | No | - | Id Compañía. |
| `empdimendy_id` | `varchar(20)` | No | - | Id Dimensión. |
| `empdimendy_nombre` | `varchar(100)` | Si | - | Nombre Dimension |
| `empdimendy_tipo` | `smallint` | No | - | Tipo: 1 = Empresa, 2 = Depto, 3 = División, 4 = Laboratorio, 5 = AdmPort, 6 = LíneaCr, 7 = Préstamo, 8 = Retenciones |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempdimendym.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 15. Tabla: `hempdimendym_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empdimendy_numid` | `float` | Si | - | - |
| `admcompania_id` | `float` | Si | - | - |
| `empdimendy_id` | `nvarchar(510)` | Si | - | - |
| `empdimendy_nombre` | `nvarchar(510)` | Si | - | - |
| `empdimendy_tipo` | `float` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 16. Tabla: `hempdimenempd`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empdimenemp_numid` | `int` | No | PK | Id registro. |
| `admcompania_id` | `smallint` | No | - | Id Compañía. |
| `empemp_numid` | `int` | No | - | Id Empleado. |
| `empdimenemp_cia_rel` | `varchar(20)` | Si | - | Dimension de Empresa Relacionada. |
| `empdimenemp_depto` | `varchar(20)` | Si | - | Dimension del departamento Relacionado. |
| `empdimenemp_divi` | `varchar(20)` | Si | - | Dimension de división Relacionada. |
| `empdimenemp_lab` | `varchar(20)` | Si | - | Dimension del laboratorio Relacionado. |
| `empdimenemp_admport` | `varchar(20)` | Si | - | Dimension de adm portuaria Relacionada. |
| `empdimenemp_lineacr` | `varchar(20)` | Si | - | Dimension de línea crédito Relacionada. |
| `empdimenemp_prestban` | `varchar(20)` | Si | - | Dimension de préstamos bancario. |
| `empdimenemp_retencben` | `varchar(20)` | Si | - | Dimension de retenciones y beneficios. |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempdimenempd.admcompania_id` -> `xadmcompaniamst.admcompania_id`

---

## 17. Tabla: `hempdimenempd_Bk20250326`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empdimenemp_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `empemp_numid` | `int` | No | - | - |
| `empdimenemp_cia_rel` | `varchar(20)` | Si | - | - |
| `empdimenemp_depto` | `varchar(20)` | Si | - | - |
| `empdimenemp_divi` | `varchar(20)` | Si | - | - |
| `empdimenemp_lab` | `varchar(20)` | Si | - | - |
| `empdimenemp_admport` | `varchar(20)` | Si | - | - |
| `empdimenemp_lineacr` | `varchar(20)` | Si | - | - |
| `empdimenemp_prestban` | `varchar(20)` | Si | - | - |
| `empdimenemp_retencben` | `varchar(20)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 18. Tabla: `hempdimenempd_xls`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empdimenemp_numid` | `int` | Si | - | - |
| `admcompania_id` | `smallint` | Si | - | - |
| `empemp_numid` | `int` | Si | - | - |
| `empdimenemp_cia_rel` | `varchar(20)` | Si | - | - |
| `empdimenemp_depto` | `varchar(20)` | Si | - | - |
| `empdimenemp_divi` | `varchar(20)` | Si | - | - |
| `empdimenemp_lab` | `varchar(20)` | Si | - | - |
| `empdimenemp_admport` | `varchar(20)` | Si | - | - |
| `empdimenemp_lineacr` | `varchar(20)` | Si | - | - |
| `empdimenemp_prestban` | `varchar(20)` | Si | - | - |
| `empdimenemp_retencben` | `varchar(20)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 19. Tabla: `hempempfotodet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empempfoto_numid` | `int` | No | PK | - |
| `empemp_numid` | `int` | No | - | - |
| `empempfoto_tipo` | `smallint` | No | - | - |
| `empempfoto__extension` | `varchar(5)` | No | - | - |
| `blob_data` | `varbinary` | Si | - | - |
| `blob_info` | `varbinary` | Si | - | - |
| `blob_guid` | `varchar(40)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempempfotodet.empemp_numid` -> `hempempmst.empemp_numid`

---

## 20. Tabla: `hempempmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empemp_numid` | `int` | No | PK | id de empleado |
| `admcompania_id` | `smallint` | No | - | id de compañía |
| `admsucursal_id` | `smallint` | No | - | id de sucursal |
| `admdep_id` | `smallint` | No | - | id de Departamento |
| `admpos_id` | `smallint` | No | - | id de puesto |
| `empemp_codigo` | `varchar(10)` | No | - | id alterno código de empleado (Autogenerico = empemp_numid; o manual) |
| `recsol_numid` | `int` | Si | - | id de solicitud de empleo que produjo este empleado, en caso de aplicar |
| `empemp_carnet` | `varchar(10)` | Si | - | Código de carnet |
| `empemp_referencia` | `varchar(10)` | Si | - | Referencia |
| `empemp_cia_retencion` | `smallint` | No | - | id Compañía de retencion para isr |
| `empemp_establecimiento_MT` | `smallint` | Si | - | Establecimiento según Ministerio de trabajo |
| `admide_codigo` | `int` | No | - | id de tipo de identificación |
| `empemp_identificacion` | `varchar(20)` | No | - | dato de identificación |
| `empemp_primer_nombre` | `varchar(50)` | No | - | Primer nombre de empleado |
| `empemp_segundo_nombre` | `varchar(50)` | Si | - | Segundo nombre de empleado |
| `empemp_primer_apellido` | `varchar(50)` | No | - | Primer apellido de empleado |
| `empemp_segundo_apellido` | `varchar(50)` | Si | - | Segundo apellido de empleado |
| `empemp_nombre_completo` | `varchar(100)` | Si | - | Nombre completo de empleado |
| `admgradoaca_id` | `smallint` | Si | - | id grado académico |
| `empemp_etiqueta` | `varchar(300)` | Si | - | Etiqueta/distintivo/utilidad |
| `cpeemp_supervisor` | `int` | Si | - | Supervisor |
| `admsts_codigo` | `smallint` | Si | - | Estado del Proceso:  1 = Iniciado, 2 = Pendiente, 3 = Autorizado, 4 = Rechazado |
| `empemp_stage` | `smallint` | Si | - | Etapa: Al solicitar contratación del candidato, el empleado estará creado con etapa de "Solicitado" |
| `empemp_salario` | `decimal(12,2)` | No | - | Salario base |
| `empemp_porciento_salario` | `decimal(12,2)` | No | - | Valor porcentual para pago de salario. Default = 100 |
| `empemp_comisiones` | `decimal(12,2)` | Si | - | Monto de comisiones |
| `empemp_tope_comisiones` | `decimal(12,2)` | Si | - | Monto tope de comisiones |
| `empemp_nacionalidad` | `smallint` | No | - | Nacionalidad |
| `empemp_fecha_nacimiento` | `date` | No | - | Fecha nacimiento |
| `empemp_pais_nacimiento` | `smallint` | Si | - | Pais de nacimiento |
| `empemp_saldofavor_isr` | `decimal(12,2)` | Si | - | Saldo a favor del ISR |
| `empemp_genero` | `smallint` | No | - | Género : 1 = Masculino,	2 = Femenino |
| `empemp_estado_civil` | `smallint` | No | - | Estado civil: 1 = Soltero, 2 = Casado, 3 = Unión Libre, 4 = Divorciado(a), 5 = Viudo(a) |
| `empemp_cantidad_hijos` | `smallint` | Si | - | Cantidad de hijos |
| `empemp_pais_dire` | `smallint` | Si | - | Pais de residencia |
| `empemp_ciudad_dire` | `int` | Si | - | Ciudad de residencia |
| `empemp_sector_dire` | `int` | Si | - | Sector de residencia |
| `empemp_calle` | `text` | Si | - | Calle de residencia |
| `empemp_camisa_size` | `varchar(20)` | Si | - | Size de camisa |
| `empemp_pantalon_size` | `varchar(20)` | Si | - | Size de pantalon |
| `empemp_zapato_size` | `varchar(20)` | Si | - | Size de zapato |
| `empemp_email` | `varchar(100)` | Si | - | Dirección correo electrónico del empleado |
| `empemp_telefono_personal` | `varchar(20)` | No | - | Telefono personal/celular |
| `empemp_telefono_trabajo` | `varchar(20)` | No | - | Telefono flota/oficina |
| `empemp_forma_pago` | `smallint` | Si | - | Forma de pago [Transferencia, Cheque, Efectivo] |
| `nomban_numid` | `smallint` | Si | - | id de Banco |
| `admtcta_id` | `smallint` | Si | - | id tipo cuenta [Ahorro, Corriente] |
| `empemp_numero_cta` | `varchar(30)` | Si | - | Número de cuenta de banco |
| `empemp_tipo_sangre` | `smallint` | Si | - | Tipo de sangre (Grupo de atributos) |
| `empemp_condicion_med` | `text` | Si | - | Condicion médica |
| `empemp_discapacidad` | `text` | Si | - | Discapacidad |
| `empemp_riesgo` | `smallint` | Si | - | Riesgo de acuerdo a su condicion medica o discapacidad [Alto, Medio,Bajo] (Grupo de atributo) |
| `empemp_contacto_emerg` | `varchar(50)` | Si | - | Nombre del contacto de emergencia |
| `empemp_tel_contacto_emerg` | `varchar(50)` | Si | - | Nombre del contacto de emergencia |
| `empemp_tipo_contrato` | `smallint` | No | - | Tipo de contrato (Grupo de atributo) |
| `empemp_fecha_inicio` | `datetime` | No | - | Fecha de ingreso/inicio del empleado |
| `empemp_fecha_final` | `datetime` | Si | - | Fecha finalizacion (para cuando el tipo de contrato es temporal) |
| `empemp_fecha_desvinc` | `datetime` | Si | - | Fecha de salida/desvinculacion del empleado |
| `empemp_razon_desvinc` | `smallint` | Si | - | Razon de la salida |
| `empemp_tipo_salario` | `smallint` | Si | - | Tipo de salario (Grupo de atributos) |
| `nomcathor_id` | `int` | Si | - | id de categoria para pago de horas trabajada |
| `admhorario_id` | `smallint` | Si | - | id de turno/horario |
| `admciaars_id` | `int` | Si | - | id de empresa adm riesgo de salud |
| `admciaafp_id` | `int` | Si | - | id de empresa adm fondo de pensiones |
| `admciasegvida_id` | `int` | Si | - | id de empresa seguro de vida |
| `empemp_vac_dias_tomados` | `decimal(12,2)` | Si | - | Cantidad de dias de vacaciones tomados |
| `empemp_vac_dias_pendiente` | `decimal(12,2)` | Si | - | Cantidad de dias de vacaciones pendientes |
| `empemp_vehiculo_empresarial` | `char(1)` | Si | - | Indicador si usa/tiene vehiculo empresarial asignado |
| `empemp_estado_empleado` | `smallint` | No | - | Estado del Empleado:  1 = Actvio, 2 = Inactivo, 3 = Suspensión, 4 = Vacaciones, 5 = Licencia |
| `empemp_ind_afp` | `smallint` | Si | - | Indica si al empleado se le descontara AFP |
| `empemp_ind_sfs` | `smallint` | Si | - | Indica si al empleado se le descontara SFS |
| `empemp_ind_isr` | `smallint` | Si | - | Indica si al empleado se le descontara ISR |
| `empemp_estatura_pies` | `smallint` | Si | - | Estatura en Pie que tiene el empleado |
| `empemp_estatura_pulg` | `smallint` | Si | - | Estatura en pulgada que tiene el empleado |
| `empemp_email_trabajo` | `varchar(100)` | Si | - | Correo empresarial del empleado |
| `admusr_numid` | `int` | Si | - | Usuario |
| `empemp_ind_comisiones` | `smallint` | Si | - | Indica si el empleado comisiona |
| `empemp_numiddy` | `varchar(30)` | Si | - | - |
| `empemp_clasificacion1` | `smallint` | Si | - | Clasificacion Especial 1 para usos variables |
| `empemp_clasificacion2` | `smallint` | Si | - | Clasificacion Especial 2 para usos variables |
| `empemp_clasificacion3` | `smallint` | Si | - | Clasificacion Especial 3 para usos variables |
| `empemp_modalidad` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |
| `emp_supervisor_multicompania` | `smallint` | No | - | Indicador para saber si un empleado puede ser supervisor en multiples compañias. 0 = Falso, 1 = Verdadero |

### Relaciones (Foreign Keys)
- `hempempmst.admpos_id` -> `hadmposmst.admpos_id`
- `hempempmst.admgradoaca_id` -> `hadmgradoacamst.admgradoaca_id`
- `hempempmst.admcompania_id` -> `xadmcompaniamst.admcompania_id`
- `hempempmst.admhorario_id` -> `hadmhorariomst.admhorario_id`
- `hempempmst.nomban_numid` -> `hnombanmst.nomban_numid`
- `hempempmst.admsucursal_id` -> `xadmsucursalmst.admsucursal_id`
- `hempempmst.admide_codigo` -> `xadmidemst.admide_codigo`
- `hempempmst.admdep_id` -> `hadmdepmst.admdep_id`

---

## 21. Tabla: `hempempmst_20250630`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empemp_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `admsucursal_id` | `smallint` | No | - | - |
| `admdep_id` | `smallint` | No | - | - |
| `admpos_id` | `smallint` | No | - | - |
| `empemp_codigo` | `varchar(10)` | No | - | - |
| `recsol_numid` | `int` | Si | - | - |
| `empemp_carnet` | `varchar(10)` | Si | - | - |
| `empemp_referencia` | `varchar(10)` | Si | - | - |
| `empemp_cia_retencion` | `smallint` | No | - | - |
| `empemp_establecimiento_MT` | `smallint` | Si | - | - |
| `admide_codigo` | `int` | No | - | - |
| `empemp_identificacion` | `varchar(20)` | No | - | - |
| `empemp_primer_nombre` | `varchar(50)` | No | - | - |
| `empemp_segundo_nombre` | `varchar(50)` | Si | - | - |
| `empemp_primer_apellido` | `varchar(50)` | No | - | - |
| `empemp_segundo_apellido` | `varchar(50)` | Si | - | - |
| `empemp_nombre_completo` | `varchar(100)` | Si | - | - |
| `admgradoaca_id` | `smallint` | Si | - | - |
| `empemp_etiqueta` | `varchar(300)` | Si | - | - |
| `cpeemp_supervisor` | `int` | Si | - | - |
| `admsts_codigo` | `smallint` | Si | - | - |
| `empemp_stage` | `smallint` | Si | - | - |
| `empemp_salario` | `decimal(12,2)` | No | - | - |
| `empemp_porciento_salario` | `decimal(12,2)` | No | - | - |
| `empemp_comisiones` | `decimal(12,2)` | Si | - | - |
| `empemp_tope_comisiones` | `decimal(12,2)` | Si | - | - |
| `empemp_nacionalidad` | `smallint` | No | - | - |
| `empemp_fecha_nacimiento` | `date` | No | - | - |
| `empemp_pais_nacimiento` | `smallint` | Si | - | - |
| `empemp_saldofavor_isr` | `decimal(12,2)` | Si | - | - |
| `empemp_genero` | `smallint` | No | - | - |
| `empemp_estado_civil` | `smallint` | No | - | - |
| `empemp_cantidad_hijos` | `smallint` | Si | - | - |
| `empemp_pais_dire` | `smallint` | Si | - | - |
| `empemp_ciudad_dire` | `smallint` | Si | - | - |
| `empemp_sector_dire` | `int` | Si | - | - |
| `empemp_calle` | `text` | Si | - | - |
| `empemp_camisa_size` | `varchar(20)` | Si | - | - |
| `empemp_pantalon_size` | `varchar(20)` | Si | - | - |
| `empemp_zapato_size` | `varchar(20)` | Si | - | - |
| `empemp_email` | `varchar(100)` | Si | - | - |
| `empemp_telefono_personal` | `varchar(20)` | No | - | - |
| `empemp_telefono_trabajo` | `varchar(20)` | No | - | - |
| `empemp_forma_pago` | `smallint` | Si | - | - |
| `nomban_numid` | `smallint` | Si | - | - |
| `admtcta_id` | `smallint` | Si | - | - |
| `empemp_numero_cta` | `varchar(30)` | Si | - | - |
| `empemp_tipo_sangre` | `smallint` | Si | - | - |
| `empemp_condicion_med` | `text` | Si | - | - |
| `empemp_discapacidad` | `text` | Si | - | - |
| `empemp_riesgo` | `smallint` | Si | - | - |
| `empemp_contacto_emerg` | `varchar(50)` | Si | - | - |
| `empemp_tel_contacto_emerg` | `varchar(50)` | Si | - | - |
| `empemp_tipo_contrato` | `smallint` | No | - | - |
| `empemp_fecha_inicio` | `datetime` | No | - | - |
| `empemp_fecha_final` | `datetime` | Si | - | - |
| `empemp_fecha_desvinc` | `datetime` | Si | - | - |
| `empemp_razon_desvinc` | `smallint` | Si | - | - |
| `empemp_tipo_salario` | `smallint` | Si | - | - |
| `nomcathor_id` | `int` | Si | - | - |
| `admhorario_id` | `smallint` | Si | - | - |
| `admciaars_id` | `int` | Si | - | - |
| `admciaafp_id` | `int` | Si | - | - |
| `admciasegvida_id` | `int` | Si | - | - |
| `empemp_vac_dias_tomados` | `decimal(12,2)` | Si | - | - |
| `empemp_vac_dias_pendiente` | `decimal(12,2)` | Si | - | - |
| `empemp_vehiculo_empresarial` | `char(1)` | Si | - | - |
| `empemp_estado_empleado` | `smallint` | No | - | - |
| `empemp_ind_afp` | `smallint` | Si | - | - |
| `empemp_ind_sfs` | `smallint` | Si | - | - |
| `empemp_ind_isr` | `smallint` | Si | - | - |
| `empemp_estatura_pies` | `smallint` | Si | - | - |
| `empemp_estatura_pulg` | `smallint` | Si | - | - |
| `empemp_email_trabajo` | `varchar(100)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `empemp_ind_comisiones` | `smallint` | Si | - | - |
| `empemp_numiddy` | `varchar(30)` | Si | - | - |
| `empemp_clasificacion1` | `smallint` | Si | - | - |
| `empemp_clasificacion2` | `smallint` | Si | - | - |
| `empemp_clasificacion3` | `smallint` | Si | - | - |
| `empemp_modalidad` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 22. Tabla: `hempempmst_bk20241226`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empemp_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `admsucursal_id` | `smallint` | No | - | - |
| `admdep_id` | `smallint` | No | - | - |
| `admpos_id` | `smallint` | No | - | - |
| `empemp_codigo` | `varchar(10)` | No | - | - |
| `recsol_numid` | `int` | Si | - | - |
| `empemp_carnet` | `varchar(10)` | Si | - | - |
| `empemp_referencia` | `varchar(10)` | Si | - | - |
| `empemp_cia_retencion` | `smallint` | No | - | - |
| `empemp_establecimiento_MT` | `smallint` | Si | - | - |
| `admide_codigo` | `int` | No | - | - |
| `empemp_identificacion` | `varchar(20)` | No | - | - |
| `empemp_primer_nombre` | `varchar(50)` | No | - | - |
| `empemp_segundo_nombre` | `varchar(50)` | Si | - | - |
| `empemp_primer_apellido` | `varchar(50)` | No | - | - |
| `empemp_segundo_apellido` | `varchar(50)` | Si | - | - |
| `empemp_nombre_completo` | `varchar(100)` | Si | - | - |
| `admgradoaca_id` | `smallint` | Si | - | - |
| `empemp_etiqueta` | `varchar(300)` | Si | - | - |
| `cpeemp_supervisor` | `int` | Si | - | - |
| `admsts_codigo` | `smallint` | Si | - | - |
| `empemp_stage` | `smallint` | Si | - | - |
| `empemp_salario` | `decimal(12,2)` | No | - | - |
| `empemp_porciento_salario` | `decimal(12,2)` | No | - | - |
| `empemp_comisiones` | `decimal(12,2)` | Si | - | - |
| `empemp_tope_comisiones` | `decimal(12,2)` | Si | - | - |
| `empemp_nacionalidad` | `smallint` | No | - | - |
| `empemp_fecha_nacimiento` | `date` | No | - | - |
| `empemp_pais_nacimiento` | `smallint` | Si | - | - |
| `empemp_saldofavor_isr` | `decimal(12,2)` | Si | - | - |
| `empemp_genero` | `smallint` | No | - | - |
| `empemp_estado_civil` | `smallint` | No | - | - |
| `empemp_cantidad_hijos` | `smallint` | Si | - | - |
| `empemp_pais_dire` | `smallint` | Si | - | - |
| `empemp_ciudad_dire` | `smallint` | Si | - | - |
| `empemp_sector_dire` | `smallint` | Si | - | - |
| `empemp_calle` | `text` | Si | - | - |
| `empemp_camisa_size` | `varchar(20)` | Si | - | - |
| `empemp_pantalon_size` | `varchar(20)` | Si | - | - |
| `empemp_zapato_size` | `varchar(20)` | Si | - | - |
| `empemp_email` | `varchar(100)` | Si | - | - |
| `empemp_telefono_personal` | `varchar(20)` | No | - | - |
| `empemp_telefono_trabajo` | `varchar(20)` | No | - | - |
| `empemp_forma_pago` | `smallint` | Si | - | - |
| `nomban_numid` | `smallint` | Si | - | - |
| `admtcta_id` | `smallint` | Si | - | - |
| `empemp_numero_cta` | `varchar(30)` | Si | - | - |
| `empemp_tipo_sangre` | `smallint` | Si | - | - |
| `empemp_condicion_med` | `text` | Si | - | - |
| `empemp_discapacidad` | `text` | Si | - | - |
| `empemp_riesgo` | `smallint` | Si | - | - |
| `empemp_contacto_emerg` | `varchar(50)` | Si | - | - |
| `empemp_tel_contacto_emerg` | `varchar(50)` | Si | - | - |
| `empemp_tipo_contrato` | `smallint` | No | - | - |
| `empemp_fecha_inicio` | `datetime` | No | - | - |
| `empemp_fecha_final` | `datetime` | Si | - | - |
| `empemp_fecha_desvinc` | `datetime` | Si | - | - |
| `empemp_razon_desvinc` | `smallint` | Si | - | - |
| `empemp_tipo_salario` | `smallint` | Si | - | - |
| `nomcathor_id` | `int` | Si | - | - |
| `admhorario_id` | `smallint` | Si | - | - |
| `admciaars_id` | `int` | Si | - | - |
| `admciaafp_id` | `int` | Si | - | - |
| `admciasegvida_id` | `int` | Si | - | - |
| `empemp_vac_dias_tomados` | `decimal(12,2)` | Si | - | - |
| `empemp_vac_dias_pendiente` | `decimal(12,2)` | Si | - | - |
| `empemp_vehiculo_empresarial` | `char(1)` | Si | - | - |
| `empemp_estado_empleado` | `smallint` | No | - | - |
| `empemp_ind_afp` | `smallint` | Si | - | - |
| `empemp_ind_sfs` | `smallint` | Si | - | - |
| `empemp_ind_isr` | `smallint` | Si | - | - |
| `empemp_estatura_pies` | `smallint` | Si | - | - |
| `empemp_estatura_pulg` | `smallint` | Si | - | - |
| `empemp_email_trabajo` | `varchar(100)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `empemp_ind_comisiones` | `smallint` | Si | - | - |
| `empemp_numiddy` | `varchar(30)` | Si | - | - |
| `empemp_clasificacion1` | `smallint` | Si | - | - |
| `empemp_clasificacion2` | `smallint` | Si | - | - |
| `empemp_clasificacion3` | `smallint` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 23. Tabla: `hempempmst_email2025`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empemp_numid` | `int` | No | - | - |
| `admcompania_id` | `smallint` | No | - | - |
| `empemp_identificacion` | `varchar(20)` | No | - | - |
| `empemp_email` | `varchar(100)` | Si | - | - |
| `empemp_email_trabajo` | `varchar(100)` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 24. Tabla: `hempempmstcf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empemp_numid` | `int` | No | PK | - |
| `tblfld_custom2` | `int` | Si | - | - |
| `tblfld_custom0` | `varchar(50)` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

---

## 25. Tabla: `hemphabilidaddet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `emphabilidad_numid` | `smallint` | No | PK | Id único de detalle de habilidades |
| `empemp_numid` | `int` | No | - | Id del empleado |
| `admhab_numid` | `smallint` | No | - | Id del tipo de habilidad |
| `emphabilidad_descripcion` | `varchar(50)` | No | - | Descripción o nombre de habilidad |
| `emphabilidad_nivel` | `smallint` | No | - | Nivel de habilidad : 0 = Básico, 1 = Medio, 2 = Avanzado |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hemphabilidaddet.empemp_numid` -> `hempempmst.empemp_numid`
- `hemphabilidaddet.admhab_numid` -> `hadmhabmst.admhab_numid`

---

## 26. Tabla: `hempherramientasdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empherramientas_numid` | `smallint` | No | PK | id de la Herramienta del Empleado |
| `empemp_numid` | `int` | No | - | Id de empleado |
| `empherramientas_fechaasigna` | `date` | No | - | Fecha de asignación de la herramienta |
| `empherramientas_descripcion` | `varchar(-1)` | Si | - | Descripción de la Herramienta |
| `empherramientas_referencia` | `varchar(50)` | Si | - | Referencia de la herramienta |
| `empherramientas_fechafin` | `date` | Si | - | Fecha Fin de la asignación de la herramienta |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo, -1 - Eliminado. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempherramientasdet.empemp_numid` -> `hempempmst.empemp_numid`

---

## 27. Tabla: `hempplansegdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empplanseg_numid` | `smallint` | No | PK | id del seguro asociado al empleado |
| `empemp_numid` | `int` | No | - | Id de Empleado |
| `admprovseg_numid` | `smallint` | No | - | id Proveedor Seguro |
| `admplanseg_numid` | `smallint` | No | - | id Plan de Salud |
| `empplanseg_tarifa` | `numeric(12,2)` | No | - | Tarifa Mensual x Persona |
| `empplanseg_porcempr` | `numeric(5,2)` | No | - | Porciento Empresa |
| `empplanseg_porcempl` | `numeric(5,2)` | No | - | Porciento Empleado |
| `empplanseg_comentario` | `varchar(-1)` | Si | - | Comentario |
| `admsts_codigo` | `smallint` | No | - | Estado: 0-Inactivo, 1-Activo, -1 - Eliminado. Default=1 |
| `admusr_numid` | `int` | Si | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempplansegdet.admplanseg_numid` -> `hadmplansegmst.admplanseg_numid`
- `hempplansegdet.empemp_numid` -> `hempempmst.empemp_numid`
- `hempplansegdet.admprovseg_numid` -> `hadmprovsegmst.admprovseg_numid`

---

## 28. Tabla: `hempresumedet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `empresume_numid` | `smallint` | No | PK | Id único de detalle de resumé |
| `empemp_numid` | `int` | No | - | Id del empleado |
| `empresume_tipo` | `smallint` | No | - | - |
| `empresume_nombre` | `varchar(50)` | No | - | - |
| `empresume_lugar` | `varchar(50)` | Si | - | - |
| `empresume_descripcion` | `varchar(-1)` | Si | - | - |
| `empresume_fecha_ini` | `datetime` | No | - | - |
| `empresume_fecha_fin` | `datetime` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `tag` | `varchar(-1)` | Si | - | - |

### Relaciones (Foreign Keys)
- `hempresumedet.empemp_numid` -> `hempempmst.empemp_numid`

---

