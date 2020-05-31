; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    pop hl
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

RST_08::
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    nop
    nop
    nop
    nop

RST_10::
    ld a, [$4000]
    push af
    ld a, h
    ld [$2100], a

RST_18::
    swap a
    rra
    and $03
    ld [$4100], a

RST_20::
    add hl, hl
    ld h, $00
    ld bc, $4001
    add hl, bc
    db $cd

RST_28::
    ld [$f100], sp
    ld [$2100], a
    swap a

RST_30::
    rra
    and $03
    ld [$4100], a
    ret


    nop

RST_38::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

VBlankInterrupt::
    di
    jp Jump_000_036e


    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_2eea


    nop
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    jp Jump_000_0c5c


    nop
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    jp Jump_000_2edd


    reti


    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_0080:
    ld c, $80
    ld b, $0a
    ld hl, $008e

jr_000_0087:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_0087

    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_0094:
    dec a
    jr nz, jr_000_0094

    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Boot::
    nop
    jp Init


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "DRAGON QMON"

HeaderManufacturerCode::
    db "AWQD"

HeaderCGBFlag::
    db $80

HeaderNewLicenseeCode::
    db $34, $46

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $06

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $50

HeaderGlobalChecksum::
    db $ec, $b5

Init:
    cp $11
    ld a, $00
    jr nz, jr_000_0157

    inc a

jr_000_0157:
    ld [$c81d], a

Jump_000_015a:
    ld sp, $dfff
    call Call_000_11de
    call Call_000_1288
    call Call_000_0080
    ld hl, $8000
    ld bc, $1c00
    xor a
    call Call_000_12c7
    ld hl, $c88a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $04
    ld [$c8ee], a
    ld a, $00
    ld [$c88a], a
    ld a, $01
    ld [$6100], a
    ld a, $00
    ld [$4100], a
    ld a, $00
    ld [$6100], a
    ld a, $00
    ld [$4100], a
    ld a, $0a
    ld [$0100], a
    ld a, $01
    ld [$2100], a
    ld a, $00
    ld [$4100], a
    ld a, $01
    ld [$c81c], a
    ld a, $ff
    ld [$c8b7], a
    ld [$c8b8], a
    call Call_000_3331
    xor a
    ld [$c8c7], a
    ld a, [$c81d]
    or a
    jr z, jr_000_01c6

    xor a
    ldh [rVBK], a
    ldh [rSVBK], a
    ldh [rRP], a

jr_000_01c6:
    call Call_000_1024
    jr c, jr_000_01d2

    xor a
    ld [$c81c], a
    jp Jump_000_028b


jr_000_01d2:
    ld bc, $000c
    call Call_000_10cf
    ld a, $14
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $02
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $03
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $04
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $05
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $06
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $07
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $08
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $09
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $0c
    ld de, $0803
    ld bc, $0800
    call Call_000_113e
    call Call_000_1013
    ld a, $0d
    ld de, $0804
    call Call_000_10e5
    call Call_000_1013
    ld a, $12
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $0a
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $13
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ld a, $01
    ld [$c81c], a
    ld a, $ff
    ld [$c81b], a

Jump_000_028b:
    call Call_000_12a5
    call Call_000_1417
    call Call_000_13ef
    call Call_000_140b
    call Call_000_1660
    xor a
    ld [$c86a], a
    ld [$c825], a
    ld [$c829], a
    ld [$c82a], a
    ld [$c8c8], a
    ld [$c8c9], a
    ld [$df0e], a
    call Call_000_030f
    xor a
    ld [$c88e], a
    ld [$c88f], a
    ld [$c8a3], a
    ld [$c740], a
    ld [$c741], a
    ld [$c8a2], a
    ld [$c8a4], a
    ld [$c8a5], a
    ldh [$d3], a
    ld [$c8b9], a
    ld [$da78], a
    ld hl, $c8b1
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_000_02db:
    ld a, [$c86c]
    or a
    call z, Call_000_12d0
    ld a, [$c88e]
    or a
    jr z, jr_000_02db

    ld a, [$c850]
    or a
    jr z, jr_000_02f2

    bit 7, a
    jr z, jr_000_02db

jr_000_02f2:
    di
    ld a, [$c86c]
    or a
    call nz, Call_000_3331
    call Call_000_11de
    call Call_000_1013
    ld a, $00
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    jp Jump_000_028b


Call_000_030f:
    ld a, [$c88a]
    rst $00
    dec l
    inc bc
    ld [hl-], a
    inc bc
    scf
    inc bc
    inc a
    inc bc
    ld b, c
    inc bc
    ld b, [hl]
    inc bc
    ld c, e
    inc bc
    ld d, b
    inc bc
    ld d, l
    inc bc
    ld e, d
    inc bc
    ld e, a
    inc bc
    ld h, h
    inc bc
    ld l, c
    inc bc
    ld hl, $1500
    rst $10
    ret


    ld hl, $0100
    rst $10
    ret


    ld hl, $5000
    rst $10
    ret


    ld hl, $0201
    rst $10
    ret


    ld hl, $5f00
    rst $10
    ret


    ld hl, $5f08
    rst $10
    ret


    ld hl, $1800
    rst $10
    ret


    ld hl, $550d
    rst $10
    ret


    ld hl, $5900
    rst $10
    ret


    ld hl, $5902
    rst $10
    ret


    ld hl, $5904
    rst $10
    ret


    ld hl, $5603
    rst $10
    ret


    ld hl, $5607
    rst $10
    ret


Jump_000_036e:
    push af
    push bc
    push de
    push hl
    ld hl, $c8a2
    bit 0, [hl]
    jp nz, Jump_000_045c

    set 0, [hl]
    call $ff80
    call Call_000_05ad
    call Call_000_124c
    call Call_000_122f
    call Call_000_056e
    call Call_000_1240
    ld a, [$c86c]
    or a
    jr z, jr_000_039b

    ld a, [$c8b9]
    or a
    call z, Call_000_3473

jr_000_039b:
    ei
    ld a, [$c86c]
    or a
    jr nz, jr_000_03b3

    call Call_000_12ee
    call Call_000_1364
    ld hl, $c8b9
    inc [hl]
    call Call_000_3473
    xor a
    ld [$c8b9], a

jr_000_03b3:
    call Call_000_1bb1
    call Call_000_046b
    ld a, [$c86c]
    or a
    jr nz, jr_000_03d9

    ld a, [$c825]
    or a
    call nz, Call_000_0618
    call Call_000_17ec
    ld a, [$c8a4]
    add $01
    ld [$c8a4], a
    ld a, [$c8a5]
    adc $00
    ld [$c8a5], a

jr_000_03d9:
    ld a, [$c842]
    and $0f
    cp $0f
    jr nz, jr_000_03e9

    ld a, [$c86c]
    or a
    jp z, Jump_000_015a

jr_000_03e9:
    ld a, [$c86c]
    or a
    jr nz, jr_000_044d

    ld a, [$c842]
    and $03
    cp $03
    jr jr_000_044d

    ld a, [$c846]
    bit 2, a
    jr z, jr_000_044d

    ld hl, $c8ad
    ld a, [$c88a]
    ld [hl+], a
    ld a, [$c88b]
    ld [hl+], a
    ld a, [$c88c]
    ld [hl+], a
    ld a, [$c88d]
    ld [hl], a
    ld a, $07
    ld [$c88a], a
    xor a
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]
    ld a, [$c842]
    bit 3, a
    jr z, jr_000_044d

    ld a, [$c846]
    bit 2, a
    jr z, jr_000_044d

    ld hl, $c8ad
    ld a, [$c88a]
    ld [hl+], a
    ld a, [$c88b]
    ld [hl+], a
    ld a, [$c88c]
    ld [hl+], a
    ld a, [$c88d]
    ld [hl], a
    ld a, $0c
    ld [$c88a], a
    xor a
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]

jr_000_044d:
    ld hl, $c8a2
    res 0, [hl]

jr_000_0452:
    ldh a, [rLY]
    ld [$c886], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_045c:
    call Call_000_1240
    ld a, [$c8b9]
    or a
    jr nz, jr_000_0468

    call Call_000_3473

jr_000_0468:
    ei
    jr jr_000_0452

Call_000_046b:
    xor a
    ldh [$cb], a
    call Call_000_04fb
    ld a, [$c850]
    or a
    jr z, jr_000_047a

    bit 7, a
    ret z

jr_000_047a:
    call Call_000_1424
    ret


    ld a, [$c86c]
    or a
    ret z

    ld a, [$c8c8]
    add $01
    ld [$c8c8], a
    ld a, [$c8c9]
    adc $00
    ld [$c8c9], a
    ld a, [$c8c9]
    or a
    jp nz, Jump_000_015a

    ld a, [$c863]
    bit 1, a
    ret nz

    ld a, [$c8a2]
    bit 1, a
    ret nz

    ld a, [$c842]
    ld [$c84e], a
    ld a, [$c843]
    ld [$c84f], a
    call Call_000_12ee
    ld a, [$c873]
    cp $ff
    jr z, jr_000_04c7

    ld a, $00
    ld [$c866], a
    ld a, [$c873]
    jp Jump_000_126b


jr_000_04c7:
    ld hl, $c871
    ld a, [hl+]
    or [hl]
    jr z, jr_000_04f1

    ld a, [$c874]
    ld l, a
    ld a, [$c875]
    ld h, a
    push hl
    ld a, [$c874]
    add $01
    ld [$c874], a
    ld a, [$c875]
    adc $00
    ld [$c875], a
    pop hl
    ld a, $00
    ld [$c866], a
    ld a, [hl]
    jp Jump_000_126b


jr_000_04f1:
    ld a, $00
    ld [$c866], a
    ld a, $f0
    jp Jump_000_126b


Call_000_04fb:
    ld a, [$c88e]
    or a
    ret nz

    ld a, [$c86c]
    or a
    jr nz, jr_000_050f

    ld a, [$c850]
    or a
    jr z, jr_000_050f

    bit 7, a
    ret z

jr_000_050f:
    ld a, [$c88a]
    rst $00
    dec l
    dec b
    ld [hl-], a
    dec b
    scf
    dec b
    inc a
    dec b
    ld b, c
    dec b
    ld b, [hl]
    dec b
    ld c, e
    dec b
    ld d, b
    dec b
    ld d, l
    dec b
    ld e, d
    dec b
    ld e, a
    dec b
    ld h, h
    dec b
    ld l, c
    dec b
    ld hl, $1501
    rst $10
    ret


    ld hl, $0101
    rst $10
    ret


    ld hl, $5001
    rst $10
    ret


    ld hl, $0202
    rst $10
    ret


    ld hl, $5f01
    rst $10
    ret


    ld hl, $5f09
    rst $10
    ret


    ld hl, $1801
    rst $10
    ret


    ld hl, $550e
    rst $10
    ret


    ld hl, $5901
    rst $10
    ret


    ld hl, $5903
    rst $10
    ret


    ld hl, $5905
    rst $10
    ret


    ld hl, $5604
    rst $10
    ret


    ld hl, $5608
    rst $10
    ret


Call_000_056e:
    ld a, [$c8b1]
    or a
    jr z, jr_000_058d

    dec a
    ld [$c8b1], a
    ldh a, [rSCY]
    ld b, a
    ld a, [$c8b1]
    add a
    ld c, a
    and $07
    bit 3, c
    jr nz, jr_000_0588

    xor $07

jr_000_0588:
    sub $04
    add b
    ldh [rSCY], a

jr_000_058d:
    ld a, [$c8b2]
    or a
    jr z, jr_000_05ac

    dec a
    ld [$c8b2], a
    ldh a, [rSCX]
    ld b, a
    ld a, [$c8b2]
    add a
    ld c, a
    and $07
    bit 3, c
    jr nz, jr_000_05a7

    xor $07

jr_000_05a7:
    sub $04
    add b
    ldh [rSCX], a

jr_000_05ac:
    ret


Call_000_05ad:
    ld a, [$c8a3]
    or a
    ret z

    call Call_000_143c
    ret


    push de
    ld hl, $5605
    rst $10
    ld a, [$c827]
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    pop de
    call Call_000_092f
    ld a, e
    ld [$c82d], a
    ld a, d
    ld [$c82e], a
    ld a, e
    ld [$c831], a
    ld a, d
    ld [$c832], a
    ld a, $01
    ld [$c825], a
    ld a, $00
    ld [$c826], a
    xor a
    ld [$c839], a
    ret


    call Call_000_092f
    ld a, [$c837]
    ld l, a
    ld a, [$c838]
    ld h, a

jr_000_0601:
    ld a, [de]
    ld [hl+], a
    inc de
    cp $f0
    jr nz, jr_000_0601

    ret


    ld hl, $c825
    set 1, [hl]

jr_000_060e:
    call Call_000_0618
    ld a, [$c825]
    or a
    jr nz, jr_000_060e

    ret


Call_000_0618:
    ld a, [$c826]
    bit 7, a
    jr z, jr_000_062f

jr_000_061f:
    ld hl, $c825
    set 1, [hl]
    call Call_000_062f
    ld a, [$c826]
    bit 7, a
    jr nz, jr_000_061f

    ret


Call_000_062f:
jr_000_062f:
    ld a, [$4000]
    push af
    ld a, [$c824]
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ld a, [$c825]
    or a
    jp z, Jump_000_0853

    bit 5, a
    jr z, jr_000_0666

    ld c, $ea
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_000_0657

    ld c, $ee

jr_000_0657:
    ld hl, $0060
    call Call_000_0cfd
    ld b, $09
    call Call_000_0ce7
    ld a, c
    call Call_000_1aad

jr_000_0666:
    ld a, [$c825]
    bit 2, a
    jp z, Jump_000_076d

    ld a, [$c83a]
    cp $e6
    jp z, Jump_000_067e

    ld a, [$c83a]
    cp $ff
    jp nz, Jump_000_0753

Jump_000_067e:
    ld a, [$c846]
    ld b, a
    ld a, [$c84a]
    or b
    bit 6, a
    jr z, jr_000_0698

    ld a, [$c83c]
    cp $00
    jr z, jr_000_06a8

    ld a, $00
    ld [$c83c], a
    jr jr_000_06a8

jr_000_0698:
    bit 7, a
    jr z, jr_000_06a8

    ld a, [$c83c]
    cp $01
    jr z, jr_000_06a8

    ld a, $01
    ld [$c83c], a

jr_000_06a8:
    ld c, $e8
    ld b, $e0
    ld a, [$c83c]
    or a
    jr z, jr_000_06b6

    ld c, $e0
    ld b, $e8

jr_000_06b6:
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_000_06c1

    ld c, $e0
    ld b, $e0

jr_000_06c1:
    push bc
    ld hl, $0120
    call Call_000_0d11
    ld b, $0f
    call Call_000_0ce7
    pop bc
    ld a, c
    call Call_000_1aad
    push bc
    ld hl, $0160
    call Call_000_0d11
    ld b, $0f
    call Call_000_0ce7
    pop bc
    ld a, b
    call Call_000_1aad
    ld a, [$c846]
    ld b, a
    ld a, [$c84a]
    or b
    bit 0, a
    jr z, jr_000_0704

    ld a, [$c83c]
    or a
    jr nz, jr_000_0709

    ld a, [$c83a]
    cp $e6
    jp z, Jump_000_070e

    ld a, $59
    call Call_000_1b2c
    jr jr_000_070e

jr_000_0704:
    bit 1, a
    jp z, Jump_000_0853

jr_000_0709:
    ld a, $01
    ld [$c83c], a

Jump_000_070e:
jr_000_070e:
    ld hl, $c825
    res 2, [hl]
    res 1, [hl]
    ld hl, $0000
    call Call_000_0d11
    ld de, $c500
    ld c, $12

jr_000_0720:
    ld b, $20
    push hl

jr_000_0723:
    ld a, [de]
    call Call_000_1aad
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    inc de
    dec b
    jr nz, jr_000_0723

    pop hl
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_000_0720

    ld de, $560a
    ld hl, $8e50
    call Call_000_1577
    jp Jump_000_0853


Jump_000_0753:
    ld a, [$c846]
    ld b, a
    ld a, [$c84a]
    or b
    and $f7
    jp z, Jump_000_0853

    ld hl, $c825
    res 2, [hl]
    res 1, [hl]
    call Call_000_0864
    jp Jump_000_0853


Jump_000_076d:
    bit 6, a
    jr z, jr_000_0794

    ld a, [$c835]
    dec a
    ld [$c835], a
    or a
    jp z, Jump_000_0789

    ld a, [$c846]
    ld b, a
    ld a, [$c84a]
    or b
    and $f7
    jp z, Jump_000_0853

Jump_000_0789:
    ld hl, $c825
    res 6, [hl]
    call Call_000_0864
    jp Jump_000_0853


jr_000_0794:
    bit 7, a
    jr z, jr_000_07ab

    ld a, [$c836]
    dec a
    ld [$c836], a
    or a
    jp nz, Jump_000_0853

    ld hl, $c825
    res 7, [hl]
    jp Jump_000_0853


jr_000_07ab:
    ld a, [$c82d]
    ld l, a
    ld a, [$c82e]
    ld h, a
    ld a, [hl]
    cp $8d
    jp z, Jump_000_0822

    cp $8e
    jp z, Jump_000_0822

    cp $e0
    jp nc, Jump_000_0838

    ld a, [$c825]
    bit 1, a
    jr nz, jr_000_07f0

    ld a, [$c846]
    ld b, a
    ld a, [$c84a]
    or b
    and $f7
    jr z, jr_000_07db

    ld hl, $c826
    set 7, [hl]

jr_000_07db:
    ld a, $02
    ld b, a
    ld a, [$c825]
    bit 3, a
    jr z, jr_000_07e9

    ld a, [$c833]
    ld b, a

jr_000_07e9:
    ld a, [$c839]
    cp b
    jp c, Jump_000_0853

jr_000_07f0:
    xor a
    ld [$c839], a
    ld hl, $c826
    res 1, [hl]
    call Call_000_0954
    ld a, [hl]
    cp $e0
    jp nc, Jump_000_0838

    call Call_000_0880
    ld a, [$c826]
    bit 0, a
    jr z, jr_000_0853

    ld a, b
    cp $90
    jr z, jr_000_0853

    cp $9a
    jr z, jr_000_0853

    ld a, [$c840]
    call Call_000_1b2c
    ld hl, $c826
    set 1, [hl]
    jr jr_000_0853

Jump_000_0822:
    ld a, [$c82d]
    add $01
    ld [$c82d], a
    ld a, [$c82e]
    adc $00
    ld [$c82e], a
    ld a, [hl]
    call Call_000_08c1
    jr jr_000_0853

Jump_000_0838:
    ld a, [$c82d]
    add $01
    ld [$c82d], a
    ld a, [$c82e]
    adc $00
    ld [$c82e], a
    ld a, [hl]
    ld d, a
    ld hl, $5606
    rst $10
    ld hl, $c826
    res 1, [hl]

Jump_000_0853:
jr_000_0853:
    ld hl, $c839
    inc [hl]
    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ret


Call_000_0864:
    ld a, [$c825]
    bit 5, a
    ret z

    res 5, a
    ld [$c825], a
    ld hl, $0060
    call Call_000_0cfd
    ld b, $09
    call Call_000_0ce7
    ld a, $ee
    call Call_000_1aad
    ret


Call_000_0880:
    ld l, a
    ld a, [$4000]
    push af
    ld a, $4f
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    call Call_000_08a2
    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ret


Call_000_08a2:
    call Call_000_091a
    ld c, $08

jr_000_08a7:
    di

jr_000_08a8:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_08a8

    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    ei
    inc de
    dec c
    jr nz, jr_000_08a7

    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ret


Call_000_08c1:
    ld l, a
    ld a, [$4000]
    push af
    ld a, $4f
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    call Call_000_08e3
    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ret


Call_000_08e3:
    call Call_000_091a
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld b, $10

jr_000_08f0:
    di
    ld a, b
    cp $0d
    jr z, jr_000_0901

jr_000_08f6:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_08f6

    ld a, [de]
    or [hl]
    ld [hl+], a
    jr jr_000_090c

jr_000_0901:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_0901

    ld a, [de]
    or [hl]
    and $fd
    ld [hl+], a

jr_000_090c:
    ei
    inc de
    dec b
    jr nz, jr_000_08f0

    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ret


