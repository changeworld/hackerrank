#!/bin/bash

sed 1d | awk '{s += $1; n += 1} END {printf("%.3f\n", s * 1.0/n)}'