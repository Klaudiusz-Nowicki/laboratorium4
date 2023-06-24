#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Użycie: $0 [liczba]"
  exit 1
fi

logs="$1"
re='^[0-9]+$'
if ! [[ $logs =~ $re ]]; then
   echo "Błędna liczba plików: $logs"
   exit 1
fi

for ((i=1; i<=$logs; i++)); do
  filename="plik_$i.txt"
  touch "$filename"
  echo "Utworzono plik: $filename"
done

