; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    dec d
    add hl, bc
    ld b, b
    or e
    ld b, d
    cp h
    ld b, [hl]
    ld h, c
    ld d, h
    ld hl, sp+$00
    ld a, l
    ld [$da7b], a
    ld a, h
    ld [$da7c], a
    xor a
    ld hl, $c8da
    ld bc, $0008
    call $12c7
    xor a
    ld hl, $c827
    ld bc, $0012
    call $12c7
    ld hl, $99c1
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    xor a
    ld hl, $c8d2
    ld bc, $0008
    call $12c7
    call $1264
    xor a
    ld [$c8c7], a
    ld a, [$c88b]
    rst $00
    ld c, a
    ld b, b
    and b
    ld b, b
    ld [hl], d
    ld b, c
    jr @+$44

    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $5f02
    rst $10
    ld a, $fc
    call $1688
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $00
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    ld [$c86c], a
    ld [$c86d], a
    xor a
    ld [$c863], a
    ld [$c864], a
    ld a, $03
    ld [$c8a1], a
    ld a, $01
    jp $11cb


    ld a, $02
    call $1c89
    call $1013
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $1709
    rst $10
    ld hl, $170a
    rst $10
    ld a, $fc
    call $1688
    ld hl, $ff8a
    ld bc, $0021
    xor a
    call $12c7
    ld hl, $c8ea
    ld bc, $1100
    xor a
    call $12c7
    ld a, $04
    ld [$c8ee], a
    call Call_015_60c4
    ld de, $2e1e
    ld hl, $9000
    call $14cf
    ld de, $2e1f
    ld hl, $8800
    call $14cf
    ld de, $2e20
    ld hl, $8a00
    call $14cf
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ld hl, $8b00
    ld de, $1202
    call $098f
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
    xor a
    ld hl, $c8d2
    ld bc, $0008
    call $12c7
    ld hl, $9800
    ld a, l
    ld [$c8d6], a
    ld a, h
    ld [$c8d7], a
    call Call_015_5e70
    ld a, $24
    call $1ae1
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $00
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    xor a
    ld [$c864], a
    ld [$c86c], a
    ld [$c86d], a
    xor a
    ld [$c863], a
    ld [$c864], a
    ld a, $03
    ld [$c8a1], a
    ld a, $09
    jp $11cb


    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld a, $fc
    call $1688
    ld a, $04
    ld [$c8ee], a
    call Call_015_60c4
    ld de, $2e1e
    ld hl, $9000
    call $14cf
    ld de, $2e1f
    ld hl, $8800
    call $14cf
    ld de, $2e20
    ld hl, $8a00
    call $14cf
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ld hl, $8b00
    ld de, $1202
    call $098f
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
    xor a
    ld hl, $c8d2
    ld bc, $0008
    call $12c7
    ld hl, $9800
    ld a, l
    ld [$c8d6], a
    ld a, h
    ld [$c8d7], a
    call Call_015_5e70
    ld hl, $c0d8
    ld bc, $0017
    ld a, $ff
    call $12c7
    ld a, $24
    call $1ae1
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86e], a
    ld a, $03
    ld [$c8a1], a
    ld a, $09
    jp $11cb


    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld a, $fc
    call $1688
    ld a, $04
    ld [$c8ee], a
    call Call_015_60c4
    ld de, $2e1e
    ld hl, $9000
    call $14cf
    ld de, $2e1f
    ld hl, $8800
    call $14cf
    ld de, $2e20
    ld hl, $8a00
    call $14cf
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ld hl, $8b00
    ld de, $1202
    call $098f
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
    xor a
    ld hl, $c8d2
    ld bc, $0008
    call $12c7
    ld hl, $9800
    ld a, l
    ld [$c8d6], a
    ld a, h
    ld [$c8d7], a
    call Call_015_5e70
    ld a, $24
    call $1ae1
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86e], a
    ld a, $03
    ld [$c8a1], a
    ld a, $09
    jp $11cb


    ld a, [$c88b]
    rst $00
    ret nz

    ld b, d
    jp z, $9e42

    ld b, [hl]
    ld b, a
    ld d, h
    ret


    ld a, $f4
    call $1275
    ld hl, $5f03
    rst $10
    ret


    call Call_015_42f1
    di
    ld a, [$c86d]
    or a
    jr z, jr_015_42ef

    ld a, [$c86d]
    ld b, a
    xor a
    ld [$c86d], a
    ld a, [$c88e]
    or a
    jr nz, jr_015_42ef

    ld a, b
    call $126b

jr_015_42e6:
    ld a, [$c864]
    and $03
    cp $03
    jr nz, jr_015_42e6

jr_015_42ef:
    ei
    ret


Call_015_42f1:
    ld a, [$c8d2]
    rst $00
    ld bc, $4243
    ld b, e
    push bc
    ld b, e
    rst $18
    ld b, e
    ld [bc], a
    ld b, h
    dec de
    ld b, h
    ld a, $f4
    call $1275
    call Call_015_5e61
    ld de, $6439
    ld hl, $a002
    call $20ee
    or a
    jr z, jr_015_4318

    ld de, $6462

jr_015_4318:
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $43b2
    ld hl, $a002
    call $20ee
    or a
    jr z, jr_015_432d

    ld de, $43b7

jr_015_432d:
    xor a
    ld [$c8df], a
    ld a, [$c8da]
    ld [$c8e0], a
    call Call_015_6087
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ld a, $f4
    call nz, $1275
    ret nz

    ld de, $43b2
    ld b, $01
    ld hl, $a002
    call $20ee
    or a
    jr z, jr_015_435f

    ld de, $43b7
    ld b, $04

jr_015_435f:
    ld hl, $c8da
    ld a, [$c8e0]
    ld [$c8da], a
    call Call_015_5f6a
    ld a, [$c8da]
    ld [$c8e0], a
    ld de, $43b6
    ld hl, $a002
    call $20ee
    or a
    jr z, jr_015_4380

    ld de, $43c1

jr_015_4380:
    ld a, [$c8da]
    and $7f
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    call $1275
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_43b1

    ld a, [$c8da]
    and $7f
    cp $02
    jr z, jr_015_43a9

    cp $03
    jr z, jr_015_43a9

    ld a, $59
    call $1b2c

jr_015_43a9:
    ld hl, $c8d2
    inc [hl]
    xor a
    ld [$c8d3], a

Jump_015_43b1:
    ret


    ld hl, $ff00
    rst $38
    db $f4
    ld hl, $6100
    nop
    and c
    nop
    pop hl
    nop
    rst $38
    rst $38
    db $f4
    db $f4
    ld a, [c]
    di
    ld a, [$c8da]
    and $7f
    ld b, a
    ld hl, $a002
    call $20ee
    or a
    jr nz, jr_015_43d5

    inc b

jr_015_43d5:
    ld a, b
    rst $00
    ld a, [hl+]
    ld b, h
    inc bc
    ld b, [hl]
    ld e, h
    ld b, [hl]
    ld a, l
    ld b, [hl]
    ld a, $f4
    call $1275
    ld a, $04
    call $1688
    ld a, $01
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    ld a, $f4
    call $1275
    ld hl, $021b
    call $096d
    ld de, $2e07
    call Call_015_5d74
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, $f4
    call $1275
    ld a, [$c825]
    or a
    ret nz

    xor a
    ld [$c8d2], a
    ret


    ld a, $f4
    call $1275
    ld a, [$c8d3]
    rst $00
    scf
    ld b, h
    pop hl
    ld b, l
    di
    call $21b2
    ei
    ld hl, $1700
    rst $10
    jr jr_015_44bc

    ld a, [$c969]
    or a
    jr z, jr_015_44bc

    ld a, [$d9e7]
    or a
    jr z, jr_015_44b2

    ld a, $01
    ld [$c8ea], a
    ld a, $01
    ld [$c96c], a
    ld a, $00
    ld [$c96d], a
    ld [$c96e], a
    ld hl, $00e8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0058
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $00
    ldh [$8d], a
    ld a, $02
    ldh [$8f], a
    ld a, $02
    ldh [$8e], a
    ldh a, [$8f]
    add $00
    ld [$d7b8], a
    xor a
    ld [$d7ba], a
    ld [$d7bb], a
    ld [$d7b6], a
    ld hl, $d7b6
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ldh a, [$8a]
    ld [$d7b7], a
    ld hl, $0200
    rst $10
    ld a, [$d7ba]
    ldh [$8b], a
    ld hl, $0109
    rst $10
    jr jr_015_44c8

