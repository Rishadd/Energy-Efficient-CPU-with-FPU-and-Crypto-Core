import os

print("="*50)
print("Running Crypto Coprocessor Tests")
print("="*50)

print("\n[1/4] Generating random inputs...")
os.system("python rand_gen.py")

print("\n[2/4] Compiling Verilog files...")
os.system("iverilog -o crypto_coproc crypto_coproc_tb.v crypto_coproc.v")

print("\n[3/4] Running simulation...")
os.system("vvp crypto_coproc")

print("\n[4/4] Verifying results...")
os.system("python verify_verilog.py")

print("\n" + "="*50)
print("All tests completed!")
print("="*50)