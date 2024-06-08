#!/bin/bash
base_python_interpreter=$(which python3)

$base_python_interpreter -m venv .venv
source .venv/bin/activate
pip install -U pip
pip install -r requirements.txt
echo "# Project \`your-project-name\`" > README.md
rm -rf .git
git init
git add .
git commit -m "initial commit"