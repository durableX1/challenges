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

animate_text "HaadLC - CTF | Eighth Challenge" 0.06
animate_text "Squiddy's sweeping in quick, Shit..!" 0.06

echo -e "\nPrompt:"
echo -e "Really Now You In Eighth Challenge? | Awesome Execute *jiblajibon* and Paste Your Flag After You Can Get Your Password To Windows, Thank You Bro!!!"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**grep, bzip2, base64, tr, tar, xzf, strings, ffmp, du**"  
