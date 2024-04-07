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

animate_text "HaadLC - CTF | Sixth Challenge" 0.06
animate_text "Matrix is The System, That System is Our Enemy" 0.06

echo -e "\nPrompt:"
echo -e "You Have a *vicqup.txt* One of The few Human-Readable Strings, I Love This Charecter 3=3=3+1+1, Oh no So Why I'm Using Numbers I will Drop It. And So on When I Found a Password I Immideately Go And Check *shakalabum* And Hope One of Them Will Successed"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**grep, bzip2, base64, tr, tar, gzip, strings, xxd, du**"  
