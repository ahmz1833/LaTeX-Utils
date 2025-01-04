#!/bin/bash

# Check if project name is provided
if [ -z "$1" ]; then
	echo "Usage: create-latex <project-name>"
	exit 1
fi

PROJECT_NAME=$1
INSTALL_DIR="$HOME/latex_utils"
TEMPLATE_DIR="$INSTALL_DIR/sample"
DEST_DIR="$PWD/$PROJECT_NAME"

# Create project directory
mkdir -p "$DEST_DIR"

# Copy main.tex from template
cp -r "$TEMPLATE_DIR/"* "$DEST_DIR/"

# remove already existing utils directory
rm -rf "$DEST_DIR/utils"

# Create symbolic link to utils directory
ln -s "$INSTALL_DIR" "$DEST_DIR/utils"
 
echo "LaTeX project '$PROJECT_NAME' created successfully."
echo "Navigate to the project directory and start working on your LaTeX document."
