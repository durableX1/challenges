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

animate_text "HaadLC - CTF | Sixth Challenge" 0.06
animate_text "Alright If You Want To Go With Us We Have One Rule - OurWay or The HighWay." 0.06 

echo -e "\nPrompt:"
echo -e "I Think You Find Files That Greater 1M, You May Compare This Files but In Files There A Lot of ASCII Words, You May Find Word *pass* and In This Line Your Final Flag;)"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "** find | diff | comm | grep | ls | cd **"
