#!/bin/bash

cd ~/bin/Pandemie1 || exit

rm corona_RLP.xlsx
sleep 2
#wget https://msagd.rlp.de/fileadmin/msagd/Gesundheit_und_Pflege/GP_Dokumente/Informationen_zum_Coronavirus/Listen_Corona_RLP.xlsx
wget https://lua.rlp.de/fileadmin/lua/Downloads/Corona/Listen/Fallzahlen_und_Todesfaelle_Corona_RLP.xlsx -O corona_RLP.xlsx
sleep 2
unoconv -f csv -o corona_ungekippt_RLP.csv corona_RLP.xlsx
sleep 2
csvkippen.sh
sleep 2
gnuplot corona.gp
#gnuplot corona-kl.gp
#gnuplot corona-lu.gp
#gnuplot corona-mz.gp
#gnuplot corona-tr.gp
#gnuplot corona-ko.gp
#gnuplot corona-sp.gp
killall soffice.bin
