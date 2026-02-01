import random

# Generate 998 unique random values
unique_inputs = set()
while len(unique_inputs) < 998:
    unique_inputs.add(random.randint(0x1000, 0xFFFF))

# Convert to hex strings and add special cases
inputs = [format(val, '04x') for val in unique_inputs]
inputs.append('0000')
inputs.append('ffff')

# Write to file
with open('input_data.txt', 'w') as f:
    for item in inputs:
        f.write("%s\n" % item)

print(f"Generated {len(inputs)} unique inputs in input_data.txt")