%builtins output range_check bitwise

from starkware.cairo.common.serialize import serialize_word
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin

from lib.aes_128 import aes_128_encrypt
from starkware.cairo.common.alloc import alloc

func main{output_ptr : felt*, range_check_ptr, bitwise_ptr : BitwiseBuiltin*}():
    alloc_locals
    let (local input : felt*) = alloc()
    
    # Commented input v1 is AES-128 example from NIST.FIPS.197 
    #let input_state = 0x3243f6a8885a308d313198a2e0370734
    #let input_key = 0x2b7e151628aed2a6abf7158809cf4f3c
    #let input_dec_state = 0x3925841d02dc09fbdc118597196a0b32

    # Commented input v2 is AES-128 example from NIST.FIPS.197 
    #let input_state = 0x00112233445566778899aabbccddeeff
    let input_key = 0x000102030405060708090a0b0c0d0e0f
    #let input_dec_state = 0x69C4E0D86A7B0430D8CDB78070B4C55A

    assert input[0] = 0x00112233445566778899aabbccddeeff
    assert input[1] = 0x69C4E0D86A7B0430D8CDB78070B4C55A

    let (result) = aes_128_encrypt(input = input, input_key = input_key, array_length = 2)
    #let (result) = aes_128_decrypt(input = input, input_key = input_key, array_length = 2)
    
    serialize_word(result[0])
    serialize_word(result[1])
    
    return()
end