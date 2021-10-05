shopt -s nullglob  # To prevent failures if there's no pdf in a dir.
suffix=pdf
for dir in raw/* ; do
    iterator=1
    for f in $dir/*.$suffix ; do
        filename=$suffix"${dir#raw}".$suffix
        if [ -f $filename ]; then
            echo "File exists"
            ((iterator+=1))
            filename=$suffix"${dir#raw}"_"$iterator".$suffix
        fi
        cp "$f" $filename
    done
done
