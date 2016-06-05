#!/bin/bash

VAR2=""

IFS=:,
echo "Digite la variable 2"
read VAR2

for i in $VAR2; do
	
	echo "La variable dos contiene $VAR2"

done
