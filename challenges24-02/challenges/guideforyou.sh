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

animate_text $'\nWelcome Neo, It'\''s Time To Get Up!' 0.06

echo -e "\n[+] Rule-01:"
animate_text "If A Server is Not Working Contact Supports, Don't Shout if Something Doesn't Work For You!!!" 0.04

echo -e "\n[+] Rule-02:"
animate_text "You Use Only Commands That We Mentioned Above, If You Don't Use The Above Commands, The Flag You Find Will Not Be Counted!" 0.04

echo -e "\n[+] Rule-03"
animate_text "Every Time You Find A Flag You Must Take A Screentshot And Send To Our Chat. (BOT)" 0.04

echo -e "\n[+] Rule-04"
animate_text $'If You Ping Or You Use Another Hacking Tools From This Server You Will Be Banned.\n' 0.04

animate_text "You Have Only 1 Hour, After That We Will Close The Server" 0.04


echo -e "\n[+] Are you confirm with rules of game? (Choose 1 or 2)"
echo "1. Yes"
echo "2. No"


read -p "Enter your choice: " choice


case $choice in
    1)
        echo "[=] You Chose To Confirm With The Rules Of The Game."
        echo -e "\n[+] You May Go To The Directory Of challenges Located In /home Directory"
        animate_text "We Wish You Only Good Luck Hacker!" 0.1
        ;;
    2)
        echo "[-] Exiting..."
        exit 1 
        ;;
    *)
        echo "[-] Invalid Choice. Please Choose 1 Or 2."
        ;;
esac