#!/usr/bin/bash
echo "Zotero copy started now, $(now)" >> /home/karl/Desktop/zotero_copied.txt
cp -r --verbose home/karl/Zotero /home/karl/GoogleDrive
echo "Zotero finished now, $(now)" >> /home/karl/Desktop/zotero_copied.txt