Call_000_091a:
    ld de, $4010
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld e, l
    ld d, h
    ld a, [$c82b]
    ld l, a
    ld a, [$c82c]
    ld h, a
    ret


Call_000_092f:
    ld a, [$4000]
    push af
    ld a, [$4000]
    ld [$c824], a
    ld a, [$c822]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$c823]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop af
    ld [$2100], a
    ret


Call_000_0954:
    ld a, [$c82d]
    ld l, a
    ld a, [$c82e]
    ld h, a
    ld a, [$c82d]
    add $01
    ld [$c82d], a
    ld a, [$c82e]
    adc $00
    ld [$c82e], a
    ret


    ld a, h
    ld [$c822], a
    ld a, l
    ld [$c823], a
    ld hl, $4100
    rst $10
    ret


    ld a, e
    ld [$c837], a
    ld a, d
    ld [$c838], a
    ld a, h
    ld [$c822], a
    ld a, l
    ld [$c823], a
    ld hl, $4101
    rst $10
    ret


    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $5605
    rst $10
    ret


    cp $64
    jr nc, jr_000_09ae

    cp $0a
    jr nc, jr_000_09b3

    jr jr_000_09b8

jr_000_09ae:
    ld e, $64
    call Call_000_09bd

jr_000_09b3:
    ld e, $0a
    call Call_000_09bd

jr_000_09b8:
    ld [hl+], a
    ld a, $f0
    ld [hl], a
    ret


Call_000_09bd:
    ld d, $ff

jr_000_09bf:
    inc d
    sub e
    jr nc, jr_000_09bf

    add e
    ld [hl], d
    inc hl
    ret


    ld a, $0f
    ldh [$db], a
    ld e, $40
    ld d, $42
    call Call_000_0a2e
    or a
    jp nz, Jump_000_09fb

    ld a, $01
    ldh [$db], a
    ld e, $a0
    ld d, $86
    call Call_000_0a2e
    or a
    jr nz, jr_000_0a09

    ld a, $00
    ldh [$db], a
    ld e, $10
    ld d, $27
    call Call_000_0a2e
    or a
    jr nz, jr_000_0a17

    ldh a, [$d5]
    ld c, a
    ldh a, [$d6]
    ld b, a
    jp Jump_000_0a7c


Jump_000_09fb:
    ld a, $0f
    ldh [$db], a
    ld e, $40
    ld d, $42
    call Call_000_0a52
    call Call_000_0ad4

jr_000_0a09:
    ld a, $01
    ldh [$db], a
    ld e, $a0
    ld d, $86
    call Call_000_0a52
    call Call_000_0ad4

jr_000_0a17:
    ld a, $00
    ldh [$db], a
    ld e, $10
    ld d, $27
    call Call_000_0a52
    call Call_000_0ad4
    ldh a, [$d5]
    ld c, a
    ldh a, [$d6]
    ld b, a
    jp Jump_000_0a9f


Call_000_0a2e:
    ldh a, [$d5]
    ld [$c0a0], a
    ldh a, [$d6]
    ld [$c0a1], a
    ldh a, [$d7]
    ld [$c0a2], a
    call Call_000_0a52
    push af
    ld a, [$c0a0]
    ldh [$d5], a
    ld a, [$c0a1]
    ldh [$d6], a
    ld a, [$c0a2]
    ldh [$d7], a
    pop af
    ret


Call_000_0a52:
    push hl
    ldh a, [$db]
    ld l, a
    ld h, $ff

jr_000_0a58:
    inc h
    ldh a, [$d5]
    sub e
    ldh [$d5], a
    ldh a, [$d6]
    sbc d
    ldh [$d6], a
    ldh a, [$d7]
    sbc l
    ldh [$d7], a
    jr nc, jr_000_0a58

    ldh a, [$d5]
    add e
    ldh [$d5], a
    ldh a, [$d6]
    adc d
    ldh [$d6], a
    ldh a, [$d7]
    adc l
    ldh [$d7], a
    ld a, h
    pop hl
    ret


Jump_000_0a7c:
    ld de, $03e8
    push bc
    call Call_000_0abf
    pop bc
    or a
    jr nz, jr_000_0a9f

    ld de, $0064
    push bc
    call Call_000_0abf
    pop bc
    or a
    jr nz, jr_000_0aa8

    ld de, $000a
    push bc
    call Call_000_0abf
    pop bc
    or a
    jr nz, jr_000_0ab1

    jr jr_000_0aba

Jump_000_0a9f:
jr_000_0a9f:
    ld de, $03e8
    call Call_000_0abf
    call Call_000_0ad4

jr_000_0aa8:
    ld de, $0064
    call Call_000_0abf
    call Call_000_0ad4

jr_000_0ab1:
    ld de, $000a
    call Call_000_0abf
    call Call_000_0ad4

jr_000_0aba:
    ld a, c
    call Call_000_0ad4
    ret


Call_000_0abf:
    push hl
    ld h, $ff

jr_000_0ac2:
    inc h
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    jr nc, jr_000_0ac2

    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    ld a, h
    pop hl
    ret


Call_000_0ad4:
    ld [hl+], a
    ld a, $f0
    ld [hl], a
    ret


    ld e, l
    ld d, h
    ld a, h
    rst $00
    pop af
    ld a, [bc]
    inc de
    dec bc
    ld a, $0b
    ld l, c
    dec bc
    sub e
    dec bc
    cp [hl]
    dec bc
    db $fd
    dec bc
    inc de
    inc c
    ccf
    inc c
    ld l, d
    inc c
    ld a, e
    cp $e2
    jr nc, jr_000_0b03

    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4200
    rst $10
    ret


jr_000_0b03:
    sub $e2
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4300
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $01
    ld d, a
    ld a, e
    cp $98
    jr nc, jr_000_0b2e

    inc d
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4300
    rst $10
    ret


jr_000_0b2e:
    sub $98
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4400
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $02
    ld d, a
    ld a, e
    cp $44
    jr nc, jr_000_0b59

    inc d
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4400
    rst $10
    ret


jr_000_0b59:
    sub $44
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4500
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $03
    ld d, a
    ld a, e
    cp $c8
    jr nc, jr_000_0b83

    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4600
    rst $10
    ret


jr_000_0b83:
    sub $c8
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4700
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $04
    ld d, a
    ld a, e
    cp $74
    jr nc, jr_000_0bae

    inc d
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4700
    rst $10
    ret


jr_000_0bae:
    sub $74
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4800
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $05
    ld d, a
    ld a, e
    cp $12
    jr nc, jr_000_0bd9

    inc d
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4800
    rst $10
    ret


jr_000_0bd9:
    cp $e0
    jr nc, jr_000_0bed

    sub $12
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4900
    rst $10
    ret


jr_000_0bed:
    sub $e0
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4a00
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $06
    ld d, a
    inc d
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4a00
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $07
    ld d, a
    ld a, e
    cp $c0
    jr nc, jr_000_0c2f

    inc d
    inc d
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4a00
    rst $10
    ret


jr_000_0c2f:
    sub $c0
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4b00
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $08
    ld d, a
    ld a, e
    cp $68
    jr nc, jr_000_0c5a

    inc d
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4b00
    rst $10
    ret


jr_000_0c5a:
    sub $68

Jump_000_0c5c:
    ld e, a
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4e00
    rst $10
    ret


    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $09
    ld d, a
    inc d
    ld a, d
    ld [$c822], a
    ld a, e
    ld [$c823], a
    ld hl, $4e00
    rst $10
    ret


    ld b, $04

jr_000_0c82:
    ld a, [de]
    ld [hl+], a
    inc de
    cp $8d
    jr z, jr_000_0c82

    cp $8e
    jr z, jr_000_0c82

    dec b
    jr nz, jr_000_0c82

    ld a, [de]
    cp $8d
    jr z, jr_000_0c9c

    cp $8e
    jr z, jr_000_0c9c

    ld [hl], $f0
    ret


jr_000_0c9c:
    ld [hl+], a
    ld [hl], $f0
    ret


    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    ld a, [$c83e]
    ld l, a
    ld a, [$c83f]
    ld h, a

jr_000_0cd0:
    push bc

jr_000_0cd1:
    ld a, e
    call Call_000_1aad
    call Call_000_0cee
    inc e
    dec b
    jr nz, jr_000_0cd1

    pop bc
    ld hl, $0040
    call Call_000_0cfd
    dec c
    jr nz, jr_000_0cd0

    ret


Call_000_0ce7:
jr_000_0ce7:
    call Call_000_0cee
    dec b
    jr nz, jr_000_0ce7

    ret


Call_000_0cee:
    push af
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    pop af
    ret


Call_000_0cfd:
    ld a, [$c83e]
    add l
    ld l, a
    ld a, [$c83f]
    adc h
    and $03
    ld h, a
    ld a, [$c83f]
    and $fc
    or h
    ld h, a
    ret


Call_000_0d11:
    push hl
    ldh a, [$bb]
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    and $f8
    rrca
    rrca
    rrca
    add l
    ld c, a
    ld b, h
    pop hl
    ld a, c
    add l
    ld l, a
    ld a, b
    adc h
    and $03
    ld h, a
    and $03
    or $98
    ld h, a
    ret


jr_000_0d34:
    ld a, $e0
    call Call_000_1aad
    call Call_000_0cee
    dec b
    jr nz, jr_000_0d34

    ret


    push hl
    ld l, a
    ld de, $4010
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [$4000]
    push af
    ld a, $4f
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ld b, $08

jr_000_0d62:
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_0d62

    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ret


    ld a, [$4000]
    push af
    ld a, [$c824]
    ld [$2100], a
    ld a, [hl]
    ld b, a
    pop af
    ld [$2100], a
    ld a, b
    ret


    jr nc, jr_000_0db4

    ld [hl], $25
    jr c, jr_000_0db9

    ldh a, [$f0]
    set 7, [hl]
    daa
    ret nc

    ld hl, $ffbb
    ld a, [hl+]
    sub $11
    cpl
    ld c, a
    ld a, [hl]
    sbc $00
    cpl
    ld b, a
    ldh a, [$c5]
    add c
    ldh [$cd], a
    ldh a, [$c6]
    adc b
    ldh [$ce], a
    ld hl, $ffb7
    ld a, [hl+]
    sub $09
    cpl

jr_000_0db4:
    ld c, a
    ld a, [hl]
    sbc $00
    cpl

jr_000_0db9:
    ld b, a
    ld hl, $ffcf
    ldh a, [$c3]
    add c
    ld c, a
    ld [hl+], a
    ldh a, [$c4]
    adc b
    ld b, a
    ld [hl+], a
    ld a, c
    sub $08
    ld [hl+], a
    ld a, b
    sbc $00
    ld [hl], a
    ldh a, [$c7]
    add a
    add e
    ld l, a
    ld a, $00
    adc d
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ldh a, [$c8]
    add a
    add e
    ld l, a
    ld a, $00
    adc d
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$cb]
    add a
    add a
    ld e, a
    ld d, $c0
    ldh a, [$d3]
    or a
    jp nz, Jump_000_0ee3

    ldh a, [$c9]
    ld c, a
    ldh a, [$ca]
    and $20
    jr nz, jr_000_0e6f

jr_000_0dfd:
    ld a, [hl+]
    cp $80
    ret z

    ld b, a
    jr nc, jr_000_0e15

    ldh a, [$cd]
    add b
    ld b, a
    ldh a, [$ce]
    adc $00
    jr nz, jr_000_0e24

    ld a, b
    cp $a8
    jr c, jr_000_0e29

    jr jr_000_0e24

jr_000_0e15:
    ldh a, [$cd]
    add b
    ld b, a
    ldh a, [$ce]
    adc $ff
    jr nz, jr_000_0e24

    ld a, b
    cp $a8
    jr c, jr_000_0e29

jr_000_0e24:
    inc hl
    inc hl
    inc hl
    jr jr_000_0dfd

jr_000_0e29:
    ld a, b
    ld [de], a
    inc e
    ld a, [hl+]
    ld b, a
    rlca
    jr c, jr_000_0e42

    ldh a, [$cf]
    add b
    ld b, a
    ldh a, [$d0]
    adc $00
    jr nz, jr_000_0e51

    ld a, b
    cp $b8
    jr c, jr_000_0e58

    jr jr_000_0e51

jr_000_0e42:
    ldh a, [$cf]
    add b
    ld b, a
    ldh a, [$d0]
    adc $ff
    jr nz, jr_000_0e51

    ld a, b
    cp $b8
    jr c, jr_000_0e58

jr_000_0e51:
    inc hl
    inc hl
    dec e
    xor a
    ld [de], a
    jr jr_000_0dfd

jr_000_0e58:
    ld a, b
    ld [de], a
    inc e
    ld a, [hl+]
    add c
    ld [de], a
    inc e
    ldh a, [$ca]
    xor [hl]
    inc hl
    ld [de], a
    inc e
    ldh a, [$cb]
    inc a
    ldh [$cb], a
    cp $28
    jr nz, jr_000_0dfd

    ret


jr_000_0e6f:
    ld a, [hl+]
    cp $80
    ret z

    ld b, a
    jr nc, jr_000_0e87

    ldh a, [$cd]
    add b
    ld b, a
    ldh a, [$ce]
    adc $00
    jr nz, jr_000_0e96

    ld a, b
    cp $a8
    jr c, jr_000_0e9b

    jr jr_000_0e96

jr_000_0e87:
    ldh a, [$cd]
    add b
    ld b, a
    ldh a, [$ce]
    adc $ff
    jr nz, jr_000_0e96

    ld a, b
    cp $a8
    jr c, jr_000_0e9b

jr_000_0e96:
    inc hl
    inc hl
    inc hl
    jr jr_000_0e6f

jr_000_0e9b:
    ld a, b
    ld [de], a
    inc e
    ld a, [hl+]
    ld b, a
    rlca
    jr c, jr_000_0eb6

    ldh a, [$d1]
    sub b
    ld b, a
    ldh a, [$d2]
    sbc $00
    jr z, jr_000_0ecc

    jr nz, jr_000_0ec5

    ld a, b
    cp $b8
    jr c, jr_000_0ecc

    jr jr_000_0ec5

jr_000_0eb6:
    ldh a, [$d1]
    sub b
    ld b, a
    ldh a, [$d2]
    sbc $ff
    jr nz, jr_000_0ec5

    ld a, b
    cp $b8
    jr c, jr_000_0ecc

jr_000_0ec5:
    inc hl
    inc hl
    dec e
    xor a
    ld [de], a
    jr jr_000_0e6f

jr_000_0ecc:
    ld a, b
    ld [de], a
    inc e
    ld a, [hl+]
    add c
    ld [de], a
    inc e
    ldh a, [$ca]
    xor [hl]
    inc hl
    ld [de], a
    inc e
    ldh a, [$cb]
    inc a
    ldh [$cb], a
    cp $28
    jr nz, jr_000_0e6f

    ret


Jump_000_0ee3:
    ldh a, [$ca]
    and $20
    jr nz, jr_000_0f63

jr_000_0ee9:
    ld a, [hl+]
    cp $80
    ret z

    ld c, a
    ld b, $00
    rlca
    jr nc, jr_000_0ef4

    dec b

jr_000_0ef4:
    ldh a, [$cd]
    add c
    ld c, a
    ldh a, [$ce]
    adc b
    jr nz, jr_000_0f1f

    ld a, c
    cp $a8
    jr nc, jr_000_0f1f

    ldh a, [$d3]
    or a
    jr z, jr_000_0f24

    cp $01
    jr nz, jr_000_0f12

    ld a, c
    cp $34
    jr c, jr_000_0f1f

    jr jr_000_0f24

jr_000_0f12:
    cp $02
    jr nz, jr_000_0f1d

    ld a, c
    cp $71
    jr c, jr_000_0f24

    jr jr_000_0f1f

jr_000_0f1d:
    jr jr_000_0f24

jr_000_0f1f:
    inc hl
    inc hl
    inc hl
    jr jr_000_0ee9

jr_000_0f24:
    ld a, c
    ld [de], a
    inc e
    ld a, [hl+]
    ld c, a
    ld b, $00
    rlca
    jr nc, jr_000_0f2f

    dec b

jr_000_0f2f:
    ldh a, [$cf]
    add c
    ld c, a
    ldh a, [$d0]
    adc b
    jr nz, jr_000_0f3d

    ld a, c
    cp $b8
    jr c, jr_000_0f44

jr_000_0f3d:
    inc hl
    inc hl
    dec e
    xor a
    ld [de], a
    jr jr_000_0ee9

jr_000_0f44:
    ld a, c
    ld [de], a
    call Call_000_0fdd
    jr nc, jr_000_0f3d

    inc e
    ldh a, [$c9]
    ld b, a
    ld a, [hl+]
    add b
    ld [de], a
    inc e
    ldh a, [$ca]
    xor [hl]
    inc hl
    ld [de], a
    inc e
    ldh a, [$cb]
    inc a
    ldh [$cb], a
    cp $28
    jr nz, jr_000_0ee9

    ret


jr_000_0f63:
    ld a, [hl+]
    cp $80
    ret z

    ld c, a
    ld b, $00
    rlca
    jr nc, jr_000_0f6e

    dec b

jr_000_0f6e:
    ldh a, [$cd]
    add c
    ld c, a
    ldh a, [$ce]
    adc b
    jr nz, jr_000_0f99

    ld a, c
    cp $a8
    jr nc, jr_000_0f99

    ldh a, [$d3]
    or a
    jr z, jr_000_0f9e

    cp $01
    jr nz, jr_000_0f8c

    ld a, c
    cp $34
    jr c, jr_000_0f99

    jr jr_000_0f9e

jr_000_0f8c:
    cp $02
    jr nz, jr_000_0f97

    ld a, c
    cp $71
    jr c, jr_000_0f9e

    jr jr_000_0f99

jr_000_0f97:
    jr jr_000_0f9e

jr_000_0f99:
    inc hl
    inc hl
    inc hl
    jr jr_000_0f63

jr_000_0f9e:
    ld a, c
    ld [de], a
    inc e
    ld a, [hl+]
    ld c, a
    ld b, $00
    rlca
    jr nc, jr_000_0fa9

    dec b

jr_000_0fa9:
    ldh a, [$d1]
    sub c
    ld c, a
    ldh a, [$d2]
    sbc b
    jr nz, jr_000_0fb7

    ld a, c
    cp $b8
    jr c, jr_000_0fbe

jr_000_0fb7:
    inc hl
    inc hl
    dec e
    xor a
    ld [de], a
    jr jr_000_0f63

jr_000_0fbe:
    ld a, c
    ld [de], a
    call Call_000_0fdd
    jr nc, jr_000_0fb7

    inc e
    ldh a, [$c9]
    ld b, a
    ld a, [hl+]
    add b
    ld [de], a
    inc e
    ldh a, [$ca]
    xor [hl]
    inc hl
    ld [de], a
    inc e
    ldh a, [$cb]
    inc a
    ldh [$cb], a
    cp $28
    jr nz, jr_000_0f63

    ret


Call_000_0fdd:
    push hl
    push bc
    ldh a, [$bb]
    ld b, a
    dec e
    ld a, [de]
    inc e
    add b
    sub $0c
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    ld b, a
    ld a, [de]
    add b
    sub $04
    and $f8
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    and $03
    adc $98
    ld h, a
    ldh a, [$d4]
    ld b, a
    di

jr_000_1007:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_1007

    ld a, [hl]
    ei
    cp b
    pop bc
    pop hl
    ret


Call_000_1013:
    ld a, [$c81c]
    or a
    ret z

    ld de, $1b58

jr_000_101b:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_000_101b

    ret


Call_000_1024:
    ld a, $0b
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_000_1074

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_000_1074

    ld a, $0a
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    sub a
    ret


jr_000_1074:
    ld a, $0a
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    scf
    ret


Call_000_1082:
    ldh a, [rP1]
    ld b, $04
    ld c, a
    jr jr_000_108d

Jump_000_1089:
    ldh a, [rP1]
    cp c
    ret z

jr_000_108d:
    cpl
    and $03
    sla a
    ld d, $00
    ld e, a
    ld hl, $c76c
    add hl, de
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld d, a
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or d
    ld d, a
    ld a, [hl+]
    xor d
    and d
    ld [hl-], a
    ld a, d
    ld [hl], a
    ld a, $30
    ldh [rP1], a
    dec b
    jp nz, Jump_000_1089

    ret


Call_000_10cf:
    ld a, [$c81c]
    or a
    ret z

