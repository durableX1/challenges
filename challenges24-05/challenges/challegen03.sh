animate_text() {
    text="$1"
    delay="$2"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo
}

animate_text "HaadLC - Exam (CTF) | Fourth Challenge" 0.06

echo -e "\nLevel Goal:"
echo -e "Now Crack The password of file *hashed_password.txt*"

echo -e "\nPrompt:"
echo -e "This is hashed by sha-256 don't CHEAT you must WRITE the SIMPLE script, and prepare your wordlist it Will More better for Cracking!!!"


