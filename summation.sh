#!bin/bash
#sum output of first file
awk '{counter+=$1} END {print counter}' holder.txt
#pipe the sum into second file
cat DataLab2.txt | ./stringConvertKnuts.sh | awk '{counter +=$1} END {print counter}' | ./numConvertString.sh

