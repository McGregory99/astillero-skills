# astillero-skills

Skills de Claude Code del Astillero. Cada carpeta de primer nivel es una skill
independiente, con su `SKILL.md` y, si lo necesita, una carpeta `references/`.

## Skills

| Skill | Qué hace |
|---|---|
| [`astillero-plan-design`](astillero-plan-design/) | Conduce una entrevista para escribir EL PLANO: la especificación de un proyecto antes de programar nada. |
| [`profesor`](profesor/) | Tutor de programación por sesiones: misión, fuentes citadas, práctica con feedback y repaso espaciado. Se invoca con `/profesor`. |

## Instalación

Las skills se instalan enlazándolas desde `~/.claude/skills/`, de modo que lo que
se edita en este repo queda activo al instante, sin volver a copiar nada.

```bash
./install.sh              # enlaza todas las skills del repo
./install.sh astillero-plan-design   # o solo una
```

Para comprobar que Claude Code las ve, abre una sesión nueva y ejecuta `/help`
o invoca la skill por su nombre.

Desinstalar una skill es borrar su enlace:

```bash
rm ~/.claude/skills/astillero-plan-design
```

## Añadir una skill nueva

1. Crea la carpeta `nombre-de-la-skill/` con su `SKILL.md`.
2. El frontmatter necesita `name` (igual que la carpeta) y `description` — la
   `description` es lo único que Claude lee para decidir si activa la skill, así
   que debe decir *qué hace* y *cuándo usarla*, incluyendo las palabras que
   usaría alguien al pedirlo.
3. Los materiales de apoyo (plantillas, ejemplos) van en `references/` y se citan
   desde `SKILL.md` por su ruta relativa. Una skill puede traer además su propio
   README o documentación dentro de su carpeta, como hace `profesor`.
4. Añádela a la tabla de arriba y ejecuta `./install.sh`.
