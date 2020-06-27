#!/bin/bash
#1st command
grep -v -e "ATOM" -e "CONECT" -e "HETATM" -e "TER" -e "END" 4HKD.pdb
#2nd command for Question 2
sed -i 's/MSE/MET/g' 4HKD.pdb
grep -e "MET" 4HKD.pdb 
#3rd command for Question 2
sed -i 's/HETATM/ATOM/g' 4HKD.pdb
grep -e "ATOM" 4HKD.pdb
#4th command for Question 5
sed -i 's/HOH/WAT/g' 4HKD.pdb
grep -e "WAT" 4HKD.pdb
#6th command for Question 6
grep -e "ATOM" 4HKD.pdb | sort -nk11
#4th command 
awk '/ATOM/{++nr; for (j=1;j<=3;j++) summation[j]+=$(j+6)}
    END{if (nr) for (j=1;j in summation;j++) print "Average: " summation[j]/nr}' 4HKD.pdb
