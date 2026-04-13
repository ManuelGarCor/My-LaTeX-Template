# My-LaTeX-Template

Plantilla de LaTeX para trabajos académicos y técnicos, con ejemplos listos para compilar y adaptar.

## Descripción

Este repositorio contiene dos plantillas básicas en LaTeX:

- `template/`: plantilla general para trabajos académicos con estilo personalizado y bibliografía.
- `templateUsal_IT/`: plantilla orientada a informes técnicos de la Universidad de Salamanca (Departamento de Informática y Automática).

## Estructura del repositorio

- `README.md`: documentación del proyecto.
- `resources/`: archivos de apoyo y ejemplos de contenido.
- `template/`: plantilla principal con estilo (`estilo.sty`), archivo de bibliografía y archivo de documento.
- `templateUsal_IT/`: plantilla específica con formato de informe técnico.

## Uso

1. Abre la carpeta `template/` o `templateUsal_IT/`.
2. Edita el archivo principal (`template.tex` o `Main.tex`) con tus datos.
3. Ejecuta `make` en la carpeta correspondiente para compilar el documento.

## Requisitos

- Distribución LaTeX instalada (`TeX Live`, `MiKTeX`, etc.).
- `make` para compilar con el archivo `makefile`.
- Editor de texto compatible con LaTeX.

## Compilación

En Linux o macOS, desde el directorio de la plantilla seleccionada:

```bash
cd template
make
```

o

```bash
cd templateUsal_IT
make
```

Los makefiles incluyen los siguientes comandos:

- `make` o `make all`: Compila el documento PDF y limpia archivos temporales.
- `make pdf`: Solo compila el PDF (sin limpiar).
- `make clean`: Elimina archivos temporales de LaTeX (`.aux`, `.log`, etc.).
- `make cleanall`: Elimina archivos temporales y el PDF generado.

> Nota: Asegúrate de que el archivo principal (`template.tex` o `Main.tex`) esté en el directorio correspondiente. Los makefiles están configurados para detectar automáticamente bibliografía e índices si existen.

## Personalización

- Cambia el título, autor y fecha en los metadatos del documento.
- Sustituye las secciones de ejemplo por tu propio contenido.
- Añade figuras en `img/` o en la ruta que uses con `\includegraphics`.
- Edita las referencias bibliográficas en `references.bib` o `Bibliografia.bib`.

## Licencia

Usa esta plantilla libremente y adáptala para tus trabajos personales o académicos.
