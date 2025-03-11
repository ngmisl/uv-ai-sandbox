#!/bin/bash
# Script to build and install the package using UV

# Ensure we have the latest UV
echo "Updating UV..."
pip install -U uv

# Build the package
echo "Building package..."
uv run python -m build

# Install the package locally (development mode)
echo "Installing package in development mode..."
uv pip install -e .

echo "Done! Package built and installed with UV."
echo "To build and upload to PyPI, run: uv run python -m build && uv run python -m twine upload dist/*"
