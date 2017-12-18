#!/bin/bash

awk '{
s=0;
for(i=2; i <= NF ; i++) s+=$i
avg=s/(NF-1);
if (avg < 50) grade = "FAIL"
else if (avg >= 60 && avg <= 80) grade = "B"
else if (avg >= 80) grade = "A"
print ($0" : "grade) }' "$1"