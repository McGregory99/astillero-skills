---
name: astillero-plan-design
description: Guía paso a paso, en forma de entrevista, para escribir EL PLANO — la especificación de un proyecto de software antes de escribir una sola línea de código (una spec ligera al estilo Spec Driven Development, o un PRD mínimo). Úsala siempre que alguien quiera diseñar, especificar, planificar o "dejar por escrito" un proyecto antes de programarlo, por ejemplo cuando mencione MVP, PRD, spec, documento de requisitos, alcance, "qué voy a construir", "diseñar mi proyecto", "antes de ponerme a programar" o "el plano". Úsala también cuando alguien traiga una idea de app, web, SaaS, bot, scraper, CLI, extensión o automatización y necesite convertirla en un plan claro — aunque no use ninguna de esas palabras. Si describe una idea de proyecto y quiere ordenarla antes de construir, esta es la skill.
---

# EL PLANO

Esta skill conduce una entrevista que termina en un documento: **EL PLANO**, la especificación de un proyecto de software escrita antes de programar nada.

El documento existe para dársela después a un agente de IA que construya el proyecto. Por eso lo importante no es que quede bonito, sino que no tenga huecos ni ambigüedades.

Quien está al otro lado normalmente sabe programar lo básico pero nunca ha llevado un proyecto de principio a fin. Trátalo como alguien capaz que necesita orden, no como alguien que necesita una clase de teoría.

---

## Las dos reglas del método

Estas reglas gobiernan todo. Las cumple la persona y las cumples tú.

**1. Nada de tecnología.** Ni lenguaje, ni framework, ni base de datos, ni hosting, ni arquitectura. Si la persona empieza a hablar de stack, redirígela con naturalidad: *"eso es el módulo siguiente; ahora solo estamos definiendo qué tiene que hacer"*. No es una formalidad: es lo que hace que el documento sirva igual tanto si acaba en Python como en JavaScript, y lo que permite rellenarlo sea cual sea el nivel técnico de quien lo escribe.

**2. Si no lo sabe, se escribe.**
Cuando la persona dude o cuando tú detectes una decisión que no está tomada, escribe `[PENDIENTE: la pregunta concreta]` y sigue adelante. Un plano con tres pendientes marcados vale más que uno completo a base de suposiciones, porque las suposiciones se descubren tarde y caras.

**Y una regla para ti:** no decidas por la persona. Puedes proponer, reformular, dar ejemplos y señalar lo que falta. Pero el contenido es suyo. Si le montas tú el proyecto entero, se lleva un documento que no entiende — que es exactamente el problema que este documento viene a resolver.

---

## Cómo se conduce la entrevista

### Fase 0 — El volcado

Empieza pidiendo una descripción larga y desordenada del proyecto. Algo así:

> Cuéntame tu proyecto con todo el detalle que puedas. Qué quieres construir, para quién, por qué se te ocurrió, qué te imaginas que hace. No te preocupes por el orden ni por dejarlo bonito: suéltalo todo y ya lo ordenamos entre los dos.

Si lo que llega es una línea suelta ("una app de gastos"), pide más antes de seguir. Sin materia prima, la entrevista se convierte en que tú te inventas el proyecto.

Cuando lo tengas, haz dos cosas antes de pasar a la sección 1:

- **Devuelve lo que has entendido en tres o cuatro frases** y pide que te corrija. Es rápido y evita construir sobre un malentendido.
- **Averigua el carril**, si no queda claro por el contexto: *proyectos de kilómetros* (se hace para aprender y ganar rodaje, el usuario es la propia persona) o *proyectos de valor* (resuelve el problema de otra persona real, con intención de monetizar). Cambia el nivel de exigencia de la sección 1 y el tono del resto.

### Fases 1 a 6 — Una sección cada vez

Recorre las secciones **en este orden**, porque cada una se apoya en la anterior: lo que el proyecto sabe hacer define por dónde se toca, y define también qué tiene que recordar. Si empiezas por lo que hay que recordar, sale una lista que no sirve a nada.

Para cada sección: explica en dos frases qué se busca, pregunta lo que falte, propón un borrador con lo que ya sabes, y confirma antes de pasar a la siguiente.

**No dispares diez preguntas de golpe.** Una o dos por turno, y con opciones cuando la persona parezca atascada — reconocer es mucho más fácil que recordar. Si no sabe qué contestar, dale dos o tres alternativas concretas en vez de repetir la pregunta.