jr_015_44b2:
    ld a, $01
    ld [$d9e7], a
    di
    call $2128
    ei

jr_015_44bc:
    ld a, [$d974]
    cp $06
    jr z, jr_015_44c8

    ld a, $80
    ld [$c8ea], a

jr_015_44c8:
    ld a, [$c8eb]
    bit 4, a
    jr nz, jr_015_44d3

    xor a
    ld [$c8eb], a

jr_015_44d3:
    xor a
    ld [$d9e7], a
    ld hl, $0103
    rst $10
    ld de, $ca42
    ld hl, $9000
    call Call_015_5e13
    call Call_015_4593
    ld de, $662b
    call Call_015_5d74
    ld a, [$cab8]
    ld c, a
    ld b, $00
    ld hl, HeaderComplementCheck
    call Call_015_5d18
    call $20ad
    ld a, [$cab7]
    ld c, a
    ld b, $00
    ld hl, $0150
    call Call_015_5d18
    call $20ad
    ld a, [$ca8d]
    or a
    jr z, jr_015_455d

    ld hl, $cb0c
    ld a, $00
    call $224a
    ld c, a
    ld b, $00
    ld hl, $01a4
    call Call_015_5d18
    call $2082
    ld a, [$ca8d]
    cp $01
    jr z, jr_015_4563

    ld hl, $cb0c
    ld a, $01
    call $224a
    ld c, a
    ld b, $00
    ld hl, $01aa
    call Call_015_5d18
    call $2082
    ld a, [$ca8d]
    cp $02
    jr z, jr_015_4569

    ld hl, $cb0c
    ld a, $02
    call $224a
    ld c, a
    ld b, $00
    ld hl, $01b0
    call Call_015_5d18
    call $2082
    jr jr_015_456f

jr_015_455d:
    ld hl, $0181
    call Call_015_4577

jr_015_4563:
    ld hl, $0187
    call Call_015_4577

jr_015_4569:
    ld hl, $018d
    call Call_015_4577

jr_015_456f:
    call Call_015_5da5
    ld hl, $c8d3
    inc [hl]
    ret


Call_015_4577:
    push hl
    call Call_015_5d18
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_015_5d18
    ld a, $e0
    ld [hl+], a
    ld [hl], a
    ret


Call_015_4593:
    ld hl, $cac2
    ld a, $00
    call $2229
    ld e, l
    ld d, h
    ld hl, $9040
    ld a, $01
    call Call_015_45ca
    ld hl, $cac2
    ld a, $01
    call $2229
    ld e, l
    ld d, h
    ld hl, $9080
    ld a, $02
    call Call_015_45ca
    ld hl, $cac2
    ld a, $02
    call $2229
    ld e, l
    ld d, h
    ld hl, $90c0
    ld a, $03
    call Call_015_45ca
    ret


Call_015_45ca:
    ld b, a
    ld a, [$ca8d]
    cp b
    jp nc, Jump_015_5e13

    ld b, $20

jr_015_45d4:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_015_45d4

    ret


    ld a, [$c846]
    bit 0, a
    jr z, jr_015_45f3

    ld a, $59
    call $1b2c
    ld hl, $c8d2
    inc [hl]
    jr jr_015_4602

jr_015_45f3:
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_4602

    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]

jr_015_4602:
    ret


    ld a, $f4
    call $1275
    ld a, [$c8d3]
    rst $00
    ld [de], a
    ld b, [hl]
    ld [de], a
    ld b, [hl]
    ld [de], a
    ld b, [hl]
    ld hl, $ff8a
    ld bc, $0021
    xor a
    call $12c7
    ld hl, $c8ea
    ld bc, $1100
    xor a
    call $12c7
    ld a, $04
    ld [$c8ee], a
    xor a
    ld [$c8ea], a
    ld hl, $c8d2
    inc [hl]
    xor a
    ld [$d8d7], a
    ld a, $2f
    ld [$c968], a
    ld [$c96a], a
    ld a, $00
    ld [$c969], a
    ld [$c96b], a
    ld a, $00
    ld [$ca8d], a
    ld a, $ff
    ld [$ca8e], a
    ld a, $ff
    ld [$ca8f], a
    ld a, $ff
    ld [$ca90], a
    ret


    ld a, [$c8df]
    cp $ff
    jr z, jr_015_466e

    ld a, $00
    ld [$c841], a
    ld a, $f0
    ld [$c86d], a
    ret


jr_015_466e:
    ld a, $59
    call $1b2c
    xor a
    ld [$c86d], a
    ld a, $04
    ld [$c8d2], a
    ret


    ld a, [$c8df]
    cp $ff
    jr z, jr_015_468f

    ld a, $00
    ld [$c841], a
    ld a, $f1
    ld [$c86d], a
    ret


jr_015_468f:
    ld a, $59
    call $1b2c
    xor a
    ld [$c86d], a
    ld a, $04
    ld [$c8d2], a
    ret


    call $047e
    ld a, [$c8d2]
    cp $06
    jr z, jr_015_46b1

    cp $14
    jr z, jr_015_46b1

    cp $1c
    jr z, jr_015_46b1

    ret


jr_015_46b1:
    call Call_015_5397
    call Call_015_53d3
    ld hl, $1702
    rst $10
    ret


    ld a, [$c8d2]
    rst $00
    ld a, [bc]
    ld b, a
    sbc h
    ld b, a
    add hl, hl
    ld c, c
    db $f4
    ld c, c
    ld sp, hl
    ld c, c
    ld [hl+], a
    ld c, d
    ldh a, [rWY]
    ld b, $4b
    inc a
    ld c, e
    ld d, b
    ld c, e
    ld a, b
    ld c, e
    adc $4b
    ld [c], a
    ld c, e
    ld a, [bc]
    ld c, h
    ld a, c
    ld c, h
    rlca
    ld c, l
    xor l
    ld c, l
    ld a, $4e
    ld b, e
    ld c, [hl]
    ld l, h
    ld c, [hl]
    ld b, b
    ld c, a
    ld d, [hl]
    ld c, a
    adc h
    ld c, a
    sbc h
    ld c, a
    db $dd
    ld c, a
    push af
    ld c, a
    dec b
    ld d, b
    ld [hl-], a
    ld d, b
    ret z

    ld d, b
    db $e3
    ld d, b
    add hl, de
    ld d, c
    ld c, l
    ld d, c
    adc a
    ld d, c
    sbc a
    ld d, c
    add [hl]
    ld d, d
    ld hl, $4153
    ld d, e
    call Call_015_4715
    call Call_015_4754
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4715:
    ld de, $cac1
    ld b, $00
    ld c, $00

jr_015_471c:
    push de
    ld a, [de]
    or a
    jr z, jr_015_4740

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_4740

    ld a, [$c0ec]
    cp b
    jr z, jr_015_4740

    ld a, [$c0ed]
    cp b
    jr z, jr_015_4740

    ld a, [$c0ee]
    cp b
    jr z, jr_015_4740

    inc c

jr_015_4740:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc b
    ld a, b
    cp $14
    jr nz, jr_015_471c

    ld a, c
    ld [$c8d8], a
    ret


