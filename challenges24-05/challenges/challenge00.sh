animate_text() {
    text="$1"
    delay="$2"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo
}

animate_text "HaadLC - Exam (CTF) | First Challenge" 0.06

echo -e "\nLevel Goal:"
echo -e "You must Code a Python file that Scrape a Hidden Flag from Your WebPage."

echo -e "\nPrompt:"
echo -e "We have Directory *logs.log* contains a lot of Datas You Will Handle only *FlAG*"
