# Documentación de Base de Datos: Módulo Nómina

## 1. Tabla: `xhrnomcab` (Cabecera de Nómina Procesada)

**Descripción**: Registro general de un periodo de nómina calculado (ej. Primera Quincena Julio 2026).

| Campo | Tipo | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `nom_id` | `BIGINT` | No | PK | Identificador único autogenerado. |
| `nom_periodo` | `VARCHAR(10)` | No | - | Formato `YYYYMM-Q1` o `YYYYMM-M`. |
| `nom_fecha_inicio` | `DATE` | No | - | Fecha inicial del periodo. |
| `nom_fecha_fin` | `DATE` | No | - | Fecha final del periodo. |
| `nom_total_devengado` | `NUMERIC(15,2)` | No | - | Sumatoria global devengada. |
| `nom_total_deducido` | `NUMERIC(15,2)` | No | - | Sumatoria global de deducciones. |
| `nom_estado` | `VARCHAR(20)` | No | - | `BORRADOR`, `PROCESADO`, `APROBADO`, `CERRADO`. |

---

## 2. Tabla: `xhrnomdet` (Detalle por Empleado y Concepto)

**Descripción**: Detalle específico de los rubros pagados o descontados a cada colaborador.

| Campo | Tipo | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `det_id` | `BIGINT` | No | PK | ID del detalle. |
| `nom_id` | `BIGINT` | No | FK | Referencia a `xhrnomcab`. |
| `emp_codigo` | `VARCHAR(20)` | No | FK | Referencia a `xhrempmst`. |
| `concepto_codigo` | `VARCHAR(10)` | No | FK | Código del concepto (ej. `DEV_SALARIO`, `DED_ISR`). |
| `det_monto` | `NUMERIC(12,2)` | No | - | Valor numérico del concepto. |
| `det_tipo` | `VARCHAR(10)` | No | - | `DEVENGADO` o `DEDUCCION`. |
