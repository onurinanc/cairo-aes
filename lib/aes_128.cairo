from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.math import assert_le

func init_s_box(s_box : felt*) -> (s_box : felt*):

    assert s_box[0] = 0x63
    assert s_box[1] = 0x7c
    assert s_box[2] = 0x77
    assert s_box[3] = 0x7b
    assert s_box[4] = 0xf2
    assert s_box[5] = 0x6b
    assert s_box[6] = 0x6f
    assert s_box[7] = 0xc5
    assert s_box[8] = 0x30
    assert s_box[9] = 0x1
    assert s_box[10] = 0x67
    assert s_box[11] = 0x2b
    assert s_box[12] = 0xfe
    assert s_box[13] = 0xd7
    assert s_box[14] = 0xab
    assert s_box[15] = 0x76
    assert s_box[16] = 0xca
    assert s_box[17] = 0x82
    assert s_box[18] = 0xc9
    assert s_box[19] = 0x7d
    assert s_box[20] = 0xfa
    assert s_box[21] = 0x59
    assert s_box[22] = 0x47
    assert s_box[23] = 0xf0
    assert s_box[24] = 0xad
    assert s_box[25] = 0xd4
    assert s_box[26] = 0xa2
    assert s_box[27] = 0xaf
    assert s_box[28] = 0x9c
    assert s_box[29] = 0xa4
    assert s_box[30] = 0x72
    assert s_box[31] = 0xc0
    assert s_box[32] = 0xb7
    assert s_box[33] = 0xfd
    assert s_box[34] = 0x93
    assert s_box[35] = 0x26
    assert s_box[36] = 0x36
    assert s_box[37] = 0x3f
    assert s_box[38] = 0xf7
    assert s_box[39] = 0xcc
    assert s_box[40] = 0x34
    assert s_box[41] = 0xa5
    assert s_box[42] = 0xe5
    assert s_box[43] = 0xf1
    assert s_box[44] = 0x71
    assert s_box[45] = 0xd8
    assert s_box[46] = 0x31
    assert s_box[47] = 0x15
    assert s_box[48] = 0x4
    assert s_box[49] = 0xc7
    assert s_box[50] = 0x23
    assert s_box[51] = 0xc3
    assert s_box[52] = 0x18
    assert s_box[53] = 0x96
    assert s_box[54] = 0x5
    assert s_box[55] = 0x9a
    assert s_box[56] = 0x7
    assert s_box[57] = 0x12
    assert s_box[58] = 0x80
    assert s_box[59] = 0xe2
    assert s_box[60] = 0xeb
    assert s_box[61] = 0x27
    assert s_box[62] = 0xb2
    assert s_box[63] = 0x75
    assert s_box[64] = 0x9
    assert s_box[65] = 0x83
    assert s_box[66] = 0x2c
    assert s_box[67] = 0x1a
    assert s_box[68] = 0x1b
    assert s_box[69] = 0x6e
    assert s_box[70] = 0x5a
    assert s_box[71] = 0xa0
    assert s_box[72] = 0x52
    assert s_box[73] = 0x3b
    assert s_box[74] = 0xd6
    assert s_box[75] = 0xb3
    assert s_box[76] = 0x29
    assert s_box[77] = 0xe3
    assert s_box[78] = 0x2f
    assert s_box[79] = 0x84
    assert s_box[80] = 0x53
    assert s_box[81] = 0xd1
    assert s_box[82] = 0x0
    assert s_box[83] = 0xed
    assert s_box[84] = 0x20
    assert s_box[85] = 0xfc
    assert s_box[86] = 0xb1
    assert s_box[87] = 0x5b
    assert s_box[88] = 0x6a
    assert s_box[89] = 0xcb
    assert s_box[90] = 0xbe
    assert s_box[91] = 0x39
    assert s_box[92] = 0x4a
    assert s_box[93] = 0x4c
    assert s_box[94] = 0x58
    assert s_box[95] = 0xcf
    assert s_box[96] = 0xd0
    assert s_box[97] = 0xef
    assert s_box[98] = 0xaa
    assert s_box[99] = 0xfb
    assert s_box[100] = 0x43
    assert s_box[101] = 0x4d
    assert s_box[102] = 0x33
    assert s_box[103] = 0x85
    assert s_box[104] = 0x45
    assert s_box[105] = 0xf9
    assert s_box[106] = 0x2
    assert s_box[107] = 0x7f
    assert s_box[108] = 0x50
    assert s_box[109] = 0x3c
    assert s_box[110] = 0x9f
    assert s_box[111] = 0xa8
    assert s_box[112] = 0x51
    assert s_box[113] = 0xa3
    assert s_box[114] = 0x40
    assert s_box[115] = 0x8f
    assert s_box[116] = 0x92
    assert s_box[117] = 0x9d
    assert s_box[118] = 0x38
    assert s_box[119] = 0xf5
    assert s_box[120] = 0xbc
    assert s_box[121] = 0xb6
    assert s_box[122] = 0xda
    assert s_box[123] = 0x21
    assert s_box[124] = 0x10
    assert s_box[125] = 0xff
    assert s_box[126] = 0xf3
    assert s_box[127] = 0xd2
    assert s_box[128] = 0xcd
    assert s_box[129] = 0xc
    assert s_box[130] = 0x13
    assert s_box[131] = 0xec
    assert s_box[132] = 0x5f
    assert s_box[133] = 0x97
    assert s_box[134] = 0x44
    assert s_box[135] = 0x17
    assert s_box[136] = 0xc4
    assert s_box[137] = 0xa7
    assert s_box[138] = 0x7e
    assert s_box[139] = 0x3d
    assert s_box[140] = 0x64
    assert s_box[141] = 0x5d
    assert s_box[142] = 0x19
    assert s_box[143] = 0x73
    assert s_box[144] = 0x60
    assert s_box[145] = 0x81
    assert s_box[146] = 0x4f
    assert s_box[147] = 0xdc
    assert s_box[148] = 0x22
    assert s_box[149] = 0x2a
    assert s_box[150] = 0x90
    assert s_box[151] = 0x88
    assert s_box[152] = 0x46
    assert s_box[153] = 0xee
    assert s_box[154] = 0xb8
    assert s_box[155] = 0x14
    assert s_box[156] = 0xde
    assert s_box[157] = 0x5e
    assert s_box[158] = 0xb
    assert s_box[159] = 0xdb
    assert s_box[160] = 0xe0
    assert s_box[161] = 0x32
    assert s_box[162] = 0x3a
    assert s_box[163] = 0xa
    assert s_box[164] = 0x49
    assert s_box[165] = 0x6
    assert s_box[166] = 0x24
    assert s_box[167] = 0x5c
    assert s_box[168] = 0xc2
    assert s_box[169] = 0xd3
    assert s_box[170] = 0xac
    assert s_box[171] = 0x62
    assert s_box[172] = 0x91
    assert s_box[173] = 0x95
    assert s_box[174] = 0xe4
    assert s_box[175] = 0x79
    assert s_box[176] = 0xe7
    assert s_box[177] = 0xc8
    assert s_box[178] = 0x37
    assert s_box[179] = 0x6d
    assert s_box[180] = 0x8d
    assert s_box[181] = 0xd5
    assert s_box[182] = 0x4e
    assert s_box[183] = 0xa9
    assert s_box[184] = 0x6c
    assert s_box[185] = 0x56
    assert s_box[186] = 0xf4
    assert s_box[187] = 0xea
    assert s_box[188] = 0x65
    assert s_box[189] = 0x7a
    assert s_box[190] = 0xae
    assert s_box[191] = 0x8
    assert s_box[192] = 0xba
    assert s_box[193] = 0x78
    assert s_box[194] = 0x25
    assert s_box[195] = 0x2e
    assert s_box[196] = 0x1c
    assert s_box[197] = 0xa6
    assert s_box[198] = 0xb4
    assert s_box[199] = 0xc6
    assert s_box[200] = 0xe8
    assert s_box[201] = 0xdd
    assert s_box[202] = 0x74
    assert s_box[203] = 0x1f
    assert s_box[204] = 0x4b
    assert s_box[205] = 0xbd
    assert s_box[206] = 0x8b
    assert s_box[207] = 0x8a
    assert s_box[208] = 0x70
    assert s_box[209] = 0x3e
    assert s_box[210] = 0xb5
    assert s_box[211] = 0x66
    assert s_box[212] = 0x48
    assert s_box[213] = 0x3
    assert s_box[214] = 0xf6
    assert s_box[215] = 0xe
    assert s_box[216] = 0x61
    assert s_box[217] = 0x35
    assert s_box[218] = 0x57
    assert s_box[219] = 0xb9
    assert s_box[220] = 0x86
    assert s_box[221] = 0xc1
    assert s_box[222] = 0x1d
    assert s_box[223] = 0x9e
    assert s_box[224] = 0xe1
    assert s_box[225] = 0xf8
    assert s_box[226] = 0x98
    assert s_box[227] = 0x11
    assert s_box[228] = 0x69
    assert s_box[229] = 0xd9
    assert s_box[230] = 0x8e
    assert s_box[231] = 0x94
    assert s_box[232] = 0x9b
    assert s_box[233] = 0x1e
    assert s_box[234] = 0x87
    assert s_box[235] = 0xe9
    assert s_box[236] = 0xce
    assert s_box[237] = 0x55
    assert s_box[238] = 0x28
    assert s_box[239] = 0xdf
    assert s_box[240] = 0x8c
    assert s_box[241] = 0xa1
    assert s_box[242] = 0x89
    assert s_box[243] = 0xd
    assert s_box[244] = 0xbf
    assert s_box[245] = 0xe6
    assert s_box[246] = 0x42
    assert s_box[247] = 0x68
    assert s_box[248] = 0x41
    assert s_box[249] = 0x99
    assert s_box[250] = 0x2d
    assert s_box[251] = 0xf
    assert s_box[252] = 0xb0
    assert s_box[253] = 0x54
    assert s_box[254] = 0xbb
    assert s_box[255] = 0x16

    return(s_box = s_box)
end