jr_000_10d4:
    ld de, $06d6

jr_000_10d7:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_000_10d7

    dec bc
    ld a, b
    or c
    jr nz, jr_000_10d4

    ret


Call_000_10e5:
    ld [$c774], a
    ld a, [$c81c]
    or a
    ret z

    call Call_000_11e7
    call Call_000_140b
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    push de
    ld hl, $8800
    ld bc, $1000
    xor a
    call Call_000_12c7
    pop de
    ld a, $e4
    ldh [rBGP], a
    ld hl, $8800
    call Call_000_14cf
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_000_1118:
    ld b, $14

jr_000_111a:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_111a

    add hl, de
    dec c
    jr nz, jr_000_1118

    ld a, $81
    ldh [rLCDC], a
    ld [$c8a1], a
    ld bc, $0005
    call Call_000_10cf
    ld hl, $0800
    rst $10
    ld bc, $0006
    call Call_000_10cf
    call Call_000_11e7
    ret


Call_000_113e:
    ld [$c774], a
    ld a, [$c81c]
    or a
    ret z

    push bc
    call Call_000_11e7
    call Call_000_140b
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ld a, $e4
    ldh [rBGP], a
    pop bc
    ld a, [$4000]
    push af
    push bc
    ld a, d
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ld a, e
    add a
    ld e, a
    ld d, $00
    ld hl, $4001
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop bc
    ld hl, $8800

jr_000_1178:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1178

    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_000_118a:
    ld b, $14

jr_000_118c:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_118c

    add hl, de
    dec c
    jr nz, jr_000_118a

    ld a, $81
    ldh [rLCDC], a
    ld [$c8a1], a
    ld bc, $0005
    call Call_000_10cf
    ld hl, $0800
    rst $10
    ld bc, $0006
    call Call_000_10cf
    call Call_000_11e7
    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ret


Call_000_11bc:
    push hl
    push bc
    xor a
    ld hl, $c777
    ld c, $10

jr_000_11c4:
    ld [hl+], a
    dec c
    jr nz, jr_000_11c4

    pop bc
    pop hl
    ret


    push af
    ld a, [$c86c]
    or a
    jr z, jr_000_11d5

    call Call_000_1d45

jr_000_11d5:
    call Call_000_11fb
    pop af
    call Call_000_1227
    ei
    ret


Call_000_11de:
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    and $e2
    ldh [rIE], a

Call_000_11e7:
    ld hl, $ff40
    bit 7, [hl]
    ret z

jr_000_11ed:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_11ed

    res 7, [hl]
    ld hl, $c8a1
    res 7, [hl]
    ret


Call_000_11fb:
    ld hl, $c8a1
    set 7, [hl]
    ld a, [hl]
    ldh [rLCDC], a
    ld a, [$c81c]
    or a
    ret z

    ld a, $01
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ret


    ret


    xor a
    ldh [rIF], a
    ldh a, [rIE]
    and $f7
    ldh [rIE], a
    ret


Call_000_1220:
jr_000_1220:
    ldh a, [rSC]
    bit 7, a
    jr nz, jr_000_1220

    ret


Call_000_1227:
    ld b, a
    xor a
    ldh [rIF], a
    ld a, b
    ldh [rIE], a
    ret


Call_000_122f:
    ldh a, [$b7]
    ldh [rSCX], a
    ldh a, [$bb]
    ldh [rSCY], a
    ldh a, [$b5]
    ldh [rWX], a
    ldh a, [$b6]
    ldh [rWY], a
    ret


Call_000_1240:
jr_000_1240:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_1240

    ld a, [$c8a1]
    ldh [rLCDC], a
    ret


Call_000_124c:
    ld hl, $1703
    rst $10
    ld hl, $c89b
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl]
    ldh [rOBP1], a
    ret


    ldh a, [rSTAT]
    or $40
    ldh [rSTAT], a
    ret


    ldh a, [rSTAT]
    and $07
    ldh [rSTAT], a
    ret


Call_000_126b:
Jump_000_126b:
    di
    call Call_000_127f
    ld a, $81
    ldh [rSC], a
    ei
    ret


Call_000_1275:
    di
    call Call_000_127f
    ld a, $80
    ldh [rSC], a
    ei
    ret


Call_000_127f:
    ld b, a
    ld a, $00
    ldh [rSC], a
    ld a, b
    ldh [rSB], a
    ret


Call_000_1288:
    ld a, [$c81d]
    push af
    ld hl, $c000
    ld bc, $1e00
    xor a
    call Call_000_12c7
    ld hl, $ff8a
    ld bc, $0074
    xor a
    call Call_000_12c7
    pop af
    ld [$c81d], a
    ret


Call_000_12a5:
    ld hl, $9800
    ld bc, $0800
    xor a
    call Call_000_12c7
    ld a, [$c81d]
    or a
    ret z

    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0800
    xor a
    call Call_000_12c7
    ld a, $00
    ldh [rVBK], a
    ret


Call_000_12c7:
    ld d, a

jr_000_12c8:
    ld [hl], d
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_12c8

    ret


Call_000_12d0:
    push hl
    push de
    ld a, [$c899]
    ld h, a
    ld a, [$c89a]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $1357
    add hl, de
    ld a, h
    ld [$c899], a
    ld a, l
    ld [$c89a], a
    pop de
    pop hl
    ret


Call_000_12ee:
    ld a, [$c81c]
    or a
    jr z, jr_000_1310

    call Call_000_1082
    ld a, [$c842]
    ld [$c843], a
    ld a, [$c76c]
    ld [$c842], a
    ld a, [$c844]
    ld [$c845], a
    ld a, [$c76e]
    ld [$c844], a
    ret


jr_000_1310:
    xor a
    ld [$c841], a
    call Call_000_1338
    ld a, [$c842]
    ld [$c843], a
    ld a, b
    ld [$c842], a
    ld a, $30
    ldh [rP1], a
    ret


    call Call_000_1338
    ld a, [$c844]
    ld [$c845], a
    ld a, b
    ld [$c844], a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_1338:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld b, a
    ret


Call_000_1364:
    ld a, [$c86c]
    or a
    jr nz, jr_000_1377

    ld a, [$c841]
    or a
    jr nz, jr_000_1377

    xor a
    ld [$c844], a
    ld [$c845], a

jr_000_1377:
    xor a
    ld [$c847], a
    ld hl, $c842
    ld a, [hl]
    inc hl
    xor [hl]
    dec hl
    and [hl]
    ld [$c846], a
    ld hl, $c842
    ld a, [hl+]
    or a
    jr z, jr_000_1390

    cp [hl]
    jr z, jr_000_139d

jr_000_1390:
    ld a, [$c846]
    ld [$c847], a
    ld a, $14
    ld [$c848], a
    jr jr_000_13ad

jr_000_139d:
    ld hl, $c848
    ld a, [hl]
    or a
    jr nz, jr_000_13ac

    ld [hl], $06
    ld a, [$c842]
    ld [$c847], a

jr_000_13ac:
    dec [hl]

jr_000_13ad:
    xor a
    ld [$c84b], a
    ld hl, $c844
    ld a, [hl]
    inc hl
    xor [hl]
    dec hl
    and [hl]
    ld [$c84a], a
    ld hl, $c844
    ld a, [hl+]
    or a
    jr z, jr_000_13c6

    cp [hl]
    jr z, jr_000_13d3

jr_000_13c6:
    ld a, [$c84a]
    ld [$c84b], a
    ld a, $14
    ld [$c84c], a
    jr jr_000_13e3

jr_000_13d3:
    ld hl, $c84c
    ld a, [hl]
    or a
    jr nz, jr_000_13e2

    ld [hl], $06
    ld a, [$c844]
    ld [$c84b], a

jr_000_13e2:
    dec [hl]

jr_000_13e3:
    ret


    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_000_13ef:
    ld hl, $c89b
    ld a, $d2
    ld [hl+], a
    ld a, $d2
    ld [hl+], a
    ld a, $e2
    ld [hl], a
    ld hl, $c89e
    ld a, [$c89b]
    ld [hl+], a
    ld a, [$c89c]
    ld [hl+], a
    ld a, [$c89d]
    ld [hl], a
    ret


Call_000_140b:
    xor a
    ld hl, $ffb7
    call Call_000_1412

Call_000_1412:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_000_1417:
    xor a
    ldh [$cb], a
    ld hl, $c000
    ld bc, $00a0
    call Call_000_12c7
    ret


Call_000_1424:
    ldh a, [$cb]
    cp $28
    ret z

    ld l, a
    sla l
    sla l
    ld h, $c0
    sub $28
    ld b, a
    xor a

jr_000_1434:
    ld [hl+], a
    inc l
    inc l
    inc l
    inc b
    jr nz, jr_000_1434

    ret


Call_000_143c:
    ld a, [$c740]
    ld e, a
    ld a, [$c741]
    ld d, a
    ld a, d
    or e
    jr nz, jr_000_1449

    ret


jr_000_1449:
    ld a, [$c743]
    ld b, a
    ld hl, $c744
    ld a, [$c742]
    cp $ff
    ret z

    or a
    jr nz, jr_000_148f

    ld a, e
    and $e0
    ld c, a

jr_000_145d:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    and $1f
    or c
    ld e, a
    dec b
    jr nz, jr_000_145d

    ld a, [$c81d]
    or a
    jr z, jr_000_14c7

    ld a, $01
    ldh [rVBK], a
    ld a, [$c740]
    ld e, a
    ld a, [$c741]
    ld d, a
    ld a, [$c743]
    ld b, a

jr_000_147e:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    and $1f
    or c
    ld e, a
    dec b
    jr nz, jr_000_147e

    ld a, $00
    ldh [rVBK], a
    jr jr_000_14c7

jr_000_148f:
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    res 2, a
    ld d, a
    dec b
    jr nz, jr_000_148f

    ld a, [$c81d]
    or a
    jr z, jr_000_14c7

    ld a, $01
    ldh [rVBK], a
    ld a, [$c740]
    ld e, a
    ld a, [$c741]
    ld d, a
    ld a, [$c743]
    ld b, a

jr_000_14b4:
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    res 2, a
    ld d, a
    dec b
    jr nz, jr_000_14b4

    ld a, $00
    ldh [rVBK], a

jr_000_14c7:
    xor a
    ld [$c740], a
    ld [$c741], a
    ret


Call_000_14cf:
jr_000_14cf:
    ld a, [$da78]
    or a
    jr nz, jr_000_14cf

    inc a
    ld [$da78], a
    call Call_000_14e1
    xor a
    ld [$da78], a
    ret


Call_000_14e1:
    ld a, [$4000]
    push af
    call Call_000_1627

Jump_000_14e8:
jr_000_14e8:
    ld a, [de]
    inc de
    push hl
    ld hl, $ffab
    cp [hl]
    jr z, jr_000_14fc

    pop hl
    ld [hl], a
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_14e8

    jp Jump_000_156a


jr_000_14fc:
    pop hl
    ld a, [de]
    ldh [$b0], a
    inc de
    ld a, [de]
    ldh [$af], a
    inc de
    ldh a, [$af]
    push af
    and $0f
    add $04
    cp $13
    jr nz, jr_000_1514

    ld a, [de]
    inc de
    add $13

jr_000_1514:
    ldh [$af], a
    pop af
    push de
    swap a
    and $0f
    ld d, a
    ldh a, [$b0]
    ld e, a
    push hl
    ldh a, [$ac]
    ld l, a
    ldh a, [$ad]
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    pop hl

jr_000_152b:
    ldh a, [$b2]
    cp d
    jr z, jr_000_1534

    jr c, jr_000_153b

    jr jr_000_1556

jr_000_1534:
    ldh a, [$b1]
    cp e
    jr z, jr_000_153b

    jr nc, jr_000_1556

jr_000_153b:
    ld a, $f0
    add d
    ld d, a
    ldh a, [$b4]
    cp d
    jr z, jr_000_1548

    jr nc, jr_000_154f

    jr jr_000_1556

jr_000_1548:
    ldh a, [$b3]
    cp e
    jr z, jr_000_1556

    jr c, jr_000_1556

jr_000_154f:
    ld a, $10
    add d
    ld d, a
    xor a
    jr jr_000_1557

jr_000_1556:
    ld a, [de]

jr_000_1557:
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr z, jr_000_1569

    ldh a, [$af]
    dec a
    ldh [$af], a
    jr nz, jr_000_152b

    pop de
    jp Jump_000_14e8


jr_000_1569:
    pop de

Jump_000_156a:
    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ret


Call_000_1577:
jr_000_1577:
    ld a, [$da78]
    or a
    jr nz, jr_000_1577

    inc a
    ld [$da78], a
    call Call_000_1589
    xor a
    ld [$da78], a
    ret


Call_000_1589:
    ld a, [$4000]
    push af
    call Call_000_1627

Jump_000_1590:
jr_000_1590:
    ld a, [de]
    inc de
    push hl
    ld hl, $ffab
    cp [hl]
    jr z, jr_000_15a5

    pop hl
    call Call_000_1ab9
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1590

    jp Jump_000_161a


jr_000_15a5:
    pop hl
    ld a, [de]
    ldh [$b0], a
    inc de
    ld a, [de]
    ldh [$af], a
    inc de
    ldh a, [$af]
    push af
    and $0f
    add $04
    cp $13
    jr nz, jr_000_15bd

    ld a, [de]
    inc de
    add $13

jr_000_15bd:
    ldh [$af], a
    pop af
    push de
    swap a
    and $0f
    ld d, a
    ldh a, [$b0]
    ld e, a
    push hl
    ldh a, [$ac]
    ld l, a
    ldh a, [$ad]
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    pop hl

jr_000_15d4:
    ldh a, [$b2]
    cp d
    jr z, jr_000_15dd

    jr c, jr_000_15e4

    jr jr_000_15ff

jr_000_15dd:
    ldh a, [$b1]
    cp e
    jr z, jr_000_15e4

    jr nc, jr_000_15ff

jr_000_15e4:
    ld a, $f0
    add d
    ld d, a
    ldh a, [$b4]
    cp d
    jr z, jr_000_15f1

    jr nc, jr_000_15f8

    jr jr_000_15ff

jr_000_15f1:
    ldh a, [$b3]
    cp e
    jr z, jr_000_15ff

    jr c, jr_000_15ff

jr_000_15f8:
    ld a, $10
    add d
    ld d, a
    xor a
    jr jr_000_1605

jr_000_15ff:
    di
    call Call_000_1aa6
    ld a, [de]
    ei

jr_000_1605:
    call Call_000_1ab9
    inc de
    dec bc
    ld a, b
    or c
    jr z, jr_000_1619

    ldh a, [$af]
    dec a
    ldh [$af], a
    jr nz, jr_000_15d4

    pop de
    jp Jump_000_1590


jr_000_1619:
    pop de

Jump_000_161a:
    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ret


Call_000_1627:
    ld a, d
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    push hl
    ld l, e
    ld h, $00
    add hl, hl
    ld de, $4001
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ldh [$ab], a
    inc de
    ld a, l
    ldh [$ac], a
    ld a, h
    ldh [$ad], a
    push hl
    add hl, bc
    ld a, l
    ldh [$b1], a
    ld a, h
    ldh [$b2], a
    pop hl
    ld a, l
    ldh [$b3], a
    ld a, h
    ldh [$b4], a
    ret


Call_000_1660:
    ld hl, $c853
    ld a, [$c89b]
    ld [hl+], a
    ld a, [$c89c]
    ld [hl+], a
    ld a, [$c89d]
    ld [hl], a
    jr jr_000_1671

jr_000_1671:
    xor a
    ld hl, $c856
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$c850], a
    ld a, $07
    ld [$c851], a
    ld a, $1f
    ld [$c852], a
    ret


    ld b, a
    ld a, [$c81d]
    or a
    jp nz, Jump_000_1734

    ld a, [$c81c]
    or a
    jp z, Jump_000_173f

    bit 7, b
    jr nz, jr_000_16c5

    ld a, b
    ld [$c850], a
    ld hl, $c7f7
    ld de, $c7d7
    ld c, $20

jr_000_16a7:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_000_16a7

    ld a, $00
    ld [$c856], a
    ld a, [$c850]
    srl a
    srl a
    ld [$c857], a
    ld [$c858], a
    call Call_000_1bd5
    jp Jump_000_17db


jr_000_16c5:
    ld a, b
    ld [$c850], a
    ld a, $20
    ld [$c856], a
    ld a, [$c850]
    cpl
    srl a
    srl a
    ld [$c857], a
    ld [$c858], a
    ld hl, $c7f7
    ld de, $c7d7
    ld c, $20

jr_000_16e4:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_000_16e4

    ld de, $7fff
    ld a, [$c851]
    bit 7, a
    jr z, jr_000_16f7

    ld de, $0000

jr_000_16f7:
    ld hl, $c7d7
    ld c, $10

jr_000_16fc:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    dec c
    jr nz, jr_000_16fc

    call Call_000_11bc
    ld hl, $c7d7
    ld de, $c777
    ld a, $01
    ld [de], a
    inc de
    call Call_000_18c0
    call Call_000_1013
    ld a, [$c852]
    bit 4, a
    jp z, Jump_000_17db

    call Call_000_11bc
    ld hl, $c7e7
    ld de, $c777
    ld a, $09
    ld [de], a
    inc de
    call Call_000_18c0
    call Call_000_1013
    jp Jump_000_17db


Jump_000_1734:
    ld a, b
    ld [$c850], a
    ld hl, $1704
    rst $10
    jp Jump_000_17db


Jump_000_173f:
    ld a, [$c851]
    bit 7, a
    jr nz, jr_000_1792

    bit 7, b
    jr nz, jr_000_1772

    ld a, b
    ld [$c850], a
    ld hl, $c853
    ld a, [$c89b]
    ld [hl+], a
    ld a, [$c89c]
    ld [hl+], a
    ld a, [$c89d]
    ld [hl], a
    ld a, $00
    ld [$c856], a
    ld a, [$c850]
    add $02
    ld [$c857], a
    ld [$c858], a
    call Call_000_1bd5
    jr jr_000_17db

jr_000_1772:
    ld a, b
    ld [$c850], a
    ld a, $04
    ld [$c856], a
    ld a, [$c850]
    cpl
    add $02
    ld [$c857], a
    ld [$c858], a
    ld a, $00
    ld hl, $c89b
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jp Jump_000_17db


jr_000_1792:
    bit 7, b
    jr nz, jr_000_17be

    ld a, b
    ld [$c850], a
    ld hl, $c853
    ld a, [$c89b]
    ld [hl+], a
    ld a, [$c89c]
    ld [hl+], a
    ld a, [$c89d]
    ld [hl], a
    ld a, $00
    ld [$c856], a
    ld a, [$c850]
    add $02
    ld [$c857], a
    ld [$c858], a
    call Call_000_1bd5
    jr jr_000_17db

jr_000_17be:
    ld a, b
    ld [$c850], a
    ld a, $04
    ld [$c856], a
    ld a, [$c850]
    cpl
    add $02
    ld [$c857], a
    ld [$c858], a
    ld a, $ff
    ld hl, $c89b
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

Jump_000_17db:
jr_000_17db:
    ret


    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $8800
    add hl, bc
    ld c, $08

jr_000_17e5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_17e5

    ret


Call_000_17ec:
    ld a, [$c850]
    or a
    ret z

    bit 7, a
    call z, Call_000_1c18
    ld a, [$c81d]
    or a
    jp nz, Jump_000_1964

    ld a, [$c81c]
    or a
    jp z, Jump_000_1969

    ld a, [$c850]
    bit 7, a
    jr nz, jr_000_1836

    ld a, [$c858]
    or a
    jr z, jr_000_1816

    dec a
    ld [$c858], a
    ret


jr_000_1816:
    ld a, [$c856]
    add $05
    cp $1f
    jr c, jr_000_1821

    ld a, $1f

jr_000_1821:
    ld [$c856], a
    call Call_000_185f
    ld a, [$c857]
    ld [$c858], a
    ld a, [$c856]
    cp $1f
    jp z, Jump_000_1aa1

    ret


jr_000_1836:
    ld a, [$c858]
    or a
    jr z, jr_000_1841

    dec a
    ld [$c858], a
    ret


jr_000_1841:
    ld a, [$c856]
    sub $05
    bit 7, a
    jr z, jr_000_184b

    xor a

