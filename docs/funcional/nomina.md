# Módulo Funcional: Cálculo de Nómina (Payroll)

## 1. Objetivo
Establecer las políticas, algoritmos de cálculo y flujos de revisión para procesar la nómina ordinaria, extraordinaria y liquidaciones de los colaboradores del ERP.

---

## 2. Reglas de Negocio (RN)

| Código | Regla de Negocio | Descripción |
| :--- | :--- | :--- |
| **RN-NOM-001** | Cierre de Novedades | Las novedades (horas extras, incapacidades, ausencias) deben estar cerradas y congeladas 3 días antes de la fecha de ejecución del cálculo. |
| **RN-NOM-002** | Inmutabilidad de Nómina Cerrada | Una vez que un periodo de nómina es aprobado y cerrado (`ESTADO = CERRADO`), los cálculos y comprobantes son inmutables. Ajustes posteriores requieren una Nómina Extraordinaria de Ajuste. |
| **RN-NOM-003** | Prioridad de Deducciones | Las deducciones legales (impuesto sobre la renta, seguridad social) tienen prioridad sobre las deducciones voluntarias (préstamos, cooperativa). El salario neto no puede ser inferior al salario mínimo legal. |

---

## 3. Estructura del Cálculo

```text
Salario Base
  + Horas Extras y Recargos
  + Bonificaciones y Comisiones
  = Total Devengado (Gross Pay)

  - Impuesto sobre la Renta (ISR)
  - Retenciones de Seguridad Social (AFP / Salud)
  - Deducciones por Préstamos / Embargos
  = Total a Pagar (Net Pay)
```
