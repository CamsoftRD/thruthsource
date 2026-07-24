# Caso de Uso Detallado

## UC-TRIPLE - Listado de Movimientos de Ingresos

**Versión:** 1.1 ● Proposed

---

## Historia de Revisiones

| Fecha       | Versión | Descripción      | Autor      |
|-------------|---------|------------------|------------|
| 08-Abr-2026 | 1.0     | Version Inicial  | Juan Cueli |
| <mark style="background-color:#FFD700">**17-Jun-2026**</mark> | <mark style="background-color:#FFD700">**1.1**</mark> | <mark style="background-color:#FFD700">**Actualizacion de columnas del Grid (paso 8.2): se eliminaron Fecha de Nacimiento, Fecha de Salida y Fecha Fin de Contrato; se agrego Sexo y se renombro Fecha de Inicio a Fecha de Ingreso. Se reordeno la lista: Codigo, Nombre Completo, Puesto, Cedula, Sexo, Sueldo, Fecha de Ingreso, Estado.**</mark> | <mark style="background-color:#FFD700">**Juan Cueli**</mark> |

---

## UC-TRIPLE - Listado de Movimientos de Ingresos

Caso de uso en Paquete **'Reportería'**

**Descripción:** Opción que permite imprimir el listado de movimientos de ingresos de empleados activos, basado en la fecha de ingreso (`empemp_fecha_ingreso`), agrupado por departamento, ordenado por nombre de empleado. La fuente de datos es la vista `rptListadoMovimientosIngresosView` (`admreporte_tipofuente = 1`).

**Ruta de acceso:** RRHH → Empleados → Reportería → Listado de Movimientos de Ingresos

**GUID:** `A4D2F8B1-9E37-4C61-B502-7F1A83E6D295`

**Versión:** 1.1 Fase 1.0 Proposed

**Autor:** Juan Cueli — Creado el 08/04/2026. Último Modificado el 08/04/2026

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
- **Sexo:** Permite filtrar por sexo del empleado (`hempempmst.empemp_sexo` - Grupo de Atributo).
- **Fecha Ingreso Desde / Hasta:** Permite filtrar por rango de fecha de ingreso del empleado (`hempempmst.empemp_fecha_ingreso`).
- **Estado:** Permite filtrar por el estado laboral del empleado (`hempempmst.empemp_estado_empleado` - Grupo de Atributo).
- **Tipo de Contrato:** Permite filtrar por tipo de contrato del empleado (`hempempmst.empemp_tipo_contrato` - Grupo de Atributo).

**(User) 5.** Selecciona opción Imprimir

> **Alternate: 5a.** Selecciona opción exportar a Excel → Retorna al Punto 6
> **Alternate: 5b.** Selecciona opción exportar a PDF → Retorna al Punto 6

**(System) 6.** Invoca: Vista `rptListadoMovimientosIngresosView` filtrando por los criterios de búsqueda establecidos. (`admreporte_fuente = 'rptListadoMovimientosIngresosView'`, `admreporte_tipofuente = 1`) (GUID: `A4D2F8B1-9E37-4C61-B502-7F1A83E6D295`)

**(System) 7.** Valida que el reporte tiene registros para mostrar

> **Exception: 7a.** Reporte no tiene registros para mostrar → Retorna al Punto 9

**(System) 8.** Muestra impresión del reporte con los siguientes datos:

**(System) 8.1.** Cabecera del reporte (Se muestra en todas las páginas):
- Nombre de la empresa
- Dirección de la empresa
- RNC de la empresa
- Título del reporte ("Listado de Movimiento de Ingresos")
- Página X de Y (Página actual de Página total)
- Fecha: (Fecha Actual)
- Hora: (Hora Actual)
- Usuario: (Usuario Logueado)

**(System) 8.2.** Detalle del reporte agrupado por departamento, ordenado por nombre de empleado (`empemp_nombre`):
- Encabezado de departamento: Nombre del departamento y cantidad de empleados
- Grid con las siguientes columnas:
  - Código (`empemp_codigo`)
  - Empleado (`empemp_nombre`)
  - Puesto (`puesto`)
  - Cédula (`empemp_cedula`)
  - <mark style="background-color:#FFD700">**Sexo (`empemp_sexo`) — agregado en v1.1**</mark>
  - Sueldo (`empemp_sueldo`)
  - <mark style="background-color:#FFD700">**F. Ingreso (`empemp_fecha_ingreso`) — renombrado desde "Fecha de Inicio" en v1.1**</mark>
  - Estado (`empemp_estado_empleado`)
- Fila de subtotal: Nombre del departamento, cantidad de empleados y subtotal de sueldo

**(System) 8.3.** Pie del reporte (Se muestra al finalizar el detalle):
- Gran Total: cantidad de departamentos, total de empleados y total general de sueldo
- Espacio para 2 firmas: Gerente de Recursos Humanos / Gerente General
- Leyenda: Reporte confidencial — Sistema RRHH

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

## Recursos

### Vista previa del reporte

![Listado de Movimientos de Ingresos](../../../Informacion%20Adjunta/UC_TRIPLE_ListadoMovimientosdeIngresos/Listado%20Movimientos%20de%20Ingresos.png)

### Descargas

- [Descargar PDF](../../../Informacion%20Adjunta/UC_TRIPLE_ListadoMovimientosdeIngresos/UC_TRIPLE_ListadoMovimientosdeIngresos.pdf)

---

*Caso de Uso Detallado — Copia Provisional, si está impreso*
*© CAM Soft, S.R.L., 1998-2026*