jr_000_184b:
    ld [$c856], a
    call Call_000_185f
    ld a, [$c857]
    ld [$c858], a
    ld a, [$c856]
    or a
    jp z, Jump_000_1aa1

    ret


Call_000_185f:
    ld a, [$c852]
    bit 0, a
    ld a, $00
    ld [$c85a], a
    call nz, Call_000_18dc
    ld a, [$c852]
    bit 1, a
    ld a, $08
    ld [$c85a], a
    call nz, Call_000_18dc
    ld a, [$c852]
    bit 4, a
    jr z, jr_000_189a

    ld a, [$c852]
    bit 2, a
    ld a, $10
    ld [$c85a], a
    call nz, Call_000_18dc
    ld a, [$c852]
    bit 3, a
    ld a, $18
    ld [$c85a], a
    call nz, Call_000_18dc

jr_000_189a:
    call Call_000_11bc
    ld hl, $c7d7
    ld de, $c777
    ld a, $01
    ld [de], a
    inc de
    call Call_000_18c0
    ld a, [$c852]
    bit 4, a
    ret z

    call Call_000_1013
    call Call_000_11bc
    ld hl, $c7e7
    ld de, $c777
    ld a, $09
    ld [de], a
    inc de

Call_000_18c0:
    ld c, $08

jr_000_18c2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_18c2

    inc hl
    inc hl
    ld c, $06

jr_000_18cc:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_18cc

    ld a, $ff
    ld [$c774], a
    ld hl, $0800
    rst $10
    ret


Call_000_18dc:
    call Call_000_18ed
    call Call_000_18e5
    call Call_000_18e5

Call_000_18e5:
    ld a, [$c85a]
    add $02
    ld [$c85a], a

Call_000_18ed:
    ld hl, $c7f7
    ld a, [$c85a]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    ld hl, $0000
    ld a, [$c856]
    ld b, a
    ld a, e
    call Call_000_1948
    ld l, a
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ld a, d
    call Call_000_1948
    ld d, a
    ld e, $00
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    add hl, de
    pop de
    ld a, d
    srl a
    srl a
    call Call_000_1948
    sla a
    sla a
    add h
    ld h, a
    push hl
    pop de
    ld hl, $c7d7
    ld b, $00
    ld a, [$c85a]
    ld c, a
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_000_1948:
    push af
    ld a, [$c851]
    ld c, a
    pop af
    bit 7, c
    jr nz, jr_000_195d

    and $1f
    add b
    cp $1f
    jr c, jr_000_1963

    ld a, $1f
    jr jr_000_1963

jr_000_195d:
    and $1f
    sub b
    jr nc, jr_000_1963

    xor a

jr_000_1963:
    ret


Jump_000_1964:
    ld hl, $1705
    rst $10
    ret


Jump_000_1969:
    ld a, [$c851]
    bit 7, a
    jp nz, Jump_000_1a08

    ld a, [$c850]
    bit 7, a
    jr nz, jr_000_1999

    ld a, [$c858]
    or a
    jr z, jr_000_1983

    dec a
    ld [$c858], a
    ret


jr_000_1983:
    call Call_000_19ba
    ld a, [$c857]
    ld [$c858], a
    ld a, [$c856]
    inc a
    ld [$c856], a
    cp $04
    jp z, Jump_000_1aa1

    ret


jr_000_1999:
    ld a, [$c858]
    or a
    jr z, jr_000_19a4

    dec a
    ld [$c858], a
    ret


jr_000_19a4:
    call Call_000_19ba
    ld a, [$c857]
    ld [$c858], a
    ld a, [$c856]
    dec a
    ld [$c856], a
    cp $ff
    jp z, Jump_000_1aa1

    ret


Call_000_19ba:
    ld a, [$c851]
    bit 0, a
    ld a, [$c853]
    ld hl, $c89b
    call nz, Call_000_19e0
    ld a, [$c851]
    bit 1, a
    ld a, [$c854]
    inc hl
    call nz, Call_000_19e0
    ld a, [$c851]
    bit 2, a
    ld a, [$c855]
    inc hl
    jr nz, jr_000_19e0

    ret


Call_000_19e0:
jr_000_19e0:
    ld d, a
    ld a, [$c856]
    ld b, a
    ld c, $00
    ld a, d
    call Call_000_19fb
    call Call_000_19f6
    call Call_000_19f6
    call Call_000_19f6
    ld [hl], c
    ret


Call_000_19f6:
    rrc d
    rrc d
    ld a, d

Call_000_19fb:
    and $03
    sub b
    jr nc, jr_000_1a01

    xor a

jr_000_1a01:
    or c
    ld c, a
    rrc c
    rrc c
    ret


Jump_000_1a08:
    ld a, [$c850]
    bit 7, a
    jr nz, jr_000_1a30

    ld a, [$c858]
    or a
    jr z, jr_000_1a1a

    dec a
    ld [$c858], a
    ret


jr_000_1a1a:
    call Call_000_1a50
    ld a, [$c857]
    ld [$c858], a
    ld a, [$c856]
    inc a
    ld [$c856], a
    cp $04
    jp z, Jump_000_1aa1

    ret


jr_000_1a30:
    ld a, [$c858]
    or a
    jr z, jr_000_1a3b

    dec a
    ld [$c858], a
    ret


jr_000_1a3b:
    call Call_000_1a50
    ld a, [$c857]
    ld [$c858], a
    ld a, [$c856]
    dec a
    ld [$c856], a
    cp $ff
    jr z, jr_000_1aa1

    ret


Call_000_1a50:
    ld a, [$c851]
    bit 0, a
    ld a, [$c853]
    ld hl, $c89b
    call nz, Call_000_1a76
    ld a, [$c851]
    bit 1, a
    ld a, [$c854]
    inc hl
    call nz, Call_000_1a76
    ld a, [$c851]
    bit 2, a
    ld a, [$c855]
    inc hl
    jr nz, jr_000_1a76

    ret


Call_000_1a76:
jr_000_1a76:
    ld d, a
    ld a, [$c856]
    ld b, a
    ld c, $00
    ld a, d
    call Call_000_1a91
    call Call_000_1a8c
    call Call_000_1a8c
    call Call_000_1a8c
    ld [hl], c
    ret


Call_000_1a8c:
    rrc d
    rrc d
    ld a, d

Call_000_1a91:
    and $03
    add b
    cp $03
    jr c, jr_000_1a9a

    ld a, $03

jr_000_1a9a:
    or c
    ld c, a
    rrc c
    rrc c
    ret


Jump_000_1aa1:
jr_000_1aa1:
    xor a
    ld [$c850], a
    ret


Call_000_1aa6:
jr_000_1aa6:
    ldh a, [rSTAT]
    bit 1, a
    ret z

    jr jr_000_1aa6

Call_000_1aad:
    push af
    di

jr_000_1aaf:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_1aaf

    pop af
    ld [hl], a
    ei
    ret


Call_000_1ab9:
    push af
    di

jr_000_1abb:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_1abb

    pop af
    ld [hl+], a
    ei
    ret


Call_000_1ac5:
    push af
    ld a, [$c81d]
    or a
    jr nz, jr_000_1ace

    pop af
    ret


jr_000_1ace:
    di

jr_000_1acf:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_1acf

    ld a, $01
    ldh [rVBK], a
    pop af
    ld [hl], a
    ld a, $00
    ldh [rVBK], a
    ei
    ret


    ld [$c8b7], a
    ret


Call_000_1ae5:
    ld [$c8b5], a
    di
    call Call_000_3331
    ld a, [$c8b5]
    or a
    jr z, jr_000_1b2a

    ld [$de24], a
    cp $27
    jr z, jr_000_1b22

    cp $3a
    jr z, jr_000_1b27

    cp $3f
    jr z, jr_000_1b27

    cp $47
    jr z, jr_000_1b27

    cp $49
    jr z, jr_000_1b27

    cp $4b
    jr z, jr_000_1b27

    cp $4d
    jr z, jr_000_1b27

    cp $4f
    jr z, jr_000_1b27

    cp $5d
    jr z, jr_000_1b27

    cp $9d
    jr z, jr_000_1b27

    call Call_000_33cc
    ei
    ret


jr_000_1b22:
    call Call_000_33c9
    ei
    ret


jr_000_1b27:
    call Call_000_33cf

jr_000_1b2a:
    ei
    ret


Call_000_1b2c:
    ld [$c8b8], a
    ret


Call_000_1b30:
    push af
    push bc
    push de
    push hl
    ld [$de24], a
    cp $3f
    jr z, jr_000_1b9d

    cp $41
    jr z, jr_000_1ba7

    cp $44
    jr z, jr_000_1ba7

    cp $47
    jr z, jr_000_1b9d

    cp $49
    jr z, jr_000_1b9d

    cp $4b
    jr z, jr_000_1b9d

    cp $4d
    jr z, jr_000_1b9d

    cp $4f
    jr z, jr_000_1b9d

    cp $57
    jr z, jr_000_1b9d

    cp $5d
    jr z, jr_000_1b9d

    cp $63
    jr z, jr_000_1b9d

    cp $61
    jr z, jr_000_1ba7

    cp $69
    jr z, jr_000_1b9d

    cp $74
    jr z, jr_000_1b9d

    cp $76
    jr z, jr_000_1b9d

    cp $78
    jr z, jr_000_1b9d

    cp $7c
    jr z, jr_000_1b9d

    cp $86
    jr z, jr_000_1b9d

    cp $8a
    jr z, jr_000_1b9d

    cp $90
    jr z, jr_000_1b9d

    cp $97
    jr z, jr_000_1b9d

    cp $99
    jr z, jr_000_1b9d

    cp $9d
    jr z, jr_000_1b9d

    di
    call Call_000_33d2
    ei
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_000_1b9d:
    di
    call Call_000_33cf
    ei
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_000_1ba7:
    di
    call Call_000_33cc
    ei
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_1bb1:
    ld a, [$c8b7]
    cp $ff
    jr z, jr_000_1bc4

    cp $9d
    jr z, jr_000_1bc4

    call Call_000_1ae5
    ld a, $ff
    ld [$c8b7], a

jr_000_1bc4:
    ld a, [$c8b8]
    cp $ff
    jr z, jr_000_1bd3

    call Call_000_1b30
    ld a, $ff
    ld [$c8b8], a

jr_000_1bd3:
    ret


    ret


Call_000_1bd5:
    ld b, a
    ld a, [$c88f]
    or a
    jr nz, jr_000_1c13

    ld a, b
    bit 7, a
    jr nz, jr_000_1c13

    or a
    jr z, jr_000_1c13

    ld [$c894], a
    ld a, [$c81c]
    or a
    jr nz, jr_000_1bf5

    ld a, [$c894]
    sra a
    ld [$c894], a

jr_000_1bf5:
    ldh a, [rNR50]
    bit 7, a
    jr nz, jr_000_1c13

    bit 3, a
    jr nz, jr_000_1c13

    or a
    jr z, jr_000_1c13

    ld a, [$c894]
    ld [$c895], a
    ld a, $08
    ld [$c896], a
    ldh a, [rNR50]
    ld [$c897], a
    ret


jr_000_1c13:
    xor a
    ld [$c894], a
    ret


Call_000_1c18:
    ld a, [$c88f]
    or a
    jr nz, jr_000_1c84

    ld a, [$c894]
    bit 7, a
    jr nz, jr_000_1c84

    or a
    ret z

    ld a, [$c895]
    or a
    jr z, jr_000_1c32

    dec a
    ld [$c895], a
    ret


jr_000_1c32:
    ldh a, [rNR50]
    and $88
    cp $88
    jr z, jr_000_1c84

    ld a, [$c897]
    or a
    jr z, jr_000_1c84

    ld b, a
    and $0f
    ld d, a
    ld a, b
    swap a
    and $0f
    ld c, a
    bit 3, c
    jr nz, jr_000_1c53

    ld a, c
    or a
    jr z, jr_000_1c53

    dec c

jr_000_1c53:
    bit 3, d
    jr nz, jr_000_1c5c

    ld a, d
    or a
    jr z, jr_000_1c5c

    dec d

jr_000_1c5c:
    ld a, c
    swap a
    or d
    ldh [rNR50], a
    ld [$c897], a
    or a
    jr z, jr_000_1c79

    ld a, [$c896]
    or a
    jr z, jr_000_1c84

    dec a
    ld [$c896], a
    ld a, [$c894]
    ld [$c895], a
    ret


jr_000_1c79:
    ld a, [$c86c]
    or a
    jr nz, jr_000_1c84

    di
    call Call_000_3331
    ei

jr_000_1c84:
    xor a
    ld [$c894], a
    ret


    ld hl, $c81b
    cp [hl]
    ret z

    ld [hl], a
    cp $00
    jr nz, jr_000_1cb9

    ld a, $10
    ld de, $0805
    ld bc, $1000
    call Call_000_113e
    call Call_000_1013
    ld a, $11
    ld de, $0806
    ld bc, $1000
    call Call_000_113e
    call Call_000_1013
    ld a, $0f
    ld de, $0807
    call Call_000_10e5
    jr jr_000_1d37

jr_000_1cb9:
    cp $01
    jr nz, jr_000_1ce3

    ld a, $10
    ld de, $0808
    ld bc, $1000
    call Call_000_113e
    call Call_000_1013
    ld a, $11
    ld de, $2c00
    ld bc, $1000
    call Call_000_113e
    call Call_000_1013
    ld a, $0f
    ld de, $0809
    call Call_000_10e5
    jr jr_000_1d37

jr_000_1ce3:
    cp $02
    jr nz, jr_000_1d0d

    ld a, $10
    ld de, $2c01
    ld bc, $1000
    call Call_000_113e
    call Call_000_1013
    ld a, $11
    ld de, $3211
    ld bc, $1000
    call Call_000_113e
    call Call_000_1013
    ld a, $0f
    ld de, $3212
    call Call_000_10e5
    jr jr_000_1d37

jr_000_1d0d:
    cp $03
    jr nz, jr_000_1d37

    ld a, $10
    ld de, $2e24
    ld bc, $1000
    call Call_000_113e
    call Call_000_1013
    ld a, $11
    ld de, $2e25
    ld bc, $1000
    call Call_000_113e
    call Call_000_1013
    ld a, $0f
    ld de, $3213
    call Call_000_10e5
    jr jr_000_1d37

jr_000_1d37:
    ret


    ld a, b
    ld [$de26], a
    ld a, c
    ld [$de27], a
    xor a
    ld [$de28], a
    ret


Call_000_1d45:
    ld a, [$c86c]
    or a
    jr z, jr_000_1d94

    ld a, $08
    call Call_000_1227
    ld a, [$c864]
    set 7, a
    res 6, a
    ld [$c864], a
    ld a, [$c863]
    bit 1, a
    jr nz, jr_000_1d69

    ld hl, $6000

jr_000_1d64:
    dec hl
    ld a, h
    or l
    jr nz, jr_000_1d64

jr_000_1d69:
    ei
    call Call_000_1da2
    call Call_000_1220
    ldh a, [rSB]
    cp $f5
    call nz, Call_000_1da2
    di
    ld a, [$c864]
    res 7, a
    ld [$c864], a
    ld a, [$c864]
    res 0, a
    res 1, a
    ld [$c864], a
    ld a, [$c863]
    bit 1, a
    ld a, $f8
    call nz, Call_000_1275

jr_000_1d94:
    xor a
    ld [$c866], a
    ld hl, $c842
    ld b, $0e

jr_000_1d9d:
    ld [hl+], a
    dec b
    jr nz, jr_000_1d9d

    ret


Call_000_1da2:
    ld a, [$c863]
    bit 1, a
    ld a, $f5
    call nz, Call_000_1275
    ld a, [$c863]
    bit 1, a
    ld a, $f5
    call z, Call_000_126b

jr_000_1db6:
    ld a, [$c864]
    bit 6, a
    jr z, jr_000_1db6

    ret


Call_000_1dbe:
    ld b, $00
    ld h, b
    ld l, b
    call Call_000_1dc5

Call_000_1dc5:
    rrca
    jr nc, jr_000_1dc9

    add hl, bc

jr_000_1dc9:
    sla c
    rl b
    rrca
    jr nc, jr_000_1dd1

    add hl, bc

jr_000_1dd1:
    sla c
    rl b
    rrca
    jr nc, jr_000_1dd9

    add hl, bc

jr_000_1dd9:
    sla c
    rl b
    rrca
    jr nc, jr_000_1de1

    add hl, bc

jr_000_1de1:
    sla c
    rl b
    ret


    push af
    push bc
    ld c, b
    call Call_000_1dbe
    pop bc
    pop af
    push hl
    call Call_000_1dbe
    pop bc
    ld a, c
    add h
    ld h, a
    ld a, b
    adc $00
    ld e, a
    ret


    ld d, $08
    ld e, a
    xor a

jr_000_1dff:
    sla b
    rla
    jr c, jr_000_1e07

    cp e
    jr c, jr_000_1e09

jr_000_1e07:
    sub e
    inc b

jr_000_1e09:
    dec d
    jr nz, jr_000_1dff

    ret


Call_000_1e0d:
    ld d, $10
    ld e, a
    xor a

jr_000_1e11:
    add hl, hl
    rla
    jr c, jr_000_1e18

    cp e
    jr c, jr_000_1e1a

jr_000_1e18:
    sub e
    inc l

jr_000_1e1a:
    dec d
    jr nz, jr_000_1e11

    ret


    ld d, $18
    ld b, a
    xor a

jr_000_1e22:
    add hl, hl
    rl e
    rla
    jr c, jr_000_1e2b

    cp b
    jr c, jr_000_1e2d

jr_000_1e2b:
    sub b
    inc l

jr_000_1e2d:
    dec d
    jr nz, jr_000_1e22

    ret


    ld a, $ff
    ldh [$a9], a
    ldh a, [$a6]
    bit 7, a
    ret nz

    ldh a, [$a8]
    bit 7, a
    ret nz

    ld hl, $ff9d
    ldh a, [$a5]
    sub [hl]
    inc hl
    ldh a, [$a6]
    sbc [hl]
    ret nc

    ld hl, $ff9f
    ldh a, [$a7]
    sub [hl]
    inc hl
    ldh a, [$a8]
    sbc [hl]
    ret nc

    ld a, $0f
    ldh [$a9], a
    ld a, [$c8eb]
    bit 2, a
    ret nz

    ld hl, $ffb7
    ldh a, [$a5]
    sub [hl]
    ldh [$a5], a
    ld b, a
    inc hl
    ldh a, [$a6]
    sbc [hl]
    ldh [$a6], a
    or a
    ret nz

    ld a, b
    cp $a0
    ret nc

    ld hl, $ffbb
    ldh a, [$a7]
    sub [hl]
    ldh [$a7], a
    ld b, a
    inc hl
    ldh a, [$a8]
    sbc [hl]
    ldh [$a8], a
    or a
    ret nz

    ld a, b
    cp $80
    ret nc

    ldh a, [$a7]
    and $f8
    ld l, a
    ldh a, [$a8]
    sla l
    rla
    sla l
    rla
    ld h, a
    ld de, $c300
    add hl, de
    ldh a, [$a6]
    ld d, a
    ldh a, [$a5]
    srl d
    rra
    srl d
    rra
    srl d
    rra
    and $1f
    ld e, a
    ld d, $00
    add hl, de
    ld c, [hl]
    ld a, [hl]
    ldh [$aa], a
    ld de, $26e3
    ld a, [$c969]
    or a
    jr z, jr_000_1ebf

    ld de, $2a63

jr_000_1ebf:
    ld a, [$c968]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, c
    ld b, $ff
    cp [hl]
    jr c, jr_000_1ed1

    ld b, $0f