func init_inv_s_box(inv_s_box : felt*) -> (inv_s_box : felt*):

    assert inv_s_box[0] = 0x52
    assert inv_s_box[1] = 0x9
    assert inv_s_box[2] = 0x6a
    assert inv_s_box[3] = 0xd5
    assert inv_s_box[4] = 0x30
    assert inv_s_box[5] = 0x36
    assert inv_s_box[6] = 0xa5
    assert inv_s_box[7] = 0x38
    assert inv_s_box[8] = 0xbf
    assert inv_s_box[9] = 0x40
    assert inv_s_box[10] = 0xa3
    assert inv_s_box[11] = 0x9e
    assert inv_s_box[12] = 0x81
    assert inv_s_box[13] = 0xf3
    assert inv_s_box[14] = 0xd7
    assert inv_s_box[15] = 0xfb
    assert inv_s_box[16] = 0x7c
    assert inv_s_box[17] = 0xe3
    assert inv_s_box[18] = 0x39
    assert inv_s_box[19] = 0x82
    assert inv_s_box[20] = 0x9b
    assert inv_s_box[21] = 0x2f
    assert inv_s_box[22] = 0xff
    assert inv_s_box[23] = 0x87
    assert inv_s_box[24] = 0x34
    assert inv_s_box[25] = 0x8e
    assert inv_s_box[26] = 0x43
    assert inv_s_box[27] = 0x44
    assert inv_s_box[28] = 0xc4
    assert inv_s_box[29] = 0xde
    assert inv_s_box[30] = 0xe9
    assert inv_s_box[31] = 0xcb
    assert inv_s_box[32] = 0x54
    assert inv_s_box[33] = 0x7b
    assert inv_s_box[34] = 0x94
    assert inv_s_box[35] = 0x32
    assert inv_s_box[36] = 0xa6
    assert inv_s_box[37] = 0xc2
    assert inv_s_box[38] = 0x23
    assert inv_s_box[39] = 0x3d
    assert inv_s_box[40] = 0xee
    assert inv_s_box[41] = 0x4c
    assert inv_s_box[42] = 0x95
    assert inv_s_box[43] = 0xb
    assert inv_s_box[44] = 0x42
    assert inv_s_box[45] = 0xfa
    assert inv_s_box[46] = 0xc3
    assert inv_s_box[47] = 0x4e
    assert inv_s_box[48] = 0x8
    assert inv_s_box[49] = 0x2e
    assert inv_s_box[50] = 0xa1
    assert inv_s_box[51] = 0x66
    assert inv_s_box[52] = 0x28
    assert inv_s_box[53] = 0xd9
    assert inv_s_box[54] = 0x24
    assert inv_s_box[55] = 0xb2
    assert inv_s_box[56] = 0x76
    assert inv_s_box[57] = 0x5b
    assert inv_s_box[58] = 0xa2
    assert inv_s_box[59] = 0x49
    assert inv_s_box[60] = 0x6d
    assert inv_s_box[61] = 0x8b
    assert inv_s_box[62] = 0xd1
    assert inv_s_box[63] = 0x25
    assert inv_s_box[64] = 0x72
    assert inv_s_box[65] = 0xf8
    assert inv_s_box[66] = 0xf6
    assert inv_s_box[67] = 0x64
    assert inv_s_box[68] = 0x86
    assert inv_s_box[69] = 0x68
    assert inv_s_box[70] = 0x98
    assert inv_s_box[71] = 0x16
    assert inv_s_box[72] = 0xd4
    assert inv_s_box[73] = 0xa4
    assert inv_s_box[74] = 0x5c
    assert inv_s_box[75] = 0xcc
    assert inv_s_box[76] = 0x5d
    assert inv_s_box[77] = 0x65
    assert inv_s_box[78] = 0xb6
    assert inv_s_box[79] = 0x92
    assert inv_s_box[80] = 0x6c
    assert inv_s_box[81] = 0x70
    assert inv_s_box[82] = 0x48
    assert inv_s_box[83] = 0x50
    assert inv_s_box[84] = 0xfd
    assert inv_s_box[85] = 0xed
    assert inv_s_box[86] = 0xb9
    assert inv_s_box[87] = 0xda
    assert inv_s_box[88] = 0x5e
    assert inv_s_box[89] = 0x15
    assert inv_s_box[90] = 0x46
    assert inv_s_box[91] = 0x57
    assert inv_s_box[92] = 0xa7
    assert inv_s_box[93] = 0x8d
    assert inv_s_box[94] = 0x9d
    assert inv_s_box[95] = 0x84
    assert inv_s_box[96] = 0x90
    assert inv_s_box[97] = 0xd8
    assert inv_s_box[98] = 0xab
    assert inv_s_box[99] = 0x0
    assert inv_s_box[100] = 0x8c
    assert inv_s_box[101] = 0xbc
    assert inv_s_box[102] = 0xd3
    assert inv_s_box[103] = 0xa
    assert inv_s_box[104] = 0xf7
    assert inv_s_box[105] = 0xe4
    assert inv_s_box[106] = 0x58
    assert inv_s_box[107] = 0x5
    assert inv_s_box[108] = 0xb8
    assert inv_s_box[109] = 0xb3
    assert inv_s_box[110] = 0x45
    assert inv_s_box[111] = 0x6
    assert inv_s_box[112] = 0xd0
    assert inv_s_box[113] = 0x2c
    assert inv_s_box[114] = 0x1e
    assert inv_s_box[115] = 0x8f
    assert inv_s_box[116] = 0xca
    assert inv_s_box[117] = 0x3f
    assert inv_s_box[118] = 0xf
    assert inv_s_box[119] = 0x2
    assert inv_s_box[120] = 0xc1
    assert inv_s_box[121] = 0xaf
    assert inv_s_box[122] = 0xbd
    assert inv_s_box[123] = 0x3
    assert inv_s_box[124] = 0x1
    assert inv_s_box[125] = 0x13
    assert inv_s_box[126] = 0x8a
    assert inv_s_box[127] = 0x6b
    assert inv_s_box[128] = 0x3a
    assert inv_s_box[129] = 0x91
    assert inv_s_box[130] = 0x11
    assert inv_s_box[131] = 0x41
    assert inv_s_box[132] = 0x4f
    assert inv_s_box[133] = 0x67
    assert inv_s_box[134] = 0xdc
    assert inv_s_box[135] = 0xea
    assert inv_s_box[136] = 0x97
    assert inv_s_box[137] = 0xf2
    assert inv_s_box[138] = 0xcf
    assert inv_s_box[139] = 0xce
    assert inv_s_box[140] = 0xf0
    assert inv_s_box[141] = 0xb4
    assert inv_s_box[142] = 0xe6
    assert inv_s_box[143] = 0x73
    assert inv_s_box[144] = 0x96
    assert inv_s_box[145] = 0xac
    assert inv_s_box[146] = 0x74
    assert inv_s_box[147] = 0x22
    assert inv_s_box[148] = 0xe7
    assert inv_s_box[149] = 0xad
    assert inv_s_box[150] = 0x35
    assert inv_s_box[151] = 0x85
    assert inv_s_box[152] = 0xe2
    assert inv_s_box[153] = 0xf9
    assert inv_s_box[154] = 0x37
    assert inv_s_box[155] = 0xe8
    assert inv_s_box[156] = 0x1c
    assert inv_s_box[157] = 0x75
    assert inv_s_box[158] = 0xdf
    assert inv_s_box[159] = 0x6e
    assert inv_s_box[160] = 0x47
    assert inv_s_box[161] = 0xf1
    assert inv_s_box[162] = 0x1a
    assert inv_s_box[163] = 0x71
    assert inv_s_box[164] = 0x1d
    assert inv_s_box[165] = 0x29
    assert inv_s_box[166] = 0xc5
    assert inv_s_box[167] = 0x89
    assert inv_s_box[168] = 0x6f
    assert inv_s_box[169] = 0xb7
    assert inv_s_box[170] = 0x62
    assert inv_s_box[171] = 0xe
    assert inv_s_box[172] = 0xaa
    assert inv_s_box[173] = 0x18
    assert inv_s_box[174] = 0xbe
    assert inv_s_box[175] = 0x1b
    assert inv_s_box[176] = 0xfc
    assert inv_s_box[177] = 0x56
    assert inv_s_box[178] = 0x3e
    assert inv_s_box[179] = 0x4b
    assert inv_s_box[180] = 0xc6
    assert inv_s_box[181] = 0xd2
    assert inv_s_box[182] = 0x79
    assert inv_s_box[183] = 0x20
    assert inv_s_box[184] = 0x9a
    assert inv_s_box[185] = 0xdb
    assert inv_s_box[186] = 0xc0
    assert inv_s_box[187] = 0xfe
    assert inv_s_box[188] = 0x78
    assert inv_s_box[189] = 0xcd
    assert inv_s_box[190] = 0x5a
    assert inv_s_box[191] = 0xf4
    assert inv_s_box[192] = 0x1f
    assert inv_s_box[193] = 0xdd
    assert inv_s_box[194] = 0xa8
    assert inv_s_box[195] = 0x33
    assert inv_s_box[196] = 0x88
    assert inv_s_box[197] = 0x7
    assert inv_s_box[198] = 0xc7
    assert inv_s_box[199] = 0x31
    assert inv_s_box[200] = 0xb1
    assert inv_s_box[201] = 0x12
    assert inv_s_box[202] = 0x10
    assert inv_s_box[203] = 0x59
    assert inv_s_box[204] = 0x27
    assert inv_s_box[205] = 0x80
    assert inv_s_box[206] = 0xec
    assert inv_s_box[207] = 0x5f
    assert inv_s_box[208] = 0x60
    assert inv_s_box[209] = 0x51
    assert inv_s_box[210] = 0x7f
    assert inv_s_box[211] = 0xa9
    assert inv_s_box[212] = 0x19
    assert inv_s_box[213] = 0xb5
    assert inv_s_box[214] = 0x4a
    assert inv_s_box[215] = 0xd
    assert inv_s_box[216] = 0x2d
    assert inv_s_box[217] = 0xe5
    assert inv_s_box[218] = 0x7a
    assert inv_s_box[219] = 0x9f
    assert inv_s_box[220] = 0x93
    assert inv_s_box[221] = 0xc9
    assert inv_s_box[222] = 0x9c
    assert inv_s_box[223] = 0xef
    assert inv_s_box[224] = 0xa0
    assert inv_s_box[225] = 0xe0
    assert inv_s_box[226] = 0x3b
    assert inv_s_box[227] = 0x4d
    assert inv_s_box[228] = 0xae
    assert inv_s_box[229] = 0x2a
    assert inv_s_box[230] = 0xf5
    assert inv_s_box[231] = 0xb0
    assert inv_s_box[232] = 0xc8
    assert inv_s_box[233] = 0xeb
    assert inv_s_box[234] = 0xbb
    assert inv_s_box[235] = 0x3c
    assert inv_s_box[236] = 0x83
    assert inv_s_box[237] = 0x53
    assert inv_s_box[238] = 0x99
    assert inv_s_box[239] = 0x61
    assert inv_s_box[240] = 0x17
    assert inv_s_box[241] = 0x2b
    assert inv_s_box[242] = 0x4
    assert inv_s_box[243] = 0x7e
    assert inv_s_box[244] = 0xba
    assert inv_s_box[245] = 0x77
    assert inv_s_box[246] = 0xd6
    assert inv_s_box[247] = 0x26
    assert inv_s_box[248] = 0xe1
    assert inv_s_box[249] = 0x69
    assert inv_s_box[250] = 0x14
    assert inv_s_box[251] = 0x63
    assert inv_s_box[252] = 0x55
    assert inv_s_box[253] = 0x21
    assert inv_s_box[254] = 0xc
    assert inv_s_box[255] = 0x7d

    return (inv_s_box = inv_s_box)
end

func init_mul_2(mul_2 : felt*) -> (mul_2 : felt*):

    assert mul_2[0] = 0x0
    assert mul_2[1] = 0x2
    assert mul_2[2] = 0x4
    assert mul_2[3] = 0x6
    assert mul_2[4] = 0x8
    assert mul_2[5] = 0xa
    assert mul_2[6] = 0xc
    assert mul_2[7] = 0xe
    assert mul_2[8] = 0x10
    assert mul_2[9] = 0x12
    assert mul_2[10] = 0x14
    assert mul_2[11] = 0x16
    assert mul_2[12] = 0x18
    assert mul_2[13] = 0x1a
    assert mul_2[14] = 0x1c
    assert mul_2[15] = 0x1e
    assert mul_2[16] = 0x20
    assert mul_2[17] = 0x22
    assert mul_2[18] = 0x24
    assert mul_2[19] = 0x26
    assert mul_2[20] = 0x28
    assert mul_2[21] = 0x2a
    assert mul_2[22] = 0x2c
    assert mul_2[23] = 0x2e
    assert mul_2[24] = 0x30
    assert mul_2[25] = 0x32
    assert mul_2[26] = 0x34
    assert mul_2[27] = 0x36
    assert mul_2[28] = 0x38
    assert mul_2[29] = 0x3a
    assert mul_2[30] = 0x3c
    assert mul_2[31] = 0x3e
    assert mul_2[32] = 0x40
    assert mul_2[33] = 0x42
    assert mul_2[34] = 0x44
    assert mul_2[35] = 0x46
    assert mul_2[36] = 0x48
    assert mul_2[37] = 0x4a
    assert mul_2[38] = 0x4c
    assert mul_2[39] = 0x4e
    assert mul_2[40] = 0x50
    assert mul_2[41] = 0x52
    assert mul_2[42] = 0x54
    assert mul_2[43] = 0x56
    assert mul_2[44] = 0x58
    assert mul_2[45] = 0x5a
    assert mul_2[46] = 0x5c
    assert mul_2[47] = 0x5e
    assert mul_2[48] = 0x60
    assert mul_2[49] = 0x62
    assert mul_2[50] = 0x64
    assert mul_2[51] = 0x66
    assert mul_2[52] = 0x68
    assert mul_2[53] = 0x6a
    assert mul_2[54] = 0x6c
    assert mul_2[55] = 0x6e
    assert mul_2[56] = 0x70
    assert mul_2[57] = 0x72
    assert mul_2[58] = 0x74
    assert mul_2[59] = 0x76
    assert mul_2[60] = 0x78
    assert mul_2[61] = 0x7a
    assert mul_2[62] = 0x7c
    assert mul_2[63] = 0x7e
    assert mul_2[64] = 0x80
    assert mul_2[65] = 0x82
    assert mul_2[66] = 0x84
    assert mul_2[67] = 0x86
    assert mul_2[68] = 0x88
    assert mul_2[69] = 0x8a
    assert mul_2[70] = 0x8c
    assert mul_2[71] = 0x8e
    assert mul_2[72] = 0x90
    assert mul_2[73] = 0x92
    assert mul_2[74] = 0x94
    assert mul_2[75] = 0x96
    assert mul_2[76] = 0x98
    assert mul_2[77] = 0x9a
    assert mul_2[78] = 0x9c
    assert mul_2[79] = 0x9e
    assert mul_2[80] = 0xa0
    assert mul_2[81] = 0xa2
    assert mul_2[82] = 0xa4
    assert mul_2[83] = 0xa6
    assert mul_2[84] = 0xa8
    assert mul_2[85] = 0xaa
    assert mul_2[86] = 0xac
    assert mul_2[87] = 0xae
    assert mul_2[88] = 0xb0
    assert mul_2[89] = 0xb2
    assert mul_2[90] = 0xb4
    assert mul_2[91] = 0xb6
    assert mul_2[92] = 0xb8
    assert mul_2[93] = 0xba
    assert mul_2[94] = 0xbc
    assert mul_2[95] = 0xbe
    assert mul_2[96] = 0xc0
    assert mul_2[97] = 0xc2
    assert mul_2[98] = 0xc4
    assert mul_2[99] = 0xc6
    assert mul_2[100] = 0xc8
    assert mul_2[101] = 0xca
    assert mul_2[102] = 0xcc
    assert mul_2[103] = 0xce
    assert mul_2[104] = 0xd0
    assert mul_2[105] = 0xd2
    assert mul_2[106] = 0xd4
    assert mul_2[107] = 0xd6
    assert mul_2[108] = 0xd8
    assert mul_2[109] = 0xda
    assert mul_2[110] = 0xdc
    assert mul_2[111] = 0xde
    assert mul_2[112] = 0xe0
    assert mul_2[113] = 0xe2
    assert mul_2[114] = 0xe4
    assert mul_2[115] = 0xe6
    assert mul_2[116] = 0xe8
    assert mul_2[117] = 0xea
    assert mul_2[118] = 0xec
    assert mul_2[119] = 0xee
    assert mul_2[120] = 0xf0
    assert mul_2[121] = 0xf2
    assert mul_2[122] = 0xf4
    assert mul_2[123] = 0xf6
    assert mul_2[124] = 0xf8
    assert mul_2[125] = 0xfa
    assert mul_2[126] = 0xfc
    assert mul_2[127] = 0xfe
    assert mul_2[128] = 0x1b
    assert mul_2[129] = 0x19
    assert mul_2[130] = 0x1f
    assert mul_2[131] = 0x1d
    assert mul_2[132] = 0x13
    assert mul_2[133] = 0x11
    assert mul_2[134] = 0x17
    assert mul_2[135] = 0x15
    assert mul_2[136] = 0xb
    assert mul_2[137] = 0x9
    assert mul_2[138] = 0xf
    assert mul_2[139] = 0xd
    assert mul_2[140] = 0x3
    assert mul_2[141] = 0x1
    assert mul_2[142] = 0x7
    assert mul_2[143] = 0x5
    assert mul_2[144] = 0x3b
    assert mul_2[145] = 0x39
    assert mul_2[146] = 0x3f
    assert mul_2[147] = 0x3d
    assert mul_2[148] = 0x33
    assert mul_2[149] = 0x31
    assert mul_2[150] = 0x37
    assert mul_2[151] = 0x35
    assert mul_2[152] = 0x2b
    assert mul_2[153] = 0x29
    assert mul_2[154] = 0x2f
    assert mul_2[155] = 0x2d
    assert mul_2[156] = 0x23
    assert mul_2[157] = 0x21
    assert mul_2[158] = 0x27
    assert mul_2[159] = 0x25
    assert mul_2[160] = 0x5b
    assert mul_2[161] = 0x59
    assert mul_2[162] = 0x5f
    assert mul_2[163] = 0x5d
    assert mul_2[164] = 0x53
    assert mul_2[165] = 0x51
    assert mul_2[166] = 0x57
    assert mul_2[167] = 0x55
    assert mul_2[168] = 0x4b
    assert mul_2[169] = 0x49
    assert mul_2[170] = 0x4f
    assert mul_2[171] = 0x4d
    assert mul_2[172] = 0x43
    assert mul_2[173] = 0x41
    assert mul_2[174] = 0x47
    assert mul_2[175] = 0x45
    assert mul_2[176] = 0x7b
    assert mul_2[177] = 0x79
    assert mul_2[178] = 0x7f
    assert mul_2[179] = 0x7d
    assert mul_2[180] = 0x73
    assert mul_2[181] = 0x71
    assert mul_2[182] = 0x77
    assert mul_2[183] = 0x75
    assert mul_2[184] = 0x6b
    assert mul_2[185] = 0x69
    assert mul_2[186] = 0x6f
    assert mul_2[187] = 0x6d
    assert mul_2[188] = 0x63
    assert mul_2[189] = 0x61
    assert mul_2[190] = 0x67
    assert mul_2[191] = 0x65
    assert mul_2[192] = 0x9b
    assert mul_2[193] = 0x99
    assert mul_2[194] = 0x9f
    assert mul_2[195] = 0x9d
    assert mul_2[196] = 0x93
    assert mul_2[197] = 0x91
    assert mul_2[198] = 0x97
    assert mul_2[199] = 0x95
    assert mul_2[200] = 0x8b
    assert mul_2[201] = 0x89
    assert mul_2[202] = 0x8f
    assert mul_2[203] = 0x8d
    assert mul_2[204] = 0x83
    assert mul_2[205] = 0x81
    assert mul_2[206] = 0x87
    assert mul_2[207] = 0x85
    assert mul_2[208] = 0xbb
    assert mul_2[209] = 0xb9
    assert mul_2[210] = 0xbf
    assert mul_2[211] = 0xbd
    assert mul_2[212] = 0xb3
    assert mul_2[213] = 0xb1
    assert mul_2[214] = 0xb7
    assert mul_2[215] = 0xb5
    assert mul_2[216] = 0xab
    assert mul_2[217] = 0xa9
    assert mul_2[218] = 0xaf
    assert mul_2[219] = 0xad
    assert mul_2[220] = 0xa3
    assert mul_2[221] = 0xa1
    assert mul_2[222] = 0xa7
    assert mul_2[223] = 0xa5
    assert mul_2[224] = 0xdb
    assert mul_2[225] = 0xd9
    assert mul_2[226] = 0xdf
    assert mul_2[227] = 0xdd
    assert mul_2[228] = 0xd3
    assert mul_2[229] = 0xd1
    assert mul_2[230] = 0xd7
    assert mul_2[231] = 0xd5
    assert mul_2[232] = 0xcb
    assert mul_2[233] = 0xc9
    assert mul_2[234] = 0xcf
    assert mul_2[235] = 0xcd
    assert mul_2[236] = 0xc3
    assert mul_2[237] = 0xc1
    assert mul_2[238] = 0xc7
    assert mul_2[239] = 0xc5
    assert mul_2[240] = 0xfb
    assert mul_2[241] = 0xf9
    assert mul_2[242] = 0xff
    assert mul_2[243] = 0xfd
    assert mul_2[244] = 0xf3
    assert mul_2[245] = 0xf1
    assert mul_2[246] = 0xf7
    assert mul_2[247] = 0xf5
    assert mul_2[248] = 0xeb
    assert mul_2[249] = 0xe9
    assert mul_2[250] = 0xef
    assert mul_2[251] = 0xed
    assert mul_2[252] = 0xe3
    assert mul_2[253] = 0xe1
    assert mul_2[254] = 0xe7
    assert mul_2[255] = 0xe5

    return(mul_2 = mul_2)
