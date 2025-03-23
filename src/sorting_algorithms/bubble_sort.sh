#!/bin/bash

# Fonction pour échanger deux éléments d'un tableau
swap() {
  local arr=("${!1}") # Tableau passé en argument
  local i=$2
  local j=$3
  local tmp=${arr[$i]}
  arr[$i]=${arr[$j]}
  arr[$j]=$tmp
  echo "${arr[@]}" # Renvoie le tableau modifié
}

# Fonction de tri à bulles
bubble_sort() {
  local arr=("${!1}") # Tableau passé en argument
  local n=${#arr[@]}
  for ((i=0; i<n-1; i++)); do
    for ((j=0; j<n-i-1; j++)); do
      if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]; then
        arr=($(swap arr[@] $j $((j+1))))
      fi
    done
  done
  echo "${arr[@]}" # Renvoie le tableau trié
}

# Exemple d'utilisation
my_array=(5 1 4 2 8)
echo "Tableau original: ${my_array[@]}"

sorted_array=($(bubble_sort my_array[@]))
echo "Tableau trié: ${sorted_array[@]}"