jr_000_1ed1:
    ld a, b
    ldh [$a9], a
    ret


    ld hl, $c777
    ld bc, $0020
    xor a
    call Call_000_12c7
    ld a, $20
    ld [$c777], a
    ld a, $00
    ld [$c778], a
    ld hl, $c779
    ld a, l
    ld [$c775], a
    ld a, h
    ld [$c776], a
    ret


    ld d, a
    add a
    add a
    or d
    add a
    add a
    or d
    push af
    ld a, [$c775]
    ld e, a
    ld a, [$c776]
    ld d, a
    ld a, $02
    ld [de], a
    inc de
    pop af
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    add b
    ld [de], a
    inc de
    ld a, l
    add c
    ld [de], a
    inc de
    ld a, e
    ld [$c775], a
    ld a, d
    ld [$c776], a
    ld hl, $c778
    inc [hl]
    ret


    ld e, a
    add a
    add a
    or e
    add a
    add a
    or e
    push af
    push de
    ld a, [$c775]
    ld e, a
    ld a, [$c776]
    ld d, a
    pop af
    ld [de], a
    inc de
    pop af
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    add b
    ld [de], a
    inc de
    ld a, l
    add c
    ld [de], a
    inc de
    ld a, e
    ld [$c775], a
    ld a, d
    ld [$c776], a
    ld hl, $c778
    inc [hl]
    ret


    ld a, [$c778]
    or a
    ret z

    ld a, [$c775]
    ld l, a
    ld a, [$c776]
    ld h, a
    ld a, l
    sub $77
    ld l, a
    ld a, h
    sbc $c7
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    and $07
    add $21
    ld [$c777], a
    ld a, $ff
    ld [$c774], a
    ld hl, $0800
    rst $10
    ret


    ld a, $0f
    ldh [$db], a
    ld e, $40
    ld d, $42
    call Call_000_2012
    or a
    jp nz, Jump_000_1fd6

    call Call_000_20d9
    call Call_000_20df
    ld a, $01
    ldh [$db], a
    ld e, $a0
    ld d, $86
    call Call_000_2012
    or a
    jr nz, jr_000_1fe7

    call Call_000_20d9
    call Call_000_20df
    ld a, $00
    ldh [$db], a
    ld e, $10
    ld d, $27
    call Call_000_2012
    or a
    jr nz, jr_000_1ff8

    call Call_000_20d9
    call Call_000_20df
    ldh a, [$d5]
    ld c, a
    ldh a, [$d6]
    ld b, a
    jp Jump_000_2060


Jump_000_1fd6:
    ld a, $0f
    ldh [$db], a
    ld e, $40
    ld d, $42
    call Call_000_2036
    call Call_000_20d3
    call Call_000_20df

jr_000_1fe7:
    ld a, $01
    ldh [$db], a
    ld e, $a0
    ld d, $86
    call Call_000_2036
    call Call_000_20d3
    call Call_000_20df

jr_000_1ff8:
    ld a, $00
    ldh [$db], a
    ld e, $10
    ld d, $27
    call Call_000_2036
    call Call_000_20d3
    call Call_000_20df
    ldh a, [$d5]
    ld c, a
    ldh a, [$d6]
    ld b, a
    jp Jump_000_2095


Call_000_2012:
    ldh a, [$d5]
    ld [$c0a0], a
    ldh a, [$d6]
    ld [$c0a1], a
    ldh a, [$d7]
    ld [$c0a2], a
    call Call_000_2036
    push af
    ld a, [$c0a0]
    ldh [$d5], a
    ld a, [$c0a1]
    ldh [$d6], a
    ld a, [$c0a2]
    ldh [$d7], a
    pop af
    ret


Call_000_2036:
    push hl
    ldh a, [$db]
    ld l, a
    ld h, $ff

jr_000_203c:
    inc h
    ldh a, [$d5]
    sub e
    ldh [$d5], a
    ldh a, [$d6]
    sbc d
    ldh [$d6], a
    ldh a, [$d7]
    sbc l
    ldh [$d7], a
    jr nc, jr_000_203c

    ldh a, [$d5]
    add e
    ldh [$d5], a
    ldh a, [$d6]
    adc d
    ldh [$d6], a
    ldh a, [$d7]
    adc l
    ldh [$d7], a
    ld a, h
    pop hl
    ret


Jump_000_2060:
    ld de, $03e8
    push bc
    call Call_000_20be
    pop bc
    or a
    jr nz, jr_000_2095

    call Call_000_20d9
    call Call_000_20df

Call_000_2071:
    ld de, $0064
    push bc
    call Call_000_20be
    pop bc
    or a
    jr nz, jr_000_20a1

    call Call_000_20d9
    call Call_000_20df

Call_000_2082:
    ld de, $000a
    push bc
    call Call_000_20be
    pop bc
    or a
    jr nz, jr_000_20ad

    call Call_000_20d9
    call Call_000_20df
    jr jr_000_20b9

Jump_000_2095:
jr_000_2095:
    ld de, $03e8
    call Call_000_20be
    call Call_000_20d3
    call Call_000_20df

jr_000_20a1:
    ld de, $0064
    call Call_000_20be
    call Call_000_20d3
    call Call_000_20df

jr_000_20ad:
    ld de, $000a
    call Call_000_20be
    call Call_000_20d3
    call Call_000_20df

jr_000_20b9:
    ld a, c
    call Call_000_20d3
    ret


Call_000_20be:
    push hl
    ld h, $ff

jr_000_20c1:
    inc h
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    jr nc, jr_000_20c1

    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    ld a, h
    pop hl
    ret


Call_000_20d3:
    add $f0
    call Call_000_1aad
    ret


Call_000_20d9:
    ld a, $e0
    call Call_000_1aad
    ret


Call_000_20df:
    push af
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    pop af
    ret


    di
    ld a, $0a
    ld [$0100], a
    ld a, [hl]
    push af
    ld a, $00
    ld [$0100], a
    pop af
    ei
    ret


    di
    push af
    ld a, $0a
    ld [$0100], a
    pop af
    ld [hl], a
    ld a, $00
    ld [$0100], a
    ei
    ret


Call_000_210e:
    ld a, $0a
    ld [$0100], a
    ld de, $4638

jr_000_2116:
    ld a, [hl+]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2116

    ld a, $00
    ld [$0100], a
    ret


    ld hl, $ff8a
    ld de, $a003
    ld bc, $0021
    call Call_000_2184
    ld hl, $c8ea
    ld de, $a024
    ld bc, $1100
    call Call_000_2184
    ld hl, $c300
    ld de, $bcc8
    ld bc, $0200
    call Call_000_2184
    ld hl, $c200
    ld de, $bec8
    ld bc, $0100
    call Call_000_2184

Jump_000_2158:
    ld hl, $a002
    ld a, $01
    push af
    ld a, $0a
    ld [$0100], a
    pop af
    ld [hl], a
    ld a, $00
    ld [$0100], a
    ld hl, $a002
    ld bc, $1ffe
    call Call_000_210e
    ld a, $0a
    ld [$0100], a
    ld hl, $a000
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $00
    ld [$0100], a
    ret


Call_000_2184:
    ld a, $0a
    ld [$0100], a

jr_000_2189:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2189

    ld a, $00
    ld [$0100], a
    ret


    ld hl, $cac1
    ld de, $a1fb
    ld bc, $0ba4
    call Call_000_2184
    ld hl, $ca8d
    ld de, $a1c7
    ld bc, $0007
    call Call_000_2184
    jp Jump_000_2158


    ld hl, $a002
    ld a, $0a
    ld [$0100], a
    ld a, [hl]
    push af
    ld a, $00
    ld [$0100], a
    pop af
    or a
    ret z

    ld hl, $ff8a
    ld de, $a003
    ld bc, $0021
    call Call_000_21f5
    ld hl, $c8ea
    ld de, $a024
    ld bc, $1100
    call Call_000_21f5
    ld hl, $c300
    ld de, $bcc8
    ld bc, $0200
    call Call_000_21f5
    ld hl, $c200
    ld de, $bec8
    ld bc, $0100
    call Call_000_21f5
    ret


Call_000_21f5:
    ld a, $0a
    ld [$0100], a

jr_000_21fa:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_21fa

    ld a, $00
    ld [$0100], a
    ret


Call_000_2208:
    push bc
    ld b, a
    ld a, [$c86c]
    or a
    jr z, jr_000_221a

    ld a, [$c88a]
    cp $02
    jr nz, jr_000_221a

    ld a, b
    pop bc
    ret


jr_000_221a:
    ld a, b
    pop bc
    ld hl, $ca8e
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


Call_000_2229:
    push af
    push bc
    push de
    push hl
    call Call_000_2208
    ld c, $95
    call Call_000_1dbe
    pop bc
    add hl, bc
    pop de
    pop bc
    pop af
    ret


Call_000_223b:
    push bc
    push de
    push hl
    ld c, $95
    and $7f
    call Call_000_1dbe
    pop bc
    add hl, bc
    pop de
    pop bc
    ret


Call_000_224a:
    call Call_000_2229
    ld a, [hl]
    ret


Call_000_224f:
    call Call_000_2229
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ret


    push bc
    call Call_000_2229
    pop bc
    ld [hl], c
    ret


    push bc
    call Call_000_2229
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_000_2266:
    push af
    push bc
    push de
    push hl
    ld hl, $ca8e
    ld a, [$cac0]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld c, $95
    call Call_000_1dbe
    pop bc
    add hl, bc
    pop de
    pop bc
    pop af
    ret


    call Call_000_2266
    ld a, [hl]
    ret


    call Call_000_2266
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ret


    push bc
    call Call_000_2266
    pop bc
    ld [hl], c
    ret


    push bc
    call Call_000_2266
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    push hl
    call Call_000_2208
    pop hl
    push hl
    push af
    ld hl, $cb13
    call Call_000_223b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push hl
    ld hl, $cb11
    call Call_000_223b
    pop bc
    pop de
    call Call_000_2482
    ret


    push hl
    call Call_000_2208
    pop hl
    push hl
    ld hl, $cb11
    call Call_000_223b
    pop de
    ld bc, $0000
    call Call_000_2496
    ret


    push hl
    call Call_000_2208
    pop hl
    push hl
    push af
    ld hl, $cb17
    call Call_000_223b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push hl
    ld hl, $cb15
    call Call_000_223b
    pop bc
    pop de
    call Call_000_2482
    ret


    push hl
    call Call_000_2208
    pop hl
    push hl
    ld hl, $cb15
    call Call_000_223b
    pop de
    ld bc, $0000
    call Call_000_2496
    ret


    call Call_000_2442
    ld de, $cb19
    ld bc, $03e7
    call Call_000_2448
    ret


    call Call_000_2462
    ld de, $cb19
    ld bc, $0001
    call Call_000_2468
    ret


    call Call_000_2442
    ld de, $cb1b
    ld bc, $03e7
    call Call_000_2448
    ret


    call Call_000_2462
    ld de, $cb1b
    ld bc, $0001
    call Call_000_2468
    ret


    call Call_000_2442
    ld de, $cb1d
    ld bc, $01ff
    call Call_000_2448
    ret


    call Call_000_2462
    ld de, $cb1d
    ld bc, $0001
    call Call_000_2468
    ret


    call Call_000_2442
    ld de, $cb1f
    ld bc, $00ff
    call Call_000_2448
    ret


    call Call_000_2462
    ld de, $cb1f
    ld bc, $0001
    call Call_000_2468
    ret


    call Call_000_2442
    ld de, $cb21
    ld bc, $00ff
    call Call_000_2448
    ret


    call Call_000_2462
    ld de, $cb21
    ld bc, $0000
    call Call_000_2468
    ret


    call Call_000_2442
    ld de, $cb25
    ld c, $ff
    call Call_000_2455
    ret


    call Call_000_2462
    ld de, $cb25
    ld c, $00
    call Call_000_2475
    ret


    call Call_000_2442
    ld de, $cb28
    ld c, $ff
    call Call_000_2455
    ret


    call Call_000_2462
    ld de, $cb28
    ld c, $00
    call Call_000_2475
    ret


    call Call_000_2442
    ld de, $cb27
    ld c, $ff
    call Call_000_2455
    ret


    call Call_000_2462
    ld de, $cb27
    ld c, $00
    call Call_000_2475
    ret


    call Call_000_2442
    ld de, $cb26
    ld c, $ff
    call Call_000_2455
    ret


    call Call_000_2462
    ld de, $cb26
    ld c, $00
    call Call_000_2475
    ret


    call Call_000_2442
    ld de, $cb13
    ld bc, $03e7
    call Call_000_2448
    ret


    call Call_000_2462
    ld de, $cb13
    ld bc, $0001
    call Call_000_2468
    ret


    call Call_000_2442
    ld de, $cb17
    ld bc, $03e7
    call Call_000_2448
    ret


    call Call_000_2462
    ld de, $cb17
    ld bc, $0001
    call Call_000_2468
    ret


    ld c, e
    ld d, h
    ld e, l
    ld hl, $ca4b
    call Call_000_24c3
    ret


    ld c, e
    ld d, h
    ld e, l
    ld hl, $ca4b
    call Call_000_2500
    ret


    ld c, e
    ld d, h
    ld e, l
    ld hl, $ca4e
    call Call_000_24e4
    ret


    ld c, e
    ld d, h
    ld e, l
    ld hl, $ca4e
    call Call_000_2500
    ret


Call_000_2442:
    push hl
    call Call_000_2208
    pop hl
    ret


Call_000_2448:
    push bc
    push hl
    ld l, e
    ld h, d
    call Call_000_223b
    pop de
    pop bc
    call Call_000_2482
    ret


Call_000_2455:
    push bc
    push hl
    ld l, e
    ld h, d
    call Call_000_223b
    pop de
    pop bc
    call Call_000_24af
    ret


Call_000_2462:
    push hl
    call Call_000_2208
    pop hl
    ret


Call_000_2468:
    push bc
    push hl
    ld l, e
    ld h, d
    call Call_000_223b
    pop de
    pop bc
    call Call_000_2496
    ret


Call_000_2475:
    push bc
    push hl
    ld l, e
    ld h, d
    call Call_000_223b
    pop de
    pop bc
    call Call_000_24b9
    ret


Call_000_2482:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    jr c, jr_000_248f

    ld a, l
    sub c
    ld a, h
    sbc b
    jr nc, jr_000_2491

jr_000_248f:
    ld c, l
    ld b, h

jr_000_2491:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_000_2496:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr c, jr_000_24aa

    ld a, l
    sub c
    ld a, h
    sbc b
    jr c, jr_000_24aa

    ld c, l
    ld b, h

jr_000_24aa:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_000_24af:
    ld a, [hl]
    add e
    jr c, jr_000_24b6

    cp c
    jr c, jr_000_24b7

jr_000_24b6:
    ld a, c

jr_000_24b7:
    ld [hl], a
    ret


Call_000_24b9:
    ld a, [hl]
    sub e
    jr c, jr_000_24c0

    cp c
    jr nc, jr_000_24c1

jr_000_24c0:
    ld a, c

jr_000_24c1:
    ld [hl], a
    ret


Call_000_24c3:
    push hl
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl+]
    adc d
    ld d, a
    ld a, [hl]
    adc c
    ld c, a
    ld a, e
    sub $9f
    ld a, d
    sbc $86
    ld a, c
    sbc $01
    jr c, jr_000_24dd

    ld de, $869f
    ld c, $01

jr_000_24dd:
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld [hl], c
    ret


Call_000_24e4:
    push hl
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl+]
    adc d
    ld d, a
    ld a, [hl]
    adc c
    ld c, a
    ld a, e
    sub $3f
    ld a, d
    sbc $42
    ld a, c
    sbc $0f
    jr c, jr_000_24dd

    ld de, $423f
    ld c, $0f
    jr jr_000_24dd

Call_000_2500:
    push hl
    ld a, [hl+]
    sub e
    ld e, a
    ld a, [hl+]
    sbc d
    ld d, a
    ld a, [hl]
    sbc c
    ld c, a
    jr nc, jr_000_2511

    ld de, $0000
    ld c, $00

jr_000_2511:
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld [hl], c
    ret


    ld a, [$ca8d]
    or a
    jr nz, jr_000_252a

    ld hl, $c1c0
    ld bc, $0040
    ld a, $dc
    call Call_000_12c7
    ret


jr_000_252a:
    ld hl, $c1c0
    ld bc, $0040
    ld a, $e0
    call Call_000_12c7
    ld a, [$ca8d]
    or a
    ret z

    ld hl, $c1c0
    ld a, $00
    call Call_000_255f
    ld a, [$ca8d]
    cp $01
    ret z

    ld hl, $c1c7
    ld a, $01
    call Call_000_255f
    ld a, [$ca8d]
    cp $02
    ret z

    ld hl, $c1ce
    ld a, $02
    call Call_000_255f
    ret


Call_000_255f:
    ldh [$d5], a
    ld a, [$ca3f]
    or a
    jr nz, jr_000_25a0

    push hl
    ldh a, [$d5]
    add $da
    ld [hl+], a
    ld a, $e1
    ld [hl+], a
    ld a, $e3
    ld [hl+], a
    push hl
    ld hl, $cb11
    ldh a, [$d5]
    call Call_000_224f
    pop hl
    call Call_000_2071
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, $e0
    ld [hl+], a
    ld a, $e2
    ld [hl+], a
    ld a, $e3
    ld [hl+], a
    push hl
    ld hl, $cb15
    ldh a, [$d5]
    call Call_000_224f
    pop hl
    call Call_000_2071
    ret


jr_000_25a0:
    push hl
    ldh a, [$d5]
    add $da
    ld [hl+], a
    ld a, $de
    ld [hl+], a
    ld a, $df
    ld [hl+], a
    ld a, $e4
    ld [hl+], a
    push hl
    ld hl, $cb0c
    ldh a, [$d5]
    call Call_000_224a
    pop hl
    ld c, a
    ld b, $00
    call Call_000_2082
    pop hl
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    push hl
    ld hl, $cb0b
    ldh a, [$d5]
    call Call_000_224a
    ld b, a
    pop hl
    bit 0, b
    ld a, $e0
    jr z, jr_000_25db

    ld a, $d7

jr_000_25db:
    ld [hl+], a
    inc hl
    bit 2, b
    ld a, $e0
    jr z, jr_000_25e5

    ld a, $d8

jr_000_25e5:
    ld [hl+], a
    inc hl
    bit 7, b
    ld a, $e0
    jr z, jr_000_25ef

    ld a, $d9

jr_000_25ef:
    ld [hl], a
    ret


    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $02
    ld h, a
    res 2, h
    ld de, $c1c0
    ld c, $02

jr_000_261d:
    ld b, $14
    push hl

jr_000_2620:
    ld a, [de]
    call Call_000_1aad
    ld a, $07
    call Call_000_1ac5
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    inc de
    dec b
    jr nz, jr_000_2620

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_000_261d

    ret


    ld a, [$c969]
    or a
    jr nz, jr_000_266c

    ld a, [$c968]
    cp $5d
    jr z, jr_000_266a

    cp $5e
    jr z, jr_000_266a

    ld a, [$c968]
    cp $30
    jr nc, jr_000_266c

jr_000_266a:
    xor a
    ret


jr_000_266c:
    ld a, $01
    or a
    ret


    call Call_000_2683
    or [hl]
    ld [hl], a
    ret


    call Call_000_2683
    xor $ff
    and [hl]
    ld [hl], a
    ret


    call Call_000_2683
    and [hl]
    ret


Call_000_2683:
    push af
    srl a
    srl a
    srl a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    push hl
    ld hl, $26d5
    and $07
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ret


    call Call_000_26b3
    or [hl]
    ld [hl], a
    ret


    call Call_000_26b3
    xor $ff
    and [hl]
    ld [hl], a
    ret


    call Call_000_26b3
    and [hl]
    ret


Call_000_26b3:
    push bc
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    ld hl, $d99b
    add hl, bc
    pop bc
    push hl
    ld hl, $26d5
    ld a, c
    and $07
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ret


    add b
    ld b, b
    jr nz, @+$12

    ld [$0204], sp
    ld bc, $2a00
    ld b, b
    ld bc, $0100
    ld d, a
    nop
    ld [$402a], sp

jr_000_26e8:
    ld bc, $0200
    ld d, b
    nop
    inc d
    ld a, [hl+]
    ldh [rSB], a
    nop
    ld bc, $0049
    ld hl, $402a

jr_000_26f8:
    ld bc, $0100
    jr nc, jr_000_26fd

jr_000_26fd:
    ld bc, $e029

jr_000_2700:
    ld bc, $0100
    ld a, [hl-]
    nop
    add hl, bc
    add hl, hl
    ldh [rSB], a
    add b
    nop
    ld d, b
    nop
    ld c, $29
    ldh [rSB], a
    add b
    nop
    ld e, d
    nop
    ld [de], a
    add hl, hl
    ldh [rSB], a
    nop
    ld bc, $0052
    inc e
    add hl, hl
    and b
    nop
    add b
    nop
    and d
    nop
    rra
    add hl, hl
    ld b, b
    ld bc, $0100
    jr jr_000_272d