end

func init_mul_3(mul_3 : felt*) -> (mul_3 : felt*):

    assert mul_3[0] = 0x0
    assert mul_3[1] = 0x3
    assert mul_3[2] = 0x6
    assert mul_3[3] = 0x5
    assert mul_3[4] = 0xc
    assert mul_3[5] = 0xf
    assert mul_3[6] = 0xa
    assert mul_3[7] = 0x9
    assert mul_3[8] = 0x18
    assert mul_3[9] = 0x1b
    assert mul_3[10] = 0x1e
    assert mul_3[11] = 0x1d
    assert mul_3[12] = 0x14
    assert mul_3[13] = 0x17
    assert mul_3[14] = 0x12
    assert mul_3[15] = 0x11
    assert mul_3[16] = 0x30
    assert mul_3[17] = 0x33
    assert mul_3[18] = 0x36
    assert mul_3[19] = 0x35
    assert mul_3[20] = 0x3c
    assert mul_3[21] = 0x3f
    assert mul_3[22] = 0x3a
    assert mul_3[23] = 0x39
    assert mul_3[24] = 0x28
    assert mul_3[25] = 0x2b
    assert mul_3[26] = 0x2e
    assert mul_3[27] = 0x2d
    assert mul_3[28] = 0x24
    assert mul_3[29] = 0x27
    assert mul_3[30] = 0x22
    assert mul_3[31] = 0x21
    assert mul_3[32] = 0x60
    assert mul_3[33] = 0x63
    assert mul_3[34] = 0x66
    assert mul_3[35] = 0x65
    assert mul_3[36] = 0x6c
    assert mul_3[37] = 0x6f
    assert mul_3[38] = 0x6a
    assert mul_3[39] = 0x69
    assert mul_3[40] = 0x78
    assert mul_3[41] = 0x7b
    assert mul_3[42] = 0x7e
    assert mul_3[43] = 0x7d
    assert mul_3[44] = 0x74
    assert mul_3[45] = 0x77
    assert mul_3[46] = 0x72
    assert mul_3[47] = 0x71
    assert mul_3[48] = 0x50
    assert mul_3[49] = 0x53
    assert mul_3[50] = 0x56
    assert mul_3[51] = 0x55
    assert mul_3[52] = 0x5c
    assert mul_3[53] = 0x5f
    assert mul_3[54] = 0x5a
    assert mul_3[55] = 0x59
    assert mul_3[56] = 0x48
    assert mul_3[57] = 0x4b
    assert mul_3[58] = 0x4e
    assert mul_3[59] = 0x4d
    assert mul_3[60] = 0x44
    assert mul_3[61] = 0x47
    assert mul_3[62] = 0x42
    assert mul_3[63] = 0x41
    assert mul_3[64] = 0xc0
    assert mul_3[65] = 0xc3
    assert mul_3[66] = 0xc6
    assert mul_3[67] = 0xc5
    assert mul_3[68] = 0xcc
    assert mul_3[69] = 0xcf
    assert mul_3[70] = 0xca
    assert mul_3[71] = 0xc9
    assert mul_3[72] = 0xd8
    assert mul_3[73] = 0xdb
    assert mul_3[74] = 0xde
    assert mul_3[75] = 0xdd
    assert mul_3[76] = 0xd4
    assert mul_3[77] = 0xd7
    assert mul_3[78] = 0xd2
    assert mul_3[79] = 0xd1
    assert mul_3[80] = 0xf0
    assert mul_3[81] = 0xf3
    assert mul_3[82] = 0xf6
    assert mul_3[83] = 0xf5
    assert mul_3[84] = 0xfc
    assert mul_3[85] = 0xff
    assert mul_3[86] = 0xfa
    assert mul_3[87] = 0xf9
    assert mul_3[88] = 0xe8
    assert mul_3[89] = 0xeb
    assert mul_3[90] = 0xee
    assert mul_3[91] = 0xed
    assert mul_3[92] = 0xe4
    assert mul_3[93] = 0xe7
    assert mul_3[94] = 0xe2
    assert mul_3[95] = 0xe1
    assert mul_3[96] = 0xa0
    assert mul_3[97] = 0xa3
    assert mul_3[98] = 0xa6
    assert mul_3[99] = 0xa5
    assert mul_3[100] = 0xac
    assert mul_3[101] = 0xaf
    assert mul_3[102] = 0xaa
    assert mul_3[103] = 0xa9
    assert mul_3[104] = 0xb8
    assert mul_3[105] = 0xbb
    assert mul_3[106] = 0xbe
    assert mul_3[107] = 0xbd
    assert mul_3[108] = 0xb4
    assert mul_3[109] = 0xb7
    assert mul_3[110] = 0xb2
    assert mul_3[111] = 0xb1
    assert mul_3[112] = 0x90
    assert mul_3[113] = 0x93
    assert mul_3[114] = 0x96
    assert mul_3[115] = 0x95
    assert mul_3[116] = 0x9c
    assert mul_3[117] = 0x9f
    assert mul_3[118] = 0x9a
    assert mul_3[119] = 0x99
    assert mul_3[120] = 0x88
    assert mul_3[121] = 0x8b
    assert mul_3[122] = 0x8e
    assert mul_3[123] = 0x8d
    assert mul_3[124] = 0x84
    assert mul_3[125] = 0x87
    assert mul_3[126] = 0x82
    assert mul_3[127] = 0x81
    assert mul_3[128] = 0x9b
    assert mul_3[129] = 0x98
    assert mul_3[130] = 0x9d
    assert mul_3[131] = 0x9e
    assert mul_3[132] = 0x97
    assert mul_3[133] = 0x94
    assert mul_3[134] = 0x91
    assert mul_3[135] = 0x92
    assert mul_3[136] = 0x83
    assert mul_3[137] = 0x80
    assert mul_3[138] = 0x85
    assert mul_3[139] = 0x86
    assert mul_3[140] = 0x8f
    assert mul_3[141] = 0x8c
    assert mul_3[142] = 0x89
    assert mul_3[143] = 0x8a
    assert mul_3[144] = 0xab
    assert mul_3[145] = 0xa8
    assert mul_3[146] = 0xad
    assert mul_3[147] = 0xae
    assert mul_3[148] = 0xa7
    assert mul_3[149] = 0xa4
    assert mul_3[150] = 0xa1
    assert mul_3[151] = 0xa2
    assert mul_3[152] = 0xb3
    assert mul_3[153] = 0xb0
    assert mul_3[154] = 0xb5
    assert mul_3[155] = 0xb6
    assert mul_3[156] = 0xbf
    assert mul_3[157] = 0xbc
    assert mul_3[158] = 0xb9
    assert mul_3[159] = 0xba
    assert mul_3[160] = 0xfb
    assert mul_3[161] = 0xf8
    assert mul_3[162] = 0xfd
    assert mul_3[163] = 0xfe
    assert mul_3[164] = 0xf7
    assert mul_3[165] = 0xf4
    assert mul_3[166] = 0xf1
    assert mul_3[167] = 0xf2
    assert mul_3[168] = 0xe3
    assert mul_3[169] = 0xe0
    assert mul_3[170] = 0xe5
    assert mul_3[171] = 0xe6
    assert mul_3[172] = 0xef
    assert mul_3[173] = 0xec
    assert mul_3[174] = 0xe9
    assert mul_3[175] = 0xea
    assert mul_3[176] = 0xcb
    assert mul_3[177] = 0xc8
    assert mul_3[178] = 0xcd
    assert mul_3[179] = 0xce
    assert mul_3[180] = 0xc7
    assert mul_3[181] = 0xc4
    assert mul_3[182] = 0xc1
    assert mul_3[183] = 0xc2
    assert mul_3[184] = 0xd3
    assert mul_3[185] = 0xd0
    assert mul_3[186] = 0xd5
    assert mul_3[187] = 0xd6
    assert mul_3[188] = 0xdf
    assert mul_3[189] = 0xdc
    assert mul_3[190] = 0xd9
    assert mul_3[191] = 0xda
    assert mul_3[192] = 0x5b
    assert mul_3[193] = 0x58
    assert mul_3[194] = 0x5d
    assert mul_3[195] = 0x5e
    assert mul_3[196] = 0x57
    assert mul_3[197] = 0x54
    assert mul_3[198] = 0x51
    assert mul_3[199] = 0x52
    assert mul_3[200] = 0x43
    assert mul_3[201] = 0x40
    assert mul_3[202] = 0x45
    assert mul_3[203] = 0x46
    assert mul_3[204] = 0x4f
    assert mul_3[205] = 0x4c
    assert mul_3[206] = 0x49
    assert mul_3[207] = 0x4a
    assert mul_3[208] = 0x6b
    assert mul_3[209] = 0x68
    assert mul_3[210] = 0x6d
    assert mul_3[211] = 0x6e
    assert mul_3[212] = 0x67
    assert mul_3[213] = 0x64
    assert mul_3[214] = 0x61
    assert mul_3[215] = 0x62
    assert mul_3[216] = 0x73
    assert mul_3[217] = 0x70
    assert mul_3[218] = 0x75
    assert mul_3[219] = 0x76
    assert mul_3[220] = 0x7f
    assert mul_3[221] = 0x7c
    assert mul_3[222] = 0x79
    assert mul_3[223] = 0x7a
    assert mul_3[224] = 0x3b
    assert mul_3[225] = 0x38
    assert mul_3[226] = 0x3d
    assert mul_3[227] = 0x3e
    assert mul_3[228] = 0x37
    assert mul_3[229] = 0x34
    assert mul_3[230] = 0x31
    assert mul_3[231] = 0x32
    assert mul_3[232] = 0x23
    assert mul_3[233] = 0x20
    assert mul_3[234] = 0x25
    assert mul_3[235] = 0x26
    assert mul_3[236] = 0x2f
    assert mul_3[237] = 0x2c
    assert mul_3[238] = 0x29
    assert mul_3[239] = 0x2a
    assert mul_3[240] = 0xb
    assert mul_3[241] = 0x8
    assert mul_3[242] = 0xd
    assert mul_3[243] = 0xe
    assert mul_3[244] = 0x7
    assert mul_3[245] = 0x4
    assert mul_3[246] = 0x1
    assert mul_3[247] = 0x2
    assert mul_3[248] = 0x13
    assert mul_3[249] = 0x10
    assert mul_3[250] = 0x15
    assert mul_3[251] = 0x16
    assert mul_3[252] = 0x1f
    assert mul_3[253] = 0x1c
    assert mul_3[254] = 0x19
    assert mul_3[255] = 0x1a

    return(mul_3 = mul_3)
end

