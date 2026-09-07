# Profesor

Un tutor de programación que enseña a lo largo de muchas sesiones: con una **misión** concreta, fuentes
**citadas** (nunca de memoria), lecciones cortas con práctica real, y **repaso espaciado** para que lo aprendido
siga ahí dentro de un mes.

Existe en dos formatos, con el mismo cerebro:

| | Dónde | Cómo guarda el progreso |
|---|---|---|
| **Skill** | Claude Code, Claude Desktop, claude.ai | En archivos, dentro de la carpeta del curso |
| **Prompt** | ChatGPT, o cualquier otro chat | En un *bloque de estado* que copias y pegas entre sesiones |

Es una versión en español y especializada en programación de la skill [`teach`](https://github.com/mattpocock/skills)
de Matt Pocock, con las carencias conocidas de la original corregidas. Los detalles, en
[`docs/COMO-FUNCIONA-TEACH.md`](docs/COMO-FUNCIONA-TEACH.md).

---

## Qué hace distinto

- **No enseña de memoria.** Busca fuentes de alta confianza antes de abrir la boca, las anota en `RECURSOS.md`
  y cita dentro de cada lección, con versión y fecha. Lo que no puede verificar lo marca `[sin verificar]`.
- **Te evalúa antes de enseñarte.** Seis preguntas de calibración, dos de ellas sobre conceptos que no existen:
  si dices dominarlos, baja el punto de partida. La skill original no tiene este paso y se inventa tu nivel.
- **La evidencia manda.** No avanza porque digas que lo has entendido, sino cuando lo demuestras.
- **Repasa de verdad.** Cola de repaso con intervalos de 1, 3, 7 y 21 días. Cada sesión empieza recuperando
  de memoria lo que toca, antes de material nuevo.
- **Sabe cuándo parar.** Cuando cumples los criterios de la misión, deja de dar lecciones y te manda a un
  proyecto real.
- **Quiz sin pistas.** Posición de la respuesta correcta rotada y opciones de la misma longitud: sin el sesgo
  de "la buena siempre es la A".

## Contenido de esta carpeta

```
SKILL.md             El protocolo del tutor: lo que Claude lee al invocar /profesor
*-FORMAT.md          El formato de cada archivo que la skill escribe en tu curso
chatgpt/             El prompt monolítico para ChatGPT y otros chats
docs/                Cómo funciona la skill teach original y qué se corrigió
```

---

## Usarlo en Claude

Se puede instalar **directamente**: una skill de Claude no es más que una carpeta con un `SKILL.md` que lleva
frontmatter. No hace falta generarla con ninguna herramienta.

### Claude Code

```bash
git clone https://github.com/McGregory99/astillero-skills.git
cd astillero-skills && ./install.sh profesor
```

El instalador enlaza la carpeta en `~/.claude/skills/profesor`, así que lo que edites en el repo queda activo
sin reinstalar nada. Si prefieres una copia suelta, `cp -r astillero-skills/profesor ~/.claude/skills/profesor`
hace el mismo trabajo. Para que esté disponible solo en un proyecto, cópiala a `.claude/skills/profesor` dentro
de ese proyecto.

Después, **abre una carpeta vacía para tu curso** y lánzala ahí:

```bash
mkdir -p ~/cursos/rust-cli && cd ~/cursos/rust-cli
claude
> /profesor quiero aprender Rust para reescribir nuestro CLI de despliegue
```

Esa carpeta es tu espacio de aprendizaje: ahí se irán escribiendo `MISION.md`, `RECURSOS.md`, `lecciones/`,
`referencia/`, `registros/` y `repaso.md`. **Un curso por carpeta**, y nunca dentro del proyecto en el que
trabajas. Un repo propio va bien: las lecciones quedan versionadas y se pueden compartir.

En sesiones siguientes basta con abrir Claude en esa misma carpeta y decir `/profesor siguiente lección`. La
continuidad está en los archivos, no en la conversación.

> La skill lleva `disable-model-invocation: true`: Claude nunca la lanza por su cuenta, solo cuando escribes
> `/profesor`. Es deliberado — no quieres que un tutor de varias sesiones se active en mitad de otra tarea.

### Claude Desktop y claude.ai

Comprime la carpeta de la skill y súbela desde **Ajustes → Capacidades → Habilidades**:

```bash
cd astillero-skills && zip -r profesor.zip profesor
```

La disponibilidad de skills subidas depende de tu plan. Si no ves esa opción, usa el prompt de
[`chatgpt/PROFESOR-GPT.md`](chatgpt/PROFESOR-GPT.md), que funciona igual en Claude: es el mismo tutor sin
escritura en disco.

### Con `skill-creator` (opcional)

No hace falta para instalarla, pero es la vía cómoda si quieres **modificarla**. `skill-creator` viene de serie
en Claude Code:

```
> /skill-creator adapta la skill de ~/.claude/skills/profesor para enseñar diseño de sistemas
                 en vez de programación, manteniendo el protocolo de sesión y el repaso espaciado
```

También sirve para lo contrario: partir de este `SKILL.md` como referencia y crear la tuya desde cero, o
empaquetar la carpeta en el `.zip` que pide claude.ai. Si solo quieres usarla tal cual, ignora este apartado.

---

## Usarlo en ChatGPT

El fichero es [`chatgpt/PROFESOR-GPT.md`](chatgpt/PROFESOR-GPT.md). Está partido en dos bloques por una razón
práctica: el campo *Instructions* de un GPT personalizado admite **8000 caracteres**, y el **núcleo** ocupa
7.870. Los **anexos** (plantillas de misión, recursos, glosario, registros y bloque de estado) van aparte.

### Opción A — GPT personalizado (recomendado)

1. **Explorar GPTs → Crear → Configurar**.
2. **Nombre**: Profesor. **Descripción**: tutor de programación por lecciones, con fuentes citadas y repaso espaciado.
3. **Instructions**: pega solo lo que hay entre `INICIO NÚCLEO` y `FIN NÚCLEO`.
4. **Knowledge**: sube el `PROFESOR-GPT.md` completo, y añade al final de las instrucciones esta línea:
   *"Los formatos exactos están en PROFESOR-GPT.md, en tu Knowledge; consúltalo antes de emitir el bloque de
   estado o cualquier plantilla."*
5. **Capacidades**: activa **búsqueda web** (imprescindible: sin ella la regla de no enseñar de memoria es papel
   mojado) y **análisis de datos / intérprete de código** (para ejecutar las demos y comprobar la salida esperada).
   Generación de imágenes no hace falta.
6. **Conversation starters** sugeridos:
   - `Quiero aprender X. Te cuento mi contexto.`
   - `Retomamos: aquí va mi bloque de estado.`
   - `/repasar`
   - `/proyecto`

### Opción B — chat normal, sin crear nada

Pega el archivo entero (núcleo + anexos) como primer mensaje, seguido de una línea con lo que quieres aprender.
En las sesiones siguientes, pega lo mismo **más tu bloque de estado**.

Si usas **Proyectos** (ChatGPT o Claude), mete el prompt una sola vez en las instrucciones del proyecto: a
partir de ahí, cada sesión nueva solo necesita el bloque de estado.

### El bloque de estado

Es el sustituto de la carpeta: contiene misión, nivel de partida, recursos, glosario, registros, cola de repaso,
índice de lecciones y notas. El profesor lo emite al terminar cada sesión, dentro de un bloque de código.
**Guárdalo en un archivo tuyo.** Si lo pierdes, el curso se reinicia.

---

## Los comandos

Funcionan igual en las dos versiones:

| Comando | Qué hace |
|---|---|
| `/siguiente` | Lección nueva |
| `/repasar` | Solo repaso de lo vencido, sin material nuevo |
| `/mas-dificil`, `/mas-facil` | Ajusta la dificultad y lo anota como preferencia |
| `/define X` | Definición de glosario, en dos frases |
| `/ficha` | Regenera la ficha de referencia de lo último visto |
| `/no-entiendo` | Reenseña con otro modelo mental y otro ejemplo, sin repetir lo mismo |
| `/mision` | Revisar o cambiar la misión |
| `/proyecto` | Propone o revisa el proyecto real |
| `/examen` | Evaluación acumulativa de todo lo registrado |
| `/estado` | *(solo ChatGPT)* Emite el bloque de estado ahora |

## Sabrás que está funcionando si

- Lo primero que hace en una carpeta vacía es entrevistarte sobre **por qué** quieres esto, no darte una lección.
- `RECURSOS.md` se llena antes que las lecciones, y cada lección te señala **una** fuente primaria que leer.
- Las afirmaciones llevan enlace. Una lección sin citas es el modelo enseñando de memoria.
- Una lección se termina de una sentada y te deja sabiendo hacer algo que antes no sabías.
- Abrir una sesión nueva y decir "siguiente" continúa el curso en vez de reiniciarlo.
- Los registros crecen y deja de reexplicarte lo que ya demostraste.
- Una pregunta de criterio te lleva a un foro o a una revisión con humanos, no solo a una respuesta suya.

## Dos avisos honestos

**Verifica lo procedimental.** El riesgo de invención es máximo en notación precisa —flags, firmas de API,
comandos— y mínimo en lo que puedes ejecutar. Ejecuta el código. La maquinaria de citas existe para abaratar la
verificación, no para eliminarla.

**Corrige el nivel en voz alta.** Si una lección te queda grande o pequeña, dilo. Se convierte en registro y
ajusta la siguiente. El sistema no lo detecta solo.

## Créditos

Derivado de [`teach`](https://github.com/mattpocock/skills/tree/main/skills/productivity/teach), de
[Matt Pocock](https://github.com/mattpocock) (MIT). Se conservan sus ideas centrales —misión como brújula,
prohibición de enseñar de memoria, conocimiento / habilidad / sabiduría, zona de desarrollo próximo, retención
frente a fluidez, y la separación entre lección y documento de referencia— y se añade la especialización en
programación, el diagnóstico inicial, la cola de repaso, los criterios de salida y el arreglo del sesgo de
posición en los quizzes.

MIT.
