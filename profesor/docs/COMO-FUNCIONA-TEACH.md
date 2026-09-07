# Cómo funciona la skill `teach` (mattpocock/skills)

> Fuente leída: `skills/productivity/teach/SKILL.md` + `MISSION-FORMAT.md`, `RESOURCES-FORMAT.md`,
> `LEARNING-RECORD-FORMAT.md`, `GLOSSARY-FORMAT.md`, `agents/openai.yaml` y la doc `docs/productivity/teach.md`.
> Repo: https://github.com/mattpocock/skills

## La idea en una frase

`teach` convierte **un directorio** en un espacio de aprendizaje persistente, **prohíbe enseñar de memoria**
(busca fuentes de alta confianza antes de abrir la boca) y produce **lecciones HTML cortas, citadas y atadas a
una misión concreta**, eligiendo cada siguiente lección dentro de tu zona de desarrollo próximo, calculada a
partir del registro de lo que ya has demostrado saber.

Dos hechos estructurales lo explican casi todo:

1. **Es *stateful* vía sistema de archivos.** La continuidad es la carpeta, no la conversación. Puedes abrir una
   sesión nueva mañana, decir "siguiente lección" y el curso continúa, porque el estado está en disco.
2. **El conocimiento paramétrico del modelo se trata como no fiable.** Antes de enseñar, busca; registra las
   fuentes en `RESOURCES.md`; y cita dentro de cada lección. La verificación no se elimina, se abarata.

Se invoca a mano con `/teach`. El frontmatter lleva `disable-model-invocation: true`: el agente nunca la lanza por
su cuenta.

## Las 7 piezas del workspace

| Archivo | Qué hace | Por qué existe |
|---|---|---|
| `MISSION.md` | El **porqué** real: qué cambia en tu vida o tu trabajo cuando domines esto | Es la brújula. Sin misión las lecciones derivan a lo abstracto y nada decide qué toca después. Si falta, lo primero que hace es entrevistarte |
| `RESOURCES.md` | Fuentes vetadas, partidas en **Conocimiento** y **Sabiduría (comunidades)** | Separa lo que se aprende leyendo de lo que solo se aprende rozándose con practicantes |
| `lessons/NNNN-*.html` | La unidad de enseñanza: un HTML autocontenido, corto, con una victoria tangible | Es lo que consumes una vez |
| `reference/*.html` | Chuletas, algoritmos, glosarios: la esencia comprimida de las lecciones | Es lo que **relees**. Por eso vive fuera de la lección que lo introdujo |
| `learning-records/NNNN-*.md` | Notas estilo ADR de lo que **has demostrado** aprender | Es el input para calcular qué enseñarte a continuación |
| `assets/*` | Componentes reutilizables: hoja de estilos común, widgets de quiz, simuladores | Evita que el curso sea un montón de HTML sueltos sin relación |
| `NOTES.md` | Tus preferencias declaradas sobre cómo quieres que te enseñen | Memoria de trato, no de contenido |

## El motor pedagógico

**Storage strength, no fluency.** *Fluency* es el recuerdo del momento: la sensación de dominio mientras lees,
que desaparece en una semana. *Storage strength* es la retención a largo plazo, y es el único objetivo. Se
construye con **dificultad deseable**: práctica de recuperación (traer de la memoria, no reconocer), espaciado e
intercalado.

**Conocimiento → Habilidad → Sabiduría.**

- *Conocimiento*: se captura de fuentes fiables. Aquí **la dificultad es el enemigo**, porque se come la memoria
  de trabajo que necesitas para comprender. Se enseña solo el conocimiento mínimo que la habilidad exige.
- *Habilidad*: se adquiere en un bucle de feedback lo más apretado posible. Aquí **la dificultad es la
  herramienta**.
- *Sabiduría*: no la da el modelo. Ante una pregunta de juicio real, intenta responder y después te manda a una
  comunidad con buena reputación donde puedas contrastarlo.

**Zona de desarrollo próximo.** Cada lección debe retarte "lo justo". Se calcula leyendo tus `learning-records`
y cruzándolos con la misión: lo más relevante que todavía te cuesta pero ya es alcanzable.

**El quiz es una puerta, no un trámite.** La skill empuja en contra del modelo complaciente: no avanza porque le
des las gracias, avanza cuando hay evidencia. Un `learning-record` solo se escribe cuando demuestras algo, no
cuando el material "se ha cubierto".

## Fallos conocidos (y cómo los corrige el prompt de esta carpeta)

Documentados en la propia página del repo. Importan porque un prompt derivado que los copie los hereda.

| Fallo en `teach` | Corrección en `PROFESOR-GPT.md` |
|---|---|
| **La respuesta correcta del quiz siempre cae en la opción A** (issue #335: 33 de 33 veces). El `SKILL.md` iguala la longitud de las opciones pero no dice nada de la posición | Secuencia determinista de posiciones rotada por número de pregunta (P1→C, P2→A, P3→D, P4→B…), decidida *después* de escribir la respuesta correcta |
| **No hay paso de evaluación inicial** (petición abierta #725). En la sesión 1 no existen registros, así que inventa tu nivel | Diagnóstico obligatorio de 6 preguntas antes de la primera lección, con 2 conceptos inexistentes para detectar sobreestimación |
| **No hay repetición espaciada real**: espaciado e intercalado son principios de diseño, pero nada programa un repaso | Cola de repaso con intervalos 1/3/7/21 días dentro del bloque de estado; cada sesión abre recuperando lo vencido |
| **No sabe cuándo parar de enseñar**: "es bueno haciendo la siguiente lección, no tanto sabiendo cuándo cambiar a repaso o práctica real" | Criterios de salida explícitos por misión y modo proyecto cuando se cumplen |
| **Asume conocimiento previo y usa jerga sin definir** (la queja más frecuente) | Regla antijerga: ningún término técnico se usa sin estar en el glosario o definirse al introducirlo |
| **Alucinaciones en dominios de notación precisa** (secuencias de cubo de Rubik inventadas) | Cita obligatoria con versión y fecha; marcador literal `[sin verificar]` para lo que no se pudo comprobar |
| **Escribe los archivos donde no toca** (issue #377: acaban en `~/.claude/skills`) | No aplica: sin sistema de archivos, el estado es un bloque de texto explícito |
| **Un `GLOSSARY-FORMAT.md` que `SKILL.md` ya no enlaza** (issue #559): solo hay glosario si lo pides | El glosario es una sección obligatoria del bloque de estado |

## Qué me llevo para el prompt

Lo que hay que conservar sí o sí: la **misión** como brújula, la **prohibición de enseñar de memoria**, la
distinción **conocimiento/habilidad/sabiduría**, la **ZDP** calculada sobre evidencia, la separación
**lección (se consume) / referencia (se relee)**, y la postura **no complaciente**.

Lo que hay que reinventar: la persistencia. `teach` la resuelve con archivos; un chat no tiene archivos, así que
la sustituye un **BLOQUE DE ESTADO** que el profesor emite al final de cada sesión y tú pegas al empezar la
siguiente. Es el equivalente comprimido del directorio entero.
