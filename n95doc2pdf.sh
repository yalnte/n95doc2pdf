n95repo="https://github.com/nasa/NASTRAN-95"

localdir=`echo $n95repo | sed 's/.*\/\(.*\)$/\1/g'`

function message(){
echo
echo "=============================================================="
echo "$1 "
echo "=============================================================="
}

message " Convert NASTRAN-95 text user-manuals and source code to PDFs"
echo "NASTRAN95 repository to download: "$n95repo

message "Downloading repository..."
git clone $n95repo

message " Creating PDFs of user manuals"
./make_manual.sh $localdir"/um/"

message " Creating PDF of source code"
./make_listing.sh $localdir
pdflatex listing.tex 

mkdir -p pdfs
mv *.pdf pdfs
message " DONE - see PDFs directory"


