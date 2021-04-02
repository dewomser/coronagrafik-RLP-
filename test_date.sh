#!/bin/bash

#Uhrzeitvergleich  Wenn tag von date ist tag von codate dann true


codate=$(curl -I https://msagd.rlp.de/fileadmin/msagd/Gesundheit_und_Pflege/GP_Dokumente/Informationen_zum_Coronavirus/Listen_Corona_RLP.xlsx 2>&1| grep -i '^Last-Modified'|sed 's/Last-Modified: //g')

codate1=$(date -d "$codate" +%d)
date1=$(date +%d)

echo $date1
echo 
echo $codate1

if [ $date1 -eq $codate1 ]
then
echo "heute neue Datei"
else
echo "heute nicht neu"
fi
