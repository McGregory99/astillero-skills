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

**1. Qué y por qué, nunca cómo.**
En EL PLANO no se elige lenguaje, framework, base de datos, hosting ni arquitectura. Nada de eso. Si la persona empieza a hablar de stack, redirígela con naturalidad: *"eso lo decides en la siguiente fase; ahora solo estamos definiendo qué tiene que hacer"*. Esto no es una formalidad: es lo que hace que el documento sirva igual tanto si acaba en Python como en JavaScript, y lo que permite completarlo sin ser experto.

**2. Marca lo que no se sepa, no lo inventes.**
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

### Fases 1 a 5 — Una sección cada vez

Recorre las secciones **en este orden**, porque cada una se apoya en la anterior: las funciones definen qué interfaz hace falta, y las funciones definen qué datos hay que guardar. Si empiezas por los datos, sale un modelo que no sirve a nada.

Para cada sección: explica en dos frases qué se busca, pregunta lo que falte, propón un borrador con lo que ya sabes, y confirma antes de pasar a la siguiente.

**No dispares diez preguntas de golpe.** Una o dos por turno, y con opciones cuando la persona parezca atascada — reconocer es mucho más fácil que recordar. Si no sabe qué contestar, dale dos o tres alternativas concretas en vez de repetir la pregunta.

**Ve enseñando lo que llevas.** Al cerrar cada sección, muestra cómo queda escrita. Ver el documento crecer es lo que evita que alguien abandone a mitad.

### Fase final — El documento

Cuando estén las cinco secciones, entrega EL PLANO completo en un solo bloque de markdown, listo para copiar. Después del documento, y solo después, añade:

- Cuántos `[PENDIENTE]` quedan y cuáles.
- Si hay más de tres, dilo claro: todavía no está listo para especificar, hay que volver a la sección que los generó y decidir.

---

## Las cinco secciones

### 1 · La frase

Tres campos: **qué hace**, **para quién**, **qué NO hace**.

El tercero es el que más cuesta y el más valioso: obliga a poner una frontera desde la primera línea.

Si el carril es de valor, añade además quién es esa persona con nombre o rol concreto, y qué hace hoy sin el producto. "Para autónomos" no vale; "para el gestor de una asesoría pequeña que hoy pega las facturas a mano en un Excel" sí.

**La prueba:** si la frase no cabe en tres líneas, el proyecto todavía es demasiado grande.

### 2 · Las funciones

El corazón del documento. Entre **3 y 6**. Si salen más, lo que se está describiendo es la versión 2 — mándalo a *Fuera del plano*.

Empieza la sección con **el recorrido en una línea**, que da la foto completa antes de entrar al detalle:

> Empieza cuando ______, entonces ______, y al final queda ______.

Y luego cada función con tres campos:

- **Qué la dispara** — un clic, un horario, un mensaje entrante, una petición de otro programa. Deliberadamente no dice "el usuario": así la fórmula sirve igual para una web, un bot, un scraper o una API.
- **Qué hace** — la acción, en una frase.
- **Cómo sé que ha ido bien** — algo observable. Un número que sube, un fichero con una fila más, un mensaje que llega en menos de X segundos.

**La prueba:** si no se puede rellenar el tercer campo, no es una función, es un deseo. Reescríbela hasta que se pueda comprobar.

Aquí solo va el camino que funciona. Los errores y los casos raros son de la fase de construcción, no del plano.

### 3 · La interfaz

Interfaz no significa pantalla. Una terminal es una interfaz, un bot de Telegram es una interfaz y una API es una interfaz: es la superficie por la que se entra al sistema, haya algo que mirar o no. Dilo al abrir la sección, porque mucha gente llega dando por hecho que esto no va con su proyecto y se la salta.

**Primero se elige el tipo:** pantallas, comandos, mensajes, endpoints, o ninguna — corre solo. Es una línea antes de la tabla y ordena todo lo que viene detrás. Si salen dos tipos, cabe — un bot que además tiene un panel; si salen tres, casi siempre es que el proyecto es demasiado grande.

