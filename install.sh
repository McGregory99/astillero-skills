#!/usr/bin/env bash
# Instala las skills de este repo enlazándolas en ~/.claude/skills/.
# Uso:  ./install.sh [nombre-de-skill ...]   (sin argumentos: todas)
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

mkdir -p "$DEST_DIR"

if [ $# -gt 0 ]; then
  skills=("$@")
else
  skills=()
  for skill_md in "$REPO_DIR"/*/SKILL.md; do
    [ -e "$skill_md" ] || continue
    skills+=("$(basename "$(dirname "$skill_md")")")
  done
fi

if [ ${#skills[@]} -eq 0 ]; then
  echo "No hay ninguna skill en $REPO_DIR" >&2
  exit 1
fi

status=0
for name in "${skills[@]}"; do
  src="$REPO_DIR/$name"
  dest="$DEST_DIR/$name"

  if [ ! -f "$src/SKILL.md" ]; then
    echo "  ✗ $name — no existe $src/SKILL.md" >&2
    status=1
    continue
  fi

  if [ -L "$dest" ]; then
    current="$(readlink "$dest")"
    if [ "$current" = "$src" ]; then
      echo "  = $name — ya enlazada"
      continue
    fi
    echo "  ⟳ $name — reemplazo enlace a $current"
    rm "$dest"
  elif [ -e "$dest" ]; then
    echo "  ✗ $name — ya existe $dest y no es un enlace; muévela o bórrala a mano" >&2
    status=1
    continue
  fi

  ln -s "$src" "$dest"
  echo "  ✓ $name → $dest"
done

echo
echo "Abre una sesión nueva de Claude Code para que las lea."
exit $status