func init_mul_9(mul_9 : felt*) -> (mul_9 : felt*):
    
    assert mul_9[0] = 0x0
    assert mul_9[1] = 0x9
    assert mul_9[2] = 0x12
    assert mul_9[3] = 0x1b
    assert mul_9[4] = 0x24
    assert mul_9[5] = 0x2d
    assert mul_9[6] = 0x36
    assert mul_9[7] = 0x3f
    assert mul_9[8] = 0x48
    assert mul_9[9] = 0x41
    assert mul_9[10] = 0x5a
    assert mul_9[11] = 0x53
    assert mul_9[12] = 0x6c
    assert mul_9[13] = 0x65
    assert mul_9[14] = 0x7e
    assert mul_9[15] = 0x77
    assert mul_9[16] = 0x90
    assert mul_9[17] = 0x99
    assert mul_9[18] = 0x82
    assert mul_9[19] = 0x8b
    assert mul_9[20] = 0xb4
    assert mul_9[21] = 0xbd
    assert mul_9[22] = 0xa6
    assert mul_9[23] = 0xaf
    assert mul_9[24] = 0xd8
    assert mul_9[25] = 0xd1
    assert mul_9[26] = 0xca
    assert mul_9[27] = 0xc3
    assert mul_9[28] = 0xfc
    assert mul_9[29] = 0xf5
    assert mul_9[30] = 0xee
    assert mul_9[31] = 0xe7
    assert mul_9[32] = 0x3b
    assert mul_9[33] = 0x32
    assert mul_9[34] = 0x29
    assert mul_9[35] = 0x20
    assert mul_9[36] = 0x1f
    assert mul_9[37] = 0x16
    assert mul_9[38] = 0xd
    assert mul_9[39] = 0x4
    assert mul_9[40] = 0x73
    assert mul_9[41] = 0x7a
    assert mul_9[42] = 0x61
    assert mul_9[43] = 0x68
    assert mul_9[44] = 0x57
    assert mul_9[45] = 0x5e
    assert mul_9[46] = 0x45
    assert mul_9[47] = 0x4c
    assert mul_9[48] = 0xab
    assert mul_9[49] = 0xa2
    assert mul_9[50] = 0xb9
    assert mul_9[51] = 0xb0
    assert mul_9[52] = 0x8f
    assert mul_9[53] = 0x86
    assert mul_9[54] = 0x9d
    assert mul_9[55] = 0x94
    assert mul_9[56] = 0xe3
    assert mul_9[57] = 0xea
    assert mul_9[58] = 0xf1
    assert mul_9[59] = 0xf8
    assert mul_9[60] = 0xc7
    assert mul_9[61] = 0xce
    assert mul_9[62] = 0xd5
    assert mul_9[63] = 0xdc
    assert mul_9[64] = 0x76
    assert mul_9[65] = 0x7f
    assert mul_9[66] = 0x64
    assert mul_9[67] = 0x6d
    assert mul_9[68] = 0x52
    assert mul_9[69] = 0x5b
    assert mul_9[70] = 0x40
    assert mul_9[71] = 0x49
    assert mul_9[72] = 0x3e
    assert mul_9[73] = 0x37
    assert mul_9[74] = 0x2c
    assert mul_9[75] = 0x25
    assert mul_9[76] = 0x1a
    assert mul_9[77] = 0x13
    assert mul_9[78] = 0x8
    assert mul_9[79] = 0x1
    assert mul_9[80] = 0xe6
    assert mul_9[81] = 0xef
    assert mul_9[82] = 0xf4
    assert mul_9[83] = 0xfd
    assert mul_9[84] = 0xc2
    assert mul_9[85] = 0xcb
    assert mul_9[86] = 0xd0
    assert mul_9[87] = 0xd9
    assert mul_9[88] = 0xae
    assert mul_9[89] = 0xa7
    assert mul_9[90] = 0xbc
    assert mul_9[91] = 0xb5
    assert mul_9[92] = 0x8a
    assert mul_9[93] = 0x83
    assert mul_9[94] = 0x98
    assert mul_9[95] = 0x91
    assert mul_9[96] = 0x4d
    assert mul_9[97] = 0x44
    assert mul_9[98] = 0x5f
    assert mul_9[99] = 0x56
    assert mul_9[100] = 0x69
    assert mul_9[101] = 0x60
    assert mul_9[102] = 0x7b
    assert mul_9[103] = 0x72
    assert mul_9[104] = 0x5
    assert mul_9[105] = 0xc
    assert mul_9[106] = 0x17
    assert mul_9[107] = 0x1e
    assert mul_9[108] = 0x21
    assert mul_9[109] = 0x28
    assert mul_9[110] = 0x33
    assert mul_9[111] = 0x3a
    assert mul_9[112] = 0xdd
    assert mul_9[113] = 0xd4
    assert mul_9[114] = 0xcf
    assert mul_9[115] = 0xc6
    assert mul_9[116] = 0xf9
    assert mul_9[117] = 0xf0
    assert mul_9[118] = 0xeb
    assert mul_9[119] = 0xe2
    assert mul_9[120] = 0x95
    assert mul_9[121] = 0x9c
    assert mul_9[122] = 0x87
    assert mul_9[123] = 0x8e
    assert mul_9[124] = 0xb1
    assert mul_9[125] = 0xb8
    assert mul_9[126] = 0xa3
    assert mul_9[127] = 0xaa
    assert mul_9[128] = 0xec
    assert mul_9[129] = 0xe5
    assert mul_9[130] = 0xfe
    assert mul_9[131] = 0xf7
    assert mul_9[132] = 0xc8
    assert mul_9[133] = 0xc1
    assert mul_9[134] = 0xda
    assert mul_9[135] = 0xd3
    assert mul_9[136] = 0xa4
    assert mul_9[137] = 0xad
    assert mul_9[138] = 0xb6
    assert mul_9[139] = 0xbf
    assert mul_9[140] = 0x80
    assert mul_9[141] = 0x89
    assert mul_9[142] = 0x92
    assert mul_9[143] = 0x9b
    assert mul_9[144] = 0x7c
    assert mul_9[145] = 0x75
    assert mul_9[146] = 0x6e
    assert mul_9[147] = 0x67
    assert mul_9[148] = 0x58
    assert mul_9[149] = 0x51
    assert mul_9[150] = 0x4a
    assert mul_9[151] = 0x43
    assert mul_9[152] = 0x34
    assert mul_9[153] = 0x3d
    assert mul_9[154] = 0x26
    assert mul_9[155] = 0x2f
    assert mul_9[156] = 0x10
    assert mul_9[157] = 0x19
    assert mul_9[158] = 0x2
    assert mul_9[159] = 0xb
    assert mul_9[160] = 0xd7
    assert mul_9[161] = 0xde
    assert mul_9[162] = 0xc5
    assert mul_9[163] = 0xcc
    assert mul_9[164] = 0xf3
    assert mul_9[165] = 0xfa
    assert mul_9[166] = 0xe1
    assert mul_9[167] = 0xe8
    assert mul_9[168] = 0x9f
    assert mul_9[169] = 0x96
    assert mul_9[170] = 0x8d
    assert mul_9[171] = 0x84
    assert mul_9[172] = 0xbb
    assert mul_9[173] = 0xb2
    assert mul_9[174] = 0xa9
    assert mul_9[175] = 0xa0
    assert mul_9[176] = 0x47
    assert mul_9[177] = 0x4e
    assert mul_9[178] = 0x55
    assert mul_9[179] = 0x5c
    assert mul_9[180] = 0x63
    assert mul_9[181] = 0x6a
    assert mul_9[182] = 0x71
    assert mul_9[183] = 0x78
    assert mul_9[184] = 0xf
    assert mul_9[185] = 0x6
    assert mul_9[186] = 0x1d
    assert mul_9[187] = 0x14
    assert mul_9[188] = 0x2b
    assert mul_9[189] = 0x22
    assert mul_9[190] = 0x39
    assert mul_9[191] = 0x30
    assert mul_9[192] = 0x9a
    assert mul_9[193] = 0x93
    assert mul_9[194] = 0x88
    assert mul_9[195] = 0x81
    assert mul_9[196] = 0xbe
    assert mul_9[197] = 0xb7
    assert mul_9[198] = 0xac
    assert mul_9[199] = 0xa5
    assert mul_9[200] = 0xd2
    assert mul_9[201] = 0xdb
    assert mul_9[202] = 0xc0
    assert mul_9[203] = 0xc9
    assert mul_9[204] = 0xf6
    assert mul_9[205] = 0xff
    assert mul_9[206] = 0xe4
    assert mul_9[207] = 0xed
    assert mul_9[208] = 0xa
    assert mul_9[209] = 0x3
    assert mul_9[210] = 0x18
    assert mul_9[211] = 0x11
    assert mul_9[212] = 0x2e
    assert mul_9[213] = 0x27
    assert mul_9[214] = 0x3c
    assert mul_9[215] = 0x35
    assert mul_9[216] = 0x42
    assert mul_9[217] = 0x4b
    assert mul_9[218] = 0x50
    assert mul_9[219] = 0x59
    assert mul_9[220] = 0x66
    assert mul_9[221] = 0x6f
    assert mul_9[222] = 0x74
    assert mul_9[223] = 0x7d
    assert mul_9[224] = 0xa1
    assert mul_9[225] = 0xa8
    assert mul_9[226] = 0xb3
    assert mul_9[227] = 0xba
    assert mul_9[228] = 0x85
    assert mul_9[229] = 0x8c
    assert mul_9[230] = 0x97
    assert mul_9[231] = 0x9e
    assert mul_9[232] = 0xe9
    assert mul_9[233] = 0xe0
    assert mul_9[234] = 0xfb
    assert mul_9[235] = 0xf2
    assert mul_9[236] = 0xcd
    assert mul_9[237] = 0xc4
    assert mul_9[238] = 0xdf
    assert mul_9[239] = 0xd6
    assert mul_9[240] = 0x31
    assert mul_9[241] = 0x38
    assert mul_9[242] = 0x23
    assert mul_9[243] = 0x2a
    assert mul_9[244] = 0x15
    assert mul_9[245] = 0x1c
    assert mul_9[246] = 0x7
    assert mul_9[247] = 0xe
    assert mul_9[248] = 0x79
    assert mul_9[249] = 0x70
    assert mul_9[250] = 0x6b
    assert mul_9[251] = 0x62
    assert mul_9[252] = 0x5d
    assert mul_9[253] = 0x54
    assert mul_9[254] = 0x4f
    assert mul_9[255] = 0x46

    return (mul_9 = mul_9)
end

