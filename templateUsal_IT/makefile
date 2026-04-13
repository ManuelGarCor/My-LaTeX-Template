# Variables configurables
MAIN ?= Main.tex    # Nombre del archivo principal (por defecto: Main.tex)
BASE  = $(basename $(MAIN))

# Targets fachada (phony)
.PHONY: all pdf clean cleanall

all: pdf clean

pdf: $(MAIN)
	@echo "Compilando documento LaTeX..."
	@pdflatex -interaction=nonstopmode $(MAIN)
	@if grep -q '\\citation' $(BASE).aux 2>/dev/null; then \
		echo "Procesando bibliografía con BibTeX..."; \
		bibtex $(BASE); \
	fi
	@if [ -f $(BASE).idx ]; then makeindex $(BASE).idx; fi   # Índices (solo si existe)
	@pdflatex -interaction=nonstopmode $(MAIN)               # 2ª pasada: resuelve citas y refs
	@pdflatex -interaction=nonstopmode $(MAIN)               # 3ª pasada: estabiliza índices y TOC
	@echo "Compilación completada."

clean:
	@echo "Limpiando archivos temporales..."
	@rm -f *.aux *.log *.toc *.lof *.lot *.out *.bbl *.blg *.run.xml
	@rm -f *.idx *.ind *.ilg *.glo *.gls *.acn *.acr *.alg *.brf

cleanall: clean
	@echo "Eliminando archivo PDF generado..."
	@rm -f $(BASE).pdf