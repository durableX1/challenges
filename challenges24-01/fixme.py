
import random



def str_xor(secret, key):
    #extend key to secret length
    new_key = key
    i = 0
    while len(new_key) < len(secret):
        new_key = new_key + key[i]
        i = (i + 1) % len(key)        
    return "".join([chr(ord(secret_c) ^ ord(new_key_c)) for (secret_c,new_key_c) in zip(secret,new_key)])


hex_string = "686161644354467b50656e376573376572735f6173736573735f73656375726937795f66726f6d5f616e5f616476657273327269616c5f70657273706563376976657d"

decoded_string = ''.join([chr(int(hex_string[i:i+2], 16)) for i in range(0, len(hex_string), 2)])
print(decoded_string)

  
#flag = str_xor(flag_enc, 'enkidu')
#print('That is correct! Here\'s your flag: ' + flag)

