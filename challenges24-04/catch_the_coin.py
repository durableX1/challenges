# Reference alphabet
alphabet = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"+ \
            "[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"


def decode_secret(secret):
    """ROT47 decode

    NOTE: encode and decode are the same operation in the ROT cipher family.
    """

    # Encryption key
    rotate_const = 47

    # Storage for decoded secret
    decoded = ""

    # decode loop
    for c in secret:
        index = alphabet.find(c)
        original_index = (index + rotate_const) % len(alphabet)
        decoded = decoded + alphabet[original_index]

    print(decoded)


def encode_secret(message):
    """ROT47 encode

    NOTE: encode and decode are the same operation in the ROT cipher family.
    """

    # Encryption key
    rotate_const = 47

    # Storage for encoded message
    encoded = ""

    # encode loop
    for c in message:
        index = alphabet.find(c)
        encoded_index = (index + rotate_const) % len(alphabet)
        encoded = encoded + alphabet[encoded_index]

    print(encoded)


def transform_number(number, transformation):
    """
    Transform the given number according to the specified transformation.

    Args:
    - number: The number to be transformed.
    - transformation: A string specifying the transformation. 
                      Supported values: 'square', 'cube', 'double', 'half'.

    Returns:
    - The transformed number.
    """
    if transformation == 'square':
        return number ** 2
    elif transformation == 'cube':
        return number ** 3
    elif transformation == 'double':
        return number * 2
    elif transformation == 'half':
        return number / 2
    else:
        raise ValueError("Invalid transformation. Supported values: 'square', 'cube', 'double', 'half'")

# Example usage:
number = 5
transformation = 'square'
result = transform_number(number, transformation)
print(f"The {transformation} of {number} is {result}")

# Encode the secret
frenkin = "VwsLe(dGf?e0a?rhJfAa50duh2f8NV"

transform_number(number, transformation)
