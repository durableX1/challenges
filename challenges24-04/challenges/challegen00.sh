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

animate_text "HaadLC - CTF | First Challenge" 0.06
animate_text "You Live In Matrix And You May Help To World." 0.06

echo -e "\nRead:"
echo -e "Again ;(, We Have This Directory named *saber* That Contains A Lot Directories With A Lot Of Files, Find File That Contains A Flag!"

echo -e "\nPrompt:"
echo -e "Immideately I Will Go To Directory 9 Catch My Flag And Going To Another Challenge, But Maybe Flag Contains In That Directory That I reverse 9 - Stop, Stop, Stop You in This Directory Check folder's!!! The Higher Score In Your School is..."

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**ls | cd | cat**"
