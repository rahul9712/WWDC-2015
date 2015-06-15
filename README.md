# WWDC-2015
/*
 *
 * Read Me for WWDC 2015 Downloadable script.
 * 
 * Disclaimer *
 * 
 * This script the best with Mac, Have not really tried it against Windows / UNIX or any other systems.
 *
 * These changes are not managed and maintained regularly, so this might not work some time.
 *
 * If, folder you provided does not exist, then the download will occur at current folder
 *
 */
 

/* File */
wwdc_download.sh:

	/* What it can do */
	 This file is responsible for downloading all videos mentioned in either of "wwdc_downloadListSD.txt" or "wwdc_downloadListHD.txt" files (based on your choice, by default, we download SD).
	
	/* How ? */
	Just execute following command at the terminal in a mac:
		./wwdc_download.sh <DOWNLOAD_FOLDER> <SD/HD>
		./wwdc_download.sh /Volumes/Data/RKS/iTunes_Videos/WWDC2015/0Videos 1
	
	/* Parameters */
	DOWNLOAD_FOLDER: Location, where you want your download to go to.
	SD/HD: Whether to download SD / HD. Values are 0 or 1.

/* File */
wwdc_downloadListSD.txt:
wwdc_downloadListHD.txt:
	File containing the list of links to be downloaded.
	

