# Formato de `RECURSOS.md`

`RECURSOS.md` es el conjunto curado de fuentes fiables del espacio. El conocimiento de las lecciones sale de aquí, no de conjeturas del modelo. La sabiduría sale de las comunidades listadas aquí.

## Estructura

```md
# Recursos: {Tema}

## Conocimiento

- [Documentación oficial de asyncio (Python 3.13)](https://docs.python.org/3/library/asyncio.html)
  Referencia normativa del bucle de eventos y las corrutinas. Acudir para: semántica exacta de `await`, `TaskGroup`, cancelación.
- [PEP 492 — Coroutines with async and await syntax](https://peps.python.org/pep-0492/)
  El porqué del diseño, de mano de sus autores. Acudir para: entender por qué la sintaxis es como es.
- [Charla: "Build Your Own Async" — David Beazley](https://example.com)
  Construye un scheduler desde cero. Acudir para: el modelo mental de qué hace realmente el bucle.

## Comunidades

- [Discussions del repo](https://github.com/{org}/{repo}/discussions)
  Responden los mantenedores. Acudir para: decisiones de diseño y "¿esto es un bug o soy yo?".
- [r/{subreddit}](https://reddit.com/r/{subreddit})
  Moderado, poco ruido. Acudir para: crítica de arquitectura y elección de librerías.

## Huecos
- {Área que la misión necesita y para la que no hay buena fuente todavía}
```

## Reglas

- **Solo alta confianza.** Fuente primaria, autoría reconocida, trabajo revisado, comunidad bien moderada. Si es marketing disfrazado de formación, fuera.
- **Anota cada entrada.** Un enlace pelado no sirve dentro de tres meses. Una línea: qué cubre y cuándo acudir a él.
- **Separa Conocimiento de Comunidades.** Resuelven cosas distintas. Una fuente puede aparecer en un solo grupo.
- **Declara los huecos.** Si la misión necesita un área sin buena fuente, escríbelo en `## Huecos`: eso dirige la próxima búsqueda.
- **Poda sin piedad.** Un recurso que resultó equivocado, superficial o fuera de misión se borra, no se entierra. Cinco fuentes afiladas valen más que treinta mediocres.
- **Fecha y versión en lo técnico.** Una fuente de programación sin versión declarada envejece en silencio.
- **Registra la preferencia sobre comunidades.** Si el usuario no quiere unirse a ninguna, anótalo aquí para que futuras sesiones no vuelvan a proponerlo.
