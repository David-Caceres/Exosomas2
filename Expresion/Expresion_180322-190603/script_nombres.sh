
#! /bin/bash

for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn")
  sed -i -E "1{s/unique reads/unique reads ${BN}/}" "$fn"
done

for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn")
  sed -i -E "1{s/read count/${BN}/}" "$fn"
done


for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn")
  sed -i -E "1{s/[read count (mult. map. adj.)]/read count (mult. map. adj.) ${BN}/}" "$fn"
done


for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn")
  sed -i -E "1{s/[RPM (lib)]/RPM (lib) ${BN}/}" "$fn"
done


for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn")
  sed -i -E "1{s/[RPM (total)]/RPM (total) ${BN}/}" "$fn"
done


for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn")
  sed -i -E "1{s/coordinateString/coordinateString ${BN}/}" "$fn"
done


for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn")
  sed -i -E "1{s/[RPM_adj (lib)]/RPM_adj (lib) ${BN}/}" "$fn"
done


for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn")
  sed -i -E "1{[RPM_adj (total)]/RPM_adj (total) ${BN}/}" "$fn"
done


for fn in $(ls *.tsv) ; do
  sed -i -E "1{s/.tsv/ /}" "$fn"
done


 exit
 
 