Call_015_4754:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_4769:
    push de
    ld a, [de]
    or a
    jr z, jr_015_478e

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_478e

    ld a, [$c0ec]
    cp c
    jr z, jr_015_478e

    ld a, [$c0ed]
    cp c
    jr z, jr_015_478e

    ld a, [$c0ee]
    cp c
    jr z, jr_015_478e

    ld [hl], c
    inc hl

jr_015_478e:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_015_4769

    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $5605
    rst $10
    call Call_015_5e61
    call Call_015_4845
    call Call_015_47f0
    call Call_015_47c2
    call Call_015_4ae0
    call Call_015_5da5
    ld hl, $0225
    call $096d
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_47c2:
    ld de, $681f
    call Call_015_5d74
    call Call_015_48ca
    ld de, $66a5
    call Call_015_5d74
    ld de, $66ff
    call Call_015_5d74
    ld de, $2e07
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $49e8
    ld b, $04
    ld a, [$c8d8]
    ld c, a
    ld hl, $c8da
    call Call_015_6065
    ret


Call_015_47f0:
    ld a, [$c8db]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9100
    call Call_015_480a
    call Call_015_480a
    call Call_015_480a

Call_015_480a:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_015_482b

    ld a, [de]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_015_5e13
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_015_482b:
    ld b, $20

jr_015_482d:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_015_482d

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_015_4845:
    ld a, [$c8db]
    add a
    add a
    ld b, a
    ld a, [$c8da]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $9000
    call Call_015_5e13
    pop af
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld hl, $9200
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_015_48ca:
    ld a, [$c8db]
    add a
    add a
    ld b, a
    ld a, [$c8da]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $cb0c
    call $223b
    ld c, [hl]
    ld b, $00
    ld hl, $0161
    call Call_015_5d18
    ld a, $de
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $e0
    ld [hl-], a
    call Call_015_611a
    pop af
    push af
    ld hl, $cac1
    call $223b
    pop af
    ld b, a
    ld a, [hl]
    cp $02
    jr z, jr_015_4915

    call Call_015_4ef9
    jr nz, jr_015_4915

    jr jr_015_491f

jr_015_4915:
    ld hl, $0169
    call Call_015_5d18
    ld a, $e3
    ld [hl], a
    ret


jr_015_491f:
    ld hl, $0169
    call Call_015_5d18
    ld a, $e0
    ld [hl], a
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    call Call_015_5376
    ret z

    ld de, $49e8
    ld hl, $c8da
    ld a, [$c8d8]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_015_5ee1
    pop af
    ld hl, $c8da
    cp [hl]
    jr z, jr_015_495b

    call Call_015_4845
    call Call_015_48ca
    call Call_015_5da5

jr_015_495b:
    pop af
    ld hl, $c8db
    cp [hl]
    jr z, jr_015_496e

    call Call_015_47f0
    call Call_015_4845
    call Call_015_48ca
    call Call_015_5da5

jr_015_496e:
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_49b9

    ld a, [$c0ee]
    cp $ff
    jr z, jr_015_4983

    ld a, $ff
    ld [$c0ee], a
    jr jr_015_499d

jr_015_4983:
    ld a, [$c0ed]
    cp $ff
    jr z, jr_015_4991

    ld a, $ff
    ld [$c0ed], a
    jr jr_015_499d

jr_015_4991:
    ld a, [$c0ec]
    cp $ff
    jr z, jr_015_49a7

    ld a, $ff
    ld [$c0ec], a

jr_015_499d:
    call Call_015_4ae0
    ld a, $00
    ld [$c8d2], a
    jr jr_015_49e7

jr_015_49a7:
    ld hl, $022d
    call $096d
    ld a, $24
    ld [$c8d2], a
    ld a, $fd
    ld [$c873], a
    jr jr_015_49e7

jr_015_49b9:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_49e7

    ld a, $59
    call $1b2c
    xor a
    ld [$c8dc], a
    ld a, [$c8db]
    add a
    add a
    ld b, a
    ld a, [$c8da]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $c8d2
    inc [hl]

Jump_015_49e7:
jr_015_49e7:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e61
    call Call_015_4a0c
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4a0c:
    call Call_015_47c2
    ld de, $6739
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $4ada
    ld a, [$c8dc]
    call Call_015_6087
    ret


    call Call_015_5376
    ret z

    ld de, $4ada
    ld hl, $c8dc
    ld b, $02
    call Call_015_5f6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_4a56

    call Call_015_5e61
    call Call_015_4845
    call Call_015_47f0
    call Call_015_47c2
    call Call_015_5da5
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    jp Jump_015_4ad9


jr_015_4a56:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_4ad9

    ld a, $59
    call $1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_015_4a78

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_4ad9


jr_015_4a78:
    ld a, [$c0ec]
    cp $ff
    jr nz, jr_015_4a87

    ld a, [$cac0]
    ld [$c0ec], a
    jr jr_015_4ab8

jr_015_4a87:
    ld a, [$c0ed]
    cp $ff
    jr nz, jr_015_4a96

    ld a, [$cac0]
    ld [$c0ed], a
    jr jr_015_4ab8

jr_015_4a96:
    ld a, [$cac0]
    ld [$c0ee], a
    call Call_015_4ae0
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ret


jr_015_4ab8:
    call Call_015_4ae0
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    call Call_015_4715
    or a
    jr nz, jr_015_4ad9

    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]

Jump_015_4ad9:
jr_015_4ad9:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38

Call_015_4ae0:
    ld de, $c0ec
    ld hl, $9040
    call Call_015_480a
    call Call_015_480a
    call Call_015_480a
    ret


    xor a
    ld [$c906], a
    xor a
    ld [$c8eb], a
    ld hl, $0701
    rst $10
    ld a, [$c906]
    or a
    ret z

    ld hl, $c8d2
    inc [hl]
    ret


    ld de, $2e1e
    ld hl, $9000
    call $1577
    ld de, $2e1f
    ld hl, $8800
    call $1577
    ld hl, $0225
    call $096d
    call $0609
    call Call_015_5e61
    call Call_015_4845
    call Call_015_47f0
    call Call_015_47c2
    call Call_015_4a0c
    call Call_015_4ae0
    call Call_015_5da5
    ld a, $05
    ld [$c8d2], a
    ret


    ld de, $2e07
    call Call_015_5d74
    call Call_015_5da5
    ld hl, $0227
    call $096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    call Call_015_4b65
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4b65:
    ld de, $6763
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $4bc8
    ld a, [$c8dd]
    call Call_015_6087
    ret


    call Call_015_5376
    ret z

    ld de, $4bc8
    ld hl, $c8dd
    ld b, $02
    call Call_015_5f6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_4b95

jr_015_4b8e:
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_4bc7


jr_015_4b95:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_4bc7

    ld a, $59
    call $1b2c
    ld a, [$c8dd]
    cp $81
    jr z, jr_015_4b8e

    call Call_015_4715
    call Call_015_4754
    call Call_015_4845
    call Call_015_47f0
    call Call_015_47c2
    ld a, $01
    ld [$c8d2], a
    xor a
    ld [$c8da], a
    ld [$c8db], a
    jp Jump_015_4bc7


Jump_015_4bc7:
    ret


    rst $08
    ld bc, $020f
    rst $38
    rst $38
    ld de, $2e07
    call Call_015_5d74
    call Call_015_5da5
    ld hl, $0228
    call $096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    call Call_015_4bf7
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4bf7:
    ld de, $6763
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $4c73
    ld a, [$c8de]
    call Call_015_6087
    ret


    call Call_015_5376
    ret z

    ld de, $4c73
    ld hl, $c8de
    ld b, $02
    call Call_015_5f6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_4c41

