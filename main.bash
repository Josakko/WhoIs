#!/bin/bash
echo "Select mode (reverse or file): "
read mode

if [[ "$mode" == "reverse" ]]; then
    echo "Enter domain: "
    read domain

    echo "Select submode (--clean, --raw, both, or none): "
    read submode

    if [[ "$submode" == "--clean" || "$submode" == "--raw" || "$submode" == "--clean --raw" || "$submode" == "--raw --clean" ]]; then
        python3 "path to main.py file /main.py" -r "$domain" "$submode"
    else
        python3 "path to main.py file /main.py" -r "$domain"
    fi

elif [[ "$mode" == "file" ]]; then
    echo "Enter file: "
    read file

    echo "Select submode (--clean, --raw, both, or none): "
    read submode

    if [[ "$submode" == "--clean" || "$submode" == "--raw" || "$submode" == "--clean --raw" || "$submode" == "--raw --clean" ]]; then
        python3 "path to main.py file /main.py" -f "$file" "$submode"
    else
        python3 "path to main.py file /main.py" -f "$file"
    fi

else
    echo "Invalid mode selected. Please choose either 'reverse' or 'file'."
fi
