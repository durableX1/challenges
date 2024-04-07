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
animate_text "Follow White Rabbit, Maybe You Find Us!!!" 0.06

echo -e "\nRead:"
echo -e "Yes, We Have This Directory named *jurjoni* That Contains A Lot Directories With A Lot Of Files, Find File That Contains A Flag!"

echo -e "\nPrompt:"
echo -e "If I Reverse 09 And In This Directory I Go To 002, I Found Nothing But I Know That Ronaldo's number Is 7 But May I Add Some Zero'sss :)"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**ls | cd | cat**"