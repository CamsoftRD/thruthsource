# Estrategia y Matriz de Pruebas: Desvinculación de Personal

Documento de referencia para la generación automática y manual de escenarios de prueba (Unitarias, Integración y E2E).

---

## 1. Matriz de Casos de Prueba (QA Matrix)

| Test ID | Escenario | Tipo | Entradas | Resultado Esperado |
| :--- | :--- | :--- | :--- | :--- |
| **TC-DES-001** | Desvinculación de empleado activo con Paz y Salvo completo. | Feliz | `emp_codigo`: EMP-001, PazYSalvo: OK | Estado cambia a `INACTIVO`, se genera registro de Finiquito. |
| **TC-DES-002** | Intentar desvincular sin Paz y Salvo de TI. | Negativo | `emp_codigo`: EMP-002, TI_PazSalvo: PENDIENTE | El sistema rechaza la transición y devuelve HTTP 400. |
| **TC-DES-003** | Desvinculación con fecha de salida futura. | Borde | `fecha_salida`: +15 días | Estado permanece `ACTIVO` hasta la fecha de salida (tarea programada). |
| **TC-DES-004** | Revocación automática de accesos LDAP al cumplirse fecha. | Integración | Evento `EmpleadoDesvinculado` | La API de Active Directory desactiva la cuenta del usuario. |

---

## 2. Ejemplo de Prueba Unitaria Generada (Pseudocódigo / Jest)

```typescript
describe('DesvinculacionService', () => {
  it('debe rechazar la desvinculación si existen préstamos pendientes sin aprobar en Paz y Salvo', async () => {
    const empleado = createMockEmpleado({ emp_codigo: 'EMP-100' });
    const pazYSalvo = createMockPazYSalvo({ finanzasAprobado: false });

    jest.spyOn(pazSalvoRepo, 'findByEmpleado').mockResolvedValue(pazYSalvo);

    await expect(
      desvinculacionService.procesarDesvinculacion('EMP-100', new Date())
    ).rejects.toThrow('No se puede desvincular: Paz y Salvo de Finanzas pendiente.');
  });
});
```
