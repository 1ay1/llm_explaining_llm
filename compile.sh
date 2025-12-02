#!/bin/bash
# Compilation script for The Mathematics of Large Language Models
# Unix/Linux/macOS Shell Script

echo "========================================"
echo "Compiling: The Mathematics of Large Language Models"
echo "========================================"
echo ""

# Check if pdflatex is available
if ! command -v pdflatex &> /dev/null; then
    echo "ERROR: pdflatex not found!"
    echo "Please install a LaTeX distribution:"
    echo "  - macOS: Install MacTeX from https://www.tug.org/mactex/"
    echo "  - Linux (Ubuntu/Debian): sudo apt-get install texlive-full"
    echo "  - Linux (Fedora): sudo dnf install texlive-scheme-full"
    echo ""
    exit 1
fi

echo "Step 1/2: First compilation pass..."
pdflatex -interaction=nonstopmode main.tex
if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: First compilation failed!"
    echo "Check the log file for errors: main.log"
    echo ""
    exit 1
fi

echo ""
echo "Step 2/2: Second compilation pass (for table of contents)..."
pdflatex -interaction=nonstopmode main.tex
if [ $? -ne 0 ]; then
    echo ""
    echo "WARNING: Second compilation had issues, but PDF may still be usable."
    echo "Check the log file for details: main.log"
fi

echo ""
echo "========================================"
echo "SUCCESS! Book compiled successfully!"
echo "========================================"
echo ""
echo "Output file: main.pdf"
echo ""

# Ask if user wants to open the PDF
read -p "Open the PDF now? (y/n): " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        open main.pdf
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        xdg-open main.pdf 2>/dev/null || echo "Please open main.pdf manually"
    else
        echo "Please open main.pdf manually"
    fi
fi

echo ""
echo "Tip: Run './clean.sh' to remove auxiliary files"
echo ""
