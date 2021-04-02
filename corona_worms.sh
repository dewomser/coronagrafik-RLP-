#!/bin/bash

cd /home/karl/bin/Pandemie1
rm Fallzahlen_und_Todesfaelle_Corona_RLP.xlsx
sleep 2
#wget https://msagd.rlp.de/fileadmin/msagd/Gesundheit_und_Pflege/GP_Dokumente/Informationen_zum_Coronavirus/Listen_Corona_RLP.xlsx
wget https://lua.rlp.de/fileadmin/lua/Downloads/Corona/Listen/Fallzahlen_und_Todesfaelle_Corona_RLP.xlsx
sleep 2
unoconv -f csv -o /home/karl/bin/Pandemie1/Listen_Corona_RLP_ungekippt.csv /home/karl/bin/Pandemie1/Fallzahlen_und_Todesfaelle_Corona_RLP.xlsx
sleep 2
/home/karl/bin/Pandemie1/csvkippen.sh
sleep 2
gnuplot corona.gp
gnuplot corona-kl.gp
gnuplot corona-lu.gp
gnuplot corona-mz.gp
gnuplot corona-tr.gp
gnuplot corona-ko.gp
gnuplot corona-sp.gp
killall soffice.bin
