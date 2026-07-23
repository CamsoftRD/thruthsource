# Documentación de Base de Datos: Módulo Sistema

## 1. Tabla: `xsdaaccciamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacccia_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdaacc_reqaut` | `smallint` | No | - | - |
| `admcompania_id` | `int` | No | - | - |

---

## 2. Tabla: `xsdaaccdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | PK | - |
| `sdaacc_master` | `int` | No | PK | - |

---

## 3. Tabla: `xsdaaccdet_20250909`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | - | - |
| `sdaacc_master` | `int` | No | - | - |

---

## 4. Tabla: `xsdaaccdet_20251023`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | - | - |
| `sdaacc_master` | `int` | No | - | - |

---

## 5. Tabla: `xsdaaccdet_bk20250912`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | - | - |
| `sdaacc_master` | `int` | No | - | - |

---

## 6. Tabla: `xsdaaccdet_bk20250925`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | - | - |
| `sdaacc_master` | `int` | No | - | - |

---

## 7. Tabla: `xsdaaccfldmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaaccfld_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdafldd_numid` | `int` | No | - | - |
| `sdaacc_master` | `int` | Si | - | - |
| `sdatbl_numid` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdaaccfldmst.sdafldd_numid` -> `xsdaflddmst.sdafldd_numid`

---

## 8. Tabla: `xsdaaccfldmstlan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanrecord_id` | `int` | No | PK | - |
| `sdaaccfld_numid` | `int` | No | - | - |
| `sdafldd_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | Si | - | - |
| `sdafldd_caption` | `varchar(50)` | Si | - | - |
| `sdafldd_placeholder` | `varchar(50)` | Si | - | - |

---

## 9. Tabla: `xsdaaccmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | PK | - |
| `sdaacc_guid` | `varchar(40)` | No | - | - |
| `sdaacc_tipo` | `int` | No | - | - |
| `sdaacc_codigo` | `varchar(40)` | Si | - | - |
| `sdamod_numid` | `int` | No | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdaacc_reqaut` | `smallint` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | Si | - | - |
| `sdaacc_tooltip` | `nvarchar(-1)` | Si | - | - |
| `sdaacc_screentype` | `smallint` | Si | - | - |

---

## 10. Tabla: `xsdaaccmst_20250909`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | PK | - |
| `sdaacc_guid` | `varchar(40)` | No | - | - |
| `sdaacc_tipo` | `int` | No | - | - |
| `sdaacc_codigo` | `varchar(40)` | Si | - | - |
| `sdamod_numid` | `int` | No | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdaacc_reqaut` | `smallint` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | Si | - | - |
| `sdaacc_tooltip` | `varchar(50)` | Si | - | - |
| `sdaacc_screentype` | `smallint` | Si | - | - |

---

## 11. Tabla: `xsdaaccmst_20250915`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | PK | - |
| `sdaacc_guid` | `varchar(40)` | No | - | - |
| `sdaacc_tipo` | `int` | No | - | - |
| `sdaacc_codigo` | `varchar(40)` | Si | - | - |
| `sdamod_numid` | `int` | No | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdaacc_reqaut` | `smallint` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | Si | - | - |
| `sdaacc_tooltip` | `varchar(50)` | Si | - | - |
| `sdaacc_screentype` | `smallint` | Si | - | - |

---

## 12. Tabla: `xsdaaccmst_20251023`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | PK | - |
| `sdaacc_guid` | `varchar(40)` | No | - | - |
| `sdaacc_tipo` | `int` | No | - | - |
| `sdaacc_codigo` | `varchar(40)` | Si | - | - |
| `sdamod_numid` | `int` | No | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdaacc_reqaut` | `smallint` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | Si | - | - |
| `sdaacc_tooltip` | `nvarchar(-1)` | Si | - | - |
| `sdaacc_screentype` | `smallint` | Si | - | - |

---

## 13. Tabla: `xsdaaccmst_bk20250912`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | PK | - |
| `sdaacc_guid` | `varchar(40)` | No | - | - |
| `sdaacc_tipo` | `int` | No | - | - |
| `sdaacc_codigo` | `varchar(40)` | Si | - | - |
| `sdamod_numid` | `int` | No | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdaacc_reqaut` | `smallint` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | Si | - | - |
| `sdaacc_tooltip` | `varchar(50)` | Si | - | - |
| `sdaacc_screentype` | `smallint` | Si | - | - |

---

## 14. Tabla: `xsdaaccmst_bk20250925`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaacc_numid` | `int` | No | PK | - |
| `sdaacc_guid` | `varchar(40)` | No | - | - |
| `sdaacc_tipo` | `int` | No | - | - |
| `sdaacc_codigo` | `varchar(40)` | Si | - | - |
| `sdamod_numid` | `int` | No | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdaacc_reqaut` | `smallint` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | Si | - | - |
| `sdaacc_tooltip` | `nvarchar(-1)` | Si | - | - |
| `sdaacc_screentype` | `smallint` | Si | - | - |

---

## 15. Tabla: `xsdaaccmstlan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanrecord_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | No | - | - |
| `sdaacc_tooltip` | `nvarchar(-1)` | Si | - | - |

---

## 16. Tabla: `xsdaaccmstlan_20250909`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanrecord_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | No | - | - |
| `sdaacc_tooltip` | `varchar(100)` | Si | - | - |

---

## 17. Tabla: `xsdaaccmstlan_20250915`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanrecord_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | No | - | - |
| `sdaacc_tooltip` | `varchar(100)` | Si | - | - |

---

## 18. Tabla: `xsdaaccmstlan_20251023`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanrecord_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | No | - | - |
| `sdaacc_tooltip` | `nvarchar(-1)` | Si | - | - |

---

## 19. Tabla: `xsdaaccmstlan_bk20250912`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanrecord_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | No | - | - |
| `sdaacc_tooltip` | `varchar(100)` | Si | - | - |

---

## 20. Tabla: `xsdaaccmstlan_bk20250925`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanrecord_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | No | - | - |
| `sdaacc_nombre` | `varchar(70)` | No | - | - |
| `sdaacc_tooltip` | `nvarchar(-1)` | Si | - | - |

---

## 21. Tabla: `xsdaappmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaapp_numid` | `int` | No | PK | - |
| `sdaapp_guid` | `varchar(40)` | Si | - | - |
| `sdaapp_key` | `varchar(100)` | Si | - | - |
| `sdaapp_master` | `int` | Si | - | - |
| `sdaapp_nombre` | `varchar(70)` | No | - | - |
| `sdaapp_authscheme` | `varchar(20)` | Si | - | - |
| `sdaapp_password` | `varbinary` | No | - | - |
| `sdaapp_passwdsalt` | `varbinary` | No | - | - |
| `sdaapp_expdate` | `datetime` | Si | - | - |
| `sdaapp_description` | `varchar(100)` | Si | - | - |
| `sdaapp_defaultuser` | `varchar(100)` | Si | - | - |
| `admgre_numid` | `int` | Si | - | - |

---

