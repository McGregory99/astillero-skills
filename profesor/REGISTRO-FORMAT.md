# Formato de los registros de aprendizaje

Viven en `registros/` con numeración secuencial: `0001-slug.md`, `0002-slug.md`. Crea el directorio de forma perezosa: solo cuando se escriba el primero.

Son el equivalente docente de un ADR: capturan lecciones no obvias, ideas clave y conocimiento previo declarado, y son lo que se usa para calcular la zona de desarrollo próximo.

## Plantilla

```md
# {Título corto de lo que se aprendió o estableció}

{1-3 frases: qué se aprendió (o qué conocimiento previo quedó establecido) y por qué cambia lo que toca enseñar después.}
```

Ese es el formato entero. Un registro puede ser un párrafo. El valor está en dejar constancia de *que* esto ya se sabe y *por qué* cambia el siguiente paso, no en rellenar secciones.

## Secciones opcionales

Solo cuando aporten algo real. La mayoría de registros no las necesitan.

- **Estado** en frontmatter (`activo | sustituido por LR-NNNN`): útil cuando una comprensión anterior resulta equivocada.
- **Evidencia**: cómo lo demostró (pregunta respondida, ejercicio resuelto, código revisado, experiencia previa citada).
- **Implicaciones**: qué desbloquea o descarta para futuras sesiones, cuando no sea obvio.

## Numeración

Mira el número más alto en `registros/` y súmale uno.

## Cuándo escribir uno

1. **Demostró entender algo no trivial**: no exposición al material, sino evidencia de que sabe usarlo bien. Esto sube el suelo de lo que se puede enseñar a continuación.
2. **Declaró conocimiento previo**: "esto ya lo sé". Anota también la profundidad que dice tener, para no dar por bueno más de lo que hay.
3. **Se corrigió un malentendido**: eran de los más valiosos, porque predicen tropiezos en temas vecinos.
4. **La misión se movió** como consecuencia de lo aprendido. Enlaza a `MISION.md` y actualízala.

## Qué NO merece registro

- Material meramente cubierto. Cubrir no es aprender: espera a la evidencia.
- Lo que ya queda recogido en `GLOSARIO.md` como definición. No dupliques.
- Diarios de sesión. Un registro es una decisión, no una bitácora.

## Sustitución

Cuando un registro nuevo contradice a uno viejo (la comprensión se corrigió o se profundizó), marca el viejo como `Estado: sustituido por LR-NNNN` en vez de borrarlo. Cómo evolucionó la comprensión es señal útil.
