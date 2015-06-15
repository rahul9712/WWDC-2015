#!/bin/bash
# SCRIPT	:  wwdc_doanload.sh
# PURPOSE	: Process a file line by line with PIPED while-read loop. And Start the download from the web link mentioned there.
# We need not track file names, as the .mov coms with names.

PWD=$(pwd)
DOWNLOAD_DESTINATION=$1
DOWNLOAD_SD=$2
DOWNLOADABLE_SD_LINKS=$PWD/wwdc_downloadList_SD.txt
DOWNLOADABLE_HD_LINKS=$PWD/wwdc_downloadList_HD.txt
DOWNLOADABLE_PDF_LINKS=$PWD/wwdc_downloadList_PDF.txt
DOWNLOADABLE_LINKS=$DOWNLOADABLE_SD_LINKS

if [[ $DOWNLOAD_SD == 1 ]]; then
	DOWNLOADABLE_LINKS=$DOWNLOADABLE_HD_LINKS
fi

echo "Your download will be available at $DOWNLOAD_DESTINATION"

cd $DOWNLOAD_DESTINATION

cat $DOWNLOADABLE_LINKS | while read LINE
do
	echo "Begining downloading file from: $LINE"
# Start the download
	curl -O "$LINE"
done

# Download PDFs
DOWNLOADABLE_LINKS=$DOWNLOADABLE_PDF_LINKS

cat $DOWNLOADABLE_LINKS | while read LINE
do
	echo "Begining downloading file from: $LINE"
# Start the download
	curl -O "$LINE"

done