jr_015_4c20:
    ld de, $2e07
    call Call_015_5d74
    call Call_015_5da5
    ld hl, $0229
    call $096d
    ld a, $14
    ld [$cac0], a
    ld a, $00
    ld [$d665], a
    ld a, $16
    ld [$c8d2], a
    jp Jump_015_4c72


jr_015_4c41:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_4bc7

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_015_4c20

    call Call_015_4ca7
    call Call_015_4cd1
    call Call_015_4845
    call Call_015_47f0
    call Call_015_47c2
    xor a
    ld [$c8da], a
    ld [$c8db], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_4c72


Jump_015_4c72:
    ret


    rst $08
    ld bc, $020f
    rst $38
    rst $38
    call Call_015_4ca7
    call Call_015_4cd1
    ld hl, $c8d2
    inc [hl]
    ld a, [$c8d8]
    or a
    ret nz

    ld de, $2e07
    call Call_015_5d74
    call Call_015_5da5
    ld hl, $0229
    call $096d
    ld a, $14
    ld [$cac0], a
    ld a, $00
    ld [$d665], a
    ld a, $16
    ld [$c8d2], a
    ret


Call_015_4ca7:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_4cae:
    push de
    ld a, [de]
    or a
    jr z, jr_015_4cc0

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_4cc0

    inc c

jr_015_4cc0:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_015_4cae

    ld a, c
    ld [$c8d8], a
    ret


Call_015_4cd1:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_4ce6:
    push de
    ld a, [de]
    or a
    jr z, jr_015_4cf9

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_4cf9

    ld [hl], c
    inc hl

jr_015_4cf9:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_015_4ce6

    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $5605
    rst $10
    call Call_015_5e61
    call Call_015_4845
    call Call_015_4d58
    call Call_015_4d2a
    call Call_015_5da5
    ld hl, $022a
    call $096d
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4d2a:
    ld de, $681f
    call Call_015_5d74
    call Call_015_48ca
    ld de, $66a5
    call Call_015_5d74
    ld de, $66ff
    call Call_015_5d74
    ld de, $2e07
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $4e32
    ld b, $04
    ld a, [$c8d8]
    ld c, a
    ld hl, $c8da
    call Call_015_6065
    ret


Call_015_4d58:
    ld a, [$c8db]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9100
    call Call_015_4d72
    call Call_015_4d72
    call Call_015_4d72

Call_015_4d72:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_015_4d93

    ld a, [de]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_015_5e13
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_015_4d93:
    ld b, $20

jr_015_4d95:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_015_4d95

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    call Call_015_5376
    ret z

    ld de, $4e32
    ld hl, $c8da
    ld a, [$c8d8]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_015_5ee1
    pop af
    ld hl, $c8da
    cp [hl]
    jr z, jr_015_4ddf

    call Call_015_4845
    call Call_015_48ca
    call Call_015_5da5

jr_015_4ddf:
    pop af
    ld hl, $c8db
    cp [hl]
    jr z, jr_015_4df2

    call Call_015_4d58
    call Call_015_4845
    call Call_015_48ca
    call Call_015_5da5

jr_015_4df2:
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_4e00

    ld a, $0b
    ld [$c8d2], a
    jr jr_015_4e31

jr_015_4e00:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_4e31

    ld a, $59
    call $1b2c
    xor a
    ld [$c8dc], a
    ld [$c8dd], a
    ld a, [$c8db]
    add a
    add a
    ld b, a
    ld a, [$c8da]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $c8d2
    inc [hl]

Jump_015_4e31:
jr_015_4e31:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e61
    call Call_015_4e56
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4e56:
    call Call_015_4d2a
    ld de, $6739
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $4ef3
    ld a, [$c8dc]
    call Call_015_6087
    ret


    call Call_015_5376
    ret z

    ld de, $4ef3
    ld hl, $c8dc
    ld b, $02
    call Call_015_5f6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_4ea0

    call Call_015_5e61
    call Call_015_4845
    call Call_015_4d58
    call Call_015_4d2a
    call Call_015_5da5
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    jp Jump_015_4ef2


jr_015_4ea0:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_4ef2

    ld a, $59
    call $1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_015_4ec2

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_4ef2


jr_015_4ec2:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld a, [$cac0]
    ld b, a
    call Call_015_4ef9
    jr nz, jr_015_4ee5

    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    jr nz, jr_015_4ef2

jr_015_4ee5:
    ld hl, $025c
    call $096d
    ld a, $23
    ld [$c8d2], a
    jr jr_015_4ef2

Jump_015_4ef2:
jr_015_4ef2:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38

Call_015_4ef9:
    ld hl, $a1c7
    call $20ee
    or a
    jr nz, jr_015_4f3a

    ld hl, $a1f3
    call $20ee
    or a
    jr z, jr_015_4f3a

    ld hl, $a1f4
    call $20ee
    cp b
    jr z, jr_015_4f3c

    ld hl, $a1f3
    call $20ee
    cp $01
    jr z, jr_015_4f3a

    ld hl, $a1f5
    call $20ee
    cp b
    jr z, jr_015_4f3c

    ld hl, $a1f3
    call $20ee
    cp $02
    jr z, jr_015_4f3a

    ld hl, $a1f6
    call $20ee
    cp b
    jr z, jr_015_4f3c

jr_015_4f3a:
    xor a
    ret


jr_015_4f3c:
    ld a, $01
    or a
    ret


    xor a
    ld [$c906], a
    xor a
    ld [$c8eb], a
    ld hl, $0701
    rst $10
    ld a, [$c906]
    or a
    ret z

    ld hl, $c8d2
    inc [hl]
    ret


    ld de, $2e1e
    ld hl, $9000
    call $1577
    ld de, $2e1f
    ld hl, $8800
    call $1577
    ld hl, $022a
    call $096d
    call $0609
    call Call_015_5e61
    call Call_015_4845
    call Call_015_4d58
    call Call_015_4d2a
    call Call_015_4e56
    call Call_015_4ae0
    call Call_015_5da5
    ld a, $12
    ld [$c8d2], a
    ret


    ld hl, $021f
    call $096d
    ld hl, $c8d2
    inc [hl]
    ld a, $01
    ld [$c873], a
    ret


    call Call_015_5376
    ret z

    ld a, [$c86e]
    cp $01
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld a, $95
    ld [$c871], a
    xor a
    ld [$c872], a
    ld a, [$cac0]
    ld [$c8ba], a
    ld hl, $cac1
    call $223b
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $d6fa
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld a, $00
    ld [$c873], a
    ld hl, $c8d2
    inc [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $022b
    call $096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e61
    call Call_015_501c
    call Call_015_5da5
    xor a
    ld [$c8dd], a
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_501c:
    call Call_015_4d2a
    ld de, $6788
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $50c0
    ld a, [$c8dd]
    call Call_015_6087
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_504c

    ld hl, $022e
    call $096d
    ld a, $1e
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_50bf


jr_015_504c:
    ld de, $50c0
    ld hl, $c8dd
    ld b, $03
    call Call_015_5f6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_5071

jr_015_505e:
    ld hl, $022d
    call $096d
    ld a, $1e
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_50bf


jr_015_5071:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_50bf

    ld a, $59
    call $1b2c
    ld a, [$c8dd]
    cp $80
    jr z, jr_015_50ab

    cp $82
    jr z, jr_015_505e

    ld a, [$d6fa]
    or a
    jr z, jr_015_509d

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_50bf


jr_015_509d:
    ld hl, $022f
    call $096d
    ld a, $19
    ld [$c8d2], a
    jp Jump_015_50bf


jr_015_50ab:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]

