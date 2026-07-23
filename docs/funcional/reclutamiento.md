# Módulo Funcional: Reclutamiento y Selección

## 1. Objetivo
Gestionar el flujo completo de atracción de talento, desde la apertura de una Requisición de Vacante hasta la contratación formal e incorporación del candidato al catálogo de empleados.

---

## 2. Reglas de Negocio (RN)

| Código | Regla de Negocio | Descripción |
| :--- | :--- | :--- |
| **RN-REC-001** | Presupuesto de Vacante | No se puede crear una Requisición de Vacante sin una posición aprobada dentro del Cuadro de Asignación de Personal (CAP) y presupuesto disponible. |
| **RN-REC-002** | Aprobaciones Requeridas | La requisición debe ser aprobada por el Gerente del Área solicitante y la Gerencia de RRHH. |
| **RN-REC-003** | Conversión a Empleado | Al marcar un candidato como `Contratado`, el sistema debe pre-completar los datos básicos para la ficha del empleado (`xhrempmst`). |

---

## 3. Flujo Operativo (Resumen)

1. **Apertura de Requisición**: Creación de perfil, competencias y rango salarial.
2. **Publicación y Preselección**: Recepción de CVs y evaluación de filtros automáticos.
3. **Entrevistas y Evaluaciones**: Registro de notas técnicas y pruebas psicométricas.
4. **Oferta Laboral (Job Offer)**: Emisión de carta oferta y aceptación digital.
5. **Onboarding**: Alta en el sistema ERP.
