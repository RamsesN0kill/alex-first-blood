#!/bin/bash
# ============================================================
# Régénère le PDF du manuel à partir des fichiers manuel/*.md
# Usage : ./outils/generer-pdf.sh
# ============================================================
set -e
cd "$(dirname "$0")/.."

VENV=".venv-pdf"
if [ ! -d "$VENV" ]; then
  echo "Création de l'environnement Python (une seule fois)..."
  python3 -m venv "$VENV"
  "$VENV/bin/pip" install --quiet fpdf2
fi

"$VENV/bin/python" outils/build_pdf.py "Manuel-Alex-First-Blood.pdf" \
  manuel/00-introduction.md \
  manuel/01-linux-git.md \
  manuel/02-python-bases.md \
  manuel/03-python-structures.md \
  manuel/04-langage-c.md \
  manuel/05-web-front.md \
  manuel/06-php.md \
  manuel/07-bdd-sql.md \
  manuel/08-reseaux.md \
  manuel/09-systemes-virtu.md \
  manuel/10-synthese.md
