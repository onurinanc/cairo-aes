How to run the project?

You can download and run the project locally. 
Be sure that you set up the environment for the CAIRO as in the following link.
https://www.cairo-lang.org/docs/quickstart.html


##AES-128

Testing (Make bold here)

test_aes_128_encrypt.cairo

`cairo-compile tests/test_aes_128_encrypt.cairo --output test_compiled.json
cairo-run --program=test2_compiled.json --print_output --print_info --relocate_prints --layout=all`

test_aes_128_encrypt.cairo

cairo-compile tests/test_aes_128_decrypt.cairo --output test_compiled.json
cairo-run --program=test2_compiled.json --print_output --print_info --relocate_prints --layout=all

Functions

func aes_128_encrypt{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(input : felt*, input_key : felt, array_length : felt) -> (result : felt*):
func aes_128_decrypt{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(input : felt*, input_key : felt, array_length : felt) -> (result : felt*):

Both of the functions above requires three paramaters.

input : felt* -> an array of 128-bits, the plaintext that exceeds 128-bits must be divided into array of 128-bits. If any element in the "input array"
exceeds the 128-bits, the functions above will fail.

input_key : felt -> 128-bits AES-key, the functions will fail if it exceeds the required number of bits.

array_lenght : felt -> length of the "input", it must be entered correctly to get a correct ciphertext.

Implementation Considerations

The functions are implemented according to NIST-FIPS-197

For mix column and inverse mix column operations, lookup tables are used to reduce the number of total steps.
Also, for s-box and inverse s-box lookup tables are used.

Benchmark

1 KB data is encrypted in ~475K steps
1 KB data is decrypted in ~490k steps

~2 KB data can be encrypted or decrypted in one transaction.
