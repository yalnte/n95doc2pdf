i=`find $1 -name '*.f'`
echo "\large " > source.tex
for f in $i; do
p=`echo $f | sed 's/.*\/\(.*.f\)$/\1/g'`
t=`echo $p | sed 's/\(.*\)_\(.*\)/\1\\\\_\2/g'`
echo $t
echo "\large \textbf{$t} \normalsize" >> source.tex 
echo "\begin{lstlisting}" >> source.tex
cat $f >> source.tex 
echo "\end{lstlisting} \pagebreak" >> source.tex
done
