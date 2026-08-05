Actúa como un Arquitecto de Software Senior, Analista Funcional, DBA y Tech Lead.

Analiza el siguiente caso de uso y genera un informe técnico completo.

El objetivo es identificar TODO lo que debe implementarse para desarrollar esta funcionalidad.

## Debes analizar los siguientes puntos:

# 1. Resumen Ejecutivo

- Explica en pocas palabras qué hace el caso de uso.
- Objetivo del negocio.
- Actor(es).
- Resultado esperado.

---

# 2. Reglas de Negocio

Extrae todas las reglas de negocio.

Para cada regla indica:

- ID (RN-001...)
- Descripción
- Prioridad
- Qué ocurre si no se cumple
- Validaciones necesarias

---

# 3. Flujo Funcional

Describe:

- Flujo principal
- Flujos alternos
- Flujos de error
- Casos excepcionales

Indica si falta algún escenario importante.

---

# 4. Pantallas

Determina:

- Pantallas nuevas
- Pantallas existentes que deben modificarse
- Controles nuevos
- Botones
- Tabs
- Campos
- Grid
- Búsquedas
- Filtros
- Popups
- Wizard

---

# 5. Campos de Datos

Genera una tabla con:

Nombre del campo

Tipo de dato

Longitud

Obligatorio

Valor por defecto

Reglas de validación

Descripción

Origen del dato

Destino del dato

---

# 6. Impacto en Base de Datos

Analiza si es necesario:

Crear nuevas tablas

Agregar columnas

Modificar columnas

Crear relaciones

Crear llaves foráneas

Crear índices

Crear constraints

Crear catálogos

Crear tablas de configuración

Crear tablas históricas

Crear tablas de auditoría

Crear tablas de permisos

Crear tablas temporales

Para cada cambio genera:

Nombre

Descripción

Justificación

---

# 7. Scripts SQL requeridos

Indica todos los scripts necesarios.

Ejemplo:

CREATE TABLE

ALTER TABLE

CREATE INDEX

CREATE VIEW

CREATE PROCEDURE

CREATE FUNCTION

CREATE TRIGGER

INSERT de catálogos

UPDATE de datos

Migraciones

Scripts rollback

---

# 8. Datos Iniciales

Indica qué información debe insertarse inicialmente.

Por ejemplo:

Catálogos

Configuraciones

Permisos

Tipos

Estados

Parámetros

Secuencias

Numeradores

Roles

Usuarios

---

# 9. Permisos y Seguridad

Indica:

Nuevos permisos

Permisos existentes que cambian

Roles afectados

Acciones permitidas

Acciones restringidas

GUID de cada permiso si aplica

Tablas de permisos involucradas

(xsdaaccms)

(xsdaaccdet)

---

# 10. API

Determina:

Endpoints nuevos

Endpoints modificados

Método HTTP

Request

Response

Códigos HTTP

Errores posibles

Autenticación

Autorización

---

# 11. Backend

Lista:

Servicios

Repositorios

Interfaces

DTO

Modelos

Entidades

Validadores

Mappers

Jobs

Background Services

Eventos

Handlers

Inyección de dependencias

---

# 12. Frontend

Lista:

Componentes

Páginas

Hooks

Stores

Context

Servicios

Rutas

Menús

Validaciones

Mensajes

---

# 13. Integraciones

Indica si interactúa con:

ERP

CRM

API externa

Correo

SMS

WhatsApp

Azure

AWS

DGII

TSS

Active Directory

LDAP

OAuth

OpenID

Otros sistemas

---

# 14. Reportes

Determina si requiere:

Nuevo reporte

Exportar Excel

Exportar PDF

Dashboard

KPIs

Indicadores

Gráficos

---

# 15. Auditoría

Indica:

Qué debe registrarse.

Usuario

Fecha

IP

Valores anteriores

Valores nuevos

Motivo

---

# 16. Notificaciones

Determina si requiere:

Correo

Push

SMS

Notificación interna

Webhook

---

# 17. Validaciones

Genera una lista completa de:

Validaciones funcionales

Validaciones técnicas

Validaciones de seguridad

Validaciones de negocio

---

# 18. Riesgos

Identifica:

Riesgos funcionales

Riesgos técnicos

Riesgos de rendimiento

Riesgos de concurrencia

Riesgos de seguridad

Riesgos de datos

---

# 19. Casos de Prueba

Genera:

Casos felices

Casos negativos

Casos límite

Pruebas de seguridad

Pruebas de concurrencia

Pruebas de permisos

Pruebas de integración

Pruebas de rendimiento

Incluye:

ID

Descripción

Precondiciones

Pasos

Resultado esperado

---

# 20. Impacto sobre módulos existentes

Indica todos los módulos afectados.

Explica cómo impacta cada uno.

---

# 21. Dependencias

Determina qué depende de:

Configuraciones

Otros módulos

Servicios

Datos

Permisos

---

# 22. Documentación faltante

Identifica información que hace falta para poder desarrollar correctamente.

Por ejemplo:

Reglas ambiguas

Campos no definidos

Estados faltantes

Permisos faltantes

Catálogos inexistentes

Flujos incompletos

---

# 23. Estimación de Complejidad

Clasifica cada área:

Frontend

Backend

Base de datos

Integraciones

Testing

Documentación

Utiliza:

Baja

Media

Alta

Muy Alta

---

# 24. Checklist de Implementación

Genera un checklist para el equipo de desarrollo.

Ejemplo:

☐ Crear tablas

☐ Crear índices

☐ Crear SP

☐ Crear vistas

☐ Crear APIs

☐ Crear DTO

☐ Crear validaciones

☐ Crear pruebas unitarias

☐ Crear pruebas de integración

☐ Actualizar documentación

☐ Crear scripts de permisos

☐ Crear scripts de datos iniciales

☐ Actualizar manual de usuario

---

# 25. Conclusión

Resume:

- Alcance real del desarrollo.
- Riesgos.
- Información faltante.
- Recomendaciones para Arquitectura.
- Recomendaciones para Desarrollo.
- Recomendaciones para QA.

IMPORTANTE:

Si alguna información no está presente en el caso de uso, NO la inventes.

Marca claramente:

"INFORMACIÓN FALTANTE"

y explica exactamente qué debe ser definido por el analista funcional.

El informe debe ser extremadamente detallado y estructurado utilizando tablas Markdown cuando sea posible.
