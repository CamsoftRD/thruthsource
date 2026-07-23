# ADR 001: Selección del Framework de Persistencia y Base de Datos

* **Estado**: Aprobado
* **Fecha**: 2026-07-22
* **Autor**: Arquitecto de Software / Equipo Core

---

## 1. Contexto y Problema

El ERP de RRHH requiere una base de datos relacional robusta con soporte ACID estricto para transacciones de nómina, control de concurrencia y capacidades auditables.

---

## 2. Opciones Evaluadas

1. **PostgreSQL 16** con ORM / Query Builder.
2. **Microsoft SQL Server 2022**.
3. **MongoDB** (NoSQL).

---

## 3. Decisión

Se decide utilizar **PostgreSQL 16** como motor principal de base de datos relacional.

---

## 4. Razón de la Decisión

- **Soporte ACID nativo**: Crucial para el procesamiento de transacciones financieras y de nómina.
- **Tipos JSONB**: Permite almacenar configuraciones dinámicas de conceptos salariales sin romper el esquema estricto.
- **Licencia Open Source**: Cero costos de licenciamiento por núcleo.
- **Compatibilidad con herramientas RAG / AI**: Fácil indexación de esquemas y conectividad con PostgreSQL pgvector en caso de requerir búsqueda semántica nativa.

---

## 5. Consecuencias

- **Positivas**: Alto rendimiento, costo-eficiente, comunidad activa, excelente escalabilidad horizontal de lectura con réplicas.
- **Negativas**: Requiere un plan riguroso de migraciones SQL (usando herramientas como Flyway o Liquibase) para mantener la convención de nombres corporativos (`xhr...`).