func init_mul_11(mul_11 : felt*) -> (mul_11 : felt*):
    
    assert mul_11[0] = 0x0
    assert mul_11[1] = 0xb
    assert mul_11[2] = 0x16
    assert mul_11[3] = 0x1d
    assert mul_11[4] = 0x2c
    assert mul_11[5] = 0x27
    assert mul_11[6] = 0x3a
    assert mul_11[7] = 0x31
    assert mul_11[8] = 0x58
    assert mul_11[9] = 0x53
    assert mul_11[10] = 0x4e
    assert mul_11[11] = 0x45
    assert mul_11[12] = 0x74
    assert mul_11[13] = 0x7f
    assert mul_11[14] = 0x62
    assert mul_11[15] = 0x69
    assert mul_11[16] = 0xb0
    assert mul_11[17] = 0xbb
    assert mul_11[18] = 0xa6
    assert mul_11[19] = 0xad
    assert mul_11[20] = 0x9c
    assert mul_11[21] = 0x97
    assert mul_11[22] = 0x8a
    assert mul_11[23] = 0x81
    assert mul_11[24] = 0xe8
    assert mul_11[25] = 0xe3
    assert mul_11[26] = 0xfe
    assert mul_11[27] = 0xf5
    assert mul_11[28] = 0xc4
    assert mul_11[29] = 0xcf
    assert mul_11[30] = 0xd2
    assert mul_11[31] = 0xd9
    assert mul_11[32] = 0x7b
    assert mul_11[33] = 0x70
    assert mul_11[34] = 0x6d
    assert mul_11[35] = 0x66
    assert mul_11[36] = 0x57
    assert mul_11[37] = 0x5c
    assert mul_11[38] = 0x41
    assert mul_11[39] = 0x4a
    assert mul_11[40] = 0x23
    assert mul_11[41] = 0x28
    assert mul_11[42] = 0x35
    assert mul_11[43] = 0x3e
    assert mul_11[44] = 0xf
    assert mul_11[45] = 0x4
    assert mul_11[46] = 0x19
    assert mul_11[47] = 0x12
    assert mul_11[48] = 0xcb
    assert mul_11[49] = 0xc0
    assert mul_11[50] = 0xdd
    assert mul_11[51] = 0xd6
    assert mul_11[52] = 0xe7
    assert mul_11[53] = 0xec
    assert mul_11[54] = 0xf1
    assert mul_11[55] = 0xfa
    assert mul_11[56] = 0x93
    assert mul_11[57] = 0x98
    assert mul_11[58] = 0x85
    assert mul_11[59] = 0x8e
    assert mul_11[60] = 0xbf
    assert mul_11[61] = 0xb4
    assert mul_11[62] = 0xa9
    assert mul_11[63] = 0xa2
    assert mul_11[64] = 0xf6
    assert mul_11[65] = 0xfd
    assert mul_11[66] = 0xe0
    assert mul_11[67] = 0xeb
    assert mul_11[68] = 0xda
    assert mul_11[69] = 0xd1
    assert mul_11[70] = 0xcc
    assert mul_11[71] = 0xc7
    assert mul_11[72] = 0xae
    assert mul_11[73] = 0xa5
    assert mul_11[74] = 0xb8
    assert mul_11[75] = 0xb3
    assert mul_11[76] = 0x82
    assert mul_11[77] = 0x89
    assert mul_11[78] = 0x94
    assert mul_11[79] = 0x9f
    assert mul_11[80] = 0x46
    assert mul_11[81] = 0x4d
    assert mul_11[82] = 0x50
    assert mul_11[83] = 0x5b
    assert mul_11[84] = 0x6a
    assert mul_11[85] = 0x61
    assert mul_11[86] = 0x7c
    assert mul_11[87] = 0x77
    assert mul_11[88] = 0x1e
    assert mul_11[89] = 0x15
    assert mul_11[90] = 0x8
    assert mul_11[91] = 0x3
    assert mul_11[92] = 0x32
    assert mul_11[93] = 0x39
    assert mul_11[94] = 0x24
    assert mul_11[95] = 0x2f
    assert mul_11[96] = 0x8d
    assert mul_11[97] = 0x86
    assert mul_11[98] = 0x9b
    assert mul_11[99] = 0x90
    assert mul_11[100] = 0xa1
    assert mul_11[101] = 0xaa
    assert mul_11[102] = 0xb7
    assert mul_11[103] = 0xbc
    assert mul_11[104] = 0xd5
    assert mul_11[105] = 0xde
    assert mul_11[106] = 0xc3
    assert mul_11[107] = 0xc8
    assert mul_11[108] = 0xf9
    assert mul_11[109] = 0xf2
    assert mul_11[110] = 0xef
    assert mul_11[111] = 0xe4
    assert mul_11[112] = 0x3d
    assert mul_11[113] = 0x36
    assert mul_11[114] = 0x2b
    assert mul_11[115] = 0x20
    assert mul_11[116] = 0x11
    assert mul_11[117] = 0x1a
    assert mul_11[118] = 0x7
    assert mul_11[119] = 0xc
    assert mul_11[120] = 0x65
    assert mul_11[121] = 0x6e
    assert mul_11[122] = 0x73
    assert mul_11[123] = 0x78
    assert mul_11[124] = 0x49
    assert mul_11[125] = 0x42
    assert mul_11[126] = 0x5f
    assert mul_11[127] = 0x54
    assert mul_11[128] = 0xf7
    assert mul_11[129] = 0xfc
    assert mul_11[130] = 0xe1
    assert mul_11[131] = 0xea
    assert mul_11[132] = 0xdb
    assert mul_11[133] = 0xd0
    assert mul_11[134] = 0xcd
    assert mul_11[135] = 0xc6
    assert mul_11[136] = 0xaf
    assert mul_11[137] = 0xa4
    assert mul_11[138] = 0xb9
    assert mul_11[139] = 0xb2
    assert mul_11[140] = 0x83
    assert mul_11[141] = 0x88
    assert mul_11[142] = 0x95
    assert mul_11[143] = 0x9e
    assert mul_11[144] = 0x47
    assert mul_11[145] = 0x4c
    assert mul_11[146] = 0x51
    assert mul_11[147] = 0x5a
    assert mul_11[148] = 0x6b
    assert mul_11[149] = 0x60
    assert mul_11[150] = 0x7d
    assert mul_11[151] = 0x76
    assert mul_11[152] = 0x1f
    assert mul_11[153] = 0x14
    assert mul_11[154] = 0x9
    assert mul_11[155] = 0x2
    assert mul_11[156] = 0x33
    assert mul_11[157] = 0x38
    assert mul_11[158] = 0x25
    assert mul_11[159] = 0x2e
    assert mul_11[160] = 0x8c
    assert mul_11[161] = 0x87
    assert mul_11[162] = 0x9a
    assert mul_11[163] = 0x91
    assert mul_11[164] = 0xa0
    assert mul_11[165] = 0xab
    assert mul_11[166] = 0xb6
    assert mul_11[167] = 0xbd
    assert mul_11[168] = 0xd4
    assert mul_11[169] = 0xdf
    assert mul_11[170] = 0xc2
    assert mul_11[171] = 0xc9
    assert mul_11[172] = 0xf8
    assert mul_11[173] = 0xf3
    assert mul_11[174] = 0xee
    assert mul_11[175] = 0xe5
    assert mul_11[176] = 0x3c
    assert mul_11[177] = 0x37
    assert mul_11[178] = 0x2a
    assert mul_11[179] = 0x21
    assert mul_11[180] = 0x10
    assert mul_11[181] = 0x1b
    assert mul_11[182] = 0x6
    assert mul_11[183] = 0xd
    assert mul_11[184] = 0x64
    assert mul_11[185] = 0x6f
    assert mul_11[186] = 0x72
    assert mul_11[187] = 0x79
    assert mul_11[188] = 0x48
    assert mul_11[189] = 0x43
    assert mul_11[190] = 0x5e
    assert mul_11[191] = 0x55
    assert mul_11[192] = 0x1
    assert mul_11[193] = 0xa
    assert mul_11[194] = 0x17
    assert mul_11[195] = 0x1c
    assert mul_11[196] = 0x2d
    assert mul_11[197] = 0x26
    assert mul_11[198] = 0x3b
    assert mul_11[199] = 0x30
    assert mul_11[200] = 0x59
    assert mul_11[201] = 0x52
    assert mul_11[202] = 0x4f
    assert mul_11[203] = 0x44
    assert mul_11[204] = 0x75
    assert mul_11[205] = 0x7e
    assert mul_11[206] = 0x63
    assert mul_11[207] = 0x68
    assert mul_11[208] = 0xb1
    assert mul_11[209] = 0xba
    assert mul_11[210] = 0xa7
    assert mul_11[211] = 0xac
    assert mul_11[212] = 0x9d
    assert mul_11[213] = 0x96
    assert mul_11[214] = 0x8b
    assert mul_11[215] = 0x80
    assert mul_11[216] = 0xe9
    assert mul_11[217] = 0xe2
    assert mul_11[218] = 0xff
    assert mul_11[219] = 0xf4
    assert mul_11[220] = 0xc5
    assert mul_11[221] = 0xce
    assert mul_11[222] = 0xd3
    assert mul_11[223] = 0xd8
    assert mul_11[224] = 0x7a
    assert mul_11[225] = 0x71
    assert mul_11[226] = 0x6c
    assert mul_11[227] = 0x67
    assert mul_11[228] = 0x56
    assert mul_11[229] = 0x5d
    assert mul_11[230] = 0x40
    assert mul_11[231] = 0x4b
    assert mul_11[232] = 0x22
    assert mul_11[233] = 0x29
    assert mul_11[234] = 0x34
    assert mul_11[235] = 0x3f
    assert mul_11[236] = 0xe
    assert mul_11[237] = 0x5
    assert mul_11[238] = 0x18
    assert mul_11[239] = 0x13
    assert mul_11[240] = 0xca
    assert mul_11[241] = 0xc1
    assert mul_11[242] = 0xdc
    assert mul_11[243] = 0xd7
    assert mul_11[244] = 0xe6
    assert mul_11[245] = 0xed
    assert mul_11[246] = 0xf0
    assert mul_11[247] = 0xfb
    assert mul_11[248] = 0x92
    assert mul_11[249] = 0x99
    assert mul_11[250] = 0x84
    assert mul_11[251] = 0x8f
    assert mul_11[252] = 0xbe
    assert mul_11[253] = 0xb5
    assert mul_11[254] = 0xa8
    assert mul_11[255] = 0xa3

    return (mul_11 = mul_11)
end

func init_mul_13(mul_13 : felt*) -> (mul_13 : felt*):
    
    assert mul_13[0] = 0x0
    assert mul_13[1] = 0xd
    assert mul_13[2] = 0x1a
    assert mul_13[3] = 0x17
    assert mul_13[4] = 0x34
    assert mul_13[5] = 0x39
    assert mul_13[6] = 0x2e
    assert mul_13[7] = 0x23
    assert mul_13[8] = 0x68
    assert mul_13[9] = 0x65
    assert mul_13[10] = 0x72
    assert mul_13[11] = 0x7f
    assert mul_13[12] = 0x5c
    assert mul_13[13] = 0x51
    assert mul_13[14] = 0x46
    assert mul_13[15] = 0x4b
    assert mul_13[16] = 0xd0
    assert mul_13[17] = 0xdd
    assert mul_13[18] = 0xca
    assert mul_13[19] = 0xc7
    assert mul_13[20] = 0xe4
    assert mul_13[21] = 0xe9
    assert mul_13[22] = 0xfe
    assert mul_13[23] = 0xf3
    assert mul_13[24] = 0xb8
    assert mul_13[25] = 0xb5
    assert mul_13[26] = 0xa2
    assert mul_13[27] = 0xaf
    assert mul_13[28] = 0x8c
    assert mul_13[29] = 0x81
    assert mul_13[30] = 0x96
    assert mul_13[31] = 0x9b
    assert mul_13[32] = 0xbb
    assert mul_13[33] = 0xb6
    assert mul_13[34] = 0xa1
    assert mul_13[35] = 0xac
    assert mul_13[36] = 0x8f
    assert mul_13[37] = 0x82
    assert mul_13[38] = 0x95
    assert mul_13[39] = 0x98
    assert mul_13[40] = 0xd3
    assert mul_13[41] = 0xde
    assert mul_13[42] = 0xc9
    assert mul_13[43] = 0xc4
    assert mul_13[44] = 0xe7
    assert mul_13[45] = 0xea
    assert mul_13[46] = 0xfd
    assert mul_13[47] = 0xf0
    assert mul_13[48] = 0x6b
    assert mul_13[49] = 0x66
    assert mul_13[50] = 0x71
    assert mul_13[51] = 0x7c
    assert mul_13[52] = 0x5f
    assert mul_13[53] = 0x52
    assert mul_13[54] = 0x45
    assert mul_13[55] = 0x48
    assert mul_13[56] = 0x3
    assert mul_13[57] = 0xe
    assert mul_13[58] = 0x19
    assert mul_13[59] = 0x14
    assert mul_13[60] = 0x37
    assert mul_13[61] = 0x3a
    assert mul_13[62] = 0x2d
    assert mul_13[63] = 0x20
    assert mul_13[64] = 0x6d
    assert mul_13[65] = 0x60
    assert mul_13[66] = 0x77
    assert mul_13[67] = 0x7a
    assert mul_13[68] = 0x59
    assert mul_13[69] = 0x54
    assert mul_13[70] = 0x43
    assert mul_13[71] = 0x4e
    assert mul_13[72] = 0x5
    assert mul_13[73] = 0x8
    assert mul_13[74] = 0x1f
    assert mul_13[75] = 0x12
    assert mul_13[76] = 0x31
    assert mul_13[77] = 0x3c
    assert mul_13[78] = 0x2b
    assert mul_13[79] = 0x26
    assert mul_13[80] = 0xbd
    assert mul_13[81] = 0xb0
    assert mul_13[82] = 0xa7
    assert mul_13[83] = 0xaa
    assert mul_13[84] = 0x89
    assert mul_13[85] = 0x84
    assert mul_13[86] = 0x93
    assert mul_13[87] = 0x9e
    assert mul_13[88] = 0xd5
    assert mul_13[89] = 0xd8
    assert mul_13[90] = 0xcf
    assert mul_13[91] = 0xc2
    assert mul_13[92] = 0xe1
    assert mul_13[93] = 0xec
    assert mul_13[94] = 0xfb
    assert mul_13[95] = 0xf6
    assert mul_13[96] = 0xd6
    assert mul_13[97] = 0xdb
    assert mul_13[98] = 0xcc
    assert mul_13[99] = 0xc1
    assert mul_13[100] = 0xe2
    assert mul_13[101] = 0xef
    assert mul_13[102] = 0xf8
    assert mul_13[103] = 0xf5
    assert mul_13[104] = 0xbe
    assert mul_13[105] = 0xb3
    assert mul_13[106] = 0xa4
    assert mul_13[107] = 0xa9
    assert mul_13[108] = 0x8a
    assert mul_13[109] = 0x87
    assert mul_13[110] = 0x90
    assert mul_13[111] = 0x9d
    assert mul_13[112] = 0x6
    assert mul_13[113] = 0xb
    assert mul_13[114] = 0x1c
    assert mul_13[115] = 0x11
    assert mul_13[116] = 0x32
    assert mul_13[117] = 0x3f
    assert mul_13[118] = 0x28
    assert mul_13[119] = 0x25
    assert mul_13[120] = 0x6e
    assert mul_13[121] = 0x63
    assert mul_13[122] = 0x74
    assert mul_13[123] = 0x79
    assert mul_13[124] = 0x5a
    assert mul_13[125] = 0x57
    assert mul_13[126] = 0x40
    assert mul_13[127] = 0x4d
    assert mul_13[128] = 0xda
    assert mul_13[129] = 0xd7
    assert mul_13[130] = 0xc0
    assert mul_13[131] = 0xcd
    assert mul_13[132] = 0xee
    assert mul_13[133] = 0xe3
    assert mul_13[134] = 0xf4
    assert mul_13[135] = 0xf9
    assert mul_13[136] = 0xb2
    assert mul_13[137] = 0xbf
    assert mul_13[138] = 0xa8
    assert mul_13[139] = 0xa5
    assert mul_13[140] = 0x86
    assert mul_13[141] = 0x8b
    assert mul_13[142] = 0x9c
    assert mul_13[143] = 0x91
    assert mul_13[144] = 0xa
    assert mul_13[145] = 0x7
    assert mul_13[146] = 0x10
    assert mul_13[147] = 0x1d
    assert mul_13[148] = 0x3e
    assert mul_13[149] = 0x33
    assert mul_13[150] = 0x24
    assert mul_13[151] = 0x29
    assert mul_13[152] = 0x62
    assert mul_13[153] = 0x6f
    assert mul_13[154] = 0x78
    assert mul_13[155] = 0x75
    assert mul_13[156] = 0x56
    assert mul_13[157] = 0x5b
    assert mul_13[158] = 0x4c
    assert mul_13[159] = 0x41
    assert mul_13[160] = 0x61
    assert mul_13[161] = 0x6c
    assert mul_13[162] = 0x7b
    assert mul_13[163] = 0x76
    assert mul_13[164] = 0x55
    assert mul_13[165] = 0x58
    assert mul_13[166] = 0x4f
    assert mul_13[167] = 0x42
    assert mul_13[168] = 0x9
    assert mul_13[169] = 0x4
    assert mul_13[170] = 0x13
    assert mul_13[171] = 0x1e
    assert mul_13[172] = 0x3d
    assert mul_13[173] = 0x30
    assert mul_13[174] = 0x27
    assert mul_13[175] = 0x2a
    assert mul_13[176] = 0xb1
    assert mul_13[177] = 0xbc
    assert mul_13[178] = 0xab
    assert mul_13[179] = 0xa6
    assert mul_13[180] = 0x85
    assert mul_13[181] = 0x88
    assert mul_13[182] = 0x9f
    assert mul_13[183] = 0x92
    assert mul_13[184] = 0xd9
    assert mul_13[185] = 0xd4
    assert mul_13[186] = 0xc3
    assert mul_13[187] = 0xce
    assert mul_13[188] = 0xed
    assert mul_13[189] = 0xe0
    assert mul_13[190] = 0xf7
    assert mul_13[191] = 0xfa
    assert mul_13[192] = 0xb7
    assert mul_13[193] = 0xba
    assert mul_13[194] = 0xad
    assert mul_13[195] = 0xa0
    assert mul_13[196] = 0x83
    assert mul_13[197] = 0x8e
    assert mul_13[198] = 0x99
    assert mul_13[199] = 0x94
    assert mul_13[200] = 0xdf
    assert mul_13[201] = 0xd2
    assert mul_13[202] = 0xc5
    assert mul_13[203] = 0xc8
    assert mul_13[204] = 0xeb
    assert mul_13[205] = 0xe6
    assert mul_13[206] = 0xf1
    assert mul_13[207] = 0xfc
    assert mul_13[208] = 0x67
    assert mul_13[209] = 0x6a
    assert mul_13[210] = 0x7d
    assert mul_13[211] = 0x70
    assert mul_13[212] = 0x53
    assert mul_13[213] = 0x5e
    assert mul_13[214] = 0x49
    assert mul_13[215] = 0x44
    assert mul_13[216] = 0xf
    assert mul_13[217] = 0x2
    assert mul_13[218] = 0x15
    assert mul_13[219] = 0x18
    assert mul_13[220] = 0x3b
    assert mul_13[221] = 0x36
    assert mul_13[222] = 0x21
    assert mul_13[223] = 0x2c
    assert mul_13[224] = 0xc
    assert mul_13[225] = 0x1
    assert mul_13[226] = 0x16
    assert mul_13[227] = 0x1b
    assert mul_13[228] = 0x38
    assert mul_13[229] = 0x35
    assert mul_13[230] = 0x22
    assert mul_13[231] = 0x2f
    assert mul_13[232] = 0x64
    assert mul_13[233] = 0x69
    assert mul_13[234] = 0x7e
    assert mul_13[235] = 0x73
    assert mul_13[236] = 0x50
    assert mul_13[237] = 0x5d
    assert mul_13[238] = 0x4a
    assert mul_13[239] = 0x47
    assert mul_13[240] = 0xdc
    assert mul_13[241] = 0xd1
    assert mul_13[242] = 0xc6
    assert mul_13[243] = 0xcb
    assert mul_13[244] = 0xe8
    assert mul_13[245] = 0xe5
    assert mul_13[246] = 0xf2
    assert mul_13[247] = 0xff
    assert mul_13[248] = 0xb4
    assert mul_13[249] = 0xb9
    assert mul_13[250] = 0xae
    assert mul_13[251] = 0xa3
    assert mul_13[252] = 0x80
    assert mul_13[253] = 0x8d
    assert mul_13[254] = 0x9a
    assert mul_13[255] = 0x97

    return (mul_13 = mul_13)
