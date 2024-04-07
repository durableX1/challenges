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

animate_text "HaadLC - CTF | Third Challenge" 0.06
animate_text "You Take The Blue Pill - The Story Ends, You Take The Red Pill - You Stay in Wonderland" 0.06

echo -e "\nPrompt:"
echo -e "You Have a binary File Called *check_it* Run This And Follow The Instuctions"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**ls | cd | cat | ./ | rm**"  
