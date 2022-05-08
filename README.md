# Create PDFs of NASTRAN-95 Documentation 

## Purpose
A 'bash' script that downloads NASTRAN-95 from a 'git' repository then creates PDFs based on the user manual text files, and source code.

## Dependencies
* bash
* git
* pdflatex (plus additional LaTeX packages: geometry, fontenc, xcolor, lmodern, listings, inputenc, tgheros)

## Usage
From a `bash` commad line type:
```
git clone https://github.com/yalnte/n95doc2pdf
cd n95doc2pdf
./n95doc2pdf.sh
```

This will then produce the PDFs n a dirrectory `pdfs`:
* User Manuals
   * BULK.pdf
   * CASE.pdf  
   * DICT.pdf  
   * DMAP.pdf  
   * EXEC.pdf  
   * INTR.pdf  
   * MSSG.pdf  
   * PLOT.pdf  
   * RFMT.pdf  
   * SUBS.pdf  
   * UMFL.pdf
* Source Code
   * listing.pdf  