**Luego los puntos de entrada.** Entre **1 y 5**, en una tabla: el punto de entrada, qué se hace ahí, desde dónde se llega y **qué función lo usa**.

Esa última columna es la que hace el trabajo: un punto de entrada sin función detrás sobra. Y el tipo elegido decide qué se escribe en la primera columna — una pantalla, un `/comando`, un mensaje que el bot entiende, una ruta de la API. Cuando el proyecto corre solo, el punto de entrada es lo que lo dispara: un horario, un fichero que aparece, un aviso de otro sistema. Nunca inventes una interfaz que nadie ha pedido.

**Si el tipo es pantallas** —y solo entonces— sugiere dibujarlas a papel y boli antes de rellenar la tabla: un rectángulo por pantalla y flechas entre ellas. Sale en dos minutos, deja a la vista las que no llevan a ningún sitio, y es el dibujo que se adjunta al plano. Con los demás tipos no aporta nada: no lo pidas.

### 4 · Los datos

Tabla de tres columnas: la cosa, qué se sabe de ella, con qué se relaciona.

Salen de las funciones, no de la imaginación: si una función dice "ve su racha", entonces existe una racha y hay que guardarla. Repasa las funciones una por una y ve extrayendo los sustantivos.

Dos avisos que conviene decir en voz alta:

- Se decide **qué** se guarda, no **dónde**. Si eso acaba en un fichero o en una base de datos es decisión de la fase siguiente.
- Es lo único del plano que no se recorta después. Una pantalla se cambia en una tarde; el modelo de datos se cambia rehaciendo el proyecto.

A veces aparece una entidad que no existe en el mundo real pero el sistema necesita — un registro de avisos ya enviados para no duplicarlos, por ejemplo. Cuando pase, señálalo: es de las cosas que más enseñan de todo el documento.

### 5 · Fuera del plano

Lista simple de lo que **no** entra. Sin subcategorías, sin tablas.

Ve recogiendo aquí todo lo que haya ido saliendo por el camino y se haya descartado — eso es lo que impide volver a meterlo dentro dentro de tres semanas.

Si la lista está vacía, algo va mal: nadie diseña un proyecto sin descartar nada. Pregunta directamente qué se le ha ocurrido y ha decidido dejar fuera.

Sospechosos habituales que casi nunca entran en la primera versión: login, panel de administración, dashboard, modo oscuro, multi-idioma, notificaciones.

---

## Formato de salida

Usa exactamente la estructura de `references/plantilla.md`. Léela antes de entregar el documento final para no desviarte del formato.

En `references/ejemplos.md` hay tres planos completos y bien rellenos: una app móvil, un SaaS web y un bot con interfaz de comandos. Úsalos cuando la persona no sepa qué nivel de detalle se espera de una sección — enseñar un ejemplo desatasca mucho más rápido que explicar.

---

## Errores que conviene evitar

**Rellenarlo tú.** Es el fallo más fácil de cometer, porque tú puedes escribir un plano entero en treinta segundos. Pero la persona se llevaría un documento que no entiende y que no sabría defender. Propón siempre en forma de borrador para confirmar, no de hecho consumado.

**Dejar colar el stack.** "Una web con React y Supabase" no describe qué hace el proyecto. Reformúlalo hacia el qué.

**Aceptar funciones no comprobables.** "Que sea rápido", "que sea fácil de usar", "que tenga buena UX". Son deseos. Pregunta cómo se comprobaría, y de ahí sale la función de verdad.

**Un plano gigante.** Si salen ocho funciones y siete puntos de entrada, el proyecto no cabe en una primera versión. Es el mejor momento para recortar, porque todavía no se ha escrito nada. Propón qué se va a *Fuera del plano* y por qué.

**Sacar el documento demasiado pronto.** Si aún faltan secciones por hablar, no entregues el markdown completo: enseña solo el trozo cerrado. El documento entero se entrega al final.
