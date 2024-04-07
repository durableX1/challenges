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

animate_text "HaadLC - CTF | Fifth Challenge" 0.06
animate_text "You Want Meet With Morpheur? Fix The Code And My People Will Take You From Adam Street Bridge." 0.06

echo -e "\nPrompt:"
echo -e "Our Typical Python File Called *fixme.py* :)"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "** python3 | pip **"
