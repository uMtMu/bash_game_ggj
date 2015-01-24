#!/bin/bash

declare -a ekran
declare -a harita1
declare -a harita2

readarray harita1 < harita.txt
readarray harita2 < harita2.txt
echo harita1
for i in "${harita1[@]}"
do
    echo ${i[@]}
done
echo harita2
for i in "${harita2[@]}"
do
    echo ${i[@]}
done

echo harita1+harita2
for i in `seq 0 ${#harita2[@]}`
do
    for j in `seq 0 ${#harita2[1]}`
    do
        if [[ ${harita2[$i]:$j:1} != "." ]]
        then
            echo -n ${harita2[$i]:$j:1}
        else
            echo -n ${harita1[$i]:$j:1}
        fi
    done
    echo
done
