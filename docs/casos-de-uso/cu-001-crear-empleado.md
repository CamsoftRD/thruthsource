# Caso de Uso: CU-001 - Registrar Nuevo Empleado

## 1. Ficha del Caso de Uso

| Atributo | Detalle |
| :--- | :--- |
| **ID** | CU-001 |
| **Nombre** | Registrar Nuevo Empleado |
| **Actor Principal** | Analista de RRHH / Recrutador |
| **Precondiciones** | 1. Usuario autenticado con rol `HR_ADMIN`.<br>2. Puesto y Departamento previamente creados en el sistema. |
| **Postcondiciones** | Empleado guardado en estado `ACTIVO` en la tabla `xhrempmst` y correo de bienvenida enviado. |

---

## 2. Flujo Principal (Happy Path)

1. El Analista selecciona la opción "Nuevo Empleado" en la interfaz o envía la solicitud vía API.
2. El sistema despliega el formulario de datos personales y contractuales.
3. El Analista ingresa la identificación, nombres, apellidos, correo corporativo, fecha de ingreso, puesto y departamento.
4. El sistema valida:
   - Que la identificación no exista previamente (Regla Unicidad).
   - Que el correo corporativo tenga formato válido y no esté duplicado.
   - Que el puesto y departamento existan.
5. El sistema asigna el código correlativo de empleado `emp_codigo`.
6. El sistema guarda el registro en la base de datos con estado `ACTIVO`.
7. El sistema emite un evento `EmpleadoCreadoEvent`.
8. El sistema muestra mensaje de confirmación.

---

## 3. Flujos Alternativos y Excepciones

### 4a. Identificación Duplicada
- **4a.1**: El sistema detecta que la cédula/DNI ya existe en `xhrempmst`.
- **4a.2**: El sistema interrumpe el guardado y muestra el error: `"El documento de identidad ya pertenece al empleado EXP-XXXXX"`.

### 4b. Formato de Email Inválido
- **4b.1**: El sistema detecta un email no conforme al dominio corporativo.
- **4b.2**: El sistema requiere corregir el campo antes de permitir el envío.
