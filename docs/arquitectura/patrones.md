# Patrones de Diseño de Software

## 1. Patrón de Arquitectura Limpia (Clean / Hexagonal Architecture)

Todo módulo del backend debe seguir la estructura estandarizada en capas:

```text
/src
  /domain            <-- Entidades, Value Objects, Excepciones de Dominio (Sin dependencias externas)
  /application       <-- Casos de Uso, DTOs, Puertos/Interfaces
  /infrastructure    <-- Adaptadores de BD (ORM/SQL), Servicios externos, Repositorios concretos
  /presentation      <-- Controladores REST, Endpoints, Middleware de Autorización
```

---

## 2. Patrones Específicos para Nómina y RRHH

### A. CQRS (Command Query Responsibility Segregation)
- **Lectura**: Consultas masivas de empleados y reportes de nómina se procesan con DTOs optimizados o Vistas SQL indexadas.
- **Escritura**: Las mutaciones (crear empleado, procesar nómina, aplicar deducción) pasan a través de Comandos validados por agregados de dominio.

### B. Specification Pattern
Para la evaluación de Reglas de Negocio complejas (ej. calificar si un empleado aplica a bono de desvinculación o acumulación especial de vacaciones).

### C. State Pattern
Para el manejo del ciclo de vida del empleado (`Candidato` -> `Contratado` -> `Activo` -> `Suspendido` -> `Desvinculado`).
