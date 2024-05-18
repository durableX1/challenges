animate_text() {
    text="$1"
    delay="$2"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo
}

animate_text "HaadLC - Exam (CTF) | Third Challenge" 0.06

echo -e "\nLevel Goal:"
echo -e "You Will Take Your Flag You Must have Skills on Bash and on Linux Basics II."

echo -e "\nPrompt:"
echo -e "You have a Directory *proc* and *process.sh* bash file, You Will Use *nohup* to run this Script and You Take A flag from OUTput, but firstly Ensure That apache2 was disabled"


