#!/bin/bash
echo "Select mode (reverse or file): "
read mode

if [[ "$mode" == "reverse" ]]; then
    echo "Enter domain: "
    read domain

    echo "Select submode (clean, raw, or none): "
    read submode

    if [[ "$submode" == "clean" ]]; then
        python3 main.py -r "$domain" --clean
    elif [[ "$submode" == "raw" ]]; then
        python3 main.py -r "$domain" --raw
    else
        python3 main.py -r "$domain"
    fi

elif [[ "$mode" == "file" ]]; then
    echo "Enter file: "
    read file

    echo "Select submode (clean, raw, or none): "
    read submode

    if [[ "$submode" == "clean" ]]; then
        python3 main.py -f "$file" --clean
    elif [[ "$submode" == "raw" ]]; then
        python3 main.py -f "$file" --raw
    else
        python3 main.py -f "$file"
    fi

else
    echo "Invalid mode selected. Please choose either 'reverse' or 'file'."
fi
