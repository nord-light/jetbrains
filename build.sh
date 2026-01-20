#!/bin/bash

# Nord Light Theme - Build Script
# Generates the plugin JAR file in outputs/

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$SCRIPT_DIR/src"
OUTPUT_DIR="$SCRIPT_DIR/outputs"
JAR_NAME="nord-light.jar"

echo "Building Nord Light theme..."

# Clean and create output directory
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# Create JAR from src contents
cd "$SRC_DIR"
zip -r "$OUTPUT_DIR/$JAR_NAME" . -x "*.DS_Store"

echo "Build complete: $OUTPUT_DIR/$JAR_NAME"
