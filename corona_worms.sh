#!/bin/bash

thisd="$HOME/bin/Pandemie1/"

# cd ~/git/coronagrafik-RLP- || exit
cd "$thisd" || exit

rm corona_RLP.xlsx
sleep 2
wget https://lua.rlp.de/fileadmin/lua/Downloads/Corona/Listen/Fallzahlen_und_Todesfaelle_Corona_RLP.xlsx -O corona_RLP.xlsx
sleep 2
unoconv -f csv -o corona_ungekippt_RLP.csv corona_RLP.xlsx
sleep 2
"$thisd""csvkippen.sh"
sleep 2
gnuplot corona.gp
gnuplot corona-kl.gp
gnuplot corona-lu.gp
gnuplot corona-mz.gp
gnuplot corona-tr.gp
gnuplot corona-ko.gp
gnuplot corona-sp.gp
killall soffice.bin
