#!/bin/bash
awk '{
integerValue = "";
charHolder = substr($0,1,1);
signVal = "-";
if (charHolder == signVal){
integerValue = signVal};
gsub("-", "", $0);
split($0, value, "/");
valueA = value[1];
valueB = value[2];
valueC = value[3];
GallonsToSickles = valueA*23;
totalSickles = (GallonsToSickles + valueB)
totalKnuts= (totalSickles*17) + valueC;
if (integerValue == signVal)
{
totalKnuts = -1 * totalKnuts };
print totalKnuts;
}'


