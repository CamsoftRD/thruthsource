# Arquitectura General del Sistema ERP

## 1. Visión Holística

El ERP de RRHH y Nómina se diseña bajo una **Arquitectura Modular Orientada a Dominio (Domain-Driven Design / Modular Monolith o Microservicios)**, permitiendo escalabilidad técnica y aislamiento de dominios de negocio.

---

## 2. Diagrama de Contexto C4 (Nivel 1)

```mermaid
graph TD
    User[Usuario RRHH / Empleado] -->|HTTPS / REST| Gateway[API Gateway / Load Balancer]
    Gateway --> ERP[ERP Core RRHH & Nómina]
    ERP -->|SQL| DB[(Database Cluster - PostgreSQL)]
    ERP -->|SMTP| Mail[Servicio de Correo Corporativo]
    ERP -->|LDAP| Auth[Active Directory / Identity Provider]
    ERP -->|REST API| ERPFin[ERP Contabilidad Externo]
```

---

## 3. Diagrama de Contenedores C4 (Nivel 2)

```mermaid
graph TB
    subgraph Web App Client
        UI[Frontend Web - React / Next.js]
    end

    subgraph Backend Services
        API[API Gateway - Node.js / Express or .NET]
        HRService[Servicio Gestor de Empleados]
        PayrollEngine[Motor de Nómina & Cálculos]
        WorkflowEngine[Motor de Aprobaciones & Workflow]
    end

    subgraph Persistence Layer
        DB[(PostgreSQL Primary DB)]
        Cache[(Redis Cache - Sesiones y Tablas Maestras)]
    end

    UI --> API
    API --> HRService
    API --> PayrollEngine
    API --> WorkflowEngine
    HRService --> DB
    PayrollEngine --> DB
    PayrollEngine --> Cache
    WorkflowEngine --> DB
```

---

## 4. Principios Arquitectónicos

1. **Separación de Responsabilidades (SoC)**: Interfaz, lógica de dominio y persistencia totalmente desacopladas.
2. **Inmutabilidad de Auditoría**: Todo cambio en estados de empleados, nómina y permisos genera un registro audit-log inalterable.
3. **Idempotencia de Operaciones**: Operaciones críticas como ejecución de nómina y generación de finiquitos deben ser idempotentes con tokens de control.
