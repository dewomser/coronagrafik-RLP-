#!/bin/bash
awk -F, '{for(i=1;i<=NF;i++){A[NR,i]=$i};if(NF>n){n=NF}}
END{for(i=1;i<=n;i++){
for(j=1;j<=NR;j++){
s=s?s","A[j,i]:A[j,i]}
print s;s=""}}' Listen_Corona_RLP_ungekippt.csv > Listen_Corona_RLP.csv
