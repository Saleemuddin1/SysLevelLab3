#!/usr/bin/awk -f
BEGIN {
  minimum7 = minimum8 = minimum9 = 2000
}
$1 == "ATOM" {
  if ($7 < minimum7)
    minimum7 = $7
  if ($8 < minimum8)
    minimum8 = $8
  if ($9 < minimum9)
    minimum9 = $9
  if ($7 > maximum7)
    maximum7 = $7
  if ($8 > maximum8)
    maximum8 = $8
  if ($9 > maximum9)
    maximum9 = $9
}
END {
  print "Minimum "  minimum7, minimum8, minimum9
  print "Maximum "  maximum7, maximum8, maximum9
}
