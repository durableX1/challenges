import argparse

def load_data_from_file(file_path):
    """
    Load data from a text file and return it as a list.
    """
    with open(file_path, 'r', encoding='utf-8') as file:
        data = [line.strip() for line in file]
    return data

def main(questions_file, commands_file):
    # Load questions and commands
    questions = load_data_from_file(questions_file)
    commands = load_data_from_file(commands_file)

    # Check if the number of questions and commands match
    if len(questions) != len(commands):
        print("Error: Number of questions and commands do not match.")
        return

    correct_answers_count = 0
    flag_threshold = 7 

    # Iterate over questions and their corresponding commands
    for question, command in zip(questions, commands):
        user_answer = input(f"Question: {question}\nYour answer: ").strip()
        if user_answer == command:
            print("Correct!")
            correct_answers_count += 1
        else:
            print("Incorrect!")

        # Check if the user has reached the flag threshold
        if correct_answers_count >= flag_threshold:
            print("Congratulations! You've answered 7 questions correctly.")
            print("Here's your flag: GP{d0n7_C@7_7heF1le}")
            break

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Command Guessing Game")
    parser.add_argument('-q', '--questions', metavar='questions_file', type=str, help='Filename containing questions')
    parser.add_argument('-c', '--commands', metavar='commands_file', type=str, help='Filename containing commands')
    args = parser.parse_args()

    if not args.questions or not args.commands:
        parser.error("Both questions file and commands file are required.")
    
    main(args.questions, args.commands)