## 22. Tabla: `xsdaappseraddrmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaappseraddr_numid` | `int` | No | PK | - |
| `sdaappser_numid` | `int` | No | - | - |
| `sdadomain_numid` | `int` | No | - | - |
| `sdaenv_numid` | `int` | Si | - | - |
| `sdacfgdata_endpoint` | `varchar(100)` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdaappseraddrmst.sdadomain_numid` -> `xsdadomainmst.sdadomain_numid`
- `xsdaappseraddrmst.sdaenv_numid` -> `xsdaenvmst.sdaenv_numid`
- `xsdaappseraddrmst.sdaappser_numid` -> `xsdaappsermst.sdaappser_numid`

---

## 23. Tabla: `xsdaappsermst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaappser_numid` | `int` | No | PK | - |
| `sdaappser_name` | `varchar(60)` | Si | - | - |
| `admsts_codigo` | `int` | Si | - | - |

---

## 24. Tabla: `xsdaautorizmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaautoriz_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdaacc_numidFrom` | `int` | No | - | - |
| `sdaautoriz_indaut` | `smallint` | No | - | - |
| `sdaautoriz_fecha` | `date` | Si | - | - |
| `sdaautoriz_fechaaut` | `date` | Si | - | - |
| `sdaautoriztipo_numid` | `int` | No | - | - |
| `sdaautoriz_nombreent` | `varchar(30)` | Si | - | - |
| `sdaautoriz_ident` | `int` | No | - | - |
| `sdaautoriz_campo` | `varchar(20)` | Si | - | - |
| `sdauatoriz_campovaloract` | `varchar(30)` | Si | - | - |
| `sdaautoriz_campovalorlue` | `varchar(30)` | Si | - | - |
| `admusr_autoriza` | `int` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `sdaautoriz_dtime` | `datetime` | Si | - | - |
| `sdaautoriz_comment` | `varchar(-1)` | Si | - | - |
| `sdamod_numid` | `int` | No | - | - |
| `admcompania_id` | `int` | No | - | - |
| `sdaautoriz_descr` | `varchar(-1)` | Si | - | - |
| `admsucursal_id` | `int` | Si | - | - |
| `sdaautoriz_customdata` | `varchar(-1)` | Si | - | - |
| `sdaautoriz_wflactionfrom` | `int` | Si | - | - |
| `sdaautoriz_wflactionto` | `int` | Si | - | - |
| `sdaautoriz_wflstsfrom` | `smallint` | Si | - | - |
| `sdaautoriz_wflststo` | `smallint` | Si | - | - |
| `admusr_asignado` | `int` | Si | - | - |
| `sdaautoriz_prioridad` | `int` | Si | - | - |
| `sdaautoriz_fecefectividad` | `date` | Si | - | - |
| `sdaautoriz_horafectividad` | `char(5)` | Si | - | - |
| `sdaautoriz_aplicado` | `smallint` | Si | - | - |
| `sdaautoriz_fechamax` | `date` | Si | - | - |
| `admgre_numid` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdaautorizmst.sdamod_numid` -> `xsdamodmst.sdamod_numid`
- `xsdaautorizmst.sdaacc_numid` -> `xsdaaccmst.sdaacc_numid`
- `xsdaautorizmst.sdaautoriztipo_numid` -> `xsdaautoriztipomst.sdaautoriztipo_numid`

---

## 25. Tabla: `xsdaautorizmst_bkMc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaautoriz_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `sdaacc_numidFrom` | `int` | No | - | - |
| `sdaautoriz_indaut` | `smallint` | No | - | - |
| `sdaautoriz_fecha` | `date` | Si | - | - |
| `sdaautoriz_fechaaut` | `date` | Si | - | - |
| `sdaautoriztipo_numid` | `int` | No | - | - |
| `sdaautoriz_nombreent` | `varchar(30)` | Si | - | - |
| `sdaautoriz_ident` | `int` | No | - | - |
| `sdaautoriz_campo` | `varchar(20)` | Si | - | - |
| `sdauatoriz_campovaloract` | `varchar(30)` | Si | - | - |
| `sdaautoriz_campovalorlue` | `varchar(30)` | Si | - | - |
| `admusr_autoriza` | `int` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `sdaautoriz_dtime` | `datetime` | Si | - | - |
| `sdaautoriz_comment` | `varchar(70)` | Si | - | - |
| `sdamod_numid` | `int` | No | - | - |
| `admcompania_id` | `int` | No | - | - |
| `sdaautoriz_descr` | `varchar(200)` | Si | - | - |
| `admsucursal_id` | `int` | Si | - | - |
| `sdaautoriz_customdata` | `varchar(-1)` | Si | - | - |
| `sdaautoriz_wflactionfrom` | `int` | Si | - | - |
| `sdaautoriz_wflactionto` | `int` | Si | - | - |
| `sdaautoriz_wflstsfrom` | `smallint` | Si | - | - |
| `sdaautoriz_wflststo` | `smallint` | Si | - | - |
| `admusr_asignado` | `int` | Si | - | - |
| `sdaautoriz_prioridad` | `int` | Si | - | - |

---

## 26. Tabla: `xsdaautoriztipomst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaautoriztipo_numid` | `int` | No | PK | - |
| `sdaautoriztipo_nombre` | `varchar(60)` | No | - | - |
| `sdapry_cdogio` | `int` | No | - | - |
| `sdaautoriztipo_porusuario` | `smallint` | No | - | - |
| `sdaeve_codigo_aut` | `int` | Si | - | - |
| `sdaeve_codigo_rec` | `int` | Si | - | - |
| `sdaeve_codigo_can` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdaautoriztipomst.sdaeve_codigo_aut` -> `xsdaevemst.sdaeve_codigo`
- `xsdaautoriztipomst.sdapry_cdogio` -> `xsdaprymst.sdapry_codigo`
- `xsdaautoriztipomst.sdaeve_codigo_rec` -> `xsdaevemst.sdaeve_codigo`

---

## 27. Tabla: `xsdaautuserexcmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaautuserexc_numid` | `int` | No | PK | - |
| `sdaautuser_numid` | `int` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdaautuserexcmst.sdaautuser_numid` -> `xsdaautusermst.sdaautuser_numid`

---

## 28. Tabla: `xsdaautusermst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaautuser_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admgrp_numid` | `int` | Si | - | - |
| `admcompania_id` | `int` | No | - | - |

### Relaciones (Foreign Keys)
- `xsdaautusermst.admgrp_numid` -> `xadmgrpmst.admgrp_numid`

---

## 29. Tabla: `xsdablobmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdablob_numid` | `bigint` | No | PK | - |
| `sdablob_info` | `varbinary` | Si | - | - |
| `sdablob_data` | `varbinary` | Si | - | - |
| `sdablob_guid` | `varchar(40)` | Si | - | - |
| `sdablob_name` | `varchar(200)` | Si | - | - |
| `sdablob_ext` | `varchar(10)` | Si | - | - |
| `sdablob_date` | `date` | Si | - | - |
| `sdablob_dtime` | `datetime` | Si | - | - |

---

## 30. Tabla: `xsdacfgdatamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdacfgdata_numid` | `int` | No | PK | - |
| `sdacfgdata_name` | `varchar(60)` | Si | - | - |
| `sdacfgdata_data` | `varbinary` | Si | - | - |

---

## 31. Tabla: `xsdacfgdatasetmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdacfgdataset_numid` | `int` | No | PK | - |
| `sdaenv_numid` | `int` | Si | - | - |
| `sdacfgdata_numid` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdacfgdatasetmst.sdaenv_numid` -> `xsdaenvmst.sdaenv_numid`
- `xsdacfgdatasetmst.sdacfgdata_numid` -> `xsdacfgdatamst.sdacfgdata_numid`

---

## 32. Tabla: `xsdacustmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdacust_numid` | `int` | No | PK | - |
| `sdacust_name` | `varchar(50)` | Si | - | - |
| `admcli_numid` | `int` | Si | - | - |
| `sdacust_domain` | `varchar(150)` | Si | - | - |
| `sdacust_domain_dev` | `varchar(150)` | Si | - | - |
| `sdacust_domaindb` | `varchar(50)` | Si | - | - |
| `admsts_codigo` | `int` | Si | - | - |

---

## 33. Tabla: `xsdadomainmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdadomain_numid` | `int` | No | PK | - |
| `sdadomain_name` | `varchar(60)` | No | - | - |
| `admsts_codigo` | `int` | Si | - | - |

---

## 34. Tabla: `xsdaemadet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaema_numid` | `int` | No | PK | Número del correo |
| `sdaema_seq` | `int` | No | PK | Secuencia en el detalle |
| `sdaeam_extarchivo` | `char(3)` | Si | - | Extensión del archivo almacenado |
| `sdaema_nombrearchivo` | `varchar(150)` | Si | - | Nombre del archivo |
| `sdaema_contarchivo` | `varbinary` | Si | - | - |
| `sdaema_isembeded` | `smallint` | Si | - | - |

---

## 35. Tabla: `xsdaemamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaema_numid` | `int` | No | PK | Número auto-generado |
| `sdaema_subject` | `varchar(150)` | Si | - | Subject |
| `admsts_codigo` | `int` | Si | - | Estado -- 1 pend de envio, 2: enviado, 3: no enviado por algun error |
| `sdaema_text` | `text` | Si | - | - |
| `sdaema_tipoCont` | `int` | Si | - | - |
| `sdaema_from` | `varchar(80)` | Si | - | - |
| `sdaema_to` | `varchar(200)` | Si | - | To - Puede ser mas de una sep por coma |
| `sdaema_cc` | `varchar(200)` | Si | - | - |
| `sdaema_entidad` | `varchar(20)` | Si | - | - |
| `sdaema_numrefer` | `int` | Si | - | Permite asociar un id de alguna entidad |
| `sdaema_errorenvio` | `text` | Si | - | Error presentado durante el envio |
| `sdaema_senderusername` | `varchar(50)` | Si | - | - |
| `sdaema_senderuserpass` | `varchar(100)` | Si | - | - |
| `sdaema_dtime` | `datetime` | Si | - | - |

---

## 36. Tabla: `xsdaenvmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaenv_numid` | `int` | No | PK | - |
| `sdaenv_name` | `varchar(60)` | Si | - | - |

---

## 37. Tabla: `xsdaevelog`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaeve_serial` | `int` | No | PK | - |
| `sdaeve_codigo` | `int` | Si | - | - |
| `sdaeve_fecha` | `date` | Si | - | - |
| `sdaeve_data` | `varchar(-1)` | Si | - | - |
| `sdaeve_dtime` | `datetime` | Si | - | - |
| `admusr_codigo` | `varchar(70)` | Si | - | - |

