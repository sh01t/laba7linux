#!/bin/bash

vect=("x" "y" "z")

vect[2]="w"

for element in "${vect[@]}"
do
  echo "$element"
done
