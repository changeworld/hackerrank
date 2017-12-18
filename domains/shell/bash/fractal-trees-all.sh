#!/bin/bash

# 63 rows and 100 columnumns
columns=100
read -r n
declare -a mat
for i in {0..6299}
do
  row=$((i / columns))
  column=$((i % columns))
  mat[$i]=0
done
draw() {
  if [[ "$4" -ge "$n" ]]
  then
    return
  fi

  local row=$1
  local column=$2
  local size=$3
  for ((i=0; i<size; i++))
  do
    index=$((row * columns + column))
    mat[$index]=1
    row=$((row - 1))
  done
  local row_L=$row
  local row_R=$row
  local column_L=$((column - 1))
  local column_R=$((column + 1))
  for ((i=0; i<size; i++))
  do
    index=$((row_L * columns + column_L))
    mat[$index]=1
    row_L=$((row_L - 1))
    column_L=$((column_L - 1))
  done
  draw $row_L $(($column_L + 1)) $(($size / 2)) $(($4 + 1))
  for ((i=0; i<size; i++))
  do
    index=$(($row_R * $columns + $column_R))
    mat[$index]=1
    row_R=$(($row_R - 1))
    column_R=$(($column_R + 1))
  done
  draw $row_R $(($column_R - 1)) $(($size / 2)) $(($4 + 1))
}
draw 62 49 16 0
for row in {0..62}
do
  for column in {0..99}
  do
    index=$(($row * $columns + $column))
    if [[ ${mat[$index]} == 1 ]]
    then
      echo -n 1
    elif [[ ${mat[$index]} == 0 ]]
    then
      echo -n _
    fi
  done
  echo ""
done