Jump_015_50bf:
    ret


    inc l
    nop
    ld l, h
    nop
    xor h
    nop
    rst $38
    rst $38
    ld a, $15
    ld [$cac0], a
    xor a
    ld [$c906], a
    xor a
    ld [$c8eb], a
    ld hl, $0701
    rst $10
    ld a, [$c906]
    or a
    ret z

    ld hl, $c8d2
    inc [hl]
    ret


    ld de, $2e1e
    ld hl, $9000
    call $1577
    ld de, $2e1f
    ld hl, $8800
    call $1577
    ld hl, $022b
    call $096d
    call $0609
    call Call_015_5e61
    call Call_015_4845
    call Call_015_4d58
    call Call_015_4d2a
    call Call_015_4ae0
    call Call_015_501c
    call Call_015_5da5
    ld a, $1a
    ld [$c8d2], a
    ret


    ld a, [$c86e]
    cp $fe
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld hl, $c88a
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $00
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    xor a
    ld [$c863], a
    ld [$c864], a
    ld [$c86c], a
    xor a
    ld [$c86e], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86d], a
    ld a, $04
    call $1688
    ret


    ld hl, $021f
    call $096d
    ld hl, $c8d2
    inc [hl]
    ld a, $01
    ld [$c873], a
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_51b9

    ld hl, $022e
    call $096d
    ld a, $1e
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_526b


jr_015_51b9:
    ld a, [$c86e]
    cp $01
    ret nz

    ld a, [$c0ec]
    ld de, $c300
    call Call_015_526c
    ld a, [$c0ed]
    ld de, $c395
    call Call_015_526c
    ld a, [$c0ee]
    ld de, $c42a
    call Call_015_526c
    ld hl, $c300
    ld de, $cac1
    ld b, $95

jr_015_51e2:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_51e2

    ld a, [$c0ec]
    ld [$c8c4], a
    ld a, [$c0ed]
    ld [$c8c5], a
    ld a, [$c0ee]
    ld [$c8c6], a
    xor a
    ld [$c8c3], a
    ld a, [$c8c4]
    cp $ff
    jr z, jr_015_5228

    ld a, $01
    ld [$c8c3], a
    ld a, [$c8c5]
    cp $ff
    jr z, jr_015_5228

    ld a, $02
    ld [$c8c3], a
    ld a, [$c8c6]
    cp $ff
    jr z, jr_015_5228

    ld a, $03
    ld [$c8c3], a

jr_015_5228:
    ld hl, $ca42
    ld de, $cacd
    ld b, $08

jr_015_5230:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_5230

    ld hl, $01bf
    ld a, l
    ld [$c871], a
    ld a, h
    ld [$c872], a
    ld hl, $cac1
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $cd15
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ld hl, $c8d2
    inc [hl]
    ld hl, $022c
    call $096d

Jump_015_526b:
    ret


Call_015_526c:
    and $7f
    cp $7f
    jr nz, jr_015_5275

    xor a
    ld [de], a
    ret


jr_015_5275:
    push de
    ld hl, $cac1
    call $223b
    pop de
    ld b, $95

jr_015_527f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_527f

    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld hl, $010b
    rst $10
    ld hl, $cac1
    ld de, $cac1
    ld b, $95
    ld a, [$c863]
    bit 1, a
    jr z, jr_015_52a6

    ld de, $cd15

jr_015_52a6:
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_52a6

    ld a, $ff
    ld [$ca8e], a
    ld [$ca8f], a
    ld [$ca90], a
    ld b, $00
    ld a, [$cac1]
    or a
    jr z, jr_015_52ec

    ld a, $00
    ld [$ca8e], a
    inc b
    ld a, [$cb56]
    or a
    jr z, jr_015_52ec

    ld a, $01
    ld [$ca8f], a
    inc b
    ld a, [$cbeb]
    or a
    jr z, jr_015_52ec

    ld a, $02
    ld [$ca90], a
    inc b

jr_015_52ec:
    ld a, b
    ld [$ca8d], a
    ld a, [$c8ba]
    cp $14
    jr nz, jr_015_52fc

    ld a, $ff
    ld [$c8ba], a

jr_015_52fc:
    ld hl, $c88a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $01
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86e], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e61
    call Call_015_4845
    call Call_015_4d58
    call Call_015_4d2a
    call Call_015_5da5
    ld hl, $022a
    call $096d
    ld a, $10
    ld [$c8d2], a
    ret


    ld a, [$c86e]
    cp $fd
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $1f
    ld [$c8d2], a
    ld a, $01
    ld [$c8c7], a
    ret


Call_015_5376:
    ld a, [$c86e]
    cp $fd
    ret nz

    ld hl, $022e
    call $096d
    ld de, $2e07
    call Call_015_5d74
    call Call_015_5da5
    ld a, $24
    ld [$c8d2], a
    ld a, $fd
    ld [$c873], a
    xor a
    ret


Call_015_5397:
    ld a, [$c90e]
    cp $05
    ret nz

    ld hl, $caca
    ld a, [$cac0]
    call $223b
    ld a, [hl]
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_53c6

    ld b, $01

jr_015_53c6:
    ld a, b
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_015_53d3:
    ld a, [$c90e]
    cp $09
    ret nz

    ld hl, $cad6
    ld a, [$cac0]
    call $223b
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5405

    ld b, $01

jr_015_5405:
    ld a, b
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ld hl, $cad7
    ld a, [$cac0]
    call $223b
    ld a, [hl]
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_543a

    ld b, $01

jr_015_543a:
    ld a, b
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


    call $047e
    ld a, [$c8d2]
    cp $06
    jr z, jr_015_5456

    cp $0e
    jr z, jr_015_5456

    ret


jr_015_5456:
    call Call_015_5c45
    call Call_015_5c81
    ld hl, $1702
    rst $10
    ret


    ld a, [$c8d2]
    rst $00
    sbc c
    ld d, h
    inc b
    ld d, l
    and h
    ld d, l
    ld a, $56
    ld b, e
    ld d, [hl]
    ld l, h
    ld d, [hl]
    inc d
    ld d, a
    ld a, [hl+]
    ld d, a
    ld e, d
    ld d, a
    ld l, d
    ld d, a
    xor b
    ld d, a
    inc d
    ld e, b
    rra
    ld e, b
    ld c, b
    ld e, b
    adc $58
    jp hl


    ld e, b
    add hl, de
    ld e, c
    ld b, c
    ld e, c
    ld [hl], l
    ld e, c
    or a
    ld e, c
    add $59
    db $f4
    ld e, c
    ld h, b
    ld e, d
    ld [hl], b
    ld e, d
    call nz, $ef5a
    ld e, e
    call Call_015_54a4
    call Call_015_54ce
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_54a4:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_54ab:
    push de
    ld a, [de]
    or a
    jr z, jr_015_54bd

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_54bd

    inc c

jr_015_54bd:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_015_54ab

    ld a, c
    ld [$c8d8], a
    ret


Call_015_54ce:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_54e3:
    push de
    ld a, [de]
    or a
    jr z, jr_015_54f6

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_54f6

    ld [hl], c
    inc hl

jr_015_54f6:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_015_54e3

    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $5605
    rst $10
    call Call_015_5e61
    call Call_015_4845
    call Call_015_554f
    call Call_015_5527
    call Call_015_5da5
    ld hl, $021c
    call $096d
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_5527:
    ld de, $681f
    call Call_015_5d74
    call Call_015_48ca
    ld de, $66a5
    call Call_015_5d74
    ld de, $2e07
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $5632
    ld b, $04
    ld a, [$c8d8]
    ld c, a
    ld hl, $c8da
    call Call_015_6065
    ret


Call_015_554f:
    ld a, [$c8db]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9100
    call Call_015_5569
    call Call_015_5569
    call Call_015_5569

Call_015_5569:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_015_558a

    ld a, [de]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_015_5e13
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_015_558a:
    ld b, $20

