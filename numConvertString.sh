#!/bin/bash
awk '{
integerVal = "";
negVal = "-";
seperator = "/";
WholeNumber = $0;
posOrNeg = substr (WholeNumber,1,1);
gsub("-","", WholeNumber);
TotalVal = 23*17;
intValofGals = int (WholeNumber/TotalVal);
intValofSickles = int((WholeNumber%TotalVal)/17);
intValofKnuts = (WholeNumber%TotalVal) % 17;
if (posOrNeg == negVal){
integerVal = negVal 
};
print integerVal intValofGals seperator intValofSickles seperator intValofKnuts;

}'


