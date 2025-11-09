def feistel_round(data_in, key_16bit):
    L_in = (data_in >> 8) & 0xFF
    R_in = data_in & 0xFF
    key_high = (key_16bit >> 8) & 0xFF
    key_low = key_16bit & 0xFF
    
    F_result = ((R_in ^ key_low) + key_high) & 0xFF
    L_out = R_in
    R_out = L_in ^ F_result
    
    return (L_out << 8) | R_out

def feistel_encrypt_8round(data_in, key_128bit):
    # Split 128-bit key into eight 16-bit round keys
    keys = [
        (key_128bit >> 112) & 0xFFFF,
        (key_128bit >> 96) & 0xFFFF,
        (key_128bit >> 80) & 0xFFFF,
        (key_128bit >> 64) & 0xFFFF,
        (key_128bit >> 48) & 0xFFFF,
        (key_128bit >> 32) & 0xFFFF,
        (key_128bit >> 16) & 0xFFFF,
        key_128bit & 0xFFFF
    ]
    
    # 8 rounds of encryption
    round_data = data_in
    for i in range(8):
        round_data = feistel_round(round_data, keys[i])
    
    return round_data

def feistel_decrypt_8round(data_in, key_128bit):
    # Split 128-bit key into eight 16-bit round keys
    keys = [
        (key_128bit >> 112) & 0xFFFF,
        (key_128bit >> 96) & 0xFFFF,
        (key_128bit >> 80) & 0xFFFF,
        (key_128bit >> 64) & 0xFFFF,
        (key_128bit >> 48) & 0xFFFF,
        (key_128bit >> 32) & 0xFFFF,
        (key_128bit >> 16) & 0xFFFF,
        key_128bit & 0xFFFF
    ]
    
    # For decryption, we need the inverse round function
    def inverse_round(data_in, key_16bit):
        L_in = (data_in >> 8) & 0xFF
        R_in = data_in & 0xFF
        key_high = (key_16bit >> 8) & 0xFF
        key_low = key_16bit & 0xFF
        
        # Inverse F function: recover original L_in
        F_result = ((L_in ^ key_low) + key_high) & 0xFF
        L_out = R_in ^ F_result
        R_out = L_in
        
        return (L_out << 8) | R_out
    
    # 8 rounds of decryption (reverse key order)
    round_data = data_in
    for i in range(7, -1, -1):
        round_data = inverse_round(round_data, keys[i])
    
    return round_data

# Test
plaintext = 0xEFA7
key_128bit = 0x1EEED10DE20250000B5E55ED0000DDDD

ciphertext = feistel_encrypt_8round(plaintext, key_128bit)
decrypted = feistel_decrypt_8round(ciphertext, key_128bit)

print(f"Plaintext: 0x{plaintext:04X}")
print(f"Key: 0x{key_128bit:032X}")
print(f"Encrypted: 0x{ciphertext:04X}")
print(f"Decrypted: 0x{decrypted:04X}")
print("SUCCESS" if plaintext == decrypted else "FAILED")