jr_000_272d:
    inc hl
    add hl, hl
    ld b, b

jr_000_2730:
    ld bc, $0080
    jr jr_000_2735

jr_000_2735:
    nop
    ld a, [hl+]
    ld b, b
    ld bc, $0100
    ld d, a
    nop
    ld h, $29
    and b

jr_000_2740:
    nop
    add b
    nop
    jr nc, jr_000_2745

jr_000_2745:
    nop
    jr nc, jr_000_26e8

jr_000_2748:
    nop
    add b
    nop
    ld b, b
    nop
    nop
    ld a, [hl+]
    ld b, b

jr_000_2750:
    ld bc, $0100
    ld d, a
    nop
    ld [bc], a
    jr nc, jr_000_26f8

jr_000_2758:
    nop
    add b
    nop
    ld d, b
    nop
    inc b
    jr nc, jr_000_2700

jr_000_2760:
    nop
    add b
    nop
    jr c, jr_000_2765

jr_000_2765:
    nop
    ld a, [hl+]
    ld b, b

jr_000_2768:
    ld bc, $0100
    ld d, a
    nop
    rlca
    jr nc, @-$5e

jr_000_2770:
    nop
    nop
    ld bc, $0040
    ld a, [bc]
    jr nc, @-$5e

    nop
    add b
    nop
    ld b, b
    nop
    nop
    ld a, [hl+]
    ld b, b
    ld bc, $0100
    ld d, a
    nop
    nop
    ld a, [hl+]
    ld b, b
    ld bc, $0100
    ld d, a
    nop
    inc c
    jr nc, jr_000_2730

    nop
    add b
    nop
    ld b, b
    nop
    nop
    ld a, [hl+]
    ld b, b
    ld bc, $0100
    ld d, a
    nop
    rrca
    jr nc, jr_000_2740

    nop
    nop
    ld bc, $004e
    inc de
    jr nc, jr_000_2748

    nop
    add b
    nop
    ld b, b
    nop
    dec d
    jr nc, jr_000_2750

    nop
    add b
    nop
    ld b, b
    nop
    rla
    jr nc, jr_000_2758

    nop
    add b
    nop
    ld d, b
    nop
    add hl, de
    jr nc, jr_000_2760

    nop
    add b
    nop
    ld d, b
    nop
    dec de
    jr nc, jr_000_2768

    nop
    add b
    nop
    jr nc, jr_000_27cd

jr_000_27cd:
    dec e
    jr nc, jr_000_2770

    nop
    add b
    nop
    inc h
    nop
    nop
    dec l
    and b
    nop
    add b
    nop
    jr nc, jr_000_27dd

jr_000_27dd:
    nop
    ld a, [hl+]
    ld b, b
    ld bc, $0100
    ld d, a
    nop
    nop
    ld a, [hl+]
    ld b, b
    ld bc, $0100
    ld d, a
    nop
    nop
    ld a, [hl+]
    ld b, b
    ld bc, $0100
    ld d, a
    nop
    ld [bc], a
    dec l
    and b
    nop
    add b
    nop
    jr nz, jr_000_27fd

jr_000_27fd:
    inc b
    dec l
    and b
    nop
    add b
    nop
    jr jr_000_2805

jr_000_2805:
    ld b, $2d
    and b
    nop
    add b
    nop
    jr nz, jr_000_280d

jr_000_280d:
    ld [$a02d], sp
    nop
    add b
    nop
    jr nc, jr_000_2815

jr_000_2815:
    ld a, [bc]
    dec l
    and b
    nop
    add b
    nop
    stop
    inc c
    dec l
    and b
    nop
    add b
    nop
    jr nc, jr_000_2825

jr_000_2825:
    ld c, $2d
    and b
    nop
    add b
    nop
    jr nz, jr_000_282d

jr_000_282d:
    db $10
    dec l
    and b
    nop
    add b
    nop
    jr nz, jr_000_2835

jr_000_2835:
    ld [de], a
    dec l
    and b
    nop
    add b
    nop
    jr nz, jr_000_283d

jr_000_283d:
    inc d
    dec l
    and b
    nop
    add b
    nop
    jr nz, jr_000_2845

jr_000_2845:
    ld d, $2d
    and b
    nop
    add b
    nop
    jr nc, jr_000_284d

jr_000_284d:
    jr jr_000_287c

    and b
    nop
    add b
    nop
    jr z, jr_000_2855

jr_000_2855:
    ld a, [de]
    dec l
    ld b, b
    ld bc, $0100
    ld [hl], b
    nop
    inc c
    ld h, $a0
    nop
    add b
    nop
    ld b, b
    nop
    rrca
    ld h, $a0
    nop
    add b
    nop
    ld d, b
    nop
    dec d
    inc h
    and b
    nop
    add b
    nop
    jr nz, jr_000_2875

jr_000_2875:
    ld [de], a
    ld h, $a0
    nop
    add b
    nop
    ld b, b

jr_000_287c:
    nop
    dec d
    ld h, $a0
    nop
    add b
    nop
    ld d, b
    nop
    jr jr_000_28ad

    and b
    nop
    add b
    nop
    jr nz, jr_000_288d

jr_000_288d:
    dec de
    ld h, $a0
    nop
    add b
    nop
    ld d, b
    nop
    ld a, [de]
    dec h
    and b
    nop
    add b
    nop
    ld b, b
    nop
    nop
    dec h
    and b
    nop
    add b
    nop
    ld d, b
    nop
    inc bc
    inc hl
    and b
    nop
    add b
    nop
    jr nz, jr_000_28ad

jr_000_28ad:
    inc bc
    dec h
    and b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, $24
    and b
    nop
    add b
    nop
    ld d, b
    nop
    ld b, $23
    and b
    nop
    add b
    nop
    ld h, [hl]
    nop
    ld b, $25
    and b
    nop
    add b
    nop
    stop
    ld [$a025], sp
    nop
    add b
    nop
    ld d, b
    nop
    nop
    inc h
    and b
    nop
    add b
    nop
    ld d, b
    nop
    dec d
    dec h
    and b
    nop
    add b
    nop
    ld b, b
    nop
    rla
    dec h
    and b
    nop
    add b
    nop
    ld b, b
    nop
    ld [de], a
    inc h
    and b
    nop
    add b
    nop
    ld d, b
    nop
    rrca
    inc h
    and b
    nop
    add b
    nop
    ld b, b
    nop
    jr jr_000_2923

    and b
    nop
    add b
    nop
    jr nz, jr_000_2905

jr_000_2905:
    add hl, bc
    inc h
    and b
    nop
    add b
    nop
    ld d, b
    nop
    nop
    inc hl
    and b
    nop
    add b
    nop
    ld d, b
    nop
    dec de
    inc h
    and b
    nop
    add b
    nop
    ld h, l
    nop
    inc c
    inc h
    and b
    nop
    add b
    nop

jr_000_2923:
    ld b, b
    nop
    dec bc
    dec h
    and b
    nop
    add b
    nop
    ld d, b
    nop
    ld a, [bc]
    inc hl
    and b
    nop
    add b
    nop
    ld b, b
    nop
    dec c
    inc hl
    and b
    nop
    add b
    nop
    inc d
    nop
    db $10
    inc hl
    and b
    nop
    add b
    nop
    ld l, b
    nop
    ld c, $25
    and b
    nop
    add b
    nop
    ld b, b
    nop
    ld de, $a025
    nop
    nop
    ld bc, $0055
    inc bc
    inc h
    and b
    nop
    add b
    nop
    ld h, b
    nop
    nop
    ld h, $a0
    nop
    add b
    nop
    jr nz, jr_000_2965

jr_000_2965:
    ld [bc], a
    ld h, $a0
    nop
    add b
    nop
    jr nz, jr_000_296d

jr_000_296d:
    inc b
    ld h, $a0
    nop
    add b
    nop
    dec hl
    nop
    jr jr_000_299a

    and b
    nop
    add b
    nop
    jr nc, jr_000_297d

jr_000_297d:
    nop
    scf
    ldh [rSB], a
    add b
    ld bc, $0030
    ld a, [bc]
    scf
    ldh [rSB], a
    add b
    ld bc, $0030
    inc d
    scf
    ldh [rSB], a
    add b
    ld bc, $0030
    ld e, $37
    ldh [rSB], a
    add b

jr_000_299a:
    ld bc, $0030
    jr z, jr_000_29d6

    ldh [rSB], a
    add b
    ld bc, $0030
    ld [hl-], a
    scf
    ldh [rSB], a
    add b
    ld bc, $0030
    ld b, $26
    and b
    nop
    add b
    nop
    scf
    nop
    ld [$a026], sp
    nop
    add b
    nop
    scf
    nop
    ld a, [bc]
    ld h, $a0
    nop
    add b
    nop
    scf
    nop
    inc de
    inc hl
    and b
    nop
    add b
    nop
    ld h, b
    nop
    ld d, $23
    and b
    nop
    add b
    nop
    nop
    nop
    nop

jr_000_29d6:
    ld h, $a0
    nop
    add b
    nop
    jr nz, jr_000_29dd

jr_000_29dd:
    ld [de], a
    inc h
    and b

jr_000_29e0:
    nop
    add b
    nop
    ld d, b
    nop
    jr jr_000_2a0a

    and b
    nop
    add b
    nop
    jr nc, jr_000_29ed

jr_000_29ed:
    jr jr_000_2a12

    and b

jr_000_29f0:
    nop
    add b
    nop
    jr nc, jr_000_29f5

jr_000_29f5:
    jr jr_000_2a1a

    and b

jr_000_29f8:
    nop
    add b
    nop
    jr nc, jr_000_29fd

jr_000_29fd:
    jr jr_000_2a22

    and b

jr_000_2a00:
    nop
    add b
    nop
    jr nc, jr_000_2a05

jr_000_2a05:
    ld [de], a
    inc h
    and b

jr_000_2a08:
    nop
    add b

jr_000_2a0a:
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b
    nop
    add b

jr_000_2a12:
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b

jr_000_2a18:
    nop
    add b

jr_000_2a1a:
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b
    nop
    add b

jr_000_2a22:
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b

jr_000_2a28:
    nop
    add b
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b

jr_000_2a30:
    nop
    add b
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b

jr_000_2a38:
    nop
    add b
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b

jr_000_2a40:
    nop
    add b
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b

jr_000_2a48:
    nop
    add b
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b
    nop
    add b
    nop
    ld d, b
    nop
    ld [de], a
    inc h
    and b

jr_000_2a58:
    nop
    add b
    nop
    ld d, b
    nop
    nop
    jr z, jr_000_29e0

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2a65

jr_000_2a65:
    ld bc, $8028
    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2a6d

jr_000_2a6d:
    ld [bc], a
    jr z, jr_000_29f0

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2a75

jr_000_2a75:
    inc bc
    jr z, jr_000_29f8

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2a7d

jr_000_2a7d:
    inc b
    jr z, jr_000_2a00

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2a85

jr_000_2a85:
    dec b
    jr z, jr_000_2a08

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2a8d

jr_000_2a8d:
    ld b, $28
    add b
    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2a95

jr_000_2a95:
    rlca
    jr z, jr_000_2a18

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2a9d

jr_000_2a9d:
    ld [$8028], sp
    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2aa5

jr_000_2aa5:
    add hl, bc
    jr z, jr_000_2a28

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2aad

jr_000_2aad:
    ld a, [bc]
    jr z, jr_000_2a30

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2ab5

jr_000_2ab5:
    dec bc
    jr z, jr_000_2a38

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2abd

jr_000_2abd:
    inc c
    jr z, jr_000_2a40

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2ac5

jr_000_2ac5:
    dec c
    jr z, jr_000_2a48

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2acd

jr_000_2acd:
    ld c, $28
    add b
    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2ad5

jr_000_2ad5:
    rrca
    jr z, jr_000_2a58

    ld [bc], a
    nop
    ld [bc], a
    jr nc, jr_000_2add

jr_000_2add:
    nop
    nop
    nop
    ld sp, $3101
    ld [bc], a
    ld sp, $3103
    inc b
    ld sp, $3105
    ld b, $31
    rlca
    ld sp, $3108
    add hl, bc
    ld sp, $310a
    dec bc
    ld sp, $310c
    dec c
    ld sp, $310e
    rrca
    ld sp, $3110
    ld de, $1231
    ld sp, $3113
    inc d
    ld sp, $3115
    ld d, $31
    rla
    ld sp, $3118
    add hl, de
    ld sp, $311a
    dec de
    ld sp, $311c
    dec e
    ld sp, $311e
    rra
    ld sp, $3120
    ld hl, $2231
    ld sp, $3123
    inc h
    ld sp, $3125
    ld h, $31
    daa
    ld sp, $3128
    add hl, hl
    ld sp, $312a
    dec hl
    ld sp, $312c
    dec l
    ld sp, $312e
    cpl
    ld sp, $3130
    ld sp, $3231
    ld sp, $3133
    inc [hl]
    ld sp, $3135
    ld [hl], $31
    scf
    ld sp, $3138
    add hl, sp
    ld sp, $2f09
    inc b
    jr c, @+$36

    jr c, jr_000_2b91

    jr c, @+$0a

    add hl, sp
    ld e, $39
    dec l
    add hl, sp
    inc bc
    ld a, [hl-]
    ld h, $3a
    ld a, [hl+]
    ld a, [hl-]
    ld a, $38
    ld sp, $0438
    add hl, sp
    add hl, sp
    jr c, @+$0d

    ld a, [hl-]
    inc d
    ld a, [hl-]
    ld b, $39
    add hl, hl
    jr c, jr_000_2b78

jr_000_2b78:
    jr c, jr_000_2bbc

    ld sp, $3100
    nop
    ld sp, $313a
    dec sp
    ld sp, $313c
    dec a
    ld sp, $313e
    ccf
    ld sp, $3140
    ld b, c
    ld sp, $313a

jr_000_2b91:
    ld a, [hl-]
    ld sp, $313a
    ld a, [hl-]
    ld sp, $313a
    ld a, [hl-]
    ld sp, $2f00
    add hl, de
    ld l, $11
    cpl
    ld [de], a
    cpl
    inc de
    cpl
    inc d
    cpl
    dec d
    cpl
    ld d, $2f
    rla
    cpl
    jr @+$31

    add hl, de
    cpl
    ld a, [de]
    cpl
    dec de
    cpl
    inc e
    cpl
    dec e
    cpl
    ld e, $2f
    rra

jr_000_2bbc:
    cpl
    jr nz, jr_000_2bee

    ld hl, $222f
    cpl
    inc hl
    cpl
    inc h
    cpl
    dec h
    cpl
    ld h, $2f
    daa
    cpl
    jr z, jr_000_2bfe

    add hl, hl
    cpl
    ld a, [hl+]
    cpl
    dec hl
    cpl
    inc l
    cpl
    dec l
    cpl
    ld l, $2f
    cpl
    cpl
    jr nc, jr_000_2c0e

    ld sp, $322f
    cpl
    inc sp
    cpl
    inc [hl]
    cpl
    dec [hl]
    cpl
    ld [hl], $2f
    scf
    cpl
    nop

jr_000_2bee:
    ld [hl], $01
    ld [hl], $02
    ld [hl], $03
    ld [hl], $04
    ld [hl], $05
    ld [hl], $06
    ld [hl], $07
    ld [hl], $08

jr_000_2bfe:
    ld [hl], $09
    ld [hl], $0a
    ld [hl], $0b
    ld [hl], $0c
    ld [hl], $0d
    ld [hl], $0e
    ld [hl], $0f
    ld [hl], $10

jr_000_2c0e:
    ld [hl], $11
    ld [hl], $12
    ld [hl], $13
    ld [hl], $14
    ld [hl], $15
    ld [hl], $16
    ld [hl], $17
    ld [hl], $18
    ld [hl], $19
    ld [hl], $1a
    ld [hl], $1b
    ld [hl], $1c
    ld [hl], $1d
    ld [hl], $1e
    ld [hl], $1f
    ld [hl], $20
    ld [hl], $21
    ld [hl], $22
    ld [hl], $23
    ld [hl], $24
    ld [hl], $25
    ld [hl], $26
    ld [hl], $27
    ld [hl], $00
    dec [hl]
    ld bc, $0235
    dec [hl]
    inc bc
    dec [hl]
    inc b
    dec [hl]
    dec b
    dec [hl]
    ld b, $35
    rlca
    dec [hl]
    ld [$0935], sp
    dec [hl]
    ld a, [bc]
    dec [hl]
    dec bc
    dec [hl]
    inc c
    dec [hl]
    dec c
    dec [hl]
    ld c, $35
    rrca
    dec [hl]
    db $10
    dec [hl]
    ld de, $1235
    dec [hl]
    inc de
    dec [hl]
    inc d
    dec [hl]
    dec d
    dec [hl]
    ld d, $35
    rla
    dec [hl]
    jr jr_000_2ca4

    add hl, de
    dec [hl]
    ld a, [de]
    dec [hl]
    dec de
    dec [hl]
    inc e
    dec [hl]
    dec e
    dec [hl]
    ld e, $35
    rra
    dec [hl]
    jr nz, jr_000_2cb4

    ld hl, $2235
    dec [hl]
    inc hl
    dec [hl]
    inc h
    dec [hl]
    dec h
    dec [hl]
    ld h, $35
    daa
    dec [hl]
    nop
    inc [hl]
    ld bc, $0234
    inc [hl]
    inc bc
    inc [hl]
    inc b
    inc [hl]
    dec b
    inc [hl]
    ld b, $34
    rlca
    inc [hl]
    ld [$0934], sp
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec bc

jr_000_2ca4:
    inc [hl]
    inc c
    inc [hl]
    dec c
    inc [hl]
    ld c, $34
    rrca
    inc [hl]
    db $10
    inc [hl]
    ld de, $1234
    inc [hl]
    inc de

jr_000_2cb4:
    inc [hl]
    inc d
    inc [hl]
    dec d
    inc [hl]
    ld d, $34
    rla
    inc [hl]
    jr jr_000_2cf3

    add hl, de
    inc [hl]
    ld a, [de]
    inc [hl]
    dec de
    inc [hl]
    inc e
    inc [hl]
    dec e
    inc [hl]
    ld e, $34
    rra
    inc [hl]
    jr nz, jr_000_2d03

    ld hl, $2234
    inc [hl]
    inc hl
    inc [hl]
    inc h
    inc [hl]
    dec h
    inc [hl]
    ld h, $34
    daa
    inc [hl]
    nop
    inc sp
    ld bc, $0233
    inc sp
    inc bc
    inc sp
    inc b
    inc sp
    dec b
    inc sp
    ld b, $33
    rlca
    inc sp
    ld [$0933], sp
    inc sp
    ld a, [bc]
    inc sp

jr_000_2cf3:
    dec bc
    inc sp
    inc c
    inc sp
    dec c
    inc sp
    ld c, $33
    rrca
    inc sp
    db $10
    inc sp
    ld de, $1233
    inc sp

jr_000_2d03:
    inc de
    inc sp
    inc d
    inc sp
    dec d
    inc sp
    ld d, $33
    rla
    inc sp
    jr jr_000_2d42

    add hl, de
    inc sp
    ld a, [de]
    inc sp
    dec de
    inc sp
    inc e
    inc sp
    dec e
    inc sp
    ld e, $33
    rra
    inc sp
    jr nz, jr_000_2d52

    ld hl, $2233
    inc sp
    inc hl
    inc sp
    inc h
    inc sp
    dec h
    inc sp
    ld h, $33
    daa
    inc sp
    nop
    ld [hl-], a
    ld bc, $0232
    ld [hl-], a
    inc bc
    ld [hl-], a
    inc b
    ld [hl-], a
    dec b
    ld [hl-], a
    ld b, $32
    rlca
    ld [hl-], a
    ld [$0932], sp
    ld [hl-], a
    ld a, [bc]

jr_000_2d42:
    ld [hl-], a
    dec bc
    ld [hl-], a
    inc c
    ld [hl-], a
    dec c
    ld [hl-], a
    ld c, $32
    rrca
    ld [hl-], a
    db $10
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca

jr_000_2d52:
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    rrca
    ld [hl-], a
    nop

