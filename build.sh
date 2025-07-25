#!/bin/bash

set -e

PACKAGE="smart-up-arrow"
VERSION="1.1"
ARCH="all"
OUTPUT="${PACKAGE}_${VERSION}_${ARCH}.deb"

echo "📦 Building $OUTPUT..."

# Clean previous build
rm -f "../$OUTPUT"

# Build the .deb
dpkg-deb --build "$PACKAGE" "../$OUTPUT"

echo "✅ Done. Built at ../$OUTPUT"
