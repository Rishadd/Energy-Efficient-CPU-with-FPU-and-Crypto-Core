import csv

# Read CSV file
with open('crypto_results.csv', 'r') as csvfile:
    reader = csv.reader(csvfile)
    
    # Skip header row
    next(reader)
    
    error_count = 0
    total_count = 0
    errors = []
    
    for row in reader:
        if len(row) >= 3:
            input_val = row[0].strip()
            decrypted_val = row[2].strip()
            
            if input_val.lower() != decrypted_val.lower():
                error_count += 1
                errors.append(f"Row {total_count + 1}: INPUT={input_val}, DECRYPTED={decrypted_val}")
            
            total_count += 1

# Print results
print(f"\n{'='*60}")
print(f"Verification Results")
print(f"{'='*60}")
print(f"Total tests: {total_count}")
print(f"Errors: {error_count}")
print(f"{'='*60}\n")

if error_count == 0:
    print("SUCCESS! All values decrypted correctly.")
else:
    print(f"FAILED! {error_count} mismatches found:\n")
    for error in errors[:10]:  # Show first 10 errors
        print(error)
    if len(errors) > 10:
        print(f"... and {len(errors) - 10} more errors")