jr_000_2da8:
    nop
    nop
    nop
    and b
    nop
    nop
    nop
    ld b, b
    ld bc, $0000
    ldh [rSB], a
    nop
    nop
    nop
    nop
    add b
    nop
    and b
    nop
    add b
    nop
    ld b, b
    ld bc, $0080
    ldh [rSB], a
    add b
    nop
    nop
    nop
    nop
    ld bc, $00a0
    nop
    ld bc, $0140
    nop
    ld bc, $01e0
    nop
    ld bc, $0000
    add b
    ld bc, $00a0
    add b
    ld bc, $0140
    add b
    ld bc, $01e0
    add b
    ld bc, $0000
    ld a, [bc]
    nop
    inc d
    nop
    ld e, $00
    nop
    ld [$080a], sp
    inc d
    ld [$081e], sp
    nop
    db $10
    ld a, [bc]
    db $10
    inc d
    db $10
    ld e, $10
    nop
    jr jr_000_2e0c

    jr jr_000_2e18

    jr jr_000_2e24

    jr jr_000_2da8

    ld bc, $effa
    rst $28

jr_000_2e0c:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_000_2e18:
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $b0
    or c
    or d
    or e
    or h

jr_000_2e24:
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $c2
    jp $c5c4


    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $ffd3

    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $b0
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $c2
    jp $c5c4


    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $ffd3

    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


Jump_000_2edd:
    push af
    push bc
    push de
    push hl
    ld hl, $0300
    rst $10
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_2eea:
    push af
    push bc
    push de
    push hl
    ld a, [$c892]
    rst $00
    ld b, b
    cpl
    ld a, [$082e]
    cpl
    inc h
    cpl

jr_000_2efa:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_2efa

    ldh a, [rLCDC]
    res 1, a
    ldh [rLCDC], a
    jr jr_000_2f40

    ldh a, [rLY]
    ld l, a
    ld h, $c1
    ld a, [hl]
    ldh [rSCX], a
    ldh a, [rLYC]
    add $02
    ldh [rLYC], a
    cp $80
    jr c, jr_000_2f40

    ldh a, [$b7]
    ldh [rSCX], a
    ld a, $01
    ldh [rLYC], a
    jr jr_000_2f40

    ldh a, [rLY]
    ld l, a
    ld h, $c1
    ld a, [hl]
    ldh [rSCY], a
    ldh a, [rLYC]
    add $02
    ldh [rLYC], a
    cp $81
    jr c, jr_000_2f40

    ldh a, [$bb]
    ldh [rSCY], a
    ld a, $00
    ldh [rLYC], a
    jr jr_000_2f40

jr_000_2f40:
    pop hl
    pop de
    pop bc
    pop af
    reti


    ld a, h
    cp b
    ret nz

    ld a, l
    cp c
    ret


    ld de, $0000
    ld a, b
    or a
    jr z, jr_000_2f5d

jr_000_2f52:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_000_2f66

    inc de
    jr jr_000_2f52

jr_000_2f5d:
    ld a, c
    call Call_000_1e0d
    ld c, a
    ld b, $00
    jr jr_000_2f6b

jr_000_2f66:
    add hl, bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e

jr_000_2f6b:
    ret


    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


    push hl
    push bc
    ld c, a
    call Call_000_2fa5
    jr c, jr_000_2fa1

    ld a, c
    ld hl, $db02
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    and $d0
    jr nz, jr_000_2fa0

    inc hl
    inc hl
    ld a, [hl+]
    and $3f
    jr nz, jr_000_2fa0

    inc hl
    ld a, [hl]
    and $c0
    jr nz, jr_000_2fa0

    xor a
    jr jr_000_2fa1

jr_000_2fa0:
    scf

jr_000_2fa1:
    ld a, c
    pop bc
    pop hl
    ret


Call_000_2fa5:
    push hl
    push bc
    ld c, a
    cp $08
    jr nc, jr_000_2fc0

    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and a
    jr z, jr_000_2fc4

    cp $ff
    jr z, jr_000_2fc0

    scf
    jr jr_000_2fc8

jr_000_2fc0:
    xor a
    scf
    jr jr_000_2fc8

jr_000_2fc4:
    ld a, $0a
    cp $01

jr_000_2fc8:
    ld a, c
    pop bc
    pop hl
    ret


    ld hl, $dbe3
    call Call_000_2ff6
    ret


    ld hl, $dbf3
    call Call_000_2ff6
    ret


    ld hl, $dbb3
    call Call_000_2ff6
    ret


    ld hl, $dbd3
    call Call_000_2ff6
    ret


    ld hl, $dba3
    call Call_000_2ff6
    ret


    ld hl, $dbc3
    call Call_000_2ff6
    ret


Call_000_2ff6:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld a, [$da80]
    or a
    ret z

    ld a, [$c863]
    and $02
    sla a
    ld b, a
    ld a, [$db88]
    xor b
    cp $04
    jr nc, jr_000_3029

    ld a, [$db89]
    xor b
    cp $04
    jr nc, jr_000_3029

    ld a, $00
    ld [$dd60], a
    ld a, $00
    ld [$dd62], a
    ret


jr_000_3029:
    ld hl, $5f07
    rst $10
    ld a, [$da81]
    cp $ff
    ret z

    cp $0e
    jr c, jr_000_3048

    cp $15
    jr z, jr_000_3052

    cp $21
    jr c, jr_000_304d

    cp $2c
    jr z, jr_000_3059

    ld hl, $5e00
    rst $10
    ret


jr_000_3048:
    ld hl, $5c00
    rst $10
    ret


jr_000_304d:
    ld hl, $5d00
    rst $10
    ret


jr_000_3052:
    ld a, [$db8a]
    cp $c5
    jr nz, jr_000_304d

jr_000_3059:
    ld a, [$db75]
    cp $01
    jr z, jr_000_30b4

    cp $02
    jr z, jr_000_30ce

    ld a, [$dd1f]
    or a
    jr nz, jr_000_307f

    ld a, $20
    ldh [$c3], a
    ld a, [$da81]
    cp $15
    jr nz, jr_000_307b

    ld hl, $5d00
    rst $10
    jr jr_000_307f

jr_000_307b:
    ld hl, $5e00
    rst $10

jr_000_307f:
    ld a, [$dd20]
    or a
    jr nz, jr_000_309a

    ld a, $50
    ldh [$c3], a
    ld a, [$da81]
    cp $15
    jr nz, jr_000_3096

    ld hl, $5d00
    rst $10
    jr jr_000_309a

jr_000_3096:
    ld hl, $5e00
    rst $10

jr_000_309a:
    ld a, [$dd21]
    or a
    ret nz

    ld a, $80
    ldh [$c3], a
    ld a, [$da81]
    cp $15
    jr nz, jr_000_30af

    ld hl, $5d00
    rst $10
    ret


jr_000_30af:
    ld hl, $5e00
    rst $10
    ret


jr_000_30b4:
    ld a, [$dd1f]
    or a
    ret nz

    ld a, $50
    ldh [$c3], a
    ld a, [$da81]
    cp $15
    jr nz, jr_000_30c9

    ld hl, $5d00
    rst $10
    ret


jr_000_30c9:
    ld hl, $5e00
    rst $10
    ret


jr_000_30ce:
    ld a, [$dd1f]
    or a
    jr nz, jr_000_30e9

    ld a, $38
    ldh [$c3], a
    ld a, [$da81]
    cp $15
    jr nz, jr_000_30e5

    ld hl, $5d00
    rst $10
    jr jr_000_30e9

jr_000_30e5:
    ld hl, $5e00
    rst $10

jr_000_30e9:
    ld a, [$dd20]
    or a
    ret nz

    ld a, $68
    ldh [$c3], a
    ld a, [$da81]
    cp $15
    jr nz, jr_000_30fe

    ld hl, $5d00
    rst $10
    ret


jr_000_30fe:
    ld hl, $5e00
    rst $10
    ret


    ld hl, $5f07
    rst $10
    ld a, [$da81]
    cp $ff
    ret z

    ld hl, $c89b
    inc hl
    ld a, $d0
    ld [hl+], a
    ld a, $e0
    ld [hl], a
    ld hl, $3141
    ld a, [$da81]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c89c], a
    ld a, [$da81]
    cp $0e
    jr c, jr_000_3137

    cp $21
    jr c, jr_000_313c

    ld hl, $5e01
    rst $10
    ret


jr_000_3137:
    ld hl, $5c01
    rst $10
    ret


jr_000_313c:
    ld hl, $5d01
    rst $10
    ret


    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nc

    ret nc

    ret nc

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nc

    ret nc

    ldh [$e0], a
    ldh [$e0], a
    ldh [$d0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$d0], a
    nop
    ld bc, $3512
    adc d
    call $ffee
    rst $38
    cp $ed
    jp z, Jump_000_3285

    ld de, $0100
    inc hl
    ld b, l
    ld h, a
    adc c
    xor e
    call $feef
    call c, $98ba
    db $76
    ld d, h
    ld [hl-], a
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    xor $dd
    call z, $aabb
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $ff00
    rst $38
    sbc $bd
    inc h
    ld [de], a
    nop
    nop
    nop
    nop
    ld hl, $db42
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ca
    ld d, e
    ld de, $0000
    nop
    nop
    ld de, $ac35
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld h, [hl]
    xor d
    cp e
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ed
    db $dd
    call z, $bacb
    xor c
    sbc b
    add a
    ld h, l
    ld d, h
    ld b, e
    ld sp, $ff10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    xor d
    cp e
    call z, $eedd
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    xor d
    xor d
    cp e
    call z, $dddd
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    xor d
    xor d
    cp e
    call z, $dddd
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    ld bc, $2212
    inc sp
    dec [hl]
    ld d, l
    ld [hl], a
    sbc c
    ld d, l
    sbc c
    xor d
    cp e
    call z, $eedd
    rst $38
    db $fc
    call c, $90ba
    ld [hl], b
    ld d, b
    jr nc, @+$17

    dec d
    dec d
    dec d
    ld [hl+], a
    ld d, l
    ld [hl], a
    xor d
    call z, $eeee
    call $35ac
    inc hl
    ld de, $1111
    ld de, $5332
    jp z, $eedc

    xor $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], b
    ld [hl-], a
    pop af
    ret nc

    or b
    sub b
    ld [hl], b
    ld d, b
    jr nc, jr_000_328d

    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    di
    ret nc

    or b
    sub b
    ld [hl], b

Jump_000_3285:
    ld d, b
    jr nc, jr_000_3298

    ld d, c
    ld b, b
    jr nc, jr_000_32ac

    dec d

jr_000_328d:
    dec d
    dec d
    dec d
    adc c
    sbc b
    xor b
    cp b
    ret z

    ret c

    add sp, -$0b

jr_000_3298:
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    cp c
    ret z

    ret c

    add sp, -$0f
    ret nc

    or b
    sub b
    ld [hl], b
    ld d, b
    jr nc, jr_000_32c1

jr_000_32ac:
    dec d
    dec d
    dec d
    dec d
    sbc c
    xor b
    cp b
    ret z

    ret c

    add sp, -$0c
    db $f4
    ldh a, [$e0]
    ret nc

    or b
    sub b
    ld [hl], b
    ld d, b
    dec [hl]
    db $db

jr_000_32c1:
    di
    ret nc

    or b
    sub b
    add c
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_000_32ec

    dec d
    dec d
    dec d
    dec d
    pop af
    ldh [$d0], a
    ret nz

    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_000_32fe

    db $10
    dec b
    pop af
    ld [hl], b
    ld d, b
    jr nc, @+$22

    dec d
    dec d
    dec d
    dec d
    dec b
    dec b
    dec b

jr_000_32ec:
    dec b
    dec b
    dec b
    dec b
    pop af
    or b
    ld [hl], b
    ld d, b
    jr nc, jr_000_3316

    jr nz, jr_000_330d

    dec d
    dec d
    dec d
    dec d
    dec d
    dec d

jr_000_32fe:
    dec d
    dec b
    pop af
    or b
    ld [hl], b
    ld d, b
    jr nc, jr_000_3316

    ld d, c
    ld b, b
    jr nc, jr_000_332a

    dec d
    dec d
    dec d

jr_000_330d:
    dec d
    dec d
    dec b
    di
    ret nc

    or b
    sub b
    ld [hl], b
    ld d, b

jr_000_3316:
    jr nc, jr_000_3328

    ld d, c
    ld b, b
    jr nc, jr_000_333c

    dec d
    dec d
    dec d
    dec b
    add hl, bc
    jr @+$2a

    jr c, jr_000_336d

    ld e, b
    ld l, b
    ld a, b

jr_000_3328:
    adc b
    sbc b

jr_000_332a:
    xor b
    cp b
    ret z

    ret c

    add sp, -$0b
    ret


Call_000_3331:
    ld bc, $0000
    call Call_000_336d
    ld a, $80
    ldh [rNR52], a
    xor a

jr_000_333c:
    ldh [rNR51], a
    ld [$de1d], a
    ld a, $77
    ldh [rNR50], a
    ld hl, $dd80
    ld b, $06
    ld a, $ff

jr_000_334c:
    ld [hl], a
    ld de, $0019
    add hl, de
    ld [hl], a
    ld de, $0001
    add hl, de
    dec b
    jr nz, jr_000_334c

    xor a
    ld [$de29], a
    ret


    xor a
    ld [$de29], a
    ret


    ld a, $04
    ld [$de29], a
    xor a
    ld [$de1d], a
    ret


Call_000_336d:
jr_000_336d:
    ld a, b
    ld [$de26], a
    ld a, c
    ld [$de27], a
    xor a
    ld [$de28], a
    ret


Call_000_337a:
    ld a, [$de23]
    inc a
    ld b, a
    ld a, $01

jr_000_3381:
    dec b
    jr z, jr_000_3387

    add a
    jr jr_000_3381

jr_000_3387:
    ld b, a
    ld a, [$de28]
    or b
    ld [$de28], a
    ret


Call_000_3390:
    ld a, [$de28]
    ld hl, $de26
    and [hl]
    cp [hl]
    jr nz, jr_000_33c4

    ld hl, $dd84
    ld a, [$de27]
    and $0f
    ld b, a
    ld a, [$de26]

jr_000_33a6:
    srl a
    ld [$de28], a
    jr nc, jr_000_33b2

    ld a, [hl]
    and $f0
    or b
    ld [hl], a

jr_000_33b2:
    ld a, l
    add $1a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$de28]
    and a
    jr nz, jr_000_33a6

    xor a
    ld [$de26], a

jr_000_33c4:
    xor a
    ld [$de28], a
    ret


Call_000_33c9:
    call Call_000_33d2

Call_000_33cc:
    call Call_000_33d2

Call_000_33cf:
    call Call_000_33d2

Call_000_33d2:
    push bc
    push de
    push hl
    ld a, [$de24]
    ld hl, $3466

jr_000_33db:
    cp [hl]
    jr c, jr_000_33e4

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_000_33db

