#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_codex_chat info
PYTHONPATH=src python -m gbt_codex_chat check --payload '{"message": "<在此填写>"}'
PYTHONPATH=src python -m gbt_codex_chat run   --payload '{"message": "<在此填写>"}'