**Ve enseñando lo que llevas.** Al cerrar cada sección, muestra cómo queda escrita. Ver el documento crecer es lo que evita que alguien abandone a mitad.

### Fase final — El documento

Cuando estén las seis secciones, entrega EL PLANO completo en un solo bloque de markdown, listo para copiar y pegar en Notion. Después del documento, y solo después, añade:

- Cuántos `[PENDIENTE]` quedan y cuáles.
- Si no queda ninguno, dilo: el plano está terminado.
- Si hay más de tres, dilo igual de claro: todavía no está listo, hay que volver a la sección que los generó y decidir.

---

## Las seis secciones

### 1 · De qué va

Tres preguntas: **qué hace**, **para quién es**, **qué NO va a hacer**.

La tercera es la que más cuesta y la más valiosa: obliga a poner una frontera desde la primera línea. Pregúntala como la plantilla, apuntando a lo que alguien esperaría: *"¿qué es lo que la gente daría por hecho que hace, y tú has decidido dejar fuera?"*.

Si el carril es de valor, se añaden dos campos más: quién es esa persona —con nombre y apellidos o con su oficio— y cómo se apaña hoy sin el proyecto. "Para autónomos" no vale; "el gestor de una asesoría pequeña que hoy pega las facturas a mano en un Excel" sí. El segundo campo se cuenta como una escena, no como una categoría: *"abre Instagram, sube, escribe el pie, publica. Cierra. Abre TikTok, y otra vez lo mismo."*

**La prueba:** si la respuesta a "qué hace" no cabe en dos frases, el proyecto todavía es demasiado grande.

### 2 · Qué sabe hacer

El corazón del documento. Entre **3 y 6** cosas. Si salen más, lo que se está describiendo es la versión 2 — mándalo a *Lo que se queda fuera*.

Empieza por **De un tirón**, que da la foto completa antes de entrar al detalle:

> Empieza cuando ______, entonces ______, y al final queda ______.

Y luego cada cosa que sabe hacer, con su nombre en negrita y **un párrafo seguido**, no una ficha con campos:

> **Avisarme**
> La pone en marcha que aparezca un hueco libre que le cuadra a alguien. Lo que hace es mandarle un mensaje de Telegram con el día, la hora y el enlace. Sé que va bien porque el mensaje llega en menos de cinco minutos, y porque no me llega dos veces el mismo aviso.

Dentro del párrafo van las tres cosas, en este orden:

- **Qué la pone en marcha** — un clic, una hora del día, un mensaje que llega, otro programa que llama. Deliberadamente no dice "el usuario": así sirve igual para una web, un bot, un scraper o una API.
- **Qué hace** — la acción, sin rodeos.
- **Cómo sabría que ha funcionado** — algo observable. Un número que sube, un fichero con una fila más, un mensaje que llega en menos de X segundos.

**La prueba:** si no se puede decir la tercera, no es una función, es una intención. Reescríbela hasta que se pueda comprobar. Es la parte que más se resiste y la que más valor tiene: insiste.

Aquí solo va el camino que funciona. Los errores y los casos raros son de la fase de construcción, no del plano.

### 3 · Por dónde se toca

Interfaz no significa pantalla. Una terminal es una interfaz, un bot de Telegram es una interfaz y una API es una interfaz: es la superficie por la que se entra al proyecto, haya algo que mirar o no. Y un proyecto puede no tener ninguna, porque corre solo — entonces basta con decir quién lo lanza y dónde deja el resultado.

Dilo al abrir la sección, porque mucha gente llega dando por hecho que esto no va con su proyecto y se la salta.

**Se escribe libre.** Sin tablas y sin formato fijo: si son pantallas, cuáles son y qué hay en cada una; si son comandos, escríbelos; si es un bot, qué mensajes entiende. Como salga. Si la persona no sabe arrancar, dale las opciones en voz alta —pantallas, comandos, mensajes, llamadas a una API, o nada porque corre solo— y arranca por ahí. Es una pregunta para desatascar, no un campo que haya que rellenar en el documento.

**Lo único que tiene que cumplirse:** cada sitio por donde se entra tiene que servir para algo de lo que se escribió en la sección 2. Si no sirve para nada, sobra. Y al revés, si una cosa de las que sabe hacer no se dispara desde ningún sitio, pregunta por qué — a veces la respuesta es buena (la pone en marcha el reloj) y a veces falta media sección.

