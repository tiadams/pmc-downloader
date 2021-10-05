mkdir raw
cp ids.txt raw
cd raw
./../download_ids.sh
echo "Extracting archives.."
ls *.gz | xargs -n1 tar -xzf
rm *.tar.gz
echo "Moving PDF files.."
cd ..
mkdir pdf
./copy_rename.sh
echo "Cleaning up"
rm -rf raw