jr_000_33e4:
    ld a, [$4000]
    push af
    dec hl
    ld a, [hl-]
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ld a, [hl-]
    ld d, a
    ld a, [hl-]
    ld e, a
    ld a, [$de24]
    sub [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, de
    push hl
    pop de
    ld a, [de]
    inc de
    ld c, a
    ld b, $00
    ld hl, $dd80
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_3430

    inc hl
    ld a, [hl-]
    ld b, $ee
    and $03
    jr z, jr_000_3429

    ld b, $dd
    cp $01
    jr z, jr_000_3429

    ld b, $bb
    cp $02
    jr z, jr_000_3429

    ld b, $77

jr_000_3429:
    ld a, [$de1d]
    and b
    ld [$de1d], a

jr_000_3430:
    xor a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [$4000]
    ld [hl], a
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $ff
    ld [hl], a
    pop hl
    ld de, $0015
    add hl, de
    xor a
    ld [hl], a
    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ld a, [$de24]
    inc a
    ld [$de24], a
    pop hl
    pop de
    pop bc
    ret


    nop
    ld bc, $1c40
    ld hl, $4001
    dec e
    scf
    ld bc, $1e40
    rst $38

Call_000_3473:
    ld a, [$4000]
    push af
    ld a, [$de29]
    ld [$de23], a
    xor a
    ld [$de1c], a
    ld hl, $de22
    inc [hl]
    ld hl, $dd80

Jump_000_3488:
    push hl
    ld de, $ffe4
    ld b, $03

jr_000_348e:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_348e

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ldh a, [$e5]
    and $03
    ld [$de1e], a
    ld b, a
    add a
    add a
    add b
    ld [$de21], a
    inc b
    ld a, $88

jr_000_34bf:
    rlca
    dec b
    jr nz, jr_000_34bf

    ld [$de1f], a
    ld [$de20], a
    ldh a, [$e4]
    ld b, a
    ldh a, [$fd]
    and b
    cp $ff
    jp z, Jump_000_3559

    ldh a, [$e8]
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    ldh a, [$fd]
    or b
    and a
    jp z, Jump_000_357f

    call Call_000_3905
    call Call_000_3974
    ldh a, [$f1]
    ld b, a
    ldh a, [$f2]
    inc a
    cp b
    jr c, jr_000_34f8

    ld a, b

jr_000_34f8:
    ldh [$f2], a
    ld hl, $ffea
    ldh a, [$e9]
    and $0f
    add [hl]
    cp $10
    jr c, jr_000_350b

    sub $10
    ld [hl], a
    jr jr_000_3527

jr_000_350b:
    ld [hl], a
    call Call_000_38c6
    ldh a, [$fb]
    and a
    jr z, jr_000_3517

    dec a
    ldh [$fb], a

jr_000_3517:
    ld hl, $ffec
    dec [hl]
    jr nz, jr_000_3527

    call Call_000_337a

Jump_000_3520:
    ldh a, [$fa]
    ldh [$fb], a
    call Call_000_35ea

jr_000_3527:
    ld a, [$de1f]
    ld b, a
    ld a, [$de1c]
    or b
    ld [$de1c], a
    pop hl
    push hl
    ld de, $ffe4
    ld b, $03

jr_000_3539:
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_3539

    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a

Jump_000_3559:
    pop hl
    ld de, $001a
    add hl, de
    ld a, [$de23]
    inc a
    ld [$de23], a
    cp $06
    jp c, Jump_000_3488

    ld a, [$de1d]
    ldh [rNR51], a
    pop af
    ld [$2100], a
    swap a
    rra
    and $03
    ld [$4100], a
    call Call_000_3390
    ret


Jump_000_357f:
    ldh a, [$e6]
    ld l, a
    ldh a, [$e7]
    ld h, a
    xor a
    ldh [$ea], a
    ld a, [hl+]
    and $0f
    ld d, a
    ld a, [$de1e]
    cp $02
    jr z, jr_000_35bf

    ld a, [hl+]
    rrca
    rrca
    and $c0
    or d

jr_000_3599:
    ldh [$e9], a
    ld a, [hl+]
    swap a
    ldh [$eb], a
    ld a, [$de1e]
    cp $02
    jr z, jr_000_35c5

    ld a, [hl+]
    ldh [$ed], a

jr_000_35aa:
    xor a
    ldh [$ee], a
    ldh [$ef], a
    ldh [$f0], a
    ldh [$f3], a
    ldh [$fd], a
    dec a
    ldh [$f9], a
    ld a, $02
    ldh [$e4], a
    jp Jump_000_3520


jr_000_35bf:
    ld a, [hl+]
    ldh [$f1], a
    ld a, d
    jr jr_000_3599

jr_000_35c5:
    xor a
    ldh [rNR30], a
    ld d, a
    ldh a, [$ed]
    ld e, a
    cp $ff
    jr nz, jr_000_35d4

    ld e, [hl]
    ld a, e
    ldh [$ed], a

jr_000_35d4:
    ld [$de2b], a
    swap e
    ld hl, $316e
    add hl, de
    ld de, $ff30
    ld b, $10

jr_000_35e2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_35e2

    jr jr_000_35aa

Call_000_35ea:
Jump_000_35ea:
    ldh a, [$e4]
    ld l, a
    ldh a, [$fd]
    ld h, a
    add hl, hl
    ldh a, [$e6]
    ld e, a
    ldh a, [$e7]
    ld d, a
    add hl, de

Jump_000_35f8:
jr_000_35f8:
    ldh a, [$e4]
    add $01
    ldh [$e4], a
    ldh a, [$fd]
    adc $00
    ldh [$fd], a
    ld a, [hl+]
    cp $d0
    jr nc, jr_000_3630

    cp $b0
    jr nc, jr_000_366e

    cp $a0
    jp nc, Jump_000_36cb

    jp Jump_000_37ee


jr_000_3615:
    cp $fd
    jr nz, jr_000_3624

    ldh a, [$e4]
    ldh [$f8], a
    ldh a, [$fd]
    ldh [$fe], a

jr_000_3621:
    inc hl
    jr jr_000_35f8

jr_000_3624:
    cp $ff
    jr nz, jr_000_3621

    ldh [$e4], a
    ldh [$fd], a
    call Call_000_3a38
    ret


jr_000_3630:
    cp $f0
    jr nc, jr_000_3615

    cp $e0
    jr nc, jr_000_363c

    and $0f
    jr jr_000_3640

jr_000_363c:
    and $0f
    cpl
    inc a

jr_000_3640:
    ld b, a
    ld a, [$de1e]
    cp $02
    jr z, jr_000_3650

    ld a, b
    ldh [$f3], a
    ld a, [hl]
    ldh [$f4], a
    ldh [$f5], a

jr_000_3650:
    inc hl
    jr jr_000_35f8

jr_000_3653:
    and $0f
    ld b, a
    ld a, [$de1e]
    cp $02
    jr z, jr_000_366b

    ldh a, [$eb]
    and $0f
    jr nz, jr_000_366b

    ld a, [hl]
    ldh [$f1], a
    ld a, b
    swap a
    ldh [$f0], a

jr_000_366b:
    inc hl
    jr jr_000_35f8

jr_000_366e:
    cp $c0
    jr nc, jr_000_3653

    and $0f
    jr z, jr_000_3699

    ld e, a
    ld a, [hl]
    and a
    jr nz, jr_000_368b

    ldh a, [$ee]
    dec a
    ldh [$ee], a
    jr z, jr_000_36b0

    bit 7, a
    jr z, jr_000_3699

    ld a, e
    ldh [$ee], a
    jr jr_000_3699

jr_000_368b:
    ldh a, [$ef]
    dec a
    ldh [$ef], a
    jr z, jr_000_36c2

    bit 7, a
    jr z, jr_000_3699

    ld a, e
    ldh [$ef], a

jr_000_3699:
    ld a, [hl]
    cp $fc
    jr z, jr_000_36a9

    ldh a, [$f8]
    ldh [$e4], a
    ldh a, [$fe]
    ldh [$fd], a
    jp Jump_000_35ea


jr_000_36a9:
    inc hl
    ld a, [hl+]
    ldh [$e4], a
    ld a, [hl]
    ldh [$fd], a

jr_000_36b0:
    jp Jump_000_35ea


    ldh a, [$e4]
    add $01
    ldh [$e4], a
    ldh a, [$fd]
    adc $00
    ldh [$fd], a
    jp Jump_000_35ea


jr_000_36c2:
    ldh a, [$e4]
    add $01
    ldh [$e4], a
    jp Jump_000_35ea


Jump_000_36cb:
    cp $a0
    jr nz, jr_000_36e5

    ld a, [hl+]
    swap a
    ldh [$eb], a
    ld a, [$de1f]
    ld b, a
    ld a, [$de1c]
    and b
    jp nz, Jump_000_35f8

    call Call_000_393c
    jp Jump_000_35f8


jr_000_36e5:
    cp $a1
    jr nz, jr_000_3725

    ld a, [$de1e]
    cp $02
    jr z, jr_000_36f6

    ld a, [hl+]
    ldh [$ed], a
    jp Jump_000_35f8


jr_000_36f6:
    xor a
    ldh [rNR30], a
    ld d, a
    ld a, [hl+]
    ld e, a
    ldh [$ed], a
    ld a, [$de1f]
    ld b, a
    ld a, [$de1c]
    and b
    jr z, jr_000_370b

    jp Jump_000_35f8


jr_000_370b:
    push hl
    ld a, e
    ld [$de2b], a
    swap e
    ld hl, $316e
    add hl, de
    ld de, $ff30
    ld b, $10

jr_000_371b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_371b

    pop hl
    jp Jump_000_35f8


jr_000_3725:
    cp $a2
    jr nz, jr_000_3746

    ld a, [$de1e]
    cp $02
    jr z, jr_000_3740

    ld a, [hl+]
    rrca
    rrca
    and $c0
    ld d, a
    ldh a, [$e9]
    and $3f
    or d
    ldh [$e9], a
    jp Jump_000_35f8


jr_000_3740:
    ld a, [hl+]
    ldh [$f1], a
    jp Jump_000_35f8


jr_000_3746:
    cp $a3
    jr nz, jr_000_376d

    ld a, [hl+]
    bit 7, a
    jr nz, jr_000_3767

    ld b, a
    and $0f
    add a
    ldh [$fa], a
    ldh [$fb], a
    ld a, b
    and $70
    ld e, a
    ldh a, [$e5]
    and $0f
    or e
    or $80

jr_000_3762:
    ldh [$e5], a
    jp Jump_000_35f8


jr_000_3767:
    ldh a, [$e5]
    and $0f
    jr jr_000_3762

jr_000_376d:
    cp $a5
    jr nz, jr_000_377f

    ld a, [hl+]
    cp $01
    jr nz, jr_000_377a

    ldh a, [$f9]
    swap a

jr_000_377a:
    ldh [$f9], a
    jp Jump_000_35f8


jr_000_377f:
    cp $a6
    jr nz, jr_000_3789

    ld a, [hl+]
    ldh [rNR50], a
    jp Jump_000_35f8


jr_000_3789:
    cp $a7
    jr nz, jr_000_3793

    ld a, [hl]
    ldh [$ec], a
    jp Jump_000_38a5


jr_000_3793:
    cp $a8
    jr nz, jr_000_379d

    ld a, [hl+]
    ldh [$fc], a
    jp Jump_000_35f8


jr_000_379d:
    cp $ae
    jr nz, jr_000_37af

    ld a, [hl+]
    and $10
    ld b, a
    ldh a, [$e9]
    and $ef
    or b
    ldh [$e9], a
    jp Jump_000_35f8


jr_000_37af:
    cp $af
    jr nz, jr_000_37c1

    ld a, [hl+]
    and $0f
    ld b, a
    ldh a, [$e9]
    and $f0
    or b
    ldh [$e9], a
    jp Jump_000_35f8


jr_000_37c1:
    inc hl
    jp Jump_000_35f8


    nop
    ld bc, $1211
    inc d
    inc hl
    rlca
    dec d
    rla
    ld [hl-], a
    inc sp
    ld h, b
    ld h, c
    ld b, l
    ld d, e
    ld h, d

jr_000_37d5:
    xor a
    ldh [$f6], a
    ld a, $80
    ldh [$f7], a
    ld a, [$de1e]
    cp $02
    jr z, jr_000_37e7

    call Call_000_3a30
    ret


jr_000_37e7:
    call Call_000_3a48
    xor a
    ldh [rNR30], a
    ret


Jump_000_37ee:
    ld b, a
    ld a, [hl]
    ldh [$ec], a
    ld a, [$de1e]
    cp $03
    jr nz, jr_000_3815

    ld a, b
    cp $1f
    jr z, jr_000_37d5

    cp $10
    jr nc, jr_000_3810

    ld hl, $37c5
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld l, [hl]
    ld h, $00
    jr jr_000_3848

jr_000_3810:
    ld l, a
    ld h, $00
    jr jr_000_3848

jr_000_3815:
    ld a, b
    and $0f
    cp $0c
    jr nc, jr_000_37d5

    add a
    ld e, a
    ldh a, [$e9]
    and $10
    jr z, jr_000_3828

    ld a, e
    add $18
    ld e, a

jr_000_3828:
    ld d, $00
    ld hl, $3a53
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    swap a
    and $0f
    jr z, jr_000_3840

    ld b, a

jr_000_3839:
    srl h
    rr l
    dec b
    jr nz, jr_000_3839

jr_000_3840:
    ld a, $00
    sub l
    ld l, a
    ld a, $08
    sbc h
    ld h, a

jr_000_3848:
    xor a
    ldh [$f2], a
    call Call_000_3a48
    ld a, [$de1e]
    cp $02
    jr nz, jr_000_385c

    call Call_000_3c03
    ld a, $80
    ldh [rNR30], a

jr_000_385c:
    push hl
    call Call_000_392e
    pop hl
    ld a, [$de1e]
    and a
    ldh a, [$ed]
    ld c, $10
    call z, Call_000_3954
    ld a, l
    ld c, $13
    call Call_000_3954
    ld a, l
    cp $02
    jr c, jr_000_387f

    cp $fe
    jr c, jr_000_3881

    ld a, $fd
    jr jr_000_3881

jr_000_387f:
    ld a, $02

jr_000_3881:
    ldh [$f6], a
    ld a, [$de1e]
    cp $02
    jr z, jr_000_38b8

    cp $02
    jr nc, jr_000_3899

    ldh a, [$e9]
    and $c0
    or $3f
    ld c, $11
    call Call_000_3954

jr_000_3899:
    ld a, h
    and $07
    or $80

jr_000_389e:
    ldh [$f7], a
    ld c, $14
    call Call_000_3954

Jump_000_38a5:
    ld a, [$de20]
    ld b, a
    cpl
    ld c, a
    ldh a, [$f9]
    and b
    ld b, a
    ld a, [$de1d]
    and c
    or b
    ld [$de1d], a
    ret


jr_000_38b8:
    xor a
    ldh [rNR31], a
    ldh a, [rNR52]
    and $04
    jr z, jr_000_3899

    ld a, h
    and $07
    jr jr_000_389e

Call_000_38c6:
    ld a, [$de1e]
    cp $02
    ret z

    ldh a, [$f3]
    and a
    ret z

    ld hl, $fff5
    dec [hl]
    ret nz

    ldh a, [$eb]
    swap a
    cp $10
    ret nc

    and $0f
    ld b, a
    ldh a, [$f4]
    ldh [$f5], a
    ld hl, $fff3
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_38f9

    dec [hl]
    ld a, b
    cp $0f
    ret z

    ldh a, [$eb]
    add $10
    ldh [$eb], a
    jp Jump_000_393c


jr_000_38f9:
    inc [hl]
    ld a, b
    and a
    ret z

    ldh a, [$eb]
    sub $10
    ldh [$eb], a
    jr jr_000_393c

Call_000_3905:
    call Call_000_3a48
    ld a, [$de1e]
    cp $03
    ret z

    ldh a, [$fb]
    and a
    ret nz

    ldh a, [$e5]
    bit 7, a
    ret z

    and $70
    ld b, a
    ld a, [$de22]
    and $0f
    or b
    ld e, a
    ld d, $00
    ld hl, $3b83
    add hl, de
    ldh a, [$f6]
    add [hl]
    ld c, $13
    jr jr_000_3954

Call_000_392e:
    ld a, [$de1e]
    cp $02
    jr z, jr_000_395d

    ldh a, [$f0]
    and a
    jr nz, jr_000_398e

    ldh a, [$eb]

Call_000_393c:
Jump_000_393c:
jr_000_393c:
    ld b, a
    and $07
    jr nz, jr_000_3945

    ld a, b
    or $08
    ld b, a

jr_000_3945:
    ld a, [$de21]
    add $12
    ld c, a
    ld a, [c]
    cp b
    ret z

    ld a, b
    ld [c], a
    ldh a, [$f7]
    ld c, $14

Call_000_3954:
jr_000_3954:
    ld b, a
    ld a, [$de21]
    add c
    ld c, a
    ld a, b
    ld [c], a
    ret


jr_000_395d:
    ldh a, [$eb]
    ld c, $12
    jr jr_000_3954

jr_000_3963:
    ld a, e
    srl a
    add $02
    swap a
    ld hl, $ffeb
    cp [hl]
    ret c

    and $60
    ldh [rNR32], a
    ret


Call_000_3974:
    call Call_000_3a48
    ldh a, [$f6]
    and a
    jr nz, jr_000_3983

    ldh a, [$f7]
    and $7f
    jp z, Jump_000_3a30

jr_000_3983:
    ld a, [$de1e]
    cp $02
    jr z, jr_000_398e

    ldh a, [$f0]
    and a
    ret z

jr_000_398e:
    ldh a, [$f1]
    and a
    ret z

    ld e, $00
    ld c, a
    ldh a, [$f2]
    ld b, $04

jr_000_3999:
    add a
    cp c
    jr c, jr_000_399e

    sub c

jr_000_399e:
    ccf
    rl e
    dec b
    jr nz, jr_000_3999

    ld a, [$de1e]
    cp $02
    jr z, jr_000_3963

    ldh a, [$f0]
    or e
    ld e, a
    ld d, $00
    push de
    ldh a, [$fc]
    ld de, $326e
    sla a
    add e
    ld e, a
    xor a
    adc d
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    pop de
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    add hl, de
    ldh a, [$eb]
    swap a
    ld e, a
    ld a, [hl]
    ld h, a
    and $f0
    or e
    ld e, a
    bit 2, h
    jr nz, jr_000_39fc

    inc b
    ld a, c
    swap a
    and $0f
    jr z, jr_000_39fc

    ld b, a
    bit 3, e
    jr nz, jr_000_39f5

    sla b
    bit 2, e
    jr nz, jr_000_39f5

    sla b
    bit 1, e
    jr z, jr_000_39fa

jr_000_39f5:
    ld a, b
    cp $08
    jr c, jr_000_39fc

jr_000_39fa:
    ld b, $00

jr_000_39fc:
    bit 1, h
    jr z, jr_000_3a05

    ld a, b
    jr z, jr_000_3a05

    srl b

jr_000_3a05:
    ld a, h
    and $08
    or b
    ld b, a
    bit 0, h
    jr z, jr_000_3a17

    ld hl, $3a83
    add hl, de
    ld a, [hl]
    or b
    jp Jump_000_393c


jr_000_3a17:
    ld c, $12
    ld a, [$de21]
    add c
    ld c, a
    ld a, [c]
    and $08
    ld l, a
    ld a, h
    and $08
    cp l
    ret z

    ld hl, $3a83
    add hl, de
    ld a, [hl]
    or b
    jp Jump_000_393c


Call_000_3a30:
Jump_000_3a30:
    call Call_000_3a48
    ld a, $00
    jp Jump_000_393c


Call_000_3a38:
    call Call_000_3a48
    ld a, [$de1f]
    cpl
    ld b, a
    ld a, [$de1d]
    and b
    ld [$de1d], a
    ret


Call_000_3a48:
    ld a, [$de1f]
    ld b, a
    ld a, [$de1c]
    and b
    ret z

    pop af
    ret


    call nc, $6407
    rlca
    ld sp, hl
    ld b, $95
    ld b, $37
    ld b, $dd
    dec b
    adc c
    dec b
    ld a, [hl-]
    dec b
    ldh a, [rDIV]
    xor b
    inc b
    ld h, l
    inc b
    ld h, $04
    sbc h
    rlca
    ld l, $07
    rst $00
    ld b, $66
    ld b, $0a
    ld b, $b3
    dec b
    ld h, c
    dec b
    dec d
    dec b
    call z, $8604
    inc b
    ld b, l
    inc b
    ld [$0004], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_000_3ad1

    jr nz, jr_000_3ad3

    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_3adf

    jr nz, jr_000_3af1

    jr nc, jr_000_3af3

    nop
    nop
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_000_3aeb

    jr nz, jr_000_3aed

    jr nc, jr_000_3aff

    jr nc, jr_000_3b01

jr_000_3ad1:
    ld b, b
    ld b, b

jr_000_3ad3:
    nop
    nop
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_3b0c

    jr nc, jr_000_3b0e

    ld b, b

jr_000_3adf:
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    nop
    nop
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_3b1b

jr_000_3aeb:
    jr nc, jr_000_3b2d

jr_000_3aed:
    ld b, b
    ld b, b
    ld d, b
    ld d, b

jr_000_3af1:
    ld h, b
    ld h, b

jr_000_3af3:
    nop
    nop
    db $10
    db $10
    jr nz, @+$22

    jr nc, jr_000_3b2b

    ld b, b
    ld b, b
    ld d, b
    ld d, b

jr_000_3aff:
    ld h, b
    ld h, b

jr_000_3b01:
    ld [hl], b
    ld [hl], b
    nop
    db $10
    db $10
    jr nz, jr_000_3b28

    jr nc, jr_000_3b3a

    ld b, b
    ld b, b

jr_000_3b0c:
    ld d, b
    ld d, b

jr_000_3b0e:
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    nop
    db $10
    db $10
    jr nz, jr_000_3b38

    jr nc, jr_000_3b5a

    ld b, b

jr_000_3b1b:
    ld d, b
    ld d, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    add b
    sub b
    nop
    db $10
    db $10
    jr nz, @+$32

jr_000_3b28:
    jr nc, jr_000_3b6a

    ld d, b

jr_000_3b2b:
    ld d, b
    ld h, b

jr_000_3b2d:
    ld [hl], b
    ld [hl], b
    add b
    sub b
    sub b
    and b
    nop
    db $10
    db $10
    jr nz, jr_000_3b68

jr_000_3b38:
    ld b, b
    ld b, b

jr_000_3b3a:
    ld d, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    nop
    db $10
    jr nz, jr_000_3b67

    jr nc, jr_000_3b89

    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    ret nz

    nop
    db $10
    jr nz, @+$32

    jr nc, @+$42

    ld d, b

jr_000_3b5a:
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    ret nz

    ret nc

    nop
    db $10
    jr nz, jr_000_3b97

jr_000_3b67:
    ld b, b

jr_000_3b68:
    ld d, b
    ld h, b

jr_000_3b6a:
    ld [hl], b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [rP1], a
    db $10
    jr nz, jr_000_3ba7

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [$f0], a
    nop
    nop
    ld bc, $0001
    nop

jr_000_3b89:
    rst $38
    rst $38
    nop
    nop
    ld bc, $0001
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_000_3b97:
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0102

jr_000_3ba7:
    nop
    rst $38
    cp $ff
    nop
    ld bc, $0102
    nop
    rst $38
    cp $ff
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    nop
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_3c03:
    ld a, [$de2b]
    ld b, a
    ldh a, [$ed]
    cp b
    ret z

    ld [$de2b], a
    ld e, a
    swap e
    xor a
    ldh [rNR30], a
    ld d, a
    ld hl, $316e
    add hl, de
    ld de, $ff30
    ld b, $10

jr_000_3c1e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_3c1e

    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_000_3f4e
    jp $4000


    call Call_000_3f73
    jp $407a


    call Call_000_3f60
    jp $41b8


    call Call_000_3f60
    jp $427f


    call Call_000_3f60
    jp $42b8


    call Call_000_3f60
    jp $43c7


    call Call_000_3f60
    jp $4414


    call Call_000_3f60
    jp $42e4


    call Call_000_3f60
    jp $4436


    call Call_000_3f60
    jp $448e


    call Call_000_3f60
    jp $4517


    call Call_000_3f60
    jp $4447


    call Call_000_3f60
    jp $42ce


Call_000_3f4e:
    ldh a, [$fd]
    ld [$dc81], a

Jump_000_3f53:
    ld a, $0c

Call_000_3f55:
jr_000_3f55:
    ldh [$fd], a
    ld [$2000], a
    ret


Call_000_3f5b:
    ld a, [$dc81]
    jr jr_000_3f55

Call_000_3f60:
    ld hl, $dc80
    bit 7, [hl]
    jr nz, jr_000_3f6f

jr_000_3f67:
    set 7, [hl]
    push af
    call Call_000_3f4e
    pop af
    ret


jr_000_3f6f:
    pop hl
    ld a, $ff
    ret


Call_000_3f73:
    ld hl, $dc80
    bit 7, [hl]
    jr z, jr_000_3f67

    bit 6, [hl]
    jr nz, jr_000_3f6f

    set 6, [hl]
    pop hl
    ld a, h
    ld [$dc83], a
    ld a, l
    ld [$dc82], a
    xor a
    ret


    ld hl, $dc80
    bit 6, [hl]
    jr nz, jr_000_3f99

    call Call_000_3f5b
    res 7, [hl]
    xor a
    ret


jr_000_3f99:
    ld a, [$dc83]
    ld h, a
    ld a, [$dc82]
    ld l, a
    push hl
    ld hl, $dc80
    res 6, [hl]
    ret


    ld a, [$dc98]
    call Call_000_3f55
    ld a, [de]
    ld c, a
    jp Jump_000_3f53


    ld a, [$dc98]
    call Call_000_3f55
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    jp Jump_000_3f53


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
