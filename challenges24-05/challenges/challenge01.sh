animate_text() {
    text="$1"
    delay="$2"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo
}

animate_text "HaadLC - Exam (CTF) | Second Challenge" 0.06

echo -e "\nLevel Goal:"
echo -e "You must Code a Python file that Scrape a Hidden Flag from Your WebPage."

echo -e "\nPrompt:"
echo -e "You Have in *web-scraping* Directory Contain index.html you will Copy this to /var/www/html and Enable apache2 After you may Go to Your localhost"

echo -e "\nIf you don't know how to Enable and Check is Working or Not, you may Visit: https://do.co/3yA2RcM"

echo -e "\nMaybe Help for You these Libraries"
echo -e "\n**bs4 requests**"
