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

animate_text "HaadLC - CTF | Third Challenge" 0.06
animate_text "Agent Smith Change Places Encode And Decode, I Know It's Confuse, Solve This And Go To Another Challenge." 0.06

echo -e "\nPrompt:"
echo -e "In This Directory You Have Python File Called *runme.py* Run It And Take The Flag, Don't Forget To Fix Code!!!"

echo -e "\nAccepted Commands That You Must Use:"
echo -e "**ls | cd | cat | python3**"
