#!/bin/bash

# demanar quantes carpetes crear
read -p "How many folders do you want to create? " num

# validar que sigui un número
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: please enter a valid number."
    exit 1
fi

# demanar nom base
read -p "Enter base folder name: " name

# crear les carpetes
for (( i=1; i<=num; i++ )); do
    folder=$(printf "%s%02d" "$name" "$i")
    mkdir "$folder"
    echo "Created folder: $folder"
done

echo "Done."