---

## 38. Tabla: `xsdaevemst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaeve_codigo` | `int` | No | PK | - |
| `sdaeve_nombre` | `varchar(50)` | Si | - | - |
| `sdaeve_guid` | `varchar(40)` | Si | - | - |
| `sdapry_codigo` | `int` | Si | - | - |
| `sdaeve_async` | `smallint` | Si | - | - |
| `sdamod_codigo` | `char(3)` | Si | - | - |

---

## 39. Tabla: `xsdaflddciamst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaflddcia_numid` | `int` | No | PK | - |
| `sdafldd_numid` | `int` | No | - | - |
| `sdafldd_reqaut` | `smallint` | No | - | - |
| `sdafldd_default` | `varchar(20)` | Si | - | - |
| `sdafldd_newstate` | `smallint` | No | - | - |
| `sdafldd_editstate` | `smallint` | No | - | - |
| `sdafldd_allownull` | `smallint` | No | - | - |
| `admcompania_id` | `int` | No | - | - |

### Relaciones (Foreign Keys)
- `xsdaflddciamst.sdafldd_numid` -> `xsdaflddmst.sdafldd_numid`

---

## 40. Tabla: `xsdaflddlkmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaflddlk_numid` | `int` | No | PK | - |
| `sdafldlk_numid` | `int` | No | - | - |
| `sdafldd_numid` | `int` | No | - | - |
| `sdafldlk_ismult` | `int` | Si | - | - |
| `sdafldlk_multgruoup` | `varchar(50)` | Si | - | - |
| `sdafldlk_nombre` | `varchar(60)` | Si | - | - |
| `sdafldlk_customlist` | `varchar(150)` | Si | - | - |

---

## 41. Tabla: `xsdaflddmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdafldd_numid` | `int` | No | PK | - |
| `sdafldd_datatype` | `smallint` | No | - | - |
| `sdafldd_entityname` | `varchar(60)` | Si | - | - |
| `sdafldd_fieldname` | `varchar(20)` | Si | - | - |
| `sdafldd_mask` | `varchar(20)` | Si | - | - |
| `sdafldd_editor` | `smallint` | No | - | - |
| `sdafldd_groupnum` | `smallint` | No | - | - |
| `sdafldd_displayorder` | `smallint` | No | - | - |
| `sdafldd_iscust` | `smallint` | No | - | - |
| `sdafldd_fielddescr` | `varchar(60)` | Si | - | - |
| `sdatbl_numid` | `int` | Si | - | - |
| `sdafldd_valuefieldname` | `varchar(60)` | Si | - | - |
| `sdafldd_length` | `int` | Si | - | - |
| `sdafldd_isprivate` | `smallint` | Si | - | - |
| `sdafldd_issensitive` | `int` | Si | - | - |

---

## 42. Tabla: `xsdaflddmstlan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanrecord_id` | `int` | No | PK | - |
| `sdafldd_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | Si | - | - |
| `sdafldd_caption` | `varchar(50)` | Si | - | - |
| `sdafldd_placeholder` | `varchar(50)` | Si | - | - |

---

## 43. Tabla: `xsdafldentmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdafldent_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | Si | - | - |
| `sdatbl_numid` | `int` | Si | - | - |

---

## 44. Tabla: `xsdafldlkmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdafldlk_numid` | `int` | No | PK | - |
| `sdafldlk_entityname` | `varchar(30)` | Si | - | - |
| `sdafldlk_valueField` | `varchar(20)` | Si | - | - |
| `sdafldlk_displayField` | `varchar(20)` | Si | - | - |
| `sdafldlk_default` | `varchar(10)` | Si | - | - |
| `sdafldlk_endpoint` | `varchar(100)` | Si | - | - |
| `sdatbl_numid` | `int` | Si | - | - |
| `sdamod_numid` | `int` | Si | - | - |

---

## 45. Tabla: `xsdafutureeventmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdafutureevent_numid` | `int` | No | PK | - |
| `sdafutureevent_fecha` | `date` | Si | - | - |
| `sdafutureevent_fechaefectiva` | `date` | Si | - | - |
| `sdafutureevent_horaefectiva` | `char(5)` | Si | - | - |
| `sdafutureevent_data` | `varchar(-1)` | Si | - | - |
| `sdafutureevent_eventid` | `int` | Si | - | - |
| `sdafutureevent_apiid` | `int` | Si | - | - |
| `sdaautoriz_numid` | `int` | Si | - | - |
| `admsts_codigo` | `int` | Si | - | - |
| `admcompania_id` | `int` | Si | - | - |

---

## 46. Tabla: `xsdagrupoflddet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdagrupofld_numid` | `int` | No | PK | - |
| `sdafld_numid` | `int` | No | PK | - |

---

## 47. Tabla: `xsdagrupofldmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdagrupofld_numid` | `int` | No | PK | - |
| `sdagrupofld_nombre` | `varchar(60)` | Si | - | - |

---

## 48. Tabla: `xsdagrupofldvalsdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdagrupofldvals_key` | `varchar(30)` | No | PK | - |
| `sdagrupofld_numid` | `int` | No | PK | - |
| `sdafld_numid` | `int` | No | PK | - |
| `sdagrupofldvals_valor` | `varchar(200)` | Si | - | - |

---

## 49. Tabla: `xsdaitfmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaitf_numid` | `int` | No | PK | Id |
| `sdaitf_nombre` | `varchar(200)` | Si | - | Descripción |
| `sdaitf_class` | `varchar(200)` | No | - | Nombre completo de la clase |
| `sdaitf_assembly` | `varchar(250)` | No | - | Nombre del archivo dll sin la extensión |
| `sdaitf_version` | `varchar(20)` | Si | - | Versión |
| `sdaitf_culture` | `varchar(20)` | Si | - | Cultura |
| `sdaitf_key` | `varchar(100)` | Si | - | Signing Key |
| `sdaitf_provider` | `varchar(50)` | No | - | Clave que indentifica a ese proveedor |

---

## 50. Tabla: `xsdalanent_mc`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanent_numid` | `float` | Si | - | - |
| `sdalan_codigo` | `nvarchar(510)` | Si | - | - |
| `sdalanent_nombre` | `nvarchar(510)` | Si | - | - |
| `sdalanent_entity` | `nvarchar(510)` | Si | - | - |
| `sdalanent_entitykey` | `float` | Si | - | - |
| `sdalanent_descr` | `nvarchar(510)` | Si | - | - |

---

## 51. Tabla: `xsdalanentdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalanent_numid` | `int` | No | PK | - |
| `sdalan_codigo` | `char(5)` | Si | - | - |
| `sdalanent_nombre` | `varchar(60)` | Si | - | - |
| `sdalanent_entity` | `varchar(30)` | Si | - | - |
| `sdalanent_entitykey` | `int` | Si | - | - |
| `sdalanent_descr` | `varchar(150)` | Si | - | - |

