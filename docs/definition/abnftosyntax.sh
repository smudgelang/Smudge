sed -e 's/;.*//' \
    -e 's/\([\\%$#&{}]\)/\\\1/g' \
    -e 's/DQUOTE/"\\""/g' \
    -e 's/\([A-Za-z][-A-Za-z]\+\)/<\1>/g' \
    -e 's/ = / ::= /' \
    -e 's/$/\n/' \
    -e 's/^ \+\/ / \\alt /' \
    -e 's/^ \+/ /' \
    -e 's/ \/ / | /g' \
    $1 | sed -e 's/^$//;ty;bn;:y;N;s/\n\( [^<]\)/\1/;:n'
