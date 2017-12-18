#!/bin/bash

read X -r
read Y -r

if (( $X < $Y )); then
    echo "X is less than Y"
elif (( $X > $Y )); then
    echo "X is greater than Y"
else
    echo "X is equal to Y"
fi