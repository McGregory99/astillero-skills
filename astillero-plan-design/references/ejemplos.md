# Tres planos completos

Tres tipos de proyecto distintos para enseñar el nivel de detalle que se espera. Úsalos cuando alguien se atasque en una sección: enseñar un ejemplo desatasca antes que explicar.

- **Ejemplo 1 — Reto Flexiones:** app móvil, carril de kilómetros, con pantallas.
- **Ejemplo 2 — Un Postbridge:** SaaS web, carril de valor, con pantallas y varias integraciones.
- **Ejemplo 3 — Cazapistas:** bot de Telegram, carril de kilómetros, **sin pantallas**. El más útil para demostrar que el plano vale igual sin interfaz.

---

## Ejemplo 1 — Reto Flexiones

```markdown
# 📐 EL PLANO

**Proyecto:** Reto Flexiones
**Autor:** Goyo Cancio
**Fecha:** 06/09/2026
**Carril:** Kilómetros

---

## 1 · La frase

▸ **Qué hace:** cuenta tus flexiones con la cámara y no te deja usar el móvil hasta que llegas a tu objetivo del día.
▸ **Para quién:** para mí y para el grupo de amigos con el que quiero competir.
▸ **Qué NO hace:** no es una app de entrenamiento. No hace rutinas, no cuenta calorías y no te dice cómo mejorar la técnica.

---

## 2 · Las funciones

▸ **El recorrido en una línea:** empieza cuando abro la app por la mañana, entonces hago flexiones delante de la cámara mientras las cuenta, y al final queda el día marcado como hecho y mi racha actualizada.

### Función 1 — Contar flexiones
▸ **Qué la dispara:** el usuario pulsa "empezar" y la cámara se activa.
▸ **Qué hace:** detecta la postura del cuerpo y suma una repetición cada vez que se completa el movimiento.
▸ **Cómo sé que ha ido bien:** el contador sube en pantalla a cada flexión y no cuenta movimientos a medias.

### Función 2 — Marcar el día como hecho
▸ **Qué la dispara:** el contador llega al objetivo del día.
▸ **Qué hace:** guarda la sesión con la fecha y el número de repeticiones, y suma un día a la racha.
▸ **Cómo sé que ha ido bien:** al volver a abrir la app aparece "hoy: hecho" y la racha tiene un día más.

### Función 3 — Ver mi racha
▸ **Qué la dispara:** el usuario abre la app.
▸ **Qué hace:** muestra cuántos días seguidos lleva cumpliendo y el histórico de la semana.
▸ **Cómo sé que ha ido bien:** el número coincide con los días marcados como hechos, y se rompe a cero si falta un día.

### Función 4 — Comparar con mis amigos
▸ **Qué la dispara:** el usuario entra en la pestaña de grupo.
▸ **Qué hace:** lista a los miembros del grupo ordenados por racha.
▸ **Cómo sé que ha ido bien:** la lista está ordenada de mayor a menor y me veo a mí mismo en mi posición.

---

## 3 · Las pantallas

| Pantalla | Qué hay en ella | Se llega desde | Función que la usa |
|---|---|---|---|
| Inicio | racha actual, objetivo del día y botón "empezar" | (entrada) | F3 |
| Sesión | cámara a pantalla completa y contador grande | Inicio | F1, F2 |
| Grupo | lista de amigos ordenada por racha | Inicio | F4 |

▸ **Adjunto el dibujo:** sí

---

## 4 · Los datos

| Cosa | Qué sé de ella | Se relaciona con |
|---|---|---|
| Usuario | nombre, objetivo diario, racha actual | tiene muchas Sesiones, pertenece a un Grupo |
| Sesión | fecha, nº de flexiones, si cumplió el objetivo | pertenece a un Usuario |
| Grupo | nombre, código para unirse | tiene muchos Usuarios |

---

## 5 · Fuera del plano

▸ Otros ejercicios además de flexiones
▸ Batallas en tiempo real contra otro usuario
▸ Bloquear de verdad el móvil a nivel de sistema
▸ Login con Google o Apple
▸ Notificaciones push

---

## 6 · Pendientes

- [ ] [PENDIENTE: qué pasa si el usuario cierra la app a mitad de la sesión — se pierde la cuenta o se guarda parcial]
```

---

