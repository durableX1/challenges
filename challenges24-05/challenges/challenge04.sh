animate_text() {
    text="$1"
    delay="$2"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo
}

animate_text "HaadLC - Exam (CTF) | Fifth Challenge" 0.06

echo -e "\nLevel Goal:"
echo -e "You Will Write A powershell script that manages Windows services, such as Starting, Stopping, Restarting or Querying the status of Services"
