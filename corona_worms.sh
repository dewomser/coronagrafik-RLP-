#!/bin/bash
#Pfad /home/foo/bin/Pandemie1 muss durch eigenen ersetzt werden.
cd /home/foo/bin/Pandemie1 || exit
rm Listen_Corona_RLP.xlsx*
sleep 2
wget https://msagd.rlp.de/fileadmin/msagd/Gesundheit_und_Pflege/GP_Dokumente/Informationen_zum_Coronavirus/Listen_Corona_RLP.xlsx
sleep 2
unoconv -f csv -o /home/foo/bin/Pandemie1/Listen_Corona_RLP_ungekippt.csv /home/karl/bin/Pandemie1/Listen_Corona_RLP.xlsx 
sleep 2
/home/foo/bin/Pandemie1/csvkippen.sh
sleep 2
gnuplot corona.gp
# evtl. muss libreoffice noch gekillt werden
# killall soffice.bin
