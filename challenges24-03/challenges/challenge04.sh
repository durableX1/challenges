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

animate_text "HaadLC - CTF | Fifth Challenge" 0.06
animate_text "*real* is Simply Electrical Signals Interpreted By Your Brain" 0.06

echo -e "\nPrompt:"
echo -e "You Have a *darago.txt* And is The Only Line of Text That Occurs Only Once"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**grep, sort, uniq, strings, base64, tr, tar**"  