---

## 52. Tabla: `xsdalanmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalan_codigo` | `char(5)` | No | PK | Codigo Idioma o Cultura |
| `sdalan_nombre` | `varchar(60)` | No | - | Nombre Idioma o Cultura |

---

## 53. Tabla: `xsdalogmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalog_numid` | `int` | No | PK | ID del registro |
| `sdalog_text` | `varbinary` | Si | - | Contenido en Bytes |
| `sdalog_Errortext` | `varbinary` | Si | - | Contenido en Bytes de la excepción si hay |
| `sdalog_fecha` | `date` | Si | - | Fecha corta del registro |
| `sdalog_fechacompleta` | `datetime` | Si | - | Fecha con tiempo del registro |
| `sdalog_usuario` | `varchar(40)` | Si | - | Usuario conectado |
| `sdalog_nivel` | `int` | Si | - | Nivel de logging, como está documentado en Core. 0-Trace,1-Debug,2-Informacion,3-Warning,4-Error,5-Critial |
| `sdalog_origen` | `varchar(100)` | Si | - | - |
| `sdalog_procref` | `varchar(100)` | Si | - | Permite asociar de forma éxplicita un nombre de proceso o namepace a un grupo de logging |
| `sdalog_numref` | `int` | Si | - | Permite asociar de forma éxplicita un nombre de proceso o namepace y un id a un grupo de logging |
| `sdalog_currdataname` | `varchar(100)` | Si | - | Permite asociar de forma éxplicita un nombre el nombre de alguna propiedad que se está procesando |
| `sdalog_currdataid` | `varchar(20)` | Si | - | Permite asociar de forma éxplicita el id o valor de alguna propiedad que está procesando |
| `sdalog_proclogid` | `int` | Si | - | - |
| `admmsg_numid` | `int` | Si | - | - |
| `sdalog_dbope` | `varchar(20)` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `sdalog_entityname` | `varchar(30)` | Si | - | - |
| `sdalog_entitykeyvalue` | `int` | Si | - | - |
| `sdalog_domain` | `varchar(100)` | Si | - | - |

---

## 54. Tabla: `xsdalogusrdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalogusrdet_numid` | `int` | No | - | - |
| `sdalogusr_numid` | `int` | No | PK | - |
| `admusr_numid` | `int` | Si | - | - |
| `admgrp_numid` | `int` | Si | - | - |
| `admcompania_id` | `int` | No | - | - |
| `sdalogusr_correo` | `varchar(50)` | Si | - | - |

---

## 55. Tabla: `xsdalogusrmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdalogusr_numid` | `int` | No | - | - |
| `sdalogusr_origen` | `varchar(100)` | Si | - | - |
| `sdalogusr_msgnumid` | `int` | Si | - | - |
| `sdalogusr_errcontains` | `varchar(60)` | Si | - | - |
| `sdalogusr_procref` | `varchar(50)` | Si | - | - |
| `sdalogusr_numref` | `int` | Si | - | - |
| `sdalogusr_dbope` | `int` | Si | - | - |
| `sdalog_nivel` | `int` | Si | - | - |

---

## 56. Tabla: `xsdamerblob`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdamer_numid` | `int` | No | PK | - |
| `blob_data` | `varbinary` | Si | - | - |
| `blob_info` | `varbinary` | Si | - | - |
| `blob_guid` | `varchar(50)` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdamerblob.sdamer_numid` -> `xsdamermst.sdamer_numid`

---

## 57. Tabla: `xsdamerdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdamer_numiddet` | `int` | No | PK | - |
| `sdamer_numid` | `int` | No | - | - |
| `sdamer_param` | `varchar(50)` | No | - | - |
| `sdamer_ptype` | `smallint` | No | - | - |

### Relaciones (Foreign Keys)
- `xsdamerdet.sdamer_numid` -> `xsdamermst.sdamer_numid`

---

## 58. Tabla: `xsdamermst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdamer_numid` | `int` | No | PK | - |
| `sdamer_guid` | `varchar(50)` | No | - | - |
| `sdamer_nombre` | `varchar(40)` | No | - | - |
| `sdamer_descr` | `varchar(60)` | Si | - | - |
| `admusr_numid` | `int` | No | - | - |
| `sdamer_orgtype` | `smallint` | Si | - | - |
| `sdamer_reportId` | `int` | Si | - | - |
| `sdamer_ext` | `char(4)` | Si | - | - |

---

## 59. Tabla: `xsdamodlan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdamod_numid` | `int` | No | PK | - |
| `sdalan_codigo` | `char(5)` | No | PK | - |
| `sdamod_nombre` | `varchar(50)` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdamodlan.sdamod_numid` -> `xsdamodmst.sdamod_numid`

---

## 60. Tabla: `xsdamodmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdamod_numid` | `int` | No | PK | - |
| `sdamod_siglas` | `char(3)` | No | - | - |
| `sdamod_nombre` | `varchar(50)` | Si | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdamod_pos` | `smallint` | Si | - | - |

---

## 61. Tabla: `xsdamodmst_20241213`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdamod_numid` | `int` | No | - | - |
| `sdamod_siglas` | `char(3)` | No | - | - |
| `sdamod_nombre` | `varchar(50)` | Si | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdamod_pos` | `smallint` | Si | - | - |

---

## 62. Tabla: `xsdamodmst_bkMod21`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdamod_numid` | `int` | No | - | - |
| `sdamod_siglas` | `char(3)` | No | - | - |
| `sdamod_nombre` | `varchar(50)` | Si | - | - |
| `sdapry_codigo` | `int` | No | - | - |
| `sdamod_pos` | `smallint` | Si | - | - |

---

## 63. Tabla: `xsdanotifcatmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdanotifcat_numid` | `int` | No | PK | - |
| `sdanotifcat_nombre` | `varchar(60)` | Si | - | - |

---

## 64. Tabla: `xsdanotifdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdanotif_id` | `int` | No | PK | - |
| `sdanotif_numid` | `int` | No | - | - |
| `sdanotif_tipo` | `smallint` | No | - | - |
| `admsts_codigo` | `smallint` | No | - | - |

---

## 65. Tabla: `xsdanotifmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdanotif_numid` | `int` | No | PK | - |
| `admusr_numid` | `int` | No | - | - |
| `admusr_from` | `int` | No | - | - |
| `sdanotif_dtime` | `datetime` | Si | - | - |
| `sdanotif_fecha` | `date` | No | - | - |
| `sdanotif_texto` | `varchar(200)` | No | - | - |
| `sdanotif_titulo` | `varchar(100)` | No | - | - |
| `sdanotifcat_numid` | `int` | Si | - | - |
| `sdanotif_entitykey` | `int` | Si | - | - |

---

## 66. Tabla: `xsdaobsdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaobs_codigo` | `int` | No | PK | - |
| `sdaeve_codigo` | `int` | No | PK | - |
| `sdaobs_requerido` | `smallint` | Si | - | - |
| `sdaobs_enlinea` | `int` | Si | - | - |

---

## 67. Tabla: `xsdaobslog`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaobs_serial` | `int` | No | PK | - |
| `sdaeve_serial` | `int` | No | - | - |
| `sdaobs_codigo` | `int` | No | - | - |
| `sdaobs_fecha` | `date` | Si | - | - |
| `sdaeve_codigo` | `int` | Si | - | - |
| `sdaeve_data` | `varchar(500)` | Si | - | - |
| `sdaobs_dtime` | `datetime` | Si | - | - |
| `admusr_codigo` | `varchar(70)` | Si | - | - |
| `admsts_codigo` | `int` | No | - | - |
| `sdaeve_error` | `varbinary` | Si | - | - |

---

## 68. Tabla: `xsdaobsmset`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaobs_codigo` | `int` | No | PK | Código del observador |
| `sdaobs_nombre` | `varchar(50)` | Si | - | Nombre del observador |
| `sdaitf_provider` | `varchar(20)` | Si | - | Código del componente dinámico que se ejecuta |

---

