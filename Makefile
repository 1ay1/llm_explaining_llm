# Makefile for The Mathematics of Large Language Models book

# Main target
.PHONY: all
all: main.pdf

# Compile the main document
main.pdf: main.tex chapters/*.tex
	pdflatex main.tex
	pdflatex main.tex

# Clean auxiliary files
.PHONY: clean
clean:
	rm -f *.aux *.log *.toc *.out *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz
	rm -f chapters/*.aux

# Clean everything including PDF
.PHONY: cleanall
cleanall: clean
	rm -f main.pdf

# Quick compile (single pass)
.PHONY: quick
quick:
	pdflatex main.tex

# Full compile with bibliography (if needed later)
.PHONY: full
full:
	pdflatex main.tex
	pdflatex main.tex
	pdflatex main.tex

# View the PDF (platform-specific)
.PHONY: view
view: main.pdf
ifeq ($(OS),Windows_NT)
	start main.pdf
else
	@if command -v xdg-open > /dev/null; then \
		xdg-open main.pdf; \
	elif command -v open > /dev/null; then \
		open main.pdf; \
	else \
		echo "Please open main.pdf manually"; \
	fi
endif

# Help target
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  all       - Compile the book (default)"
	@echo "  quick     - Quick single-pass compilation"
	@echo "  full      - Full compilation (3 passes)"
	@echo "  clean     - Remove auxiliary files"
	@echo "  cleanall  - Remove all generated files including PDF"
	@echo "  view      - Open the compiled PDF"
	@echo "  help      - Show this help message"
