# Variables configurables
MAIN ?= main.tex    # Nombre del archivo principal (por defecto: main.tex)
# Targets fachada (phony)
.PHONY: all pdf clean cleanall

all: pdf clean

pdf: $(MAIN)
	@echo "Compilando documento LaTeX..."
	@pdflatex -interaction=nonstopmode $(MAIN)
	@if [ -f $(basename $(MAIN)).idx ]; then makeindex $(basename $(MAIN)).idx; fi  # Índices (solo si existe)
	@pdflatex -interaction=nonstopmode $(MAIN)
	@echo "Compilación completada."

clean:
	@echo "Limpiando archivos temporales..."
	@rm -f *.aux *.log *.toc *.lof *.lot *.out *.bbl *.blg *.run.xml
	@rm -f *.idx *.ind *.ilg *.glo *.gls *.acn *.acr *.alg

cleanall: clean
	@echo "Eliminando archivo PDF generado..."
	@rm -f $(basename $(MAIN)).pdf