## 69. Tabla: `xsdaobsmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaobs_codigo` | `int` | No | PK | - |
| `sdaobs_nombre` | `varchar(50)` | No | - | - |
| `sdaitf_numid` | `int` | Si | - | - |
| `sdaobs_webapiurl` | `varchar(200)` | Si | - | - |
| `sdaobs_webapiurlProd` | `varchar(200)` | Si | - | - |

---

## 70. Tabla: `xsdaotmplaccmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaotmpl_numid` | `int` | No | PK | - |
| `sdaacc_guid` | `varchar(60)` | No | PK | - |

---

## 71. Tabla: `xsdaotmpldet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaotmpl_numid` | `int` | No | PK | - |
| `sdaotmpl_orden` | `int` | No | PK | - |
| `sdacol_nombre` | `varchar(30)` | Si | - | - |
| `sdaotmpl_coldescr` | `varchar(120)` | Si | - | - |
| `sdaotpml_coltype` | `smallint` | Si | - | - |
| `sdaotmpl_default` | `varchar(60)` | Si | - | - |
| `sdaotmpl_required` | `smallint` | Si | - | - |
| `sdaotmpl_maxchars` | `smallint` | Si | - | - |
| `sdaotmpl_dataformat` | `varchar(20)` | Si | - | - |
| `sdaotmpl_storedcoltype` | `smallint` | Si | - | - |
| `sdaotmpl_default2` | `varchar(100)` | Si | - | - |

---

## 72. Tabla: `xsdaotmplgenmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaotmplgen_numid` | `int` | No | PK | - |
| `sdaotmplgen_guid` | `varchar(40)` | No | - | - |
| `sdaotmpl_numid` | `int` | No | - | - |
| `sdaacc_guid` | `varchar(40)` | No | - | - |
| `sdaotmplgen_fecha` | `date` | Si | - | - |
| `sdaotmplgen_dtime` | `datetime` | Si | - | - |

---

## 73. Tabla: `xsdaotmplmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaotmpl_numid` | `int` | No | PK | - |
| `sdaotmpl_nombre` | `varchar(60)` | Si | - | - |
| `sdaotmpl_entidad` | `varchar(40)` | Si | - | - |
| `sdapry_codigo` | `int` | Si | - | - |
| `admcompania_id` | `int` | Si | - | - |
| `sdaotmpl_procname` | `varchar(40)` | Si | - | - |

---

## 74. Tabla: `xsdaprocexecmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaprocexec_numid` | `bigint` | No | PK | - |
| `sdaprocexec_name` | `varchar(100)` | Si | - | - |
| `sdaprocexec_date` | `date` | Si | - | - |
| `sdaprocexec_starttime` | `datetime` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admcia_codigo` | `smallint` | No | - | - |
| `sdaprocexec_taskid` | `varchar(70)` | Si | - | - |
| `sdaprocexec_statusdescr` | `varchar(100)` | Si | - | - |
| `sdaprocexec_porc` | `decimal(10,2)` | Si | - | - |
| `admsts_codigo` | `smallint` | Si | - | - |
| `sdaproc_numid` | `int` | Si | - | - |
| `sdaprocexec_closed` | `smallint` | No | - | - |

### Relaciones (Foreign Keys)
- `xsdaprocexecmst.sdaproc_numid` -> `xsdaprocmst.sdaproc_numid`

---

## 75. Tabla: `xsdaprocexecmst_seq`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaprocexec_numid` | `bigint` | No | PK | - |
| `sdaprocexec_date` | `datetime` | Si | - | - |

---

## 76. Tabla: `xsdaprocmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaproc_numid` | `int` | No | PK | - |
| `sdaproc_nombre` | `varchar(60)` | Si | - | - |
| `admsts_codigo` | `int` | Si | - | - |
| `sdaproc_timeout` | `smallint` | Si | - | - |

---

## 77. Tabla: `xsdaprocprogmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdaprocprog_numid` | `bigint` | No | PK | - |
| `sdaprocprog_name` | `varchar(100)` | Si | - | - |
| `sdaprocprog_date` | `date` | Si | - | - |
| `sdaprocprog_starttime` | `datetime` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admcia_codigo` | `int` | Si | - | - |
| `sdaprocprog_taskid` | `varchar(70)` | Si | - | - |
| `sdaprocprog_statusdescr` | `varchar(100)` | Si | - | - |
| `sdaprocprog_porc` | `decimal(10,2)` | Si | - | - |
| `admsts_codigo` | `smallint` | Si | - | - |

---

## 78. Tabla: `xsdaprymst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdapry_codigo` | `int` | No | PK | - |
| `sdapry_nombre` | `varchar(50)` | No | - | - |
| `sdapry_siglas` | `char(3)` | Si | - | - |

---

## 79. Tabla: `xsdareportmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdareport_numid` | `int` | No | PK | - |
| `sdareport_guid` | `varchar(40)` | No | - | - |
| `sdareport_filename` | `varchar(20)` | Si | - | - |
| `sdareport_datasourcename` | `varchar(40)` | Si | - | - |
| `sdareport_databandname` | `varchar(40)` | Si | - | - |
| `sdareport_datasourcetype` | `smallint` | Si | - | - |

---

## 80. Tabla: `xsdatbldyn4356cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom813` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 81. Tabla: `xsdatbldyn4357cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 82. Tabla: `xsdatbldyn4358cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 83. Tabla: `xsdatbldyn4359cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 84. Tabla: `xsdatbldyn4360cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 85. Tabla: `xsdatbldyn4361cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 86. Tabla: `xsdatbldyn4362cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 87. Tabla: `xsdatbldyn4363cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 88. Tabla: `xsdatbldyn4364cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 89. Tabla: `xsdatbldyn4365cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 90. Tabla: `xsdatbldyn4366cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 91. Tabla: `xsdatbldyn4367cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 92. Tabla: `xsdatbldyn4368cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 93. Tabla: `xsdatbldyn4369cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 94. Tabla: `xsdatbldyn4370cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 95. Tabla: `xsdatbldyn4371cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 96. Tabla: `xsdatbldyn4372cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 97. Tabla: `xsdatbldyn4373cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 98. Tabla: `xsdatbldyn4374cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 99. Tabla: `xsdatbldyn4375cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 100. Tabla: `xsdatbldyn4376cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 101. Tabla: `xsdatbldyn4377cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 102. Tabla: `xsdatbldyn4378cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 103. Tabla: `xsdatbldyn4379cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 104. Tabla: `xsdatbldyn4380cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 105. Tabla: `xsdatbldyn4381cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 106. Tabla: `xsdatbldyn4382cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 107. Tabla: `xsdatbldyn4383cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 108. Tabla: `xsdatbldyn4384cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 109. Tabla: `xsdatbldyn4385cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 110. Tabla: `xsdatbldyn4386cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 111. Tabla: `xsdatbldyn4387cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 112. Tabla: `xsdatbldyn4388cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 113. Tabla: `xsdatbldyn4389cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 114. Tabla: `xsdatbldyn4390cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 115. Tabla: `xsdatbldyn4391cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 116. Tabla: `xsdatbldyn4392cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 117. Tabla: `xsdatbldyn4393cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 118. Tabla: `xsdatbldyn4394cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 119. Tabla: `xsdatbldyn4395cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 120. Tabla: `xsdatbldyn4396cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 121. Tabla: `xsdatbldyn4397cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 122. Tabla: `xsdatbldyn4398cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 123. Tabla: `xsdatbldyn4399cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 124. Tabla: `xsdatbldyn4400cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 125. Tabla: `xsdatbldyn4401cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 126. Tabla: `xsdatbldyn4402cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 127. Tabla: `xsdatbldyn4403cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 128. Tabla: `xsdatbldyn4404cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 129. Tabla: `xsdatbldyn4405cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 130. Tabla: `xsdatbldyn4406cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 131. Tabla: `xsdatbldyn4407cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 132. Tabla: `xsdatbldyn4408cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 133. Tabla: `xsdatbldyn4409cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 134. Tabla: `xsdatbldyn4410cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 135. Tabla: `xsdatbldyn4411cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 136. Tabla: `xsdatbldyn4412cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 137. Tabla: `xsdatbldyn4413cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 138. Tabla: `xsdatbldyn4414cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 139. Tabla: `xsdatbldyn4415cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 140. Tabla: `xsdatbldyn4416cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 141. Tabla: `xsdatbldyn4417cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 142. Tabla: `xsdatbldyn4418cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 143. Tabla: `xsdatbldyn4419cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom821` | `decimal(13,2)` | Si | - | - |
| `tblfld_custom822` | `varchar(11)` | Si | - | - |
| `tblfld_custom824` | `int` | Si | - | - |
| `tblfld_custom825` | `int` | Si | - | - |
| `tblfld_custom826` | `int` | Si | - | - |
| `tblfld_custom827` | `varchar(50)` | Si | - | - |
| `tblfld_custom828` | `varchar(10)` | Si | - | - |
| `tblfld_custom829` | `varchar(500)` | Si | - | - |

---

## 144. Tabla: `xsdatbldyn4420cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom821` | `decimal(13,2)` | Si | - | - |
| `tblfld_custom822` | `varchar(11)` | Si | - | - |

---

## 145. Tabla: `xsdatbldyn4421cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom824` | `int` | Si | - | - |
| `tblfld_custom825` | `int` | Si | - | - |
| `tblfld_custom1045` | `varchar(50)` | Si | - | - |

---

## 146. Tabla: `xsdatbldyn4422cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 147. Tabla: `xsdatbldyn4423cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom821` | `decimal(13,2)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 148. Tabla: `xsdatbldyn4424cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 149. Tabla: `xsdatbldyn4425cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom822` | `varchar(11)` | Si | - | - |

