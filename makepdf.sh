tail -n +1 $1 >temp.txt
head -n -1 temp.txt > temp2.txt
sed $'s/[^[:print:]\t]//g' temp2.txt >temp.txt
echo "\begin{verbatim}" > umtext.tex
sed 's/=PAGE=/\\end\{verbatim\} \\pagebreak \\begin\{verbatim\}/' temp.txt >> umtext.tex
echo "\end{verbatim}" >> umtext.tex
pdflatex nastdoc.tex
tempname=`echo $1 | sed 's/.*\/\(.*\)$/\1/g'`
pdfname=`echo $tempname | sed 's/\.TXT/.pdf/g'`
mv nastdoc.pdf $pdfname
