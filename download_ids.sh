wget "ftp://ftp.ncbi.nlm.nih.gov/pub/pmc/oa_file_list.txt"
while read id; do
    path=$(grep $id oa_file_list.txt | cut -f1)
    [ ! -z "$path" ] && wget "ftp://ftp.ncbi.nlm.nih.gov/pub/pmc/$path"
done <ids.txt
