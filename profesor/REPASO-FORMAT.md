# Formato de `repaso.md`

La cola de repaso espaciado. Es la pieza que la skill original no tiene: sin ella, el espaciado es un principio de diseño que nada llega a programar.

## Estructura

```md
# Cola de repaso — actualizada {AAAA-MM-DD}

| Concepto | Lección | Demostrado | Próximo repaso | Intervalo | Fallos |
|---|---|---|---|---|---|
| Cancelación de tareas | 0003 | 2026-02-04 | 2026-02-11 | 7 d | 0 |
| `TaskGroup` vs `gather` | 0004 | 2026-02-06 | 2026-02-07 | 1 d | 1 |

## Retirados
- {Concepto} — superó el intervalo de 21 días el {fecha}
```

## Reglas

- **Intervalos**: 1 → 3 → 7 → 21 días desde la fecha en que se demostró. Al superar el de 21 días, el concepto pasa a `## Retirados` y deja de repasarse.
- **Un fallo reinicia a un día** e incrementa el contador de fallos. Un concepto con dos o más fallos merece que lo reenseñes con otro modelo mental, no que lo repases más veces.
- **El repaso es recuperación desde la memoria.** Preguntas cerradas y respuestas escritas sin mirar apuntes; nunca "repasa esta lección".
- **Intercala.** Cada tanda de repaso mezcla conceptos de lecciones distintas: es lo que construye la capacidad de elegir la herramienta correcta, no solo de aplicarla cuando ya te dicen cuál es.
- **Un concepto entra en la cola solo si tiene registro de aprendizaje.** Sin evidencia no hay nada que repasar.
- **Empieza la sesión por aquí.** Los vencidos van antes que el material nuevo, siempre.
