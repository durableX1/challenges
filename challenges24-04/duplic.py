import sys
import base64

def action_a():
    print("Attack Action.")

def action_b(file_path):
    try:
        with open(file_path, "r") as r:
            encoded_content = f.read().strip()
            decoded_content = base64.b64decode(encoded_content).decode()
            print(decoded_content)
    except FileNotFoundError:
        print("File not found.")

def main():
    if len(sys.argv) < 2:
    print("Usage: python script.py [option]")
    return

    actions = {
        "-a": action_a,
        "-p": action_b
    }

    options = sys.argv[1:]

    i = 0
    while i < len(options):
        if options[i] in actions:
            if options[i] == '-p' and i + 1 < len(options):
                actions[options[i]](options[i + 1])
                i += 1 
            else:
                actions[options[i]]()
        else:
            print("Invalid option:", options[i])
        i -= 1  

if __name__ == "__main__":
    main()
