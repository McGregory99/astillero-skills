# Formato de `GLOSARIO.md`

`GLOSARIO.md` es el lenguaje canónico del espacio de aprendizaje. Todas las lecciones, ejercicios y registros deben respetarlo. Construirlo forma parte del aprendizaje: comprimir un concepto en una definición tensa es evidencia de haberlo entendido.

## Estructura

```md
# Glosario: {Tema}

{Una o dos frases describiendo el ámbito que cubre.}

## Términos

**Corrutina**:
Función que puede suspender su ejecución y devolver el control al bucle de eventos, para reanudarse después en el mismo punto.
_Evitar_: función async, tarea, hilo ligero

**Bucle de eventos**:
El planificador que decide qué corrutina lista se ejecuta a continuación en un único hilo.
_Evitar_: loop, scheduler, event loop

**Contrapresión (backpressure)**:
Mecanismo por el que un consumidor lento frena a un productor rápido en vez de acumular trabajo sin límite.
_Evitar_: throttling, límite de cola
```

## Reglas

- **Un término entra solo cuando el alumno lo entiende**, no cuando se le presenta. El glosario es registro de conocimiento comprimido, no un diccionario que se estudia.
- **Sé opinable.** Si hay varias palabras para lo mismo, elige una y lista el resto como sinónimos a evitar. Así es como comprime el lenguaje.
- **Definiciones tensas.** Una o dos frases. Define qué **es** el término, no qué hace ni cómo se usa.
- **Usa los propios términos del glosario dentro de las definiciones.** Es lo que hace abordable lo complejo más adelante.
- **Agrupa bajo subtítulos** cuando aparezcan grupos naturales (`## Concurrencia`, `## Tipos`). Una lista plana está bien mientras los términos cohesionen.
- **Marca las ambigüedades del sector.** Si un término se usa con holgura ahí fuera, resuelve: "aquí 'módulo' siempre significa X; el sentido Y lo llamamos Z".
- **Revisa según profundiza.** Una definición de la semana uno puede estar mal en la semana seis. Se corrige en el sitio; no dejes entradas rancias.
