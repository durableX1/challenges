#!/bin/bash

animate_text() {
    local text="$1"
    local delay="$2"

    for (( i = 0; i < ${#text}; i++ )); do
        printf "${text:$i:1}"
        
        if [[ "${text:$i:1}" == $'\n' ]]; then
            sleep "$delay"
        else
            sleep "$delay"
        fi
    done
    echo 
}

animate_text "HaadLC - CTF | Second Challenge" 0.06
animate_text "The Matrix is everywhere, It is All Around Us Even Now In This Very Room You Can see It When You Look At Your Window" 0.06

echo -e "\nPrompt:"
echo -e "You Must Read This - In Directory *torrent* You Have Files Open It, After That You Maybe Have Redirection To Another Folder, Please Read only Files In Top 5 But on The Next Directory You May Minus This for Two."

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**ls | cd | cat**"  