---

## 150. Tabla: `xsdatbldyn4426cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom821` | `decimal(13,2)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 151. Tabla: `xsdatbldyn4427cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom822` | `varchar(11)` | Si | - | - |

---

## 152. Tabla: `xsdatbldyn4428cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom822` | `varchar(11)` | Si | - | - |

---

## 153. Tabla: `xsdatbldyn4429cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom821` | `decimal(13,2)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 154. Tabla: `xsdatbldyn4430cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 155. Tabla: `xsdatbldyn4431cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom822` | `varchar(11)` | Si | - | - |
| `tblfld_custom821` | `decimal(13,2)` | Si | - | - |

---

## 156. Tabla: `xsdatbldyn4432cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 157. Tabla: `xsdatbldyn4433cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom821` | `decimal(13,2)` | Si | - | - |

---

## 158. Tabla: `xsdatbldyn4434cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 159. Tabla: `xsdatbldyn4435cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom822` | `varchar(11)` | Si | - | - |

---

## 160. Tabla: `xsdatbldyn4436cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom824` | `int` | Si | - | - |
| `tblfld_custom825` | `int` | Si | - | - |
| `tblfld_custom996` | `int` | Si | - | - |

---

## 161. Tabla: `xsdatbldyn4437cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 162. Tabla: `xsdatbldyn4438cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 163. Tabla: `xsdatbldyn4439cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 164. Tabla: `xsdatbldyn4440cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 165. Tabla: `xsdatbldyn4441cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 166. Tabla: `xsdatbldyn4442cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 167. Tabla: `xsdatbldyn4443cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 168. Tabla: `xsdatbldyn4444cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 169. Tabla: `xsdatbldyn4445cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 170. Tabla: `xsdatbldyn4446cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 171. Tabla: `xsdatbldyn4447cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 172. Tabla: `xsdatbldyn4448cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 173. Tabla: `xsdatbldyn4449cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 174. Tabla: `xsdatbldyn4450cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 175. Tabla: `xsdatbldyn4451cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 176. Tabla: `xsdatbldyn4452cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 177. Tabla: `xsdatbldyn4453cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 178. Tabla: `xsdatbldyn4454cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 179. Tabla: `xsdatbldyn4455cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 180. Tabla: `xsdatbldyn4456cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 181. Tabla: `xsdatbldyn4457cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 182. Tabla: `xsdatbldyn4458cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 183. Tabla: `xsdatbldyn4459cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 184. Tabla: `xsdatbldyn4460cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 185. Tabla: `xsdatbldyn4461cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 186. Tabla: `xsdatbldyn4462cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 187. Tabla: `xsdatbldyn4463cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 188. Tabla: `xsdatbldyn4464cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 189. Tabla: `xsdatbldyn4465cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 190. Tabla: `xsdatbldyn4466cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 191. Tabla: `xsdatbldyn4467cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 192. Tabla: `xsdatbldyn4468cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom924` | `date` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 193. Tabla: `xsdatbldyn4469cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom924` | `date` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 194. Tabla: `xsdatbldyn4470cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 195. Tabla: `xsdatbldyn4471cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 196. Tabla: `xsdatbldyn4472cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 197. Tabla: `xsdatbldyn4473cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 198. Tabla: `xsdatbldyn4474cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 199. Tabla: `xsdatbldyn4475cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 200. Tabla: `xsdatbldyn4476cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 201. Tabla: `xsdatbldyn4477cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom922` | `varchar(500)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 202. Tabla: `xsdatbldyn4478cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 203. Tabla: `xsdatbldyn4479cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 204. Tabla: `xsdatbldyn4480cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 205. Tabla: `xsdatbldyn4481cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 206. Tabla: `xsdatbldyn4482cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom923` | `int` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 207. Tabla: `xsdatbldyn4483cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 208. Tabla: `xsdatbldyn4484cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 209. Tabla: `xsdatbldyn4485cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 210. Tabla: `xsdatbldyn4486cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 211. Tabla: `xsdatbldyn4487cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 212. Tabla: `xsdatbldyn4488cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 213. Tabla: `xsdatbldyn4489cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 214. Tabla: `xsdatbldyn4490cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 215. Tabla: `xsdatbldyn4491cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 216. Tabla: `xsdatbldyn4492cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 217. Tabla: `xsdatbldyn4493cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 218. Tabla: `xsdatbldyn4494cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom923` | `int` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom973` | `varchar(50)` | Si | - | - |

---

## 219. Tabla: `xsdatbldyn4495cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 220. Tabla: `xsdatbldyn4496cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 221. Tabla: `xsdatbldyn4497cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 222. Tabla: `xsdatbldyn4498cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 223. Tabla: `xsdatbldyn4499cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 224. Tabla: `xsdatbldyn4500cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 225. Tabla: `xsdatbldyn4501cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 226. Tabla: `xsdatbldyn4502cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 227. Tabla: `xsdatbldyn4503cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 228. Tabla: `xsdatbldyn4504cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 229. Tabla: `xsdatbldyn4505cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 230. Tabla: `xsdatbldyn4506cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 231. Tabla: `xsdatbldyn4507cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom923` | `int` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 232. Tabla: `xsdatbldyn4508cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 233. Tabla: `xsdatbldyn4509cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 234. Tabla: `xsdatbldyn4510cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 235. Tabla: `xsdatbldyn4511cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 236. Tabla: `xsdatbldyn4512cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 237. Tabla: `xsdatbldyn4513cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 238. Tabla: `xsdatbldyn4514cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 239. Tabla: `xsdatbldyn4515cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 240. Tabla: `xsdatbldyn4516cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 241. Tabla: `xsdatbldyn4517cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 242. Tabla: `xsdatbldyn4518cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 243. Tabla: `xsdatbldyn4519cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 244. Tabla: `xsdatbldyn4520cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 245. Tabla: `xsdatbldyn4521cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom926` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom927` | `varchar(50)` | Si | - | - |

---

## 246. Tabla: `xsdatbldyn4522cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom928` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 247. Tabla: `xsdatbldyn4523cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 248. Tabla: `xsdatbldyn4524cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 249. Tabla: `xsdatbldyn4525cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom930` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 250. Tabla: `xsdatbldyn4526cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom935` | `varchar(50)` | Si | - | - |

---