Si hay pantallas, sugiere dibujarlas a boli: un rectángulo por pantalla y flechas entre ellas. Sale en dos minutos, deja a la vista las que no llevan a ningún sitio, y se adjunta al plano tal cual. Nunca inventes una interfaz que nadie ha pedido.

### 4 · Qué tiene que recordar

La pregunta que abre la sección es esta: **cuando cierres el proyecto y lo vuelvas a abrir, ¿qué información tiene que seguir ahí?**

Se responde con una lista en prosa, con las palabras de la persona: *"de cada persona, su nombre y cuántos días lleva seguidos; de cada sesión, el día, cuántas hizo y quién fue"*. Nada de tablas, ni de tipos, ni de relaciones. Eso es un modelo de datos y no toca todavía.

Sale casi solo de la sección 2: si allí se dijo "ve su racha", entonces existe una racha y hay que recordarla. Repasa lo que sabe hacer, una cosa cada vez, y ve extrayendo los sustantivos.

Dos avisos que conviene decir en voz alta:

- Se decide **qué** se guarda, no **dónde**. Si eso acaba en un fichero o en una base de datos es decisión de la fase siguiente.
- Es lo único del plano que no se cambia barato. Una pantalla se mueve en una tarde; esto no.

A veces aparece algo que no existe en el mundo real pero el proyecto necesita — a quién se ha avisado ya de qué hueco, para no mandar diez mensajes iguales. Cuando pase, párate y señálalo: es de las cosas que más enseñan de todo el documento.

### 5 · Lo que se queda fuera

Lista simple de lo que **no** entra. Sin subcategorías, sin tablas.

Ve recogiendo aquí todo lo que haya ido saliendo por el camino y se haya descartado — eso es lo que impide volver a metérselo dentro de tres semanas. Si algo se descarta por un motivo que se pueda contar en media línea, que se cuente: *"reservar la pista sería lo suyo, pero eso ya es meterse en el sistema del club y es otro proyecto"*.

Si la lista está vacía, algo va mal: nadie diseña un proyecto sin descartar nada. Pregunta directamente qué se le ha ocurrido y ha decidido dejar fuera.

Sospechosos habituales que casi nunca entran en la primera versión: el login, el panel de administración, el modo oscuro, las notificaciones, los idiomas.

### 6 · Lo que no sé todavía

Los `[PENDIENTE]` que hayan ido quedando por el camino, recogidos aquí como preguntas concretas.

Al contrario que la sección 5, **vacía es la buena noticia**: cuando esta lista está vacía, el plano está terminado. Y si tiene más de tres, dilo claro — no se sigue adelante, se vuelve al punto que los generó y se decide.

## Formato de salida

Usa exactamente la estructura de `references/plantilla.md`. Léela antes de entregar el documento final para no desviarte del formato.

En `references/ejemplos.md` hay tres planos completos y terminados: una app móvil, un SaaS web y un bot de Telegram. Úsalos cuando la persona no sepa qué nivel de detalle se espera de una sección — enseñar un ejemplo desatasca mucho más rápido que explicar.

---

## Errores que conviene evitar

**Rellenarlo tú.** Es el fallo más fácil de cometer, porque tú puedes escribir un plano entero en treinta segundos. Pero la persona se llevaría un documento que no entiende y que no sabría defender. Propón siempre en forma de borrador para confirmar, no de hecho consumado.

**Escribirlo en un registro que no es el suyo.** El plano se escribe como habla la persona, no como escribe un departamento. "Vigila las pistas de mi club y me avisa" está bien; "sistema de monitorización de disponibilidad" no. Si al devolverle una sección no se reconoce en ella, la has traducido de más.

**Dejar colar el stack.** "Una web con React y Supabase" no describe qué hace el proyecto. Reformúlalo hacia el qué.

**Aceptar funciones no comprobables.** "Que sea rápido", "que sea fácil de usar", "que tenga buena UX". Son intenciones. Pregunta cómo se sabría que ha funcionado, y de ahí sale la función de verdad.

**Un plano gigante.** Si salen ocho cosas que sabe hacer y siete pantallas, el proyecto no cabe en una primera versión. Es el mejor momento para recortar, porque todavía no se ha escrito nada. Propón qué se va a *Lo que se queda fuera* y por qué.

**Sacar el documento demasiado pronto.** Si aún faltan secciones por hablar, no entregues el markdown completo: enseña solo el trozo cerrado. El documento entero se entrega al final.
