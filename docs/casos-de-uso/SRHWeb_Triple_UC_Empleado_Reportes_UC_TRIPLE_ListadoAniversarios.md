# Caso de Uso Detallado

## UC-TRIPLE - Listado de Aniversarios

**Versión:** 1.0 ● Proposed

---

## Historia de Revisiones

| Fecha       | Versión | Descripción      | Autor      |
|-------------|---------|------------------|------------|
| 22-Jun-2026 | 1.0     | Versión Inicial  | Juan Cueli |

---

## UC-TRIPLE - Listado de Aniversarios

Caso de uso en Paquete **'Reportería'**

**Descripción:** Opción que permite imprimir el listado de aniversarios en la empresa de empleados activos, basado en la fecha de inicio (`emp_fecha_inicio`), agrupado por mes, ordenado por día de aniversario. La fuente de datos es la vista `rptListadoAniversariosView` (`admreporte_tipofuente = 1`).

**Ruta de acceso:** RRHH → Empleados → Reportería → Listado de Aniversarios

**GUID:** `C7B9E1A3-5D26-4F83-A190-8E3D70F2C412`

**Versión:** 1.0 Fase 1.0 Proposed

**Autor:** Juan Cueli — Creado el 22/06/2026. Último Modificado el 22/06/2026

---

## ESCENARIOS

### Flujo básico. Flujo básico

**(System) 1.** Presenta pantalla para imprimir reportes

**(System) 2.** Acciones disponibles:
- Imprimir
- Exportar a Excel
- Enviar por Correo

**(System) 3.** Presenta Criterio de Filtros del Reporte:
- Reportes (Puede elegirlo de una lista de reportes predefinidos. Filtra por estado activo (`hadmreportemst.admsts_codigo`) y Tipo de Reporte = 2 (RRHH-TipoReporte) (`hadmreportemst.admreporte_tipo`))

**(System) 4.** Según el Reporte seleccionado se mostrarán los siguientes campos de filtro. **Nota:** Los filtros del reporte pueden variar según la configuración en `hadmreportemst`; los siguientes son los que se trabajarán inicialmente para este reporte:
- **Sucursal:** Filtra por sucursales activas (`xadmsucursalmst.admsts_codigo = 1`) de la compañía activa.
- **Departamento:** Filtra por departamentos activos (`hadmdepmst.admsts_codigo = 1`) de la compañía activa.
- **Puesto:** Filtra por puestos activos (`hadmposmst.admsts_codigo = 1`) de la compañía activa.
- **Empleado:** Filtra por empleados en estado Activo, Vacaciones o Licencia (`hempempmst.empemp_estado_empleado IN (1, 4, 5)`) de la compañía activa.
- **Año:** Permite filtrar por el año del aniversario (`YEAR(emp_fecha_inicio)`).
- **Mes:** Permite filtrar por el mes del aniversario (`MONTH(emp_fecha_inicio)`).
- **Tipo de Contrato:** Permite filtrar por tipo de contrato del empleado (`hempempmst.empemp_tipo_contrato` - Grupo de Atributo).

**(User) 5.** Selecciona opción Imprimir

> **Alternate: 5a.** Selecciona opción exportar a Excel → Retorna al Punto 6
> **Alternate: 5b.** Selecciona opción exportar a PDF → Retorna al Punto 6

**(System) 6.** Invoca: Vista `rptListadoAniversariosView` filtrando por los criterios de búsqueda establecidos. (`admreporte_fuente = 'rptListadoAniversariosView'`, `admreporte_tipofuente = 1`) (GUID: `C7B9E1A3-5D26-4F83-A190-8E3D70F2C412`)

**(System) 7.** Valida que el reporte tiene registros para mostrar

> **Exception: 7a.** Reporte no tiene registros para mostrar → Retorna al Punto 9

**(System) 8.** Muestra impresión del reporte con los siguientes datos:

**(System) 8.1.** Cabecera del reporte (Se muestra en todas las páginas):
- Nombre de la empresa
- Dirección de la empresa
- Título del reporte ("Listado de Aniversarios en la Empresa")
- Página X de Y (Página actual de Página total)
- Fecha: (Fecha Actual)
- Hora: (Hora Actual)
- Usuario: (Usuario Logueado)

**(System) 8.2.** Detalle del reporte agrupado por mes, ordenado por día y mes de ingreso (`emp_fecha_inicio`):
- Encabezado de mes: Nombre del mes (obtenido de `xsdausomultlanv` donde `sdausomult_grupo = 'RRHH-Meses'`, filtrado por el idioma del usuario (`sdalan_codigo`))
- Grid con las siguientes columnas:
  - Código (`empemp_codigo`)
  - Empleado (`empemp_nombre`)
  - Sucursal (`admsucursal_nombre`)
  - Departamento (`departamento`)
  - Puesto (`puesto`)
  - Día Aniversario (`dia_aniversario`)
  - Años en la Empresa (`anios_en_empresa`)
- Fila de subtotal: Total de empleados por mes

**(System) 8.3.** Pie del reporte (Se muestra al finalizar el detalle):
- Total General de Empleados
- Espacio para 3 firmas: Analista de RRHH / Gerente de RRHH / Auditor Interno

**(System) 9.** Finaliza Caso de Uso

---

### Alternate. Selecciona opción exportar a Excel

**(User) 1.** Selecciona opción exportar a Excel

**(System) 2.** Invoca: Funcionalidad del Framework para Exportar, pasando como parámetros:
- Nombre/ruta de archivo (Como Destino físico de los datos)
- Nombre de la tabla (Como Fuente de los datos)

---

### Alternate. Selecciona opción exportar a PDF

**(User) 1.** Selecciona opción exportar a PDF

**(System) 2.** Invoca: Funcionalidad del Framework para Exportar, pasando como parámetros:
- Nombre/ruta de archivo (Como Destino físico de los datos)
- Nombre de la tabla (Como Fuente de los datos)

---

### Exception. Reporte no tiene registros para mostrar

**(System) 1.** Valida que no tiene registros para mostrar

**(System) 2.** Genera excepción: Código `60XXXX`

---

---

## Recursos

### Vista previa del reporte

![Listado de Aniversarios en la Empresa](../../../Informacion%20Adjunta/UC_TRIPLE_ListadoAniversarios/Listado%20Aniversario%20Empleados.png)

### Descargas

- [Descargar PDF](../../../Informacion%20Adjunta/UC_TRIPLE_ListadoAniversarios/UC_TRIPLE_ListadoAniversarios.pdf)

---

*Caso de Uso Detallado — Copia Provisional, si está impreso*
*© CAM Soft, S.R.L., 1998-2026*
