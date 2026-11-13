#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

OUT_DIR="build"
OUT_FILE="${OUT_DIR}/Fabric-Report.pdf"
mkdir -p "${OUT_DIR}"

COVER="front-matter/01-cover.md"
INPUTS=("${COVER}" "pandoc/toc.md")

for f in front-matter/[0-9]*.md; do
  case "$(basename "$f")" in
    01-cover.md|04-index.md) continue ;;
  esac
  INPUTS+=("pandoc/pagebreak.md" "$f")
done

pandoc "${INPUTS[@]}" \
  --from markdown+pipe_tables+raw_html-smart \
  --lua-filter pandoc/html-to-latex.lua \
  --metadata-file pandoc/metadata.yaml \
  --resource-path front-matter:. \
  --pdf-engine xelatex \
  -o "${OUT_FILE}"

echo "PDF generado en ${OUT_FILE}"