end

func init_mul_14(mul_14 : felt*) -> (mul_14 : felt*):

    assert mul_14[0] = 0x0
    assert mul_14[1] = 0xe
    assert mul_14[2] = 0x1c
    assert mul_14[3] = 0x12
    assert mul_14[4] = 0x38
    assert mul_14[5] = 0x36
    assert mul_14[6] = 0x24
    assert mul_14[7] = 0x2a
    assert mul_14[8] = 0x70
    assert mul_14[9] = 0x7e
    assert mul_14[10] = 0x6c
    assert mul_14[11] = 0x62
    assert mul_14[12] = 0x48
    assert mul_14[13] = 0x46
    assert mul_14[14] = 0x54
    assert mul_14[15] = 0x5a
    assert mul_14[16] = 0xe0
    assert mul_14[17] = 0xee
    assert mul_14[18] = 0xfc
    assert mul_14[19] = 0xf2
    assert mul_14[20] = 0xd8
    assert mul_14[21] = 0xd6
    assert mul_14[22] = 0xc4
    assert mul_14[23] = 0xca
    assert mul_14[24] = 0x90
    assert mul_14[25] = 0x9e
    assert mul_14[26] = 0x8c
    assert mul_14[27] = 0x82
    assert mul_14[28] = 0xa8
    assert mul_14[29] = 0xa6
    assert mul_14[30] = 0xb4
    assert mul_14[31] = 0xba
    assert mul_14[32] = 0xdb
    assert mul_14[33] = 0xd5
    assert mul_14[34] = 0xc7
    assert mul_14[35] = 0xc9
    assert mul_14[36] = 0xe3
    assert mul_14[37] = 0xed
    assert mul_14[38] = 0xff
    assert mul_14[39] = 0xf1
    assert mul_14[40] = 0xab
    assert mul_14[41] = 0xa5
    assert mul_14[42] = 0xb7
    assert mul_14[43] = 0xb9
    assert mul_14[44] = 0x93
    assert mul_14[45] = 0x9d
    assert mul_14[46] = 0x8f
    assert mul_14[47] = 0x81
    assert mul_14[48] = 0x3b
    assert mul_14[49] = 0x35
    assert mul_14[50] = 0x27
    assert mul_14[51] = 0x29
    assert mul_14[52] = 0x3
    assert mul_14[53] = 0xd
    assert mul_14[54] = 0x1f
    assert mul_14[55] = 0x11
    assert mul_14[56] = 0x4b
    assert mul_14[57] = 0x45
    assert mul_14[58] = 0x57
    assert mul_14[59] = 0x59
    assert mul_14[60] = 0x73
    assert mul_14[61] = 0x7d
    assert mul_14[62] = 0x6f
    assert mul_14[63] = 0x61
    assert mul_14[64] = 0xad
    assert mul_14[65] = 0xa3
    assert mul_14[66] = 0xb1
    assert mul_14[67] = 0xbf
    assert mul_14[68] = 0x95
    assert mul_14[69] = 0x9b
    assert mul_14[70] = 0x89
    assert mul_14[71] = 0x87
    assert mul_14[72] = 0xdd
    assert mul_14[73] = 0xd3
    assert mul_14[74] = 0xc1
    assert mul_14[75] = 0xcf
    assert mul_14[76] = 0xe5
    assert mul_14[77] = 0xeb
    assert mul_14[78] = 0xf9
    assert mul_14[79] = 0xf7
    assert mul_14[80] = 0x4d
    assert mul_14[81] = 0x43
    assert mul_14[82] = 0x51
    assert mul_14[83] = 0x5f
    assert mul_14[84] = 0x75
    assert mul_14[85] = 0x7b
    assert mul_14[86] = 0x69
    assert mul_14[87] = 0x67
    assert mul_14[88] = 0x3d
    assert mul_14[89] = 0x33
    assert mul_14[90] = 0x21
    assert mul_14[91] = 0x2f
    assert mul_14[92] = 0x5
    assert mul_14[93] = 0xb
    assert mul_14[94] = 0x19
    assert mul_14[95] = 0x17
    assert mul_14[96] = 0x76
    assert mul_14[97] = 0x78
    assert mul_14[98] = 0x6a
    assert mul_14[99] = 0x64
    assert mul_14[100] = 0x4e
    assert mul_14[101] = 0x40
    assert mul_14[102] = 0x52
    assert mul_14[103] = 0x5c
    assert mul_14[104] = 0x6
    assert mul_14[105] = 0x8
    assert mul_14[106] = 0x1a
    assert mul_14[107] = 0x14
    assert mul_14[108] = 0x3e
    assert mul_14[109] = 0x30
    assert mul_14[110] = 0x22
    assert mul_14[111] = 0x2c
    assert mul_14[112] = 0x96
    assert mul_14[113] = 0x98
    assert mul_14[114] = 0x8a
    assert mul_14[115] = 0x84
    assert mul_14[116] = 0xae
    assert mul_14[117] = 0xa0
    assert mul_14[118] = 0xb2
    assert mul_14[119] = 0xbc
    assert mul_14[120] = 0xe6
    assert mul_14[121] = 0xe8
    assert mul_14[122] = 0xfa
    assert mul_14[123] = 0xf4
    assert mul_14[124] = 0xde
    assert mul_14[125] = 0xd0
    assert mul_14[126] = 0xc2
    assert mul_14[127] = 0xcc
    assert mul_14[128] = 0x41
    assert mul_14[129] = 0x4f
    assert mul_14[130] = 0x5d
    assert mul_14[131] = 0x53
    assert mul_14[132] = 0x79
    assert mul_14[133] = 0x77
    assert mul_14[134] = 0x65
    assert mul_14[135] = 0x6b
    assert mul_14[136] = 0x31
    assert mul_14[137] = 0x3f
    assert mul_14[138] = 0x2d
    assert mul_14[139] = 0x23
    assert mul_14[140] = 0x9
    assert mul_14[141] = 0x7
    assert mul_14[142] = 0x15
    assert mul_14[143] = 0x1b
    assert mul_14[144] = 0xa1
    assert mul_14[145] = 0xaf
    assert mul_14[146] = 0xbd
    assert mul_14[147] = 0xb3
    assert mul_14[148] = 0x99
    assert mul_14[149] = 0x97
    assert mul_14[150] = 0x85
    assert mul_14[151] = 0x8b
    assert mul_14[152] = 0xd1
    assert mul_14[153] = 0xdf
    assert mul_14[154] = 0xcd
    assert mul_14[155] = 0xc3
    assert mul_14[156] = 0xe9
    assert mul_14[157] = 0xe7
    assert mul_14[158] = 0xf5
    assert mul_14[159] = 0xfb
    assert mul_14[160] = 0x9a
    assert mul_14[161] = 0x94
    assert mul_14[162] = 0x86
    assert mul_14[163] = 0x88
    assert mul_14[164] = 0xa2
    assert mul_14[165] = 0xac
    assert mul_14[166] = 0xbe
    assert mul_14[167] = 0xb0
    assert mul_14[168] = 0xea
    assert mul_14[169] = 0xe4
    assert mul_14[170] = 0xf6
    assert mul_14[171] = 0xf8
    assert mul_14[172] = 0xd2
    assert mul_14[173] = 0xdc
    assert mul_14[174] = 0xce
    assert mul_14[175] = 0xc0
    assert mul_14[176] = 0x7a
    assert mul_14[177] = 0x74
    assert mul_14[178] = 0x66
    assert mul_14[179] = 0x68
    assert mul_14[180] = 0x42
    assert mul_14[181] = 0x4c
    assert mul_14[182] = 0x5e
    assert mul_14[183] = 0x50
    assert mul_14[184] = 0xa
    assert mul_14[185] = 0x4
    assert mul_14[186] = 0x16
    assert mul_14[187] = 0x18
    assert mul_14[188] = 0x32
    assert mul_14[189] = 0x3c
    assert mul_14[190] = 0x2e
    assert mul_14[191] = 0x20
    assert mul_14[192] = 0xec
    assert mul_14[193] = 0xe2
    assert mul_14[194] = 0xf0
    assert mul_14[195] = 0xfe
    assert mul_14[196] = 0xd4
    assert mul_14[197] = 0xda
    assert mul_14[198] = 0xc8
    assert mul_14[199] = 0xc6
    assert mul_14[200] = 0x9c
    assert mul_14[201] = 0x92
    assert mul_14[202] = 0x80
    assert mul_14[203] = 0x8e
    assert mul_14[204] = 0xa4
    assert mul_14[205] = 0xaa
    assert mul_14[206] = 0xb8
    assert mul_14[207] = 0xb6
    assert mul_14[208] = 0xc
    assert mul_14[209] = 0x2
    assert mul_14[210] = 0x10
    assert mul_14[211] = 0x1e
    assert mul_14[212] = 0x34
    assert mul_14[213] = 0x3a
    assert mul_14[214] = 0x28
    assert mul_14[215] = 0x26
    assert mul_14[216] = 0x7c
    assert mul_14[217] = 0x72
    assert mul_14[218] = 0x60
    assert mul_14[219] = 0x6e
    assert mul_14[220] = 0x44
    assert mul_14[221] = 0x4a
    assert mul_14[222] = 0x58
    assert mul_14[223] = 0x56
    assert mul_14[224] = 0x37
    assert mul_14[225] = 0x39
    assert mul_14[226] = 0x2b
    assert mul_14[227] = 0x25
    assert mul_14[228] = 0xf
    assert mul_14[229] = 0x1
    assert mul_14[230] = 0x13
    assert mul_14[231] = 0x1d
    assert mul_14[232] = 0x47
    assert mul_14[233] = 0x49
    assert mul_14[234] = 0x5b
    assert mul_14[235] = 0x55
    assert mul_14[236] = 0x7f
    assert mul_14[237] = 0x71
    assert mul_14[238] = 0x63
    assert mul_14[239] = 0x6d
    assert mul_14[240] = 0xd7
    assert mul_14[241] = 0xd9
    assert mul_14[242] = 0xcb
    assert mul_14[243] = 0xc5
    assert mul_14[244] = 0xef
    assert mul_14[245] = 0xe1
    assert mul_14[246] = 0xf3
    assert mul_14[247] = 0xfd
    assert mul_14[248] = 0xa7
    assert mul_14[249] = 0xa9
    assert mul_14[250] = 0xbb
    assert mul_14[251] = 0xb5
    assert mul_14[252] = 0x9f
    assert mul_14[253] = 0x91
    assert mul_14[254] = 0x83
    assert mul_14[255] = 0x8d

    return (mul_14 = mul_14)
end

func init_state{bitwise_ptr : BitwiseBuiltin*}(state : felt*, input : felt) -> (state : felt*):
    alloc_locals

    const SHIFT_BYTE = (2 ** 8)
    const SHIFT_BYTE2 = (2 ** 16)
    const SHIFT_BYTE3 = (2 ** 24)
    const SHIFT_BYTE4 = (2 ** 32)
    const SHIFT_BYTE5 = (2 ** 40)
    const SHIFT_BYTE6 = (2 ** 48)
    const SHIFT_BYTE7 = (2 ** 56)
    const SHIFT_BYTE8 = (2 ** 64)
    const SHIFT_BYTE9 = (2 ** 72)
    const SHIFT_BYTE10 = (2 ** 80)
    const SHIFT_BYTE11 = (2 ** 88)
    const SHIFT_BYTE12 = (2 ** 96)
    const SHIFT_BYTE13 = (2 ** 104)
    const SHIFT_BYTE14 = (2 ** 112)
    const SHIFT_BYTE15 = (2 ** 120)

    let (val) = bitwise_and(input, 0xff)
    assert state[15] = val

    let (val) = bitwise_and(input, 0xff00)
    assert state[11] = val / SHIFT_BYTE

    let (val) = bitwise_and(input, 0xff0000)
    assert state[7] = val / SHIFT_BYTE2

    let (val) = bitwise_and(input, 0xff000000)
    assert state[3] = val / SHIFT_BYTE3

    let (val) = bitwise_and(input, 0xff00000000)
    assert state[14] = val / SHIFT_BYTE4

    let (val) = bitwise_and(input, 0xff0000000000)
    assert state[10] = val / SHIFT_BYTE5

    let (val) = bitwise_and(input, 0xff000000000000)
    assert state[6] = val / SHIFT_BYTE6

    let (val) = bitwise_and(input, 0xff00000000000000)
    assert state[2] = val / SHIFT_BYTE7

    let (val) = bitwise_and(input, 0xff0000000000000000)
    assert state[13] = val / SHIFT_BYTE8

    let (val) = bitwise_and(input, 0xff000000000000000000)
    assert state[9] = val / SHIFT_BYTE9

    let (val) = bitwise_and(input, 0xff00000000000000000000)
    assert state[5] = val / SHIFT_BYTE10

    let (val) = bitwise_and(input, 0xff0000000000000000000000)
    assert state[1] = val / SHIFT_BYTE11

    let (val) = bitwise_and(input, 0xff000000000000000000000000)
    assert state[12] = val / SHIFT_BYTE12

    let (val) = bitwise_and(input, 0xff00000000000000000000000000)
    assert state[8] = val / SHIFT_BYTE13

    let (val) = bitwise_and(input, 0xff0000000000000000000000000000)
    assert state[4] = val / SHIFT_BYTE14

    let (val) = bitwise_and(input, 0xff000000000000000000000000000000)
    assert state[0] = val / SHIFT_BYTE15

    return (state = state)