jr_015_558c:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_015_558c

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    call Call_015_5c24
    ret z

    ld de, $5632
    ld hl, $c8da
    ld a, [$c8d8]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_015_5ee1
    pop af
    ld hl, $c8da
    cp [hl]
    jr z, jr_015_55d6

    call Call_015_4845
    call Call_015_48ca
    call Call_015_5da5

jr_015_55d6:
    pop af
    ld hl, $c8db
    cp [hl]
    jr z, jr_015_55e9

    call Call_015_554f
    call Call_015_4845
    call Call_015_48ca
    call Call_015_5da5

jr_015_55e9:
    ld a, [$c846]
    bit 1, a
    jp z, Jump_015_5603

    ld hl, $0221
    call $096d
    ld a, $19
    ld [$c8d2], a
    ld a, $fd
    ld [$c873], a
    jr jr_015_5631

Jump_015_5603:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_5631

    ld a, $59
    call $1b2c
    xor a
    ld [$c8dc], a
    ld a, [$c8db]
    add a
    add a
    ld b, a
    ld a, [$c8da]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $c8d2
    inc [hl]

Jump_015_5631:
jr_015_5631:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e61
    call Call_015_5656
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_5656:
    call Call_015_5527
    ld de, $6739
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $570e
    ld a, [$c8dc]
    call Call_015_6087
    ret


    call Call_015_5c24
    ret z

    ld de, $570e
    ld hl, $c8dc
    ld b, $02
    call Call_015_5f6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_56a0

    call Call_015_5e61
    call Call_015_4845
    call Call_015_554f
    call Call_015_5527
    call Call_015_5da5
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    jp Jump_015_570d


jr_015_56a0:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_570d

    ld a, $59
    call $1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_015_56c2

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_570d


jr_015_56c2:
    ld a, [$cac0]
    ld b, a
    call Call_015_4ef9
    jr nz, jr_015_56d9

    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    jr nz, jr_015_56e6

jr_015_56d9:
    ld hl, $025d
    call $096d
    ld a, $10
    ld [$c8d2], a
    jr jr_015_570d

jr_015_56e6:
    ld a, [$cac0]
    ld hl, $cb0c
    call $223b
    ld a, [hl]
    cp $0a
    jr nc, jr_015_5701

    ld hl, $0230
    call $096d
    ld a, $10
    ld [$c8d2], a
    jr jr_015_570d

jr_015_5701:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]

Jump_015_570d:
jr_015_570d:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    xor a
    ld [$c906], a
    xor a
    ld [$c8eb], a
    ld hl, $0701
    rst $10
    ld a, [$c906]
    or a
    ret z

    ld hl, $c8d2
    inc [hl]
    ret


    ld de, $2e1e
    ld hl, $9000
    call $1577
    ld de, $2e1f
    ld hl, $8800
    call $1577
    ld hl, $021c
    call $096d
    call $0609
    call Call_015_5e61
    call Call_015_4845
    call Call_015_554f
    call Call_015_5656
    call Call_015_5da5
    ld a, $05
    ld [$c8d2], a
    ret


    ld hl, $021f
    call $096d
    ld hl, $c8d2
    inc [hl]
    ld a, $01
    ld [$c873], a
    ret


    call Call_015_5c24
    ret z

    ld a, [$c86e]
    cp $01
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld a, $95
    ld [$c871], a
    xor a
    ld [$c872], a
    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $d6fa
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld a, [$cac0]
    ld hl, $cacc
    call $223b
    ld a, [$d705]
    and $01
    ld b, a
    ld a, [hl]
    and $01
    cp b
    jr nz, jr_015_57d4

    ld hl, $021e
    call $096d
    ld a, $10
    ld [$c8d2], a
    jr jr_015_5813

jr_015_57d4:
    ld a, [$cac0]
    ld d, a
    ld hl, $0107
    rst $10
    ld a, d
    ld c, $1b
    call $1dbe
    push hl
    ld d, $15
    ld hl, $0107
    rst $10
    ld a, d
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    add $60
    ld l, a
    ld a, h
    adc $61
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_015_580a

    ld hl, $025e
    call $096d
    ld a, $10
    ld [$c8d2], a
    jr jr_015_5813

jr_015_580a:
    ld a, $00
    ld [$c873], a
    ld hl, $c8d2
    inc [hl]

jr_015_5813:
    ret


    ld hl, $0220
    call $096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e61
    call Call_015_5832
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_5832:
    call Call_015_5527
    ld de, $67d0
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $58c6
    ld a, [$c8dd]
    call Call_015_6087
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_5862

    ld hl, $0222
    call $096d
    ld a, $11
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_58c5


jr_015_5862:
    ld de, $58c6
    ld hl, $c8dd
    ld b, $03
    call Call_015_5f6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_5887

jr_015_5874:
    ld hl, $0221
    call $096d
    ld a, $11
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_58c5


jr_015_5887:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_58c5

    ld a, $59
    call $1b2c
    ld a, [$c8dd]
    cp $80
    jr z, jr_015_58ad

    cp $82
    jr z, jr_015_5874

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_58c5


jr_015_58ad:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]

Jump_015_58c5:
    ret


    dec hl
    nop
    ld l, e
    nop
    xor e
    nop
    rst $38
    rst $38
    ld a, $15
    ld [$cac0], a
    xor a
    ld [$c906], a
    xor a
    ld [$c8eb], a
    ld hl, $0701
    rst $10
    ld a, [$c906]
    or a
    ret z

    ld hl, $c8d2
    inc [hl]
    ret


    ld de, $2e1e
    ld hl, $9000
    call $1577
    ld de, $2e1f
    ld hl, $8800
    call $1577
    ld hl, $0220
    call $096d
    call $0609
    call Call_015_5e61
    call Call_015_4845
    call Call_015_554f
    call Call_015_5832
    call Call_015_5da5
    ld a, $0d
    ld [$c8d2], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $00
    ld [$c873], a
    ld hl, $021c
    call $096d
    call $0609
    call Call_015_5e61
    call Call_015_4845
    call Call_015_554f
    call Call_015_5527
    call Call_015_5da5
    ld a, $02
    ld [$c8d2], a
    ret


    ld a, [$c86e]
    cp $fe
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld hl, $c88a
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $00
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    xor a
    ld [$c863], a
    ld [$c864], a
    ld [$c86c], a
    xor a
    ld [$c86e], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86d], a
    ld a, $04
    call $1688
    ret


    ld hl, $0223
    call $096d
    xor a
    ld [$c8de], a
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    call Call_015_5e61
    call Call_015_59de
    call Call_015_5da5
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_59de:
    call Call_015_5832
    ld de, $6606
    call Call_015_5d74
    call Call_015_5fc8
    ld de, $5a5a
    ld a, [$c8de]
    call Call_015_6087
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_5a0e

    ld hl, $0222
    call $096d
    ld a, $11
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_58c5


jr_015_5a0e:
    ld de, $5a5a
    ld hl, $c8de
    ld b, $02
    call Call_015_5f6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_015_5a37

jr_015_5a20:
    call Call_015_5e61
    call Call_015_5832
    call Call_015_5da5
    ld hl, $0220
    call $096d
    ld a, $0c
    ld [$c8d2], a
    jp Jump_015_5a59


jr_015_5a37:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_015_5a59

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_015_5a20

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_5a59


Jump_015_5a59:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $021f
    call $096d
    ld hl, $c8d2
    inc [hl]
    ld a, $01
    ld [$c873], a
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_5a8a

    ld hl, $0222
    call $096d
    ld a, $11
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_58c5


jr_015_5a8a:
    ld a, [$c86e]
    cp $01
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ld hl, $c8d2
    inc [hl]
    ld hl, $0224
    call $096d
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld hl, $c88a
    ld a, $01
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $00
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    xor a
    ld [$c863], a
    ld [$c864], a
    xor a
    ld [$c86e], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86d], a
    ld a, $04
    call $1688
    ld a, [$c8db]
    add a
    add a
    ld b, a
    ld a, [$c8da]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $cac1
    call $223b
    ld de, $d665
    ld b, $95