## Ejemplo 2 — Un Postbridge

```markdown
# 📐 EL PLANO

**Proyecto:** Un Postbridge
**Autor:** ▸
**Fecha:** 06/09/2026
**Carril:** Valor

---

## 1 · La frase

▸ **Qué hace:** publica el mismo vídeo en todas tus redes sociales a la vez, desde un solo sitio.
▸ **Para quién:** para creadores que suben la misma pieza a tres o cuatro redes y pierden veinte minutos repitiendo el proceso en cada una.
▸ **Qué NO hace:** no edita el vídeo, no genera los textos y no te dice cuándo publicar.

**Solo carril de valor**
▸ **Quién es esa persona:** creadores de contenido en solitario que publican a diario.
▸ **Qué hace hoy sin tu producto:** abre cada app una por una, sube el archivo, escribe el pie de foto y publica. Cuatro veces.

---

## 2 · Las funciones

▸ **El recorrido en una línea:** empieza cuando el creador sube un vídeo y escribe un texto, entonces elige a qué redes va y confirma, y al final queda publicado en todas ellas con su estado visible.

### Función 1 — Conectar una red social
▸ **Qué la dispara:** el usuario pulsa "conectar" en una red de la lista.
▸ **Qué hace:** le lleva a autorizar la cuenta y guarda el permiso para publicar en su nombre.
▸ **Cómo sé que ha ido bien:** la red aparece marcada como conectada con el nombre de la cuenta.

### Función 2 — Preparar una publicación
▸ **Qué la dispara:** el usuario sube un vídeo y escribe el texto.
▸ **Qué hace:** guarda la publicación como borrador y muestra a qué redes conectadas puede ir.
▸ **Cómo sé que ha ido bien:** el borrador se recupera igual si cierro y vuelvo a entrar.

### Función 3 — Publicar en todas a la vez
▸ **Qué la dispara:** el usuario selecciona las redes y pulsa "publicar".
▸ **Qué hace:** envía el vídeo y el texto a cada red seleccionada, una por una.
▸ **Cómo sé que ha ido bien:** el vídeo aparece publicado en cada una de las redes elegidas.

### Función 4 — Ver qué ha salido y qué ha fallado
▸ **Qué la dispara:** termina el envío de una publicación.
▸ **Qué hace:** registra el resultado de cada red por separado y lo muestra.
▸ **Cómo sé que ha ido bien:** veo publicado, fallido o pendiente en cada red, con el motivo si ha fallado.

---

## 3 · Las pantallas

| Pantalla | Qué hay en ella | Se llega desde | Función que la usa |
|---|---|---|---|
| Cuentas | redes disponibles y cuáles están conectadas | (entrada) | F1 |
| Nueva publicación | subida del vídeo, texto y selector de redes | Cuentas | F2, F3 |
| Historial | publicaciones enviadas con su estado por red | Cuentas | F4 |

▸ **Adjunto el dibujo:** sí

---

## 4 · Los datos

| Cosa | Qué sé de ella | Se relaciona con |
|---|---|---|
| Usuario | email, plan | tiene muchas Cuentas y muchas Publicaciones |
| Cuenta conectada | red social, nombre de la cuenta, permiso vigente | pertenece a un Usuario |
| Publicación | vídeo, texto, fecha de envío | pertenece a un Usuario, tiene muchos Envíos |
| Envío | a qué cuenta fue, estado, motivo del fallo | pertenece a una Publicación y a una Cuenta |

---

## 5 · Fuera del plano

▸ Programar publicaciones para más adelante
▸ Adaptar el texto a cada red automáticamente
▸ Estadísticas de rendimiento de cada publicación
▸ Cobros y suscripción
▸ Equipos con varios usuarios sobre la misma cuenta

---

## 6 · Pendientes

- [ ] [PENDIENTE: si una red falla y las otras tres funcionan, la publicación cuenta como enviada o como fallida]
- [ ] [PENDIENTE: qué pasa cuando caduca el permiso de una cuenta — le aviso o lo descubre al publicar]
```

---

## Ejemplo 3 — Cazapistas (sin pantallas)

```markdown
# 📐 EL PLANO

**Proyecto:** Cazapistas
**Autor:** ▸
**Fecha:** 06/09/2026
**Carril:** Kilómetros

---

## 1 · La frase

▸ **Qué hace:** vigila las pistas de pádel de mi club y me avisa por Telegram en cuanto se libera un hueco a la hora que me interesa.
▸ **Para quién:** para mí y para los cuatro con los que juego, que estamos hartos de refrescar la web a ver si alguien cancela.
▸ **Qué NO hace:** no reserva la pista por ti. Solo avisa.

---

## 2 · Las funciones

▸ **El recorrido en una línea:** empieza cuando le digo al bot qué días y horas me interesan, entonces el bot revisa la web cada pocos minutos, y al final queda un mensaje en mi Telegram en cuanto aparece un hueco que encaja.

### Función 1 — Guardar lo que me interesa
▸ **Qué la dispara:** el usuario manda al bot un mensaje con el día y la franja horaria.
▸ **Qué hace:** guarda esa preferencia asociada a su cuenta de Telegram.
▸ **Cómo sé que ha ido bien:** el bot responde repitiendo lo que ha entendido y aparece en la lista al pedir "mis avisos".

### Función 2 — Revisar la disponibilidad
▸ **Qué la dispara:** cada 5 minutos.
▸ **Qué hace:** consulta la web del club y anota qué huecos hay libres ahora mismo.
▸ **Cómo sé que ha ido bien:** cada revisión deja registrado el estado, y si la web no responde queda anotado como fallo en vez de como "sin huecos".

### Función 3 — Avisar de un hueco
▸ **Qué la dispara:** aparece un hueco libre que coincide con la preferencia de alguien.
▸ **Qué hace:** manda un mensaje de Telegram a esa persona con el día, la hora y el enlace para reservar.
▸ **Cómo sé que ha ido bien:** el mensaje llega en menos de 5 minutos desde que el hueco aparece, y no se repite el mismo aviso dos veces.

### Función 4 — Dejar de vigilar
▸ **Qué la dispara:** el usuario manda "quitar" o pasa el día que le interesaba.
▸ **Qué hace:** desactiva esa preferencia.
▸ **Cómo sé que ha ido bien:** deja de recibir avisos de esa franja y no aparece en "mis avisos".

---

## 3 · Las pantallas

Corre solo. No hay pantallas: la entrada y la salida son mensajes de Telegram.

**Comandos del bot:**

| Comando | Qué hace | Función que la usa |
|---|---|---|
| /avisar [día] [hora] | crea un aviso nuevo | F1 |
| /misavisos | lista los avisos activos | F1, F4 |
| /quitar [nº] | desactiva un aviso | F4 |

---

## 4 · Los datos

| Cosa | Qué sé de ella | Se relaciona con |
|---|---|---|
| Suscriptor | su id de Telegram, su nombre | tiene muchos Avisos |
| Aviso | día de la semana, franja horaria, activo o no | pertenece a un Suscriptor |
| Hueco detectado | pista, día, hora, cuándo se detectó | dispara Notificaciones |
| Notificación enviada | a quién, qué hueco, cuándo | evita repetir el mismo aviso |

---

## 5 · Fuera del plano

▸ Reservar la pista automáticamente
▸ Más clubes además del mío
▸ Otros deportes
▸ Avisos por email o WhatsApp
▸ Panel web para gestionar los avisos

---

## 6 · Pendientes

- [ ] [PENDIENTE: si el club cambia su web y deja de funcionar, cómo me entero yo antes de que se queje alguien]
```

---

## Qué señalar de cada ejemplo

**Ejemplo 1.** El "qué NO hace" es lo que salva el proyecto: sin esa línea, "app de flexiones" se convierte en una app de entrenamiento completa. Y fíjate en que la función 3 tiene un criterio que incluye el caso de romper la racha, no solo el caso feliz.

**Ejemplo 2.** Aparece una entidad, **Envío**, que no es obvia: hace falta porque una publicación puede salir bien en tres redes y fallar en la cuarta. Sin ella no se puede cumplir la función 4. Es el mejor ejemplo de cómo los datos salen de las funciones y no al revés.

**Ejemplo 3.** El proyecto no tiene pantallas y el plano funciona igual. Y aparece **Notificación enviada**, una entidad que no existe en el mundo real: existe solo porque el sistema necesita recordar a quién ya avisó para no duplicar mensajes. Cuando surge algo así en una entrevista, merece la pena pararse y señalarlo.
