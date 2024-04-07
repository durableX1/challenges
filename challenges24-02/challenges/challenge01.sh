#!/bin/bash

animate_text() {
    text="$1"
    delay="$2"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo
}

animate_text "HaadLC - CTF | Second Challenge" 0.06
animate_text "If You Follow White Rabbit You In True Way And Now Trinity Come And Gives A Folder With Directory called *glide*" 0.06

echo -e "\nPrompt:"
echo -e "That We Mentioned Above Directory *glide* There Are A Lot Of Files And He Edit The Latest Ten, You Find There Your Flag ;)"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**ls | cd | cat**"
