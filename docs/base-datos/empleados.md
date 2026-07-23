# Documentación de Base de Datos: Módulo Empleados

## 1. Tabla: `xhrempmst` (Maestro de Empleados)

**Descripción**: Tabla principal que almacena los datos personales, contractuales y el estado actual de cada colaborador de la organización.

### Estructura de Campos

| Campo | Tipo de Dato | Nulo | Clave | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `emp_codigo` | `VARCHAR(20)` | No | PK | Código o expediente único del empleado. |
| `emp_identificacion` | `VARCHAR(30)` | No | UK | Cédula, DNI o Pasaporte. |
| `emp_primer_nombre` | `VARCHAR(100)` | No | - | Primer nombre. |
| `emp_segundo_nombre` | `VARCHAR(100)` | Si | - | Segundo nombre. |
| `emp_primer_apellido` | `VARCHAR(100)` | No | - | Primer apellido. |
| `emp_segundo_apellido` | `VARCHAR(100)` | Si | - | Segundo apellido. |
| `emp_email_corp` | `VARCHAR(150)` | No | UK | Correo electrónico corporativo. |
| `emp_fecha_ingreso` | `DATE` | No | - | Fecha formal de contratación. |
| `emp_fecha_salida` | `DATE` | Si | - | Fecha efectiva de desvinculación (si aplica). |
| `emp_estado` | `VARCHAR(20)` | No | - | Estado: `ACTIVO`, `SUSPENDIDO`, `INACTIVO`. |
| `puesto_codigo` | `VARCHAR(20)` | No | FK | Referencia a `xhrposmst`. |
| `dept_codigo` | `VARCHAR(20)` | No | FK | Referencia a `xhrdepmst`. |
| `created_at` | `TIMESTAMP` | No | - | Fecha de creación del registro. |
| `updated_at` | `TIMESTAMP` | No | - | Última fecha de modificación. |

---

## 2. Relaciones (Foreign Keys)
- `xhrempmst.puesto_codigo` -> `xhrposmst.pos_codigo`
- `xhrempmst.dept_codigo` -> `xhrdepmst.dep_codigo`
