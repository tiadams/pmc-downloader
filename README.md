# PubMedCentral (PMC) automatic PDF/XML Downloader
Downloads full-text PDFs (or any other soruces) from PubmedCentral OA articles

# How to use

After inputting your desired document identifiers into the file ids.txt, just execute the `main.sh` script. It will do the following:

1. Download the document index file from PMC
2. For each id check wether it is available; if it is, download the sources from PMCs ftp server
3. Extract the archives
4. Move and rename the pdfs (or any other source type if you want to adapt the `copy_rename.sh` scripts `suffix` constant, e.g. to `nxml`)
5. Remove the downloaded files

Your files will be in the `pdf` folder, named as `PMC${ID}.${SUFFIX}`

**Depending on the number of requested ids, this process may take a while and may require several GBs of disk space**