jr_015_5b26:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_5b26

    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld a, [hl]
    add $10
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld [hl], $00
    ld a, $15
    ld hl, $caca
    call $223b
    ld a, [hl]
    add $10
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld hl, $0105
    rst $10
    ld hl, $1600
    rst $10
    xor a
    ld [$c86c], a
    di
    ld hl, $ca94
    ld de, $a1ce
    ld b, $20
    ld a, $0a
    ld [$0100], a

jr_015_5b78:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_5b78

    ld a, $00
    ld [$0100], a
    call $2197
    ei
    ld a, $14
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    ld a, $15
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c190
    call $0c80
    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld l, [hl]
    ld h, $05
    ld de, $c1a0
    call $097a
    ld a, $04
    ld [$c8ee], a
    xor a
    ld [$c8ea], a
    xor a
    ld [$d8d7], a
    xor a
    ld [$c8eb], a
    ld a, $08
    ld [$c968], a
    ld [$c96a], a
    ld a, $00
    ld [$c969], a
    ld [$c96b], a
    ld a, $00
    ld [$ca8d], a
    ld a, $ff
    ld [$ca8e], a
    ld a, $ff
    ld [$ca8f], a
    ld a, $ff
    ld [$ca90], a
    ret


    ld a, [$c86e]
    cp $fd
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $12
    ld [$c8d2], a
    ld a, $01
    ld [$c8c7], a
    ret


Call_015_5c24:
    ld a, [$c86e]
    cp $fd
    ret nz

    ld hl, $0222
    call $096d
    ld de, $2e07
    call Call_015_5d74
    call Call_015_5da5
    ld a, $19
    ld [$c8d2], a
    ld a, $fd
    ld [$c873], a
    xor a
    ret


Call_015_5c45:
    ld a, [$c90e]
    cp $05
    ret nz

    ld hl, $caca
    ld a, [$cac0]
    call $223b
    ld a, [hl]
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5c74

    ld b, $01

jr_015_5c74:
    ld a, b
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_015_5c81:
    ld a, [$c90e]
    cp $09
    ret nz

    ld hl, $cad6
    ld a, [$cac0]
    call $223b
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5cb3

    ld b, $01

jr_015_5cb3:
    ld a, b
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ld hl, $cad7
    ld a, [$cac0]
    call $223b
    ld a, [hl]
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5ce8

    ld b, $01

jr_015_5ce8:
    ld a, b
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_015_5cf5:
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


Call_015_5d04:
    ld a, [$c8d6]
    add l
    ld l, a
    ld a, [$c8d7]
    adc h
    and $03
    ld h, a
    ld a, [$c8d7]
    and $fc
    or h
    ld h, a
    ret


Call_015_5d18:
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_015_5d21:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_015_5d04
    ld a, b
    and $1f
    jr z, jr_015_5d36

    ld b, a

jr_015_5d30:
    call Call_015_5cf5
    dec b
    jr nz, jr_015_5d30

jr_015_5d36:
    pop bc
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_015_5d21
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_015_5d47:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_015_5d6c

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_015_5d47

jr_015_5d6c:
    call $1aad
    call Call_015_5cf5
    jr jr_015_5d47

Call_015_5d74:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_015_5d18
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_015_5d83:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_015_5da2

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_015_5d83

jr_015_5da2:
    ld [hl+], a
    jr jr_015_5d83

Call_015_5da5:
    ld a, [$c8d6]
    ld l, a
    ld a, [$c8d7]
    ld h, a
    ld de, $c500
    ld c, $12

jr_015_5db2:
    ld b, $20
    push hl

jr_015_5db5:
    ld a, [de]
    call $1aad
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
    jr nz, jr_015_5db5

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
    jr nz, jr_015_5db2

    ret


    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_015_5e13:
Jump_015_5e13:
    push hl
    ld hl, $c180
    call $0c80
    pop hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0401
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_015_5e61:
    ld hl, $c500
    ld bc, $0240

jr_015_5e67:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_015_5e67

    ret


Call_015_5e70:
    ld hl, $9800
    ld bc, $0400

jr_015_5e76:
    ld a, $e0
    call $1ab9
    dec bc
    ld a, b
    or c
    jr nz, jr_015_5e76

    ret


    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c8d6], a
    ld a, h
    ld [$c8d7], a
    call Call_015_5e61
    call Call_015_5e70
    ld de, $2e0d
    ld hl, $9000
    call $1577
    call Call_015_5fc8
    ld hl, $c8d2
    inc [hl]
    ret


    call Call_015_5e61
    call Call_015_5da5
    ld hl, $0b01
    rst $10
    ld hl, $0b02
    rst $10
    call $2518
    call $25f1
    ld hl, $c8eb
    res 1, [hl]
    xor a
    ld [$c8d2], a
    ret


Call_015_5ee1:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_015_5f48

    ld a, [$c847]
    bit 5, a
    jr z, jr_015_5f0e

    inc hl
    ld a, [hl]
    dec a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call $1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_015_5f2c

    ld a, c
    dec a
    jr jr_015_5f2c

jr_015_5f0e:
    ld a, [$c847]
    bit 4, a
    jr z, jr_015_5f48

    inc hl
    ld a, [hl]
    inc a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call $1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_015_5f2c

    ld a, $00

jr_015_5f2c:
    ld [hl-], a
    dec c
    cp c
    jr nz, jr_015_5f90

    ld a, [$c8e1]
    ld c, a
    push de
    push bc
    ld a, b
    ld b, c
    call $1dfb
    pop bc
    pop de
    or a
    jr z, jr_015_5f90

    dec a
    cp [hl]
    jr nc, jr_015_5f90

    ld [hl], a
    jr jr_015_5f90

Jump_015_5f48:
jr_015_5f48:
    push bc
    push de
    push hl
    call Call_015_602c
    pop hl
    pop de
    pop bc
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call $1dfb
    ld [$c8e1], a
    ld a, b
    pop bc
    pop de
    ld c, a
    inc hl
    ld a, [hl-]
    cp c
    jr nz, jr_015_5f6a

    ld a, [$c8e1]
    inc a
    ld b, a

Call_015_5f6a:
jr_015_5f6a:
    res 7, [hl]
    ld a, b
    cp $01
    jr z, jr_015_5f98

    ld a, [$c847]
    bit 6, a
    jr z, jr_015_5f81

    ld a, [hl]
    dec a
    cp b
    jr c, jr_015_5f8f

    dec b
    ld a, b
    jr jr_015_5f8f

jr_015_5f81:
    ld a, [$c847]
    bit 7, a
    jr z, jr_015_5f98

    ld a, [hl]
    inc a
    cp b
    jr c, jr_015_5f8f

    ld a, $00

jr_015_5f8f:
    ld [hl], a

jr_015_5f90:
    xor a
    ld [$c8d9], a
    push hl
    push de
    pop de
    pop hl

jr_015_5f98:
    ld a, [$c846]
    bit 0, a
    jr z, jr_015_5fa1

    set 7, [hl]

jr_015_5fa1:
    ld a, [hl]
    call Call_015_5fcd
    ret


    res 7, [hl]
    ld a, [$c847]
    bit 5, a
    jr z, jr_015_5fb8

    ld a, [hl]
    dec a
    cp b
    jr c, jr_015_5f8f

    dec b
    ld a, b
    jr jr_015_5f8f

jr_015_5fb8:
    ld a, [$c847]
    bit 4, a
    jr z, jr_015_5f98

    ld a, [hl]
    inc a
    cp b
    jr c, jr_015_5f8f

    ld a, $00
    jr jr_015_5f8f

