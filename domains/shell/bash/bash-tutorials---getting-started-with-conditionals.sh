#!/bin/bash

read -r input

if [[ $input == 'Y' || $input == 'y' ]]; then
    echo "YES"
else
    echo "NO"
fi