## 251. Tabla: `xsdatbldyn4527cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom936` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 252. Tabla: `xsdatbldyn4528cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom936` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 253. Tabla: `xsdatbldyn4529cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom936` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 254. Tabla: `xsdatbldyn4530cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom936` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 255. Tabla: `xsdatbldyn4531cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom936` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 256. Tabla: `xsdatbldyn4532cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 257. Tabla: `xsdatbldyn4533cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom937` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 258. Tabla: `xsdatbldyn4534cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom938` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 259. Tabla: `xsdatbldyn4535cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom938` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 260. Tabla: `xsdatbldyn4536cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom939` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 261. Tabla: `xsdatbldyn4537cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom940` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 262. Tabla: `xsdatbldyn4538cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom941` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 263. Tabla: `xsdatbldyn4539cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom942` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 264. Tabla: `xsdatbldyn4540cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom944` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 265. Tabla: `xsdatbldyn4541cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 266. Tabla: `xsdatbldyn4542cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom945` | `int` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 267. Tabla: `xsdatbldyn4543cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom945` | `int` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 268. Tabla: `xsdatbldyn4544cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom945` | `int` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 269. Tabla: `xsdatbldyn4545cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 270. Tabla: `xsdatbldyn4546cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 271. Tabla: `xsdatbldyn4547cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 272. Tabla: `xsdatbldyn4548cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 273. Tabla: `xsdatbldyn4549cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom987` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 274. Tabla: `xsdatbldyn4550cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom987` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 275. Tabla: `xsdatbldyn4551cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 276. Tabla: `xsdatbldyn4552cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom924` | `date` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 277. Tabla: `xsdatbldyn4553cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 278. Tabla: `xsdatbldyn4554cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 279. Tabla: `xsdatbldyn4555cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 280. Tabla: `xsdatbldyn4556cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 281. Tabla: `xsdatbldyn4557cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 282. Tabla: `xsdatbldyn4558cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 283. Tabla: `xsdatbldyn4559cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 284. Tabla: `xsdatbldyn4560cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 285. Tabla: `xsdatbldyn4561cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 286. Tabla: `xsdatbldyn4562cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 287. Tabla: `xsdatbldyn4563cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 288. Tabla: `xsdatbldyn4564cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 289. Tabla: `xsdatbldyn4565cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 290. Tabla: `xsdatbldyn4566cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 291. Tabla: `xsdatbldyn4567cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 292. Tabla: `xsdatbldyn4568cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 293. Tabla: `xsdatbldyn4569cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 294. Tabla: `xsdatbldyn4570cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 295. Tabla: `xsdatbldyn4571cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 296. Tabla: `xsdatbldyn4572cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1000` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 297. Tabla: `xsdatbldyn4573cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom998` | `date` | Si | - | - |

---

## 298. Tabla: `xsdatbldyn4574cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 299. Tabla: `xsdatbldyn4575cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 300. Tabla: `xsdatbldyn4576cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 301. Tabla: `xsdatbldyn4577cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1002` | `date` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 302. Tabla: `xsdatbldyn4578cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 303. Tabla: `xsdatbldyn4579cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 304. Tabla: `xsdatbldyn4580cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 305. Tabla: `xsdatbldyn4581cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 306. Tabla: `xsdatbldyn4582cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 307. Tabla: `xsdatbldyn4583cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 308. Tabla: `xsdatbldyn4584cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 309. Tabla: `xsdatbldyn4585cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 310. Tabla: `xsdatbldyn4586cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 311. Tabla: `xsdatbldyn4587cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 312. Tabla: `xsdatbldyn4588cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 313. Tabla: `xsdatbldyn4589cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom1028` | `int` | Si | - | - |

---

## 314. Tabla: `xsdatbldyn4590cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 315. Tabla: `xsdatbldyn4591cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom1033` | `varchar(50)` | Si | - | - |
| `tblfld_custom1034` | `varchar(50)` | Si | - | - |
| `tblfld_custom1035` | `varchar(50)` | Si | - | - |
| `tblfld_custom1039` | `int` | Si | - | - |
| `tblfld_custom1040` | `int` | Si | - | - |
| `tblfld_custom1041` | `decimal(13,2)` | Si | - | - |
| `tblfld_custom1042` | `date` | Si | - | - |
| `tblfld_custom1036` | `int` | Si | - | - |
| `tblfld_custom1037` | `int` | Si | - | - |
| `tblfld_custom1038` | `int` | Si | - | - |
| `tblfld_custom1044` | `varchar(50)` | Si | - | - |

---

## 316. Tabla: `xsdatbldyn4592cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 317. Tabla: `xsdatbldyn4593cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 318. Tabla: `xsdatbldyn4594cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1045` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 319. Tabla: `xsdatbldyn4595cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1045` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 320. Tabla: `xsdatbldyn4596cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1045` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 321. Tabla: `xsdatbldyn4597cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 322. Tabla: `xsdatbldyn4598cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |
| `tblfld_custom1047` | `varchar(50)` | Si | - | - |

---

## 323. Tabla: `xsdatbldyn4599cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1046` | `int` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 324. Tabla: `xsdatbldyn4600cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 325. Tabla: `xsdatbldyn4601cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 326. Tabla: `xsdatbldyn4602cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 327. Tabla: `xsdatbldyn4603cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 328. Tabla: `xsdatbldyn4604cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 329. Tabla: `xsdatbldyn4605cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 330. Tabla: `xsdatbldyn4606cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 331. Tabla: `xsdatbldyn4607cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 332. Tabla: `xsdatbldyn4608cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 333. Tabla: `xsdatbldyn4609cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 334. Tabla: `xsdatbldyn4610cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 335. Tabla: `xsdatbldyn4611cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 336. Tabla: `xsdatbldyn4612cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 337. Tabla: `xsdatbldyn4613cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 338. Tabla: `xsdatbldyn4614cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 339. Tabla: `xsdatbldyn4615cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 340. Tabla: `xsdatbldyn4616cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1047` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 341. Tabla: `xsdatbldyn4617cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1047` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 342. Tabla: `xsdatbldyn4618cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1047` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 343. Tabla: `xsdatbldyn4619cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1047` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 344. Tabla: `xsdatbldyn4620cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1047` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 345. Tabla: `xsdatbldyn4621cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `tblfld_custom1032` | `varchar(50)` | Si | - | - |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 346. Tabla: `xsdatbldyn4622cf`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbldyn_numid` | `int` | No | PK | - |

---

## 347. Tabla: `xsdatblfldmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatblfld_numid` | `int` | No | PK | - |
| `sdatbl_numid` | `int` | No | - | - |
| `sdatblfld_name` | `char(30)` | Si | - | - |

---

## 348. Tabla: `xsdatblfldmstlan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatblfldlan_numid` | `int` | No | PK | - |
| `sdatblfld_numid` | `int` | No | - | - |
| `sdalan_codigo` | `char(5)` | Si | - | - |
| `sdatblfldlan_nombre` | `varchar(60)` | Si | - | - |

---

## 349. Tabla: `xsdatblmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdatbl_numid` | `int` | No | PK | - |
| `sdatbl_nombre` | `varchar(60)` | Si | - | - |
| `sdatbl_descr` | `varchar(100)` | Si | - | - |
| `sdatbl_iscust` | `smallint` | Si | - | - |
| `sdatbl_keyfld` | `varchar(30)` | Si | - | - |

---

## 350. Tabla: `xsdausomultlan`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdausomultlan_numid` | `int` | No | PK | - |
| `sdausomult_numid` | `int` | Si | - | - |
| `sdalan_codigo` | `char(5)` | Si | - | - |
| `sdausomult_nombre` | `varchar(100)` | Si | - | - |

---

## 351. Tabla: `xsdausomultlan_20250630`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdausomultlan_numid` | `int` | No | PK | - |
| `sdausomult_numid` | `int` | Si | - | - |
| `sdalan_codigo` | `char(5)` | Si | - | - |
| `sdausomult_nombre` | `varchar(100)` | Si | - | - |

---

## 352. Tabla: `xsdausomultmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdausomult_numid` | `int` | No | PK | ID nico |
| `sdausomult_grupo` | `varchar(50)` | No | - | Grupo |
| `sdausomult_codigo` | `int` | No | - | Cdigo numrico |
| `sdausomult_tipo` | `int` | Si | - | Tipo: de lista 0 num, 1 alfa |
| `sdapry_codigo` | `int` | Si | - | Id del proyecto al que pertenecen las opciones |
| `sdausomult_strcodigo` | `varchar(20)` | Si | - | - |
| `sdausomult_nombre` | `varchar(100)` | Si | - | Descripcin |
| `sdausomult_nombrecorto` | `varchar(50)` | Si | - | - |

