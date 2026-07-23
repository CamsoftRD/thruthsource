# Especificación de Workflows: Motor de Autorizaciones

## 1. Visión General
El motor de autorizaciones regula las solicitudes enviadas por los empleados (vacaciones, ausencias, préstamos, desvinculaciones) mediante cadenas de aprobación dinámicas.

---

## 2. Jerarquía de Aprobación Estándar

```mermaid
sequenceDiagram
    participant Empleado
    participant System as Motor ERP
    participant Jefe as Jefe Inmediato
    participant HR as Gerente RRHH

    Empleado->>System: Crear Solicitud (Vacaciones / Desvinculación)
    System->>Jefe: Notificación + Tarea Pendiente
    alt Aprobado por Jefe
        Jefe->>System: Aprobar
        System->>HR: Notificación + Tarea Pendiente
        alt Aprobado por RRHH
            HR->>System: Aprobar
            System-->>Empleado: Solicitud Aprobada (Notificación)
        else Rechazado por RRHH
            HR->>System: Rechazar
            System-->>Empleado: Solicitud Rechazada
        end
    else Rechazado por Jefe
        Jefe->>System: Rechazar
        System-->>Empleado: Solicitud Rechazada
    end
```

---

## 3. Reglas de Escalación por Tiempo (SLA)
- Si una solicitud permanece en estado `PENDIENTE_JEFE` por más de **48 horas hábiles**, el sistema enviará un recordatorio automático.
- Al cumplir **72 horas hábiles** sin respuesta, la solicitud se escala automáticamente al Superior Jerárquico del Jefe Inmediato.
