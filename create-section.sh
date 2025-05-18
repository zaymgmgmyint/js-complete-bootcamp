#!/bin/bash

# === Settings ===
BASE_DIR=/Users/zaymaungmaungmyint/Workspaces/personal_projects/js-complete-bootcamp

# === Input ===
if [ -z "$1" ]; then
  echo "❌ Please provide a section number and name. Example:"
  echo "   ./create-section.sh 01-hello-javascript"
  exit 1
fi

SECTION_NUM=$(echo "$1" | cut -d'-' -f1)
SECTION_NAME=$(echo "$1" | cut -d'-' -f2-)
SECTION_DIR="$BASE_DIR/$(printf "%02d" $SECTION_NUM)-$SECTION_NAME"

# === Create Folder ===
if [ -d "$SECTION_DIR" ]; then
  echo "⚠️  Folder already exists: $SECTION_DIR"
  exit 1
fi

mkdir -p "$SECTION_DIR"
touch "$SECTION_DIR/index.html"
touch "$SECTION_DIR/script.js"
touch "$SECTION_DIR/style.css"

echo "✅ Section folder created at: $SECTION_DIR"
echo "📄 Included: index.html, script.js, style.css"