end

func init_key{bitwise_ptr : BitwiseBuiltin*}(key : felt*, input : felt) -> (key : felt*):
    alloc_locals

    const SHIFT_BYTE = (2 ** 8)
    const SHIFT_BYTE2 = (2 ** 16)
    const SHIFT_BYTE3 = (2 ** 24)
    const SHIFT_BYTE4 = (2 ** 32)
    const SHIFT_BYTE5 = (2 ** 40)
    const SHIFT_BYTE6 = (2 ** 48)
    const SHIFT_BYTE7 = (2 ** 56)
    const SHIFT_BYTE8 = (2 ** 64)
    const SHIFT_BYTE9 = (2 ** 72)
    const SHIFT_BYTE10 = (2 ** 80)
    const SHIFT_BYTE11 = (2 ** 88)
    const SHIFT_BYTE12 = (2 ** 96)
    const SHIFT_BYTE13 = (2 ** 104)
    const SHIFT_BYTE14 = (2 ** 112)
    const SHIFT_BYTE15 = (2 ** 120)

    let (val) = bitwise_and(input, 0xff)
    assert key[15] = val

    let (val) = bitwise_and(input, 0xff00)
    assert key[11] = val / SHIFT_BYTE

    let (val) = bitwise_and(input, 0xff0000)
    assert key[7] = val / SHIFT_BYTE2

    let (val) = bitwise_and(input, 0xff000000)
    assert key[3] = val / SHIFT_BYTE3

    let (val) = bitwise_and(input, 0xff00000000)
    assert key[14] = val / SHIFT_BYTE4

    let (val) = bitwise_and(input, 0xff0000000000)
    assert key[10] = val / SHIFT_BYTE5

    let (val) = bitwise_and(input, 0xff000000000000)
    assert key[6] = val / SHIFT_BYTE6

    let (val) = bitwise_and(input, 0xff00000000000000)
    assert key[2] = val / SHIFT_BYTE7

    let (val) = bitwise_and(input, 0xff0000000000000000)
    assert key[13] = val / SHIFT_BYTE8

    let (val) = bitwise_and(input, 0xff000000000000000000)
    assert key[9] = val / SHIFT_BYTE9

    let (val) = bitwise_and(input, 0xff00000000000000000000)
    assert key[5] = val / SHIFT_BYTE10

    let (val) = bitwise_and(input, 0xff0000000000000000000000)
    assert key[1] = val / SHIFT_BYTE11

    let (val) = bitwise_and(input, 0xff000000000000000000000000)
    assert key[12] = val / SHIFT_BYTE12

    let (val) = bitwise_and(input, 0xff00000000000000000000000000)
    assert key[8] = val / SHIFT_BYTE13

    let (val) = bitwise_and(input, 0xff0000000000000000000000000000)
    assert key[4] = val / SHIFT_BYTE14

    let (val) = bitwise_and(input, 0xff000000000000000000000000000000)
    assert key[0] = val / SHIFT_BYTE15

    return (key = key)
end

func aes_round{bitwise_ptr : BitwiseBuiltin*}(state : felt*, key : felt*, s_box : felt*, mul_2 : felt*, mul_3 : felt*) -> (state : felt*):
    alloc_locals
    let (local new_state : felt*) = alloc()
    # state xor

    let (c0) = bitwise_xor(state[0], key[0])
    let (c1) = bitwise_xor(state[1], key[1])
    let (c2) = bitwise_xor(state[2], key[2])
    let (c3) = bitwise_xor(state[3], key[3])

    let (c4) = bitwise_xor(state[4], key[4])
    let (c5) = bitwise_xor(state[5], key[5])
    let (c6) = bitwise_xor(state[6], key[6])
    let (c7) = bitwise_xor(state[7], key[7])

    let (c8) = bitwise_xor(state[8], key[8])
    let (c9) = bitwise_xor(state[9], key[9])
    let (c10) = bitwise_xor(state[10], key[10])
    let (c11) = bitwise_xor(state[11], key[11])

    let (c12) = bitwise_xor(state[12], key[12])
    let (c13) = bitwise_xor(state[13], key[13])
    let (c14) = bitwise_xor(state[14], key[14])
    let (c15) = bitwise_xor(state[15], key[15])

    let f12 = s_box[c15]
    let f15 = s_box[c14]
    let f14 = s_box[c13]
    let f13 = s_box[c12]
    let f9 = s_box[c11]
    let f8 = s_box[c10]
    let f11 = s_box[c9]
    let f10 = s_box[c8]
    let f6 = s_box[c7]
    let f5 = s_box[c6]
    let f4 = s_box[c5]
    let f7 = s_box[c4]
    let f3 = s_box[c3]
    let f2 = s_box[c2]
    let f1 = s_box[c1]
    let f0 = s_box[c0]

    # mix column
    let val1 = mul_2[f0]
    let val2 = mul_3[f4]
    let (val3) = bitwise_xor(val1, val2)
    let (val4) = bitwise_xor(val3, f8)
    let (t0) = bitwise_xor(val4, f12)

    let val1 = mul_2[f4]
    let val2 = mul_3[f8]
    let (val3) = bitwise_xor(f0, val1)
    let (val4) = bitwise_xor(val3, val2)
    let (t4) = bitwise_xor(val4, f12)

    let val1 = mul_2[f8]
    let val2 = mul_3[f12]
    let (val3) = bitwise_xor(f0, f4)
    let (val4) = bitwise_xor(val3, val1)
    let (t8) = bitwise_xor(val4, val2)

    let val1 = mul_3[f0]
    let val2 = mul_2[f12]
    let (val3) = bitwise_xor(val1, f4)
    let (val4) = bitwise_xor(val3, f8)
    let (t12) = bitwise_xor(val4, val2)

    # second column
    let val1 = mul_2[f1]
    let val2 = mul_3[f5]
    let (val3) = bitwise_xor(val1, val2)
    let (val4) = bitwise_xor(val3, f9)
    let (t1) = bitwise_xor(val4, f13)

    let val1 = mul_2[f5]
    let val2 = mul_3[f9]
    let (val3) = bitwise_xor(f1, val1)
    let (val4) = bitwise_xor(val3, val2)
    let (t5) = bitwise_xor(val4, f13)

    let val1 = mul_2[f9]
    let val2 = mul_3[f13]
    let (val3) = bitwise_xor(f1, f5)
    let (val4) = bitwise_xor(val3, val1)
    let (t9) = bitwise_xor(val4, val2)

    let val1 = mul_3[f1]
    let val2 = mul_2[f13]
    let (val3) = bitwise_xor(val1, f5)
    let (val4) = bitwise_xor(val3, f9)
    let (t13) = bitwise_xor(val4, val2)

    # third column
    let val1 = mul_2[f2]
    let val2 = mul_3[f6]
    let (val3) = bitwise_xor(val1, val2)
    let (val4) = bitwise_xor(val3, f10)
    let (t2) = bitwise_xor(val4, f14)

    let val1 = mul_2[f6]
    let val2 = mul_3[f10]
    let (val3) = bitwise_xor(f2, val1)
    let (val4) = bitwise_xor(val3, val2)
    let (t6) = bitwise_xor(val4, f14)

    let val1 = mul_2[f10]
    let val2 = mul_3[f14]
    let (val3) = bitwise_xor(f2, f6)
    let (val4) = bitwise_xor(val3, val1)
    let (t10) = bitwise_xor(val4, val2)

    let val1 = mul_3[f2]
    let val2 = mul_2[f14]
    let (val3) = bitwise_xor(val1, f6)
    let (val4) = bitwise_xor(val3, f10)
    let (t14) = bitwise_xor(val4, val2)
    # fourth column
    let val1 = mul_2[f3]
    let val2 = mul_3[f7]
    let (val3) = bitwise_xor(val1, val2)
    let (val4) = bitwise_xor(val3, f11)
    let (t3) = bitwise_xor(val4, f15)

    let val1 = mul_2[f7]
    let val2 = mul_3[f11]
    let (val3) = bitwise_xor(f3, val1)
    let (val4) = bitwise_xor(val3, val2)
    let (t7) = bitwise_xor(val4, f15)

    let val1 = mul_2[f11]
    let val2 = mul_3[f15]
    let (val3) = bitwise_xor(f3, f7)
    let (val4) = bitwise_xor(val3, val1)
    let (t11) = bitwise_xor(val4, val2)

    let val1 = mul_3[f3]
    let val2 = mul_2[f15]
    let (val3) = bitwise_xor(val1, f7)
    let (val4) = bitwise_xor(val3, f11)
    let (t15) = bitwise_xor(val4, val2)

    assert new_state[0] = t0
    assert new_state[1] = t1
    assert new_state[2] = t2
    assert new_state[3] = t3
    assert new_state[4] = t4
    assert new_state[5] = t5
    assert new_state[6] = t6
    assert new_state[7] = t7
    assert new_state[8] = t8
    assert new_state[9] = t9
    assert new_state[10] = t10
    assert new_state[11] = t11
    assert new_state[12] = t12
    assert new_state[13] = t13
    assert new_state[14] = t14
    assert new_state[15] = t15

    return (state = new_state)
end

func aes_final_round{bitwise_ptr : BitwiseBuiltin*}(state : felt*, key : felt*, s_box : felt*, mul_2 : felt*, mul_3 : felt*) -> (state : felt*):
    alloc_locals
    let (local new_state : felt*) = alloc()
    # state xor

    let (c0) = bitwise_xor(state[0], key[0])
    let (c1) = bitwise_xor(state[1], key[1])
    let (c2) = bitwise_xor(state[2], key[2])
    let (c3) = bitwise_xor(state[3], key[3])

    let (c4) = bitwise_xor(state[4], key[4])
    let (c5) = bitwise_xor(state[5], key[5])
    let (c6) = bitwise_xor(state[6], key[6])
    let (c7) = bitwise_xor(state[7], key[7])

    let (c8) = bitwise_xor(state[8], key[8])
    let (c9) = bitwise_xor(state[9], key[9])
    let (c10) = bitwise_xor(state[10], key[10])
    let (c11) = bitwise_xor(state[11], key[11])

    let (c12) = bitwise_xor(state[12], key[12])
    let (c13) = bitwise_xor(state[13], key[13])
    let (c14) = bitwise_xor(state[14], key[14])
    let (c15) = bitwise_xor(state[15], key[15])

    let f12 = s_box[c15]
    let f15 = s_box[c14]
    let f14 = s_box[c13]
    let f13 = s_box[c12]
    let f9 = s_box[c11]
    let f8 = s_box[c10]
    let f11 = s_box[c9]
    let f10 = s_box[c8]
    let f6 = s_box[c7]
    let f5 = s_box[c6]
    let f4 = s_box[c5]
    let f7 = s_box[c4]
    let f3 = s_box[c3]
    let f2 = s_box[c2]
    let f1 = s_box[c1]
    let f0 = s_box[c0]

    let key = key + 16

    # final add_round_key
    let (t0) = bitwise_xor(f0, key[0])
    let (t1) = bitwise_xor(f1, key[1])
    let (t2) = bitwise_xor(f2, key[2])
    let (t3) = bitwise_xor(f3, key[3])

    let (t4) = bitwise_xor(f4, key[4])
    let (t5) = bitwise_xor(f5, key[5])
    let (t6) = bitwise_xor(f6, key[6])
    let (t7) = bitwise_xor(f7, key[7])

    let (t8) = bitwise_xor(f8, key[8])
    let (t9) = bitwise_xor(f9, key[9])
    let (t10) = bitwise_xor(f10, key[10])
    let (t11) = bitwise_xor(f11, key[11])

    let (t12) = bitwise_xor(f12, key[12])
    let (t13) = bitwise_xor(f13, key[13])
    let (t14) = bitwise_xor(f14, key[14])
    let (t15) = bitwise_xor(f15, key[15])

    assert new_state[0] = t0
    assert new_state[1] = t1
    assert new_state[2] = t2
    assert new_state[3] = t3
    assert new_state[4] = t4
    assert new_state[5] = t5
    assert new_state[6] = t6
    assert new_state[7] = t7
    assert new_state[8] = t8
    assert new_state[9] = t9
    assert new_state[10] = t10
    assert new_state[11] = t11
    assert new_state[12] = t12
    assert new_state[13] = t13
    assert new_state[14] = t14
    assert new_state[15] = t15    

    return (state = new_state)
end

func aes_initial_inv_round{bitwise_ptr : BitwiseBuiltin*}(state : felt*, key : felt*, inv_s_box : felt*, mul_9 : felt*, mul_11 : felt*, mul_13 : felt*, mul_14 : felt*) -> (state : felt*):
    alloc_locals
    let (local new_state : felt*) = alloc()

    let (c0) = bitwise_xor(state[0], key[0])
    let (c1) = bitwise_xor(state[1], key[1])
    let (c2) = bitwise_xor(state[2], key[2])
    let (c3) = bitwise_xor(state[3], key[3])

    let (c4) = bitwise_xor(state[4], key[4])
    let (c5) = bitwise_xor(state[5], key[5])
    let (c6) = bitwise_xor(state[6], key[6])
    let (c7) = bitwise_xor(state[7], key[7])

    let (c8) = bitwise_xor(state[8], key[8])
    let (c9) = bitwise_xor(state[9], key[9])
    let (c10) = bitwise_xor(state[10], key[10])
    let (c11) = bitwise_xor(state[11], key[11])

    let (c12) = bitwise_xor(state[12], key[12])
    let (c13) = bitwise_xor(state[13], key[13])
    let (c14) = bitwise_xor(state[14], key[14])
    let (c15) = bitwise_xor(state[15], key[15])

    let f14 = inv_s_box[c15]
    let f13 = inv_s_box[c14]
    let f12 = inv_s_box[c13]
    let f15 = inv_s_box[c12]
    let f9 = inv_s_box[c11]
    let f8 = inv_s_box[c10]
    let f11 = inv_s_box[c9]
    let f10 = inv_s_box[c8]
    let f4 = inv_s_box[c7]
    let f7 = inv_s_box[c6]
    let f6 = inv_s_box[c5]
    let f5 = inv_s_box[c4]
    let f3 = inv_s_box[c3]
    let f2 = inv_s_box[c2]
    let f1 = inv_s_box[c1]
    let f0 = inv_s_box[c0]

    let key = key - 16

    let (t0) = bitwise_xor(f0, key[0])
    let (t1) = bitwise_xor(f1, key[1])
    let (t2) = bitwise_xor(f2, key[2])
    let (t3) = bitwise_xor(f3, key[3])

    let (t4) = bitwise_xor(f4, key[4])
    let (t5) = bitwise_xor(f5, key[5])
    let (t6) = bitwise_xor(f6, key[6])
    let (t7) = bitwise_xor(f7, key[7])

    let (t8) = bitwise_xor(f8, key[8])
    let (t9) = bitwise_xor(f9, key[9])
    let (t10) = bitwise_xor(f10, key[10])
    let (t11) = bitwise_xor(f11, key[11])

    let (t12) = bitwise_xor(f12, key[12])
    let (t13) = bitwise_xor(f13, key[13])
    let (t14) = bitwise_xor(f14, key[14])
    let (t15) = bitwise_xor(f15, key[15])

    assert new_state[0] = t0
    assert new_state[1] = t1
    assert new_state[2] = t2
    assert new_state[3] = t3
    assert new_state[4] = t4
    assert new_state[5] = t5
    assert new_state[6] = t6
    assert new_state[7] = t7
    assert new_state[8] = t8
    assert new_state[9] = t9
    assert new_state[10] = t10
    assert new_state[11] = t11
    assert new_state[12] = t12
    assert new_state[13] = t13
    assert new_state[14] = t14
    assert new_state[15] = t15

    return (state = new_state)