Call_015_5fc8:
    xor a
    ld [$c8d9], a
    ret


Call_015_5fcd:
    ld c, a
    bit 7, a
    jr nz, jr_015_5fe2

    ld a, [$c8d9]
    and $0f
    push af
    ld a, [$c8d9]
    inc a
    ld [$c8d9], a
    pop af
    ld a, c
    ret nz

jr_015_5fe2:
    ld c, a
    ld b, $00

jr_015_5fe5:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_015_5d21
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_015_6015

    ld a, $e9
    bit 7, c
    jr nz, jr_015_6015

    ld a, [$c8d9]
    bit 4, a
    ld a, $e0
    jr nz, jr_015_6015

    ld a, $e8

jr_015_6015:
    call $1aad
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_015_5fe5

Call_015_602c:
    ld a, b
    cp c
    ret nc

    inc hl
    ld c, [hl]
    dec de
    dec de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    dec hl
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_015_5d21
    pop bc
    pop de
    ld a, c
    and $7f
    add $f1
    call $1aad
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_015_6065:
    ld a, [hl+]
    push af
    push hl
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, b
    cp c
    ld a, $ee
    jr nc, jr_015_607e

    ld a, $e7

jr_015_607e:
    ld [hl-], a
    pop bc
    jr nc, jr_015_6086

    ld a, [bc]
    add $f1
    ld [hl], a

jr_015_6086:
    pop af

Call_015_6087:
    ld c, a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_015_5d21
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_015_60b2

    ld a, [$c8d9]
    bit 4, a
    ld a, $e0
    jr nz, jr_015_60b2

    ld a, $e8

jr_015_60b2:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_015_60c4:
    ld a, $0a
    ld [$0100], a
    ld a, [$a002]
    or a
    jr z, jr_015_60ef

    ld hl, $a002
    ld bc, $1ffe
    call $210e
    ld a, $0a
    ld [$0100], a
    ld a, [$a000]
    ld l, a
    ld a, [$a001]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, h
    or l
    jr z, jr_015_610c

jr_015_60ef:
    ld hl, $a002
    ld bc, $1ffe
    push hl
    push bc
    call Call_015_6112
    pop bc
    pop hl
    call $210e
    ld a, $0a
    ld [$0100], a
    ld a, e
    ld [$a000], a
    ld a, d
    ld [$a001], a

jr_015_610c:
    ld a, $00
    ld [$0100], a
    ret


Call_015_6112:
jr_015_6112:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_015_6112

    ret


Call_015_611a:
    ld de, $000a
    push bc
    call Call_015_6136
    pop bc
    or a
    jr z, jr_015_6131

    ld de, $000a
    call Call_015_6136
    call Call_015_614b
    call Call_015_6151

jr_015_6131:
    ld a, c
    call Call_015_614b
    ret


Call_015_6136:
    push hl
    ld h, $ff

jr_015_6139:
    inc h
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    jr nc, jr_015_6139

    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    ld a, h
    pop hl
    ret


Call_015_614b:
    add $f0
    call $1aad
    ret


Call_015_6151:
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


    ld bc, $0101
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0000
    ld bc, $0000
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0100
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0001
    nop
    nop
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
    ei
    ret c

    cp $e0
    ld sp, $3828
    ld [hl], $37
    inc h
    dec [hl]
    scf
    ldh [rIE], a
    ret c

    db $fc
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
    ei
    ret c

    cp $e0
    add hl, hl
    ld [hl-], a
    dec [hl]
    scf
    ld [hl], $28
    scf
    dec a
    jr z, @+$33

    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld sp, $3828
    ld [hl], $37
    inc h
    dec [hl]
    scf
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    cpl
    inc l
    ld sp, $302e
    ld [hl-], a
    daa
    jr c, jr_015_64eb

    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc sp
    inc h
    inc h
    dec [hl]
    jr c, jr_015_64ff

    ld a, [hl+]
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld h, $00
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28

jr_015_64eb:
    ei
    ret c

    cp $e0
    nop
    ld bc, $0302
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

jr_015_64ff:
    db $fc
    xor $ee
    xor $ee
    xor $ee

jr_015_6506:
    db $fd
    reti


    and b
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

    cp $24
    dec h
    ld h, $27
    jr z, jr_015_6506

    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ldh [$e0], a
    sub c
    sub d
    sub e
    sub h
    sub l
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

    cp $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ldh [rSCX], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ldh [$e0], a
    ld c, c
    ld c, e
    ld c, l
    adc l
    adc [hl]
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

    cp $2e
    cpl
    jr nc, jr_015_65a9

    ld [hl-], a
    ldh [rOBP0], a
    ldh [rWY], a
    ldh [$4c], a
    ldh [$e0], a
    ld h, b
    ld l, d
    ld h, b

jr_015_6584:
    ld [hl], b
    ldh [rIE], a
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

    cp $33
    inc [hl]
    dec [hl]
    scf
    jr c, jr_015_6584

    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_015_65a9:
    ldh [$e0], a
    ld b, a
    sbc b
    ld d, b
    ldh [$e0], a
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

    cp $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ldh [rHDMA3], a
    ld d, h
    ld d, l
    ld [hl], $9c
    ldh [$e0], a
    jr z, jr_015_662a

    ld d, b
    ldh [$e0], a
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


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    push de
    call nc, $ffe0
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd

jr_015_662a:
    reti


    jr nz, @+$03

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
    ei
    ret c

    cp $30
    inc h
    ld [hl], $37
    jr z, jr_015_667d

    db $e4
    nop
    ld bc, $0302
    ldh [$e0], a
    ldh [$e4], a
    ldh [$e0], a
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
    rst $38
    ret c

    cp $da
    inc b
    dec b
    ld b, $07
    ldh [$db], a
    ld [$0a09], sp
    dec bc
    ldh [$dc], a
    inc c
    dec c
    ld c, $0f
    rst $38
    ret c

jr_015_667d:
    cp $e0
    ld h, a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    ld h, a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    ld h, a
    db $e4
    ldh [$e0], a
    rst $38
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
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld a, [hl-]
    jr z, jr_015_66e5

    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    db $10
    ld de, $1312
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc d
    dec d
    ld d, $17
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr jr_015_66fc

    ld a, [de]
    dec de

jr_015_66e5:
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc e
    dec e
    ld e, $1f
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee

jr_015_66fc:
    xor $fd
    reti


    call $fa00
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $f1
    inc b
    dec b
    ld b, $07
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $f2
    ld [$0a09], sp
    dec bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $f3
    inc c
    dec c
    ld c, $0f
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld [hl], $37
    inc h
    scf
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl-], a
    ld l, $e0
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    xor [hl]
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    push de
    call nc, $ffe0
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    dec bc
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld l, $24
    jr nc, jr_015_67cd

    add hl, hl
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc sp
    dec [hl]
    jr z, jr_015_67da

    ld [hl], $e0
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr z, @+$33

    daa
    jr z, @-$1e

    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee

jr_015_67cd:
    xor $fd
    reti


    ld a, [bc]
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_015_67da:
    rst $28
    ei
    ret c

    cp $e0
    inc sp
    inc h
    inc h
    dec [hl]
    jr c, @+$33

    ld a, [hl+]
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a

jr_015_67f0:
    ldh [rIE], a
    ret c

    cp $e0
    inc sp
    dec [hl]
    ld e, d
    add hl, hl
    jr z, jr_015_682c

    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    jr z, jr_015_683e

    daa
    jr z, jr_015_67f0

    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee

jr_015_6817:
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei

jr_015_682c:
    ret c

    cp $e0
    ldh [$e0], a
    nop
    ld bc, $0302
    jr nz, jr_015_6817

    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee

jr_015_683e:
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
