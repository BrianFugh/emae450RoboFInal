#!/bin/bash

# LaTeX Template Setup Script
# This script installs all necessary packages to compile the assignment report template
# Run this once to set up your system for LaTeX document compilation

echo "=========================================="
echo "LaTeX Setup for ENAE450 Assignment Reports"
echo "=========================================="
echo ""

# Check if running on Linux
if [[ ! "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Warning: This script is designed for Linux (Ubuntu/Debian)."
    echo "For macOS or Windows, please see the README.md for manual installation steps."
    exit 1
fi

# Check if apt package manager is available
if ! command -v apt &> /dev/null; then
    echo "Error: This script requires apt package manager (Ubuntu/Debian-based systems)."
    echo "For other Linux distributions, install texlive manually or use your package manager."
    exit 1
fi

echo "This script will:"
echo "  1. Update your package manager"
echo "  2. Install texlive (LaTeX distribution)"
echo "  3. Install additional LaTeX packages needed for this template"
echo ""
echo "This may take several minutes and requires sudo access."
echo ""
read -p "Continue? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Setup cancelled."
    exit 1
fi

echo ""
echo "Step 1: Updating package manager..."
sudo apt update
if [ $? -ne 0 ]; then
    echo "Error: Failed to update package manager"
    exit 1
fi

echo ""
echo "Step 2: Installing LaTeX base packages..."
sudo apt install -y texlive-latex-base
if [ $? -ne 0 ]; then
    echo "Error: Failed to install texlive-latex-base"
    exit 1
fi

echo ""
echo "Step 3: Installing additional LaTeX packages..."
sudo apt install -y texlive-latex-extra
if [ $? -ne 0 ]; then
    echo "Error: Failed to install texlive-latex-extra"
    exit 1
fi

echo ""
echo "Step 4: Installing font packages..."
sudo apt install -y texlive-fonts-recommended
if [ $? -ne 0 ]; then
    echo "Error: Failed to install texlive-fonts-recommended"
    exit 1
fi

echo ""
echo "=========================================="
echo "Installation Complete!"
echo "=========================================="
echo ""
echo "You can now compile LaTeX documents using:"
echo "  pdflatex assignment_report_template.tex"
echo ""
echo "To verify the installation, try compiling the template:"
echo "  cd $(dirname "$0")"
echo "  pdflatex assignment_report_template.tex"
echo ""
echo "This will generate assignment_report_template.pdf"
echo ""