end

func aes_inv_round{bitwise_ptr : BitwiseBuiltin*}(state : felt*, key : felt*, inv_s_box : felt*, mul_9 : felt*, mul_11 : felt*, mul_13 : felt*, mul_14 : felt*) -> (state : felt*):
    alloc_locals
    let (local new_state : felt*) = alloc()

    let val1 = mul_14[state[0]]
    let val2 = mul_11[state[4]]
    let val3 = mul_13[state[8]]
    let val4 = mul_9[state[12]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c0) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[4]]
    let val2 = mul_11[state[8]]
    let val3 = mul_13[state[12]]
    let val4 = mul_9[state[0]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c4) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[8]]
    let val2 = mul_11[state[12]]
    let val3 = mul_13[state[0]]
    let val4 = mul_9[state[4]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c8) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[12]]
    let val2 = mul_11[state[0]]
    let val3 = mul_13[state[4]]
    let val4 = mul_9[state[8]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c12) = bitwise_xor(val6, val4)

    # second column
    let val1 = mul_14[state[1]]
    let val2 = mul_11[state[5]]
    let val3 = mul_13[state[9]]
    let val4 = mul_9[state[13]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c1) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[5]]
    let val2 = mul_11[state[9]]
    let val3 = mul_13[state[13]]
    let val4 = mul_9[state[1]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c5) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[9]]
    let val2 = mul_11[state[13]]
    let val3 = mul_13[state[1]]
    let val4 = mul_9[state[5]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c9) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[13]]
    let val2 = mul_11[state[1]]
    let val3 = mul_13[state[5]]
    let val4 = mul_9[state[9]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c13) = bitwise_xor(val6, val4)

    # third column
    let val1 = mul_14[state[2]]
    let val2 = mul_11[state[6]]
    let val3 = mul_13[state[10]]
    let val4 = mul_9[state[14]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c2) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[6]]
    let val2 = mul_11[state[10]]
    let val3 = mul_13[state[14]]
    let val4 = mul_9[state[2]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c6) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[10]]
    let val2 = mul_11[state[14]]
    let val3 = mul_13[state[2]]
    let val4 = mul_9[state[6]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c10) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[14]]
    let val2 = mul_11[state[2]]
    let val3 = mul_13[state[6]]
    let val4 = mul_9[state[10]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c14) = bitwise_xor(val6, val4)

    # fourth column
    let val1 = mul_14[state[3]]
    let val2 = mul_11[state[7]]
    let val3 = mul_13[state[11]]
    let val4 = mul_9[state[15]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c3) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[7]]
    let val2 = mul_11[state[11]]
    let val3 = mul_13[state[15]]
    let val4 = mul_9[state[3]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c7) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[11]]
    let val2 = mul_11[state[15]]
    let val3 = mul_13[state[3]]
    let val4 = mul_9[state[7]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c11) = bitwise_xor(val6, val4)

    let val1 = mul_14[state[15]]
    let val2 = mul_11[state[3]]
    let val3 = mul_13[state[7]]
    let val4 = mul_9[state[11]]
    let (val5) = bitwise_xor(val1, val2)
    let (val6) = bitwise_xor(val5, val3)
    let (c15) = bitwise_xor(val6, val4)

    let f14 = inv_s_box[c15]
    let f13 = inv_s_box[c14]
    let f12 = inv_s_box[c13]
    let f15 = inv_s_box[c12]
    let f9 = inv_s_box[c11]
    let f8 = inv_s_box[c10]
    let f11 = inv_s_box[c9]
    let f10 = inv_s_box[c8]
    let f4 = inv_s_box[c7]
    let f7 = inv_s_box[c6]
    let f6 = inv_s_box[c5]
    let f5 = inv_s_box[c4]
    let f3 = inv_s_box[c3]
    let f2 = inv_s_box[c2]
    let f1 = inv_s_box[c1]
    let f0 = inv_s_box[c0]

    let (t0) = bitwise_xor(f0, key[0])
    let (t1) = bitwise_xor(f1, key[1])
    let (t2) = bitwise_xor(f2, key[2])
    let (t3) = bitwise_xor(f3, key[3])

    let (t4) = bitwise_xor(f4, key[4])
    let (t5) = bitwise_xor(f5, key[5])
    let (t6) = bitwise_xor(f6, key[6])
    let (t7) = bitwise_xor(f7, key[7])

    let (t8) = bitwise_xor(f8, key[8])
    let (t9) = bitwise_xor(f9, key[9])
    let (t10) = bitwise_xor(f10, key[10])
    let (t11) = bitwise_xor(f11, key[11])

    let (t12) = bitwise_xor(f12, key[12])
    let (t13) = bitwise_xor(f13, key[13])
    let (t14) = bitwise_xor(f14, key[14])
    let (t15) = bitwise_xor(f15, key[15])

    assert new_state[0] = t0
    assert new_state[1] = t1
    assert new_state[2] = t2
    assert new_state[3] = t3
    assert new_state[4] = t4
    assert new_state[5] = t5
    assert new_state[6] = t6
    assert new_state[7] = t7
    assert new_state[8] = t8
    assert new_state[9] = t9
    assert new_state[10] = t10
    assert new_state[11] = t11
    assert new_state[12] = t12
    assert new_state[13] = t13
    assert new_state[14] = t14
    assert new_state[15] = t15

    return (state = new_state)
end

func encrypt_block_128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(input_state : felt, key : felt*, s_box : felt*, mul_2 : felt*, mul_3 : felt*) -> (result : felt):
    alloc_locals

    assert_le(input_state, 2**128 - 1)

    let (local empty_state : felt*) = alloc()

    let (state) = init_state(state = empty_state, input = input_state)

    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16
    
    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16

    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16

    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16

    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16

    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16
    
    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16
    
    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16
    
    let (state) = aes_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let key = key + 16
    
    let (state) = aes_final_round(state = state, key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    
    let (result) = output_state(state = state) 

    return (result = result)
end

func decrypt_block_128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(input_state : felt, key : felt*, inv_s_box : felt*, mul_9 : felt*, mul_11 : felt*, mul_13 : felt*, mul_14 : felt*) -> (result : felt):
    alloc_locals
    
    assert_le(input_state, 2**128 - 1)

    let (local empty_state : felt*) = alloc()

    let (state) = init_state(state = empty_state, input = input_state)

    let key = key + 160
    let (state) = aes_initial_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 32
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 16
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 16
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 16
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 16
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 16
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 16
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 16
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let key = key - 16
    let (state) = aes_inv_round(state = state, key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)

    let (result) = output_state(state = state)

    return (result = result)
end

func add_round_key{bitwise_ptr : BitwiseBuiltin*}(key : felt*, s_box : felt*, rc) -> (key : felt*):
    alloc_locals
    let new_key : felt* = key + 16

    tempvar d15 = key[15]
    let a2 = s_box[d15]

    tempvar d14 = key[11]
    let a1 = s_box[d14]

    tempvar d13 = key[7]
    let a0 = s_box[d13]
    let (a0) = bitwise_xor(a0, rc)

    tempvar d12 = key[3]
    let a3 = s_box[d12]

    let (e0) = bitwise_xor(a0, key[0]) # e0 new_key
    let (e1) = bitwise_xor(a1, key[4])
    let (e2) = bitwise_xor(a2, key[8])
    let (e3) = bitwise_xor(a3, key[12])

    let (e4) = bitwise_xor(e0, key[1])
    let (e5) = bitwise_xor(e1, key[5])
    let (e6) = bitwise_xor(e2, key[9])
    let (e7) = bitwise_xor(e3, key[13])

    let (e8) = bitwise_xor(e4, key[2])
    let (e9) = bitwise_xor(e5, key[6])
    let (e10) = bitwise_xor(e6, key[10])
    let (e11) = bitwise_xor(e7, key[14])

    let (e12) = bitwise_xor(e8, key[3])
    let (e13) = bitwise_xor(e9, key[7])
    let (e14) = bitwise_xor(e10, key[11])
    let (e15) = bitwise_xor(e11, key[15])

    assert new_key[0] = e0
    assert new_key[4] = e1
    assert new_key[8] = e2
    assert new_key[12] = e3
    assert new_key[1] = e4
    assert new_key[5] = e5
    assert new_key[9] = e6
    assert new_key[13] = e7
    assert new_key[2] = e8
    assert new_key[6] = e9
    assert new_key[10] = e10
    assert new_key[14] = e11
    assert new_key[3] = e12
    assert new_key[7] = e13
    assert new_key[11] = e14
    assert new_key[15] = e15

    return (key = new_key)
end

func key_expansion{bitwise_ptr : BitwiseBuiltin*}(key : felt*, s_box : felt*) -> (key : felt*):
    let key_start = key
    
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x01)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x02)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x04)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x08)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x10)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x20)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x40)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x80)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x1b)
    let (key) = add_round_key(key = key, s_box = s_box, rc = 0x36)

    return (key = key_start)
end

func output_state{bitwise_ptr : BitwiseBuiltin*}(state : felt*) -> (result : felt):
    alloc_locals
    const SHIFT_BYTE = (2**8)

    let result = state[0] * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[4])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[8])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[12])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[1])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[5])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[9])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[13])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[2])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[6])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[10])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[14])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[3])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[7])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[11])
    let result = result * SHIFT_BYTE
    let (result) = bitwise_xor(result, state[15])

    return (result = result)
end

func recursive_aes_128_encrypt{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(input : felt*, key : felt*, array_length : felt, result : felt*, s_box : felt*, mul_2 : felt*, mul_3 : felt*) -> (result : felt*):
    if array_length == 0:
        return (result = result)
    end
    # here, we will put assertion for checking whether the input it bigger than 128 or not.
    let (out) = encrypt_block_128(input_state = input[0], key = key, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    
    assert result[0] = out

    return recursive_aes_128_encrypt(input = input + 1, key = key, array_length = array_length - 1, result = result + 1, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
end

func recursive_aes_128_decrypt{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(input : felt*, key : felt*, array_length : felt, result : felt*, inv_s_box : felt*, mul_9 : felt*, mul_11 : felt*, mul_13 : felt*, mul_14 : felt*) -> (result : felt*):
    if array_length == 0:
        return (result = result)
    end
    # here, we will put assertion for checking whether the input it bigger than 128 or not.
    let (out) = decrypt_block_128(input_state = input[0], key = key, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)
    
    assert result[0] = out

    return recursive_aes_128_decrypt(input = input + 1, key = key, array_length = array_length - 1, result = result + 1, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)
end

func aes_128_encrypt{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(input : felt*, input_key : felt, array_length : felt) -> (result : felt*):
    alloc_locals

    assert_le(input_key, 2**128 - 1)

    let (local s_box_empty : felt*) = alloc()
    let (local mul_2_empty : felt*) = alloc()
    let (local mul_3_empty : felt*) = alloc()
    let (local result : felt*) = alloc()
    let (local empty_key : felt*) = alloc()

    let (s_box) = init_s_box(s_box = s_box_empty)
    let (mul_2) = init_mul_2(mul_2 = mul_2_empty)
    let (mul_3) = init_mul_3(mul_3 = mul_3_empty)

    let (key) = init_key(key = empty_key, input = input_key)
    let (key) = key_expansion(key = key, s_box = s_box)

    let result_start = result
    let (result) = recursive_aes_128_encrypt(input = input, key = key, array_length = array_length, result = result, s_box = s_box, mul_2 = mul_2, mul_3 = mul_3)
    let result = result_start 

    return (result = result)
end

func aes_128_decrypt{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(input : felt*, input_key : felt, array_length : felt) -> (result : felt*):
    alloc_locals

    assert_le(input_key, 2**128 - 1)
    
    let (local inv_s_box_empty : felt*) = alloc()
    let (local s_box_empty : felt*) = alloc()
    let (local mul_9_empty : felt*) = alloc()
    let (local mul_11_empty : felt*) = alloc()
    let (local mul_13_empty : felt*) = alloc()
    let (local mul_14_empty : felt*) = alloc()
    let (local empty_key : felt*) = alloc()
    let (local result : felt*) = alloc()
    

    let (inv_s_box) = init_inv_s_box(inv_s_box = inv_s_box_empty)
    let (s_box) = init_s_box(s_box = s_box_empty)
    let (mul_9) = init_mul_9(mul_9 = mul_9_empty)
    let (mul_11) = init_mul_11(mul_11 = mul_11_empty)
    let (mul_13) = init_mul_13(mul_13 = mul_13_empty)
    let (mul_14) = init_mul_14(mul_14 = mul_14_empty)

    let (key) = init_key(key = empty_key, input = input_key)
    let (key) = key_expansion(key = key, s_box = s_box)

    let result_start = result
    let (result) = recursive_aes_128_decrypt(input = input, key = key, array_length = array_length, result = result, inv_s_box = inv_s_box, mul_9 = mul_9, mul_11 = mul_11, mul_13 = mul_13, mul_14 = mul_14)
    let result = result_start 

    return (result = result)
end

