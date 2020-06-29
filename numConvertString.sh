#!/bin/bash
#program converts knuts to string
awk '{
WholeNumber =$0;
integerVal = "";
negVal = "-";
seperator = "/";
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


