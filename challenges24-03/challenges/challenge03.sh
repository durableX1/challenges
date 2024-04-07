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

animate_text "HaadLC - CTF | Fourth Challenge" 0.06
animate_text "This is The Construct It's our Loading Program, We Can Load Anything From Clothing to Weapons" 0.06

echo -e "\nPrompt:"
echo -e "You Have a python File Called *guessing.py* And Answer All of This Questions After This You Take a Flag"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**ls | cd | cat | ./ | rm**"  