---

## 353. Tabla: `xsdausomultmst_20250630`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdausomult_numid` | `int` | No | PK | - |
| `sdausomult_grupo` | `varchar(50)` | No | - | - |
| `sdausomult_codigo` | `int` | No | - | - |
| `sdausomult_tipo` | `int` | Si | - | - |
| `sdapry_codigo` | `int` | Si | - | - |
| `sdausomult_strcodigo` | `varchar(20)` | Si | - | - |
| `sdausomult_nombre` | `varchar(100)` | Si | - | - |
| `sdausomult_nombrecorto` | `varchar(50)` | Si | - | - |

---

## 354. Tabla: `xsdausrdomanmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdausrdoman_numid` | `int` | No | PK | - |
| `admusr_codigo` | `varchar(70)` | Si | - | - |
| `sdacust_numid` | `int` | Si | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admcli_numid` | `int` | Si | - | - |

---

## 355. Tabla: `xsdausrsessionmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdausrsession_numid` | `bigint` | No | PK | - |
| `sdausrsession_fechainicia` | `datetime` | Si | - | - |
| `sdausrsession_ultimaactividad` | `datetime` | Si | - | - |
| `admsts_codigo` | `smallint` | No | - | - |
| `admusr_numid` | `int` | No | - | - |
| `sdausrsession_latitud` | `float` | Si | - | - |
| `sdausrsession_longitud` | `float` | Si | - | - |
| `sdausrsession_iporigen` | `varchar(50)` | Si | - | - |
| `sdausrsession_dispositivo` | `varchar(255)` | Si | - | - |
| `admcli_numid` | `int` | Si | - | - |
| `admcompania_id` | `smallint` | Si | - | - |

---

## 356. Tabla: `xsdawflactdet`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawfl_numid` | `int` | No | PK | - |
| `sdaacc_numid` | `int` | No | PK | - |

### Relaciones (Foreign Keys)
- `xsdawflactdet.sdawfl_numid` -> `xsdawflmst.sdawfl_numid`

---

## 357. Tabla: `xsdawflactflowevemst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactfloweve_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | Si | - | - |
| `sdaeve_codigo_antes` | `int` | Si | - | - |
| `sdaeve_codigo_luego` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdawflactflowevemst.sdawflactflow_numid` -> `xsdawflactflowmst.sdawflactflow_numid`

---

## 358. Tabla: `xsdawflactflowflddmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflowfldd_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | No | - | - |
| `sdafldd_numid` | `int` | No | - | - |

---

## 359. Tabla: `xsdawflactflowmovmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflowmov_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | No | - | - |
| `admcompania_id` | `int` | Si | - | - |
| `sdawfl_numid` | `int` | No | - | - |
| `sdaacc_numid_act` | `int` | No | - | - |
| `sdaacc_numid_sig` | `int` | No | - | - |
| `admsts_numid_act` | `int` | Si | - | - |
| `admsts_numid_sig` | `int` | Si | - | - |
| `sdawflactflowmov_fecha` | `date` | Si | - | - |
| `sdawflactflowmov_dtime` | `datetime` | Si | - | - |
| `admusr_numid` | `int` | No | - | - |

---

## 360. Tabla: `xsdawflactflowmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflow_numid` | `int` | No | PK | - |
| `sdawfl_numid` | `int` | No | - | - |
| `sdaacc_numid_act` | `int` | Si | - | - |
| `sdaacc_numid_sig` | `int` | No | - | - |
| `admsts_numid_act` | `int` | Si | - | - |
| `admsts_numid_sig` | `int` | Si | - | - |
| `admcompania_id` | `int` | Si | - | - |
| `sdawflactflow_accsig` | `smallint` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdawflactflowmst.sdawfl_numid` -> `xsdawflmst.sdawfl_numid`
- `xsdawflactflowmst.sdaacc_numid_sig` -> `xsdaaccmst.sdaacc_numid`
- `xsdawflactflowmst.sdaacc_numid_act` -> `xsdaaccmst.sdaacc_numid`

---

## 361. Tabla: `xsdawflactflownotdexcmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflownotdexc_numid` | `int` | No | PK | - |
| `sdawflactflownot_numid` | `int` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |

---

## 362. Tabla: `xsdawflactflownotdmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflownotd_numid` | `int` | No | PK | - |
| `sdawflactflownot_numid` | `int` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admgrp_numid` | `int` | Si | - | - |
| `admcompania_id` | `int` | Si | - | - |
| `sdawflactflownot_mail` | `varchar(50)` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdawflactflownotdmst.sdawflactflownot_numid` -> `xsdawflactflownotmst.sdawflactflownot_numid`

---

## 363. Tabla: `xsdawflactflownotmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflownot_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | No | - | - |
| `sdawflactflownot_asunto` | `varchar(50)` | Si | - | - |
| `sdawflactflownot_texto` | `varchar(100)` | Si | - | - |
| `admcompania_id` | `int` | No | - | - |

### Relaciones (Foreign Keys)
- `xsdawflactflownotmst.sdawflactflow_numid` -> `xsdawflactflowmst.sdawflactflow_numid`

---

## 364. Tabla: `xsdawflactflowpmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflowp_numid` | `int` | No | PK | - |
| `sdawfl_numid` | `int` | No | - | - |
| `sdaacc_numid_act` | `int` | No | - | - |
| `sdaacc_numid_sig` | `int` | No | - | - |
| `admsts_numid_act` | `int` | Si | - | - |
| `admsts_numid_sig` | `int` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdawflactflowpmst.sdawfl_numid` -> `xsdawflmst.sdawfl_numid`
- `xsdawflactflowpmst.sdaacc_numid_sig` -> `xsdaaccmst.sdaacc_numid`
- `xsdawflactflowpmst.sdaacc_numid_act` -> `xsdaaccmst.sdaacc_numid`

---

## 365. Tabla: `xsdawflactflowusrdexcmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflowusrexc_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |

---

## 366. Tabla: `xsdawflactflowusrexcmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflowusrexc_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |

---

## 367. Tabla: `xsdawflactflowusrmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflowusr_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | No | - | - |
| `admusr_numid` | `int` | Si | - | - |
| `admgrp_numid` | `int` | Si | - | - |
| `admcompania_id` | `int` | No | - | - |

---

## 368. Tabla: `xsdawflactflowvalmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflowval_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | No | - | - |
| `sdawflactflowval_operator` | `smallint` | No | - | - |
| `sdatblfld_numid` | `int` | No | - | - |
| `sdawflactflowval_condoperator` | `char(10)` | No | - | - |
| `sdawflactflowval_condtext` | `varchar(100)` | Si | - | - |
| `sdawflactflowval_required` | `smallint` | Si | - | - |

---

## 369. Tabla: `xsdawflactflowvalsmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflactflowvals_numid` | `int` | No | PK | - |
| `sdawflactflow_numid` | `int` | No | - | - |
| `sdawflactflowvals_tipo` | `smallint` | No | - | - |

---

## 370. Tabla: `xsdawflactmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflact_numid` | `int` | No | PK | - |
| `sdawflact_guid` | `varchar(50)` | Si | - | - |
| `sdawflact_nombre` | `varchar(50)` | Si | - | - |

---

## 371. Tabla: `xsdawflmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawfl_numid` | `int` | No | PK | - |
| `sdawfl_guid` | `varchar(40)` | Si | - | - |
| `sdawfl_nombre` | `varchar(50)` | Si | - | - |
| `sdapry_codigo` | `int` | No | - | - |

### Relaciones (Foreign Keys)
- `xsdawflmst.sdapry_codigo` -> `xsdaprymst.sdapry_codigo`

---

## 372. Tabla: `xsdawflstsmst`

**Descripción**: *(Sin descripción proporcionada)*

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `sdawflsts_numid` | `int` | No | PK | - |
| `sdawfl_numid` | `int` | No | - | - |
| `admsts_numid` | `int` | No | - | - |
| `sdawflsts_color` | `varchar(20)` | Si | - | - |

### Relaciones (Foreign Keys)
- `xsdawflstsmst.sdawfl_numid` -> `xsdawflmst.sdawfl_numid`

---

