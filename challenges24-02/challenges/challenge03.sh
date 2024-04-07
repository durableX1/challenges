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

animate_text "HaadLC - CTF | Fourth Challenge" 0.06
animate_text "Don't Talk Anything And Don't Trust Them, It's Not Slumber They May Spy You!!!" 0.06

echo -e "\nPrompt:"
echo -e "Just Follow Steps of binary file *sunshine*, It's Way for The Flag"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**mkdir | cd | touch | echo | nano/vim**"