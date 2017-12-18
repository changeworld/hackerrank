#!/bin/bash

read -r X
read -r Y
read -r Z

if [[ X == Y && X == Z ]]; then
    echo "EQUILATERAL"
elif [[ $X == $Y || $X == $Z || $Y == $Z ]] ; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi