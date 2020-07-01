#!/bin/bash
#program converts String into Absolute Number of Knuts
awk '{
WholeNumber = $0;
integerValue = "";
charHolder = substr(WholeNumber,1,1);
signVal = "-";
if (charHolder == signVal){
integerValue = signVal};
gsub(signVal, "", WholeNumber);
split(WholeNumber, value, "/");
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


