; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

    ld e, a
    rla
    ld b, b
    rst $30
    ld b, b
    ld e, $44
    dec de
    ld b, [hl]
    ld h, d
    ld c, d
    dec e
    ld c, e
    ld a, [c]
    ld d, d
    ld [hl-], a
    ld d, [hl]
    cp c
    ld e, e
    adc a
    ld e, h
    ld d, e
    ld h, d
    call $1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $9800
    ld bc, $0400
    ld a, $e0
    call $12c7
    ld a, [$c88b]
    rst $00
    add hl, sp
    ld b, b
    sub l
    ld b, b
    ld hl, $8000
    ld bc, $0c00
    call Call_05f_40eb
    ld hl, $8b00
    ld de, $1202
    call $098f
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ld de, $6683
    ld hl, $9800
    ld bc, $1412
    call Call_05f_424a
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    call Call_05f_439d
    call Call_05f_43ba
    ld a, $fc
    call $1688
    ld a, $21
    call $1ae1
    xor a
    ldh [$b7], a
    xor a
    ldh [$bb], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $11
    ld [$c8a1], a
    ld a, $01
    jp $11cb


    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld hl, $8800
    ld bc, $0800
    call Call_05f_40eb
    ld de, $42cf
    ld hl, $99a0
    ld bc, $1404
    call Call_05f_424a
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ld hl, $8b00
    ld de, $1202
    call $098f
    ld a, $fc
    call $1688
    ld a, $31
    call $1ae1
    xor a
    ldh [$b7], a
    xor a
    ldh [$bb], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $01
    ld [$c8a1], a
    ld a, $01
    jp $11cb


Call_05f_40eb:
jr_05f_40eb:
    ld [hl], $ff
    inc hl
    ld [hl], $00
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_05f_40eb

    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c88b]
    rst $00
    inc b
    ld b, c
    ld [de], a
    ld b, c
    ld a, [$c0d8]
    rst $00
    jr nz, @+$43

    ld b, b
    ld b, c
    ld d, l
    ld b, c
    ld h, e
    ld b, c
    ld a, b
    ld b, c
    ld a, [$c0d8]
    rst $00
    jp c, $ed41

    ld b, c
    or $41
    db $10
    ld b, d
    ld b, h
    ld b, d
    ld hl, $c0da
    inc [hl]
    ld a, [hl]
    cp $3c
    ret c

    ld a, $00
    ld [hl+], a
    inc [hl]
    ld a, [hl]
    cp $05
    ret c

    ld [hl], $00
    ld hl, $c0d8
    inc [hl]
    ld hl, $c88f
    inc [hl]
    ld a, $04
    call $1688
    ret


    ld hl, $c0d9
    inc [hl]
    ld a, [hl]
    cp $1c
    call z, $4411
    call Call_05f_439d
    call Call_05f_43ba
    ld hl, $c0d8
    inc [hl]
    ret


    ld hl, $0802
    rst $10
    ld a, $fc
    call $1688
    ld hl, $c0d8
    inc [hl]
    ret


    xor a
    ld [$c88f], a
    ld a, [$c0d9]
    cp $1c
    jr z, jr_05f_4173

    xor a
    ld [$c0d8], a
    ret


jr_05f_4173:
    ld hl, $c0d8
    inc [hl]
    ret


    ld hl, $c0da
    inc [hl]
    ld a, [hl]
    cp $3c
    ret c

    ld a, $00
    ld [hl+], a
    inc [hl]
    ld a, [hl]
    cp $05
    ret c

    ld [hl], $00
    ld hl, $002f
    ld a, l
    ld [$c96d], a
    ld a, h
    ld [$c96e], a
    ld hl, $0038
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $00c8
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    xor a
    ldh [$90], a
    xor a
    ld [$d8d7], a
    ld hl, $c8eb
    res 0, [hl]
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
    ld a, $04
    call $1688
    ret


    ld a, $07
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4c02
    rst $10
    ld hl, $c0d8
    inc [hl]
    ret


    xor a
    ld [$c88f], a
    ld hl, $c0d8
    inc [hl]
    ret


    ld a, [$c846]
    and $0f
    ret z

    ld hl, $0256
    call $096d
    ld de, $2e07
    ld hl, $9800
    call Call_05f_4298
    ld hl, $c0d8
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c83c]
    or a
    ld hl, $0258
    jr nz, jr_05f_423c

    xor a
    ldh [$90], a
    xor a
    ld [$d8d7], a
    ld a, $01
    ld [$c8ea], a
    ld hl, $c8eb
    res 0, [hl]
    di
    call $2128
    ei
    ld a, $59
    call $1b2c
    ld hl, $0257

jr_05f_423c:
    call $096d
    ld hl, $c0d8
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ret


Call_05f_424a:
jr_05f_424a:
    push bc
    push hl

jr_05f_424c:
    ld a, [de]
    call $1aad
    inc hl
    inc de
    dec b
    jr nz, jr_05f_424c

    pop hl
    pop bc
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_05f_424a

    ret


Call_05f_4263:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    add hl, bc
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a

jr_05f_4272:
    ld a, [de]
    inc de
    cp $d8
    jr z, jr_05f_427e

    cp $d9
    ret z

    ld [hl+], a
    jr jr_05f_4272

jr_05f_427e:
    ld a, [$c0fe]
    ld l, a
    ld a, [$c0ff]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a
    jr jr_05f_4272

Call_05f_4298:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    add hl, bc
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a

jr_05f_42a7:
    ld a, [de]
    inc de
    cp $d8
    jr z, jr_05f_42b5

    cp $d9
    ret z

    call $1ab9
    jr jr_05f_42a7

jr_05f_42b5:
    ld a, [$c0fe]
    ld l, a
    ld a, [$c0ff]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a
    jr jr_05f_42a7

    ldh [$e0], a
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
    ei
    ldh [$e0], a
    cp $b0
    or c
    or d
    ldh [$b3], a
    or h
    ldh [$b5], a
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    rst $38
    ldh [$e0], a
    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ldh [$e0], a
    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd

Call_05f_431f:
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
    ld hl, $8000
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $1402
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4c02
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c828], a
    ld a, d
    ld [$c829], a
    ret


Call_05f_435e:
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
    ld hl, $8260
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0b0c
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4c02
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c828], a
    ld a, d
    ld [$c829], a
    ret


Call_05f_439d:
    ld a, [$c0d9]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    call Call_05f_431f
    ld a, [$c0d9]
    ld [$c823], a
    ld a, $06
    ld [$c822], a
    call Call_05f_435e
    ret


Call_05f_43ba:
    ld a, [$c0d9]
    ld hl, $43f4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    ld [$c0de], a
    ld [$c81e], a
    ld a, $04
    ld [$c81f], a
    ld hl, $016d
    ld a, l
    ld [$c820], a
    ld a, h
    ld [$c821], a
    ld hl, $8aa0
    ld a, l
    ld [$c0dc], a
    ld a, h
    ld [$c0dd], a
    ld hl, $5111
    rst $10
    ld hl, $1706
    rst $10
    ret


    ld l, l
    inc de
    ld e, c
    ld c, c
    ld b, d
    ld a, [bc]
    and h
    dec de
    add c
    add h
    rst $00
    sub l
    sub [hl]
    sub a
    ld b, h
    ld a, a
    jp nz, $9a91

    inc l
    ld l, l
    inc de
    ld e, c
    ld c, c
    ld b, d
    ld a, [bc]
    and h
    dec de
    ld [$eb11], sp
    ld h, a
    ld hl, $9800
    ld bc, $140b
    call Call_05f_424a
    ret


    ld a, [$c88c]
    rst $00
    jr nc, @+$46

    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl], h
    ld b, l
    ld [hl+], a
    ld b, l
    jp nz, $fa45

    adc l
    ret z

    rst $00
    dec sp
    ld b, h
    adc b
    ld b, h
    push de
    ld b, h
    ret


    ld a, $02
    call $1c89
    call $1013
    xor a
    ld hl, $9800
    ld bc, $0400
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld de, $560d
    ld hl, $9000
    call $14cf
    ld de, $6953
    ld hl, $9800
    call Call_05f_4263
    ld a, $00
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f00
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld a, $00
    ldh [rVBK], a
    ret


    ld a, $02
    call $1c89
    call $1013
    xor a
    ld hl, $9800
    ld bc, $0400
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld de, $560b
    ld hl, $9000
    call $14cf
    ld de, $6654
    ld hl, $9800
    call Call_05f_4263
    ld a, $00
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f00
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld a, $00
    ldh [rVBK], a
    ret


    ld a, $02
    call $1c89
    call $1013
    xor a
    ld hl, $9800
    ld bc, $0400
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld de, $5b1f
    ld hl, $9000
    call $14cf
    ld de, $6459
    ld hl, $9800
    call Call_05f_4263
    ld a, $00
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f00
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld a, $00
    ldh [rVBK], a
    ret


    xor a
    ld hl, $9800
    ld bc, $0400
    call $12c7
    ld a, $ff
    ld hl, $9000
    ld bc, $0010
    call $12c7
    ld de, $5b18
    ld hl, $8000
    call $1577
    ld de, $5b19
    ld hl, $8040
    call $1577
    ld a, $00
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld a, $00
    ld [$c81e], a
    ld hl, $170c
    rst $10
    ld a, $01
    ldh [rVBK], a
    xor a
    ld hl, $9800
    ld bc, $0400
    ld a, [$c81d]
    or a
    ld a, $00
    call nz, $12c7
    ld a, $00
    ldh [rVBK], a
    ret


    xor a
    ld hl, $9800
    ld bc, $0400
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld de, $5b20
    ld hl, $9000
    call $14cf
    ld de, $5b21
    ld hl, $8800
    call $14cf
    ld de, $64f3
    ld hl, $9800
    call Call_05f_4263
    ld a, $01
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f02
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld a, $00
    ldh [rVBK], a
    ret


    xor a
    ld hl, $9800
    ld bc, $0400
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld de, $5b20
    ld hl, $9000
    call $1577
    ld de, $5b21
    ld hl, $8800
    call $1577
    ld de, $656a
    ld hl, $9800
    call Call_05f_4263
    ld a, $06
    call $1ae1
    ld a, $01
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    jr nz, jr_05f_460e

    jr jr_05f_4616

jr_05f_460e:
    ld a, $05
    ld [hl+], a
    ld a, h
    cp $9b
    jr nz, jr_05f_460e

jr_05f_4616:
    ld a, $00
    ldh [rVBK], a
    ret


    ld a, $f4
    call $1275
    ld a, [$c846]
    bit 0, a
    jr nz, jr_05f_4641

    bit 1, a
    jr nz, jr_05f_4641

    bit 3, a
    jr nz, jr_05f_4641

    ld a, [$c88c]
    rst $00
    xor b
    ld b, [hl]
    inc e
    ld b, a
    or d
    ld b, a
    ld b, e
    ld c, b
    rst $10
    ld c, b
    ld a, [bc]
    ld c, c
    or l
    ld c, c

jr_05f_4641:
    ld a, [$c88c]
    cp $06
    jr nc, jr_05f_4665

    cp $00
    jr z, jr_05f_467e

Jump_05f_464c:
    ld a, $04
    call $1688
    ld a, $00
    ld [$c88b], a
    ld a, $06
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


jr_05f_4665:
    ld a, $04
    call $1688
    ld a, $01
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


jr_05f_467e:
    ld a, [$c88d]
    cp $00
    jp nz, Jump_05f_4687

    ret


Jump_05f_4687:
    ld a, [$c88d]
    cp $01
    jp nz, Jump_05f_464c

    ld a, $04
    call $1688
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $02
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c88d]
    rst $00
    or e
    ld b, [hl]
    call nc, $f546
    ld b, [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $3c
    ret nz

    ld a, $04
    call $1688
    xor a
    ld [$c0d8], a
    ld hl, $c88d
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $b4
    ret nz

    ld a, $04
    call $1688
    xor a
    ld [$c0d8], a
    ld hl, $c88d
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $b4
    ret nz

    ld a, $04
    call $1688
    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ld hl, $c0dc
    call Call_05f_49ce
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c0d8]
    or a
    jr nz, jr_05f_472c

    ld a, $5d
    call $1b2c

jr_05f_472c:
    ld a, $01
    ld [$c0d8], a
    ld a, [$c0dc]
    or a
    jr nz, jr_05f_4779

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0dc
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0de
    inc [hl]
    ld hl, $c0de
    inc [hl]
    ld a, [$c0dd]
    cp $40
    jr z, jr_05f_4774

    cp $e0
    jr nz, jr_05f_4779

    ld a, $01
    ld [$c0dc], a
    jr jr_05f_4779

jr_05f_4774:
    ld a, $00
    ld [$c0e2], a

jr_05f_4779:
    ld a, [$c0e2]
    or a
    ret nz

    ld a, $01
    ldh [$c7], a
    ld a, $04
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0e2
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld a, [$c0e2]
    or a
    ret z

    ld a, [$c0dc]
    or a
    ret z

    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c0dc
    call Call_05f_49f3
    ret


    ld a, [$c0d8]
    or a
    jr nz, jr_05f_47bd

    ld a, $5d
    call $1b2c

jr_05f_47bd:
    ld a, $01
    ld [$c0d8], a
    ld a, [$c0dc]
    or a
    jr nz, jr_05f_480a

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0dc
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0de
    inc [hl]
    ld hl, $c0de
    inc [hl]
    ld a, [$c0dd]
    cp $10
    jr z, jr_05f_4805

    cp $e0
    jr nz, jr_05f_480a

    ld a, $01
    ld [$c0dc], a
    jr jr_05f_480a

jr_05f_4805:
    ld a, $00
    ld [$c0e2], a

jr_05f_480a:
    ld a, [$c0e2]
    or a
    ret nz

    ld a, $01
    ldh [$c7], a
    ld a, $04
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0e2
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld a, [$c0e2]
    or a
    ret z

    ld a, [$c0dc]
    or a
    ret z

    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c0dc
    call Call_05f_4a18
    ret


    ld a, [$c0d8]
    or a
    jr nz, jr_05f_484e

    ld a, $5d
    call $1b2c

jr_05f_484e:
    ld a, $01
    ld [$c0d8], a
    ld a, [$c0dc]
    or a
    jr nz, jr_05f_489b

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0dc
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0de
    inc [hl]
    ld hl, $c0de
    inc [hl]
    ld a, [$c0dd]
    cp $70
    jr z, jr_05f_4896

    cp $20
    jr nz, jr_05f_489b

    ld a, $01
    ld [$c0dc], a
    jr jr_05f_489b

jr_05f_4896:
    ld a, $00
    ld [$c0e2], a

jr_05f_489b:
    ld a, [$c0e2]
    or a
    ret nz

    ld a, $01
    ldh [$c7], a
    ld a, $04
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0e2
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld a, [$c0e2]
    or a
    ret z

    ld a, [$c0dc]
    or a
    ret z

    ld a, $04
    call $1688
    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $78
    ret nz

    ld a, $04
    call $1688
    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c88e
    inc [hl]
    xor a
    ld [$c0e8], a
    xor a
    ld [$c0e9], a
    xor a
    ld [$c0ea], a
    ld hl, $c0dc
    call Call_05f_4a3d
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c0d8]
    or a
    jr nz, jr_05f_491a

    ld a, $5d
    call $1b2c

jr_05f_491a:
    ld a, $01
    ld [$c0d8], a
    ld a, [$c0dc]
    or a
    jr nz, jr_05f_495c

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0dc
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0dd
    dec [hl]
    ld hl, $c0de
    inc [hl]
    ld hl, $c0de
    inc [hl]
    ld a, [$c0dd]
    cp $36
    jr nz, jr_05f_495c

    ld a, $01
    ld [$c0dc], a

jr_05f_495c:
    ld a, [$c0e2]
    or a
    jr nz, jr_05f_4999

    ld a, $00
    ldh [$c7], a
    ld a, $00
    ldh [$c9], a
    ld a, $00
    ldh [$ca], a
    ld hl, $c0e2
    ld a, l
    ld [$c0fc], a
    ld a, h
    ld [$c0fd], a
    ld hl, $0204
    rst $10
    ld hl, $c0e3
    dec [hl]
    ld hl, $c0e3
    dec [hl]
    ld hl, $c0e4
    inc [hl]
    ld hl, $c0e4
    inc [hl]
    ld a, [$c0e3]
    cp $59
    jr nz, jr_05f_4999

    ld a, $01
    ld [$c0e2], a

jr_05f_4999:
    ld a, [$c0e2]
    or a
    ret z

    ld a, [$c0dc]
    or a
    ret z

    ld a, $04
    call $1688
    xor a
    ld [$c0d8], a
    ld hl, $c88c
    inc [hl]
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$ddb4]
    ld hl, $ddce
    and [hl]
    ld hl, $dde8
    and [hl]
    ld hl, $de02
    and [hl]
    cp $ff
    ret nz

    ld a, $06
    di
    call $1ae1
    ret


Call_05f_49ce:
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_05f_49f3:
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_05f_4a18:
    ld a, $00
    ld [hl+], a
    ld a, $a0
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_05f_4a3d:
    ld a, $00
    ld [hl+], a
    ld a, $86
    ld [hl+], a
    ld a, $fe
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $a9
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_05f_4a62:
    ld a, [$db8a]
    cp $12
    jp c, Jump_05f_4aea

    cp $39
    jr z, jr_05f_4aea

    cp $37
    ret c

    cp $41
    jr c, jr_05f_4aea

    cp $42
    ret c

    cp $43
    jr c, jr_05f_4aea

    cp $44
    ret c

    cp $54
    jr c, jr_05f_4aea

    cp $55
    ret c

    cp $6a
    jr c, jr_05f_4aea

    cp $73
    ret c

    cp $75
    jr c, jr_05f_4aea

    cp $7d
    ret c

    cp $7f
    jr c, jr_05f_4aea

    cp $81
    ret c

    cp $84
    jr c, jr_05f_4aea

    cp $88
    jr c, jr_05f_4b0d

    cp $99
    ret c

    cp $9c
    jr c, jr_05f_4aea

    cp $a5
    ret c

    cp $a6
    jr c, jr_05f_4aea

    cp $ab
    ret c

    cp $ac
    jr c, jr_05f_4aea

    cp $af
    ret c

    cp $b0
    jr c, jr_05f_4aea

    cp $c7
    ret c

    cp $c9
    jr c, jr_05f_4aea

    cp $ca
    ret c

    cp $cc
    jr c, jr_05f_4aea

    cp $d4
    ret c

    cp $d5
    jr c, jr_05f_4aea

    cp $d6
    ret c

    cp $da
    jr c, jr_05f_4aea

    cp $dd
    ret c

    cp $de
    jr c, jr_05f_4aea

    cp $df
    ret c

    cp $e0
    jr c, jr_05f_4aea

    ret


Jump_05f_4aea:
jr_05f_4aea:
    xor a
    ld hl, $da82
    ld bc, $0006
    call $12c7
    ld b, $03
    ld a, [$c863]
    bit 1, a
    jr z, jr_05f_4aff

    ld b, $02

jr_05f_4aff:
    ld a, [$db89]
    cp $04
    ld a, b
    jr c, jr_05f_4b09

    xor $01

jr_05f_4b09:
    ld [$da83], a
    ret


jr_05f_4b0d:
    xor a
    ld hl, $da82
    ld bc, $0006
    call $12c7
    ld a, $04
    ld [$da83], a
    ret


    ld a, [$da34]
    inc a
    cp $05
    ld [$da34], a
    ret c

    xor a
    ld [$da34], a
    ld a, [$da82]
    or a
    ret nz

    ld a, [$db54]
    cp $80
    jr nz, jr_05f_4b42

    ld a, $6c
    call $1b2c
    ld a, $ff
    ld [$db54], a
    ret


jr_05f_4b42:
    ld a, [$da83]
    rst $00
    ld h, d
    ld c, e
    ld h, d
    ld c, e
    ld l, h
    ld c, e
    inc b
    ld c, h
    ld c, h
    ld c, h
    adc e
    ld c, h
    jp c, $164c

    ld c, l
    ld l, e
    ld c, l
    adc b
    ld c, l
    xor e
    ld c, l
    ld a, [$a34d]
    ld d, c
    ld c, b
    ld d, d
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$c863]
    ld b, a
    ld a, [$db89]
    and $03
    cp $03
    jr z, jr_05f_4bf6

    ld a, [$db89]
    bit 1, b
    jr nz, jr_05f_4b86

    cp $04
    jr c, jr_05f_4bf6

    jr jr_05f_4b8a

jr_05f_4b86:
    cp $04
    jr nc, jr_05f_4bf6

jr_05f_4b8a:
    ld a, [$d9ed]
    cp $0a
    jr z, jr_05f_4b99

    ld a, [$db89]
    call $2fa5
    jr c, jr_05f_4bf6

jr_05f_4b99:
    ld a, [$da84]
    rst $00
    and a
    ld c, e
    call $a74b
    ld c, e
    call $f64b
    ld c, e
    ld a, $06
    ld [$da85], a
    call Call_05f_4e3e
    ld hl, $5101
    call Call_05f_50f6
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, $03
    ld hl, $510b
    call Call_05f_50f6
    ld c, $06
    call Call_05f_4e21
    ld hl, $da84
    inc [hl]
    ret


    ld a, $06
    ld [$da85], a
    call Call_05f_4e3e
    ld hl, $5101
    call Call_05f_50f6
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, [$db89]
    and $03
    ld hl, $510b
    call Call_05f_50f6
    ld c, $06
    call Call_05f_4e21
    ld hl, $da84
    inc [hl]
    ret


jr_05f_4bf6:
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    xor a
    ld [$da85], a
    ret


    ld a, [$db8a]
    cp $81
    jr z, jr_05f_4c3c

    ld a, [$da84]
    rst $00
    rla
    ld c, h
    ld sp, $174c
    ld c, h
    inc a
    ld c, h
    ld a, $02
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $00
    ldh [$bb], a
    ld a, $01
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    xor a
    ldh [$bb], a
    xor a
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


jr_05f_4c3c:
    ld a, $01
    ld [$da82], a
    xor a
    ldh [$bb], a
    xor a
    ldh [$b7], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ld hl, $c89b
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $da84
    inc [hl]
    ret


Call_05f_4c6e:
    ld hl, $c89b
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ld hl, $da84
    inc [hl]
    ret


    call Call_05f_4c6e
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    sub a
    ld c, h
    xor l
    ld c, h
    ret nz

    ld c, h
    ret nc

    ld c, h
    call Call_05f_5070
    ld a, [$da87]
    cp $04
    ret c

    xor a
    ld [$da86], a
    xor a
    ld [$da87], a
    ld hl, $da84
    inc [hl]
    ret


    ld hl, $da85
    inc [hl]
    ld a, [$da85]
    cp $0a
    ret nz

    ld hl, $da84
    inc [hl]
    xor a
    ld [$da85], a
    ret


    ld hl, $c89b
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ld hl, $da84
    inc [hl]
    ret


    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$4c
    inc c
    ld c, l
    ld hl, $c89b
    ld a, [hl]
    xor $ff
    ld [hl+], a
    ld a, [hl]
    xor $ff
    ld [hl+], a
    ld a, [hl]
    xor $ff
    ld [hl], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    jr z, @+$4f

    ld a, $4d
    ld d, c
    ld c, l
    jr z, jr_05f_4d6f

    ld a, $4d
    ld d, c
    ld c, l
    ld h, c
    ld c, l
    call Call_05f_5070
    ld a, [$da87]
    cp $04
    ret c

    xor a
    ld [$da86], a
    xor a
    ld [$da87], a
    ld hl, $da84
    inc [hl]
    ret


    ld hl, $da85
    inc [hl]
    ld a, [$da85]
    cp $05
    ret nz

    ld hl, $da84
    inc [hl]
    xor a
    ld [$da85], a
    ret


    ld hl, $c89b
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ld hl, $da84
    inc [hl]
    ret


    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    or a

jr_05f_4d6f:
    call z, Call_05f_4ed7
    call Call_05f_4f4b
    ld a, [$da84]
    or a
    ret z

    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    xor a
    ld [$da85], a
    ret


    ld a, [$da87]
    or a
    jr nz, jr_05f_4da3

    ld hl, $da87
    inc [hl]
    xor a
    ld [$c905], a
    xor a
    ld [$c906], a
    xor a
    ld [$c907], a
    xor a
    ld [$c908], a
    ret


jr_05f_4da3:
    call Call_05f_4f9d
    ld hl, $da87
    inc [hl]
    ret


    ld a, [$da84]
    rst $00
    or a
    ld c, l
    call $e04d
    ld c, l
    ldh a, [rKEY1]
    call Call_05f_50b7
    ld a, [$da87]
    cp $04
    ret c

    xor a
    ld [$da86], a
    xor a
    ld [$da87], a
    ld hl, $da84
    inc [hl]
    ret


    ld hl, $da85
    inc [hl]
    ld a, [$da85]
    cp $0a
    ret nz

    ld hl, $da84
    inc [hl]
    xor a
    ld [$da85], a
    ret


    ld hl, $c89b
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ld hl, $da84
    inc [hl]
    ret


    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$da84]
    rst $00
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld l, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ret


Call_05f_4e21:
jr_05f_4e21:
    push de
    ld a, [$da85]
    ld b, a

jr_05f_4e26:
    di
    call $1aa6
    ld a, [hl+]
    ld [de], a
    ei
    inc de
    dec b
    jr nz, jr_05f_4e26

    pop de
    dec c
    ret z

    ld a, $20
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    jr jr_05f_4e21

Call_05f_4e3e:
    ld a, [$c86c]
    or a
    jr z, jr_05f_4e50

    ld a, [$c863]
    bit 1, a
    jr z, jr_05f_4e50

    ld a, [$db74]
    jr jr_05f_4e53

jr_05f_4e50:
    ld a, [$db75]

jr_05f_4e53:
    cp $01
    jr z, jr_05f_4e7f

    cp $02
    jr z, jr_05f_4e6e

    ld a, [$db89]
    and $03
    cp $01
    jr z, jr_05f_4e7f

    jr c, jr_05f_4e6a

    ld a, $04
    jr jr_05f_4e81

jr_05f_4e6a:
    ld a, $03
    jr jr_05f_4e81

jr_05f_4e6e:
    ld a, [$db89]
    and $03
    cp $01
    jr z, jr_05f_4e7b

    ld a, $01
    jr jr_05f_4e81

jr_05f_4e7b:
    ld a, $02
    jr jr_05f_4e81

jr_05f_4e7f:
    ld a, $00

jr_05f_4e81:
    ret


Call_05f_4e82:
    ld a, [$c86c]
    or a
    jr z, jr_05f_4ea5

    call Call_05f_52d8
    jr nz, jr_05f_4e99

    ld a, [$c863]
    bit 1, a
    jr z, jr_05f_4ea5

    ld a, [$db74]
    jr jr_05f_4ea8

jr_05f_4e99:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_05f_4ea5

    ld a, [$db74]
    jr jr_05f_4ea8

jr_05f_4ea5:
    ld a, [$db75]

jr_05f_4ea8:
    cp $01
    jr z, jr_05f_4ed4

    cp $02
    jr z, jr_05f_4ec3

    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_4ed4

    jr c, jr_05f_4ebf

    ld a, $04
    jr jr_05f_4ed6

jr_05f_4ebf:
    ld a, $03
    jr jr_05f_4ed6

jr_05f_4ec3:
    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_4ed0

    ld a, $01
    jr jr_05f_4ed6

jr_05f_4ed0:
    ld a, $02
    jr jr_05f_4ed6

jr_05f_4ed4:
    ld a, $00

jr_05f_4ed6:
    ret


Call_05f_4ed7:
    ld a, [$da84]
    or a
    ret nz

    ld a, [$da85]
    rst $00
    ld d, $4f
    jr nc, jr_05f_4f33

    inc hl
    ld c, a
    jr nc, @+$51

    ld d, $4f
    jr nc, jr_05f_4f3b

    inc hl
    ld c, a
    jr nc, @+$51

    ld d, $4f
    jr nc, jr_05f_4f43

    inc hl
    ld c, a
    ld d, $4f
    jr nc, @+$51

    inc hl
    ld c, a
    jr nc, @+$51

    ld d, $4f
    jr nc, jr_05f_4f51

    inc hl
    ld c, a
    jr nc, jr_05f_4f55

    ld d, $4f
    jr nc, jr_05f_4f59

    inc hl
    ld c, a
    jr nc, jr_05f_4f5d

    ld d, $4f
    jr nc, jr_05f_4f61

    inc hl
    ld c, a
    dec sp
    ld c, a
    ld a, $04
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    ld hl, $da85
    inc [hl]
    ret


    ld a, $00
    ldh [$bb], a
    ld a, $03
    ldh [$b7], a
    ld hl, $da85
    inc [hl]
    ret


    xor a
    ldh [$bb], a

jr_05f_4f33:
    xor a
    ldh [$b7], a
    ld hl, $da85
    inc [hl]
    ret


jr_05f_4f3b:
    ld a, $01
    ld [$da84], a
    xor a
    ldh [$bb], a

jr_05f_4f43:
    xor a
    ldh [$b7], a
    xor a
    ld [$da85], a
    ret


Call_05f_4f4b:
    ld a, [$da85]
    rst $00
    sub c
    ld c, a

jr_05f_4f51:
    sub c
    ld c, a
    sub c
    ld c, a

jr_05f_4f55:
    sub c
    ld c, a
    sub c
    ld c, a

jr_05f_4f59:
    sub c
    ld c, a
    sub c
    ld c, a

jr_05f_4f5d:
    sub c
    ld c, a
    sub c
    ld c, a

jr_05f_4f61:
    add l
    ld c, a
    sub c
    ld c, a
    add l
    ld c, a
    sub c
    ld c, a
    add l
    ld c, a
    sub c
    ld c, a
    add l
    ld c, a
    sub c
    ld c, a
    add l
    ld c, a
    sub c
    ld c, a
    add l
    ld c, a
    sub c
    ld c, a
    add l
    ld c, a
    sub c
    ld c, a
    add l
    ld c, a
    sub c
    ld c, a
    add l
    ld c, a
    sub c
    ld c, a
    ld hl, $c89b
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ret


    ld hl, $c89b
    ld [hl], $d2
    inc hl
    ld [hl], $d2
    inc hl
    ld [hl], $e2
    ret


Call_05f_4f9d:
    ld a, [$c905]
    rst $00
    xor c
    ld c, a
    rst $00
    ld c, a
    scf
    ld d, b
    ld d, c
    ld d, b
    ld hl, $c905
    inc [hl]
    ld hl, $c100
    ld b, $80

jr_05f_4fb2:
    ldh a, [$b7]
    ld [hl+], a
    dec b
    jr nz, jr_05f_4fb2

    ld a, $01
    ld [$c907], a
    ld a, $02
    ldh [rLYC], a
    ld a, $02
    ld [$c892], a
    ret


    ld a, [$da87]
    and $07
    jr nz, jr_05f_4fea

    ld a, [$c907]
    swap a
    and $0f
    inc a
    ld b, a
    ld a, [$c907]
    add b
    ld [$c907], a
    cp $1c
    jr c, jr_05f_4fea

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c908], a

Call_05f_4fea:
jr_05f_4fea:
    ld a, [$c907]
    ldh [$d5], a
    ld a, [$da87]
    rra
    rra
    and $0f
    ld e, a
    ld d, $00
    ld bc, $c12e
    ld a, $66
    ldh [$d6], a

jr_05f_5000:
    inc e
    ld a, e
    and $0f
    ld e, a
    ld hl, $5027
    add hl, de
    push bc
    ld c, [hl]
    ldh a, [$d5]
    call $1dbe
    pop bc
    bit 3, e
    jr z, jr_05f_501a

    ldh a, [$b7]
    sub h
    jr jr_05f_501d

jr_05f_501a:
    ldh a, [$b7]
    add h

jr_05f_501d:
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ldh a, [$d6]
    cp c
    jr nz, jr_05f_5000

    ret


    nop
    jr nc, @+$5d

    db $76
    ld a, a
    db $76
    ld e, e
    jr nc, jr_05f_5030

jr_05f_5030:
    jr nc, jr_05f_508d

jr_05f_5032:
    db $76
    ld a, a
    db $76
    ld e, e
    jr nc, jr_05f_5032

    add a
    jp c, $0fe6

    jr nz, jr_05f_504d

    ld a, [$c908]
    inc a
    ld [$c908], a
    cp $04
    jr nz, jr_05f_504d

    ld hl, $c905
    inc [hl]

jr_05f_504d:
    call Call_05f_4fea
    ret


    ld a, $00
    ld [$c892], a
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da87], a
    xor a
    ld [$c905], a
    xor a
    ld [$c906], a
    xor a
    ld [$c907], a
    xor a
    ld [$c908], a
    ret


Call_05f_5070:
    xor a
    ld [$da86], a
    ld hl, $da87
    inc [hl]
    ld b, $03
    ld c, $00
    ld hl, $c89b

jr_05f_507f:
    ld a, [hl]
    and $03
    add $01
    cp $04
    jr c, jr_05f_508a

    ld a, $03

jr_05f_508a:
    or c
    ld c, a
    ld a, [hl]

jr_05f_508d:
    and $0c
    add $04
    cp $0d
    jr c, jr_05f_5097

    ld a, $0c

jr_05f_5097:
    or c
    ld c, a
    ld a, [hl]
    and $30
    add $10
    cp $31
    jr c, jr_05f_50a4

    ld a, $30

jr_05f_50a4:
    or c
    ld c, a
    ld a, [hl]
    and $c0
    add $40
    cp $c1
    jr c, jr_05f_50b1

    ld a, $c0

jr_05f_50b1:
    or c
    ld [hl+], a
    dec b
    jr nz, jr_05f_507f

    ret


Call_05f_50b7:
    xor a
    ld [$da86], a
    ld hl, $da87
    inc [hl]
    ld b, $03
    ld c, $00
    ld hl, $c89b

jr_05f_50c6:
    ld a, [hl]
    and $03
    cp $00
    jr z, jr_05f_50cf

    sub $01

jr_05f_50cf:
    or c
    ld c, a
    ld a, [hl]
    and $0c
    cp $00
    jr z, jr_05f_50da

    sub $04

jr_05f_50da:
    or c
    ld c, a
    ld a, [hl]
    and $30
    cp $00
    jr z, jr_05f_50e5

    sub $10

jr_05f_50e5:
    or c
    ld c, a
    ld a, [hl]
    and $c0
    cp $00
    jr z, jr_05f_50f0

    sub $40

jr_05f_50f0:
    or c
    ld [hl+], a
    dec b
    jr nz, jr_05f_50c6

    ret


Call_05f_50f6:
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


    rst $00
    nop
    call nz, $ca00
    nop
    pop bc
    nop
    call $1300
    ld d, c
    scf
    ld d, c
    ld e, e
    ld d, c
    ld a, a
    ld d, c
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05f_5146

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_5156

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05f_5166

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_5176

    ld [hl-], a

jr_05f_5146:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05f_5156:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_05f_5166:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_05f_5176:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld a, [$da84]
    rst $00
    jp hl


    ld d, c
    rst $18
    ld d, c
    ld a, [c]
    ld d, c
    rst $18
    ld d, c
    ei
    ld d, c
    rst $18
    ld d, c
    inc b
    ld d, d
    rst $18
    ld d, c
    dec c
    ld d, d
    rst $18
    ld d, c
    ld d, $52
    rst $18
    ld d, c
    rra
    ld d, d
    rst $18
    ld d, c
    inc l
    ld d, d
    rst $18
    ld d, c
    rra
    ld d, d
    rst $18
    ld d, c
    inc l
    ld d, d
    rst $18
    ld d, c
    rra
    ld d, d
    rst $18
    ld d, c
    inc l
    ld d, d
    rst $18
    ld d, c
    rra
    ld d, d
    rst $18
    ld d, c
    inc l
    ld d, d
    add hl, sp
    ld d, d
    xor a
    ldh [$b7], a
    ldh [$bb], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $fe
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $02
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $fc
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $04
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $f8
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $08
    ldh [$b7], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $f8
    ldh [$b7], a
    ld a, $02
    ldh [$bb], a
    ld hl, $da84
    inc [hl]
    ret


    ld a, $08
    ldh [$b7], a
    ld a, $02
    ldh [$bb], a
    ld hl, $da84
    inc [hl]
    ret


    xor a
    ldh [$b7], a
    ldh [$bb], a
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    ret


    ld a, [$c863]
    ld b, a
    ld a, [$db88]
    cp $07
    jr nc, jr_05f_52ca

    cp $03
    jr z, jr_05f_52ca

    bit 1, b
    jr nz, jr_05f_5261

    cp $04
    jr c, jr_05f_52ca

    jr jr_05f_5265

jr_05f_5261:
    cp $04
    jr nc, jr_05f_52ca

jr_05f_5265:
    ld a, [$db88]
    call $2fa5
    jr c, jr_05f_52ca

    ld a, [$da84]
    rst $00
    ld a, e
    ld d, d
    and c
    ld d, d
    ld a, e
    ld d, d
    and c
    ld d, d
    jp z, $3e52

    ld b, $ea
    add l
    jp c, $82cd

    ld c, [hl]
    ld hl, $5101
    call Call_05f_50f6
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, $03
    ld hl, $510b
    call Call_05f_50f6
    ld c, $06
    call Call_05f_4e21
    ld hl, $da84
    inc [hl]
    ret


    ld a, $06
    ld [$da85], a
    call Call_05f_4e82
    ld hl, $5101
    call Call_05f_50f6
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, [$db88]
    and $03
    ld hl, $510b
    call Call_05f_50f6
    ld c, $06
    call Call_05f_4e21
    ld hl, $da84
    inc [hl]
    ret


jr_05f_52ca:
    ld a, $01
    ld [$da82], a
    xor a
    ld [$da84], a
    xor a
    ld [$da85], a
    ret


Call_05f_52d8:
    ld a, [$db8a]
    cp $3b
    jr z, jr_05f_52e6

    cp $3c
    jr z, jr_05f_52e6

    cp $3e
    ret nz

jr_05f_52e6:
    ld a, [$d9ec]
    cp $07
    ret nz

    ld a, [$d9ed]
    cp $04
    ret


    ld a, [$db8a]
    cp $15
    jp c, Jump_05f_53a6

    cp $24
    jp c, Jump_05f_5384

    cp $25
    jp c, Jump_05f_53a6

    cp $2a
    jp z, Jump_05f_53a6

    cp $37
    jr c, jr_05f_5384

    cp $3b
    jp z, Jump_05f_53c0

    cp $3c
    jp z, Jump_05f_53c0

    cp $3e
    jp z, Jump_05f_53c0

    cp $67
    jp c, Jump_05f_53a6

    cp $6a
    jp c, Jump_05f_53c0

    cp $71
    jr z, jr_05f_53a6

    cp $73
    jr c, jr_05f_5384

    cp $75
    jr c, jr_05f_53a6

    cp $77
    jr c, jr_05f_5384

    cp $78
    jr c, jr_05f_53a6

    cp $7b
    jr c, jr_05f_5384

    cp $80
    jr z, jr_05f_5384

    cp $84
    jr c, jr_05f_53a6

    cp $88
    jr c, jr_05f_5384

    cp $91
    jr c, jr_05f_53a6

    cp $95
    jr z, jr_05f_53a6

    cp $97
    jr c, jr_05f_5384

    cp $a3
    jr z, jr_05f_5384

    cp $a4
    jr c, jr_05f_53a6

    cp $a7
    jr c, jr_05f_53a6

    cp $a9
    jr z, jr_05f_53a6

    cp $ab
    jr c, jr_05f_5384

    cp $ae
    jr z, jr_05f_5384

    cp $b0
    jr c, jr_05f_53a6

    cp $c7
    jr c, jr_05f_5384

    cp $c9
    jr z, jr_05f_5384

    cp $d5
    jr c, jr_05f_53cf

    cp $d5
    jr z, jr_05f_5384

    jr jr_05f_53a6

Jump_05f_5384:
jr_05f_5384:
    ld a, [$db8a]
    cp $80
    jp z, Jump_05f_53eb

    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_53eb

    ld a, [$d9ed]
    cp $0a
    jr z, jr_05f_53e5

    cp $01
    jr nz, jr_05f_53eb

    ld a, [$d9ee]
    cp $0e
    jr nc, jr_05f_53eb

    ret


Jump_05f_53a6:
jr_05f_53a6:
    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_53eb

    ld a, [$d9ed]
    cp $0a
    jr z, jr_05f_53e5

    cp $01
    jr nz, jr_05f_53eb

    ld a, [$d9ee]
    cp $05
    jr z, jr_05f_53eb

    ret


Jump_05f_53c0:
    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_53eb

    ld a, [$d9ed]
    cp $04
    jr z, jr_05f_53eb

    ret


jr_05f_53cf:
    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_53eb

    ld a, [$d9ed]
    cp $0a
    jr nz, jr_05f_53eb

    ld a, [$d9ef]
    cp $04
    jr nz, jr_05f_53eb

    ret


jr_05f_53e5:
    ld a, [$d9ef]
    cp $01
    ret z

Jump_05f_53eb:
jr_05f_53eb:
    ld a, [$db88]
    cp $10
    jr z, jr_05f_540b

    ld a, [$c863]
    bit 1, a
    jr nz, jr_05f_5402

    ld a, [$db88]
    cp $04
    jr c, jr_05f_540f

    jr jr_05f_5414

jr_05f_5402:
    ld a, [$db88]
    cp $04
    jr c, jr_05f_5414

    jr jr_05f_540f

jr_05f_540b:
    call Call_05f_5ba5
    ret c

jr_05f_540f:
    ld hl, $58df
    jr jr_05f_5435

jr_05f_5414:
    ld hl, $59c5
    ld a, [$c86c]
    or a
    jr z, jr_05f_5435

    ld a, [$d9ec]
    cp $07
    jr nz, jr_05f_5435

    ld a, [$d9ed]
    cp $01
    jr nz, jr_05f_5435

    ld a, [$d9ee]
    cp $05
    jr nz, jr_05f_5435

    ld hl, $5aab

jr_05f_5435:
    ld a, [$db8a]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_05f_5443
    ret


Call_05f_5443:
    ld c, a
    ld b, $00
    ld hl, $58bf
    add hl, bc
    add hl, bc
    call RST_08
    ret


    jp hl


Call_05f_5450:
    ld a, [$db8a]
    cp $1a
    jr c, jr_05f_54c5

    cp $1c
    jr c, jr_05f_5463

    cp $29
    jr z, jr_05f_5463

    cp $76
    jr nz, jr_05f_54c5

jr_05f_5463:
    call Call_05f_5b91
    jr c, jr_05f_54c5

    ld hl, $db74
    ld a, [$c863]
    and $02
    srl a
    xor $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db53], a
    ld a, [hl]
    cp $01
    jr z, jr_05f_54b5

    cp $02
    jr z, jr_05f_549f

    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_54b5

    jr c, jr_05f_549b

    cp $03
    jp nc, Jump_05f_5525

    ld a, $06
    jr jr_05f_54c1

jr_05f_549b:
    ld a, $04
    jr jr_05f_54c1

jr_05f_549f:
    ld a, [$db88]
    and $03
    cp $03
    jp nc, Jump_05f_5525

    cp $01
    jr z, jr_05f_54b1

    ld a, $02
    jr jr_05f_54c1

jr_05f_54b1:
    ld a, $03
    jr jr_05f_54c1

jr_05f_54b5:
    ld a, [$db88]
    and $03
    cp $03
    jp nc, Jump_05f_5525

    ld a, $01

jr_05f_54c1:
    ld [$db54], a
    ret


jr_05f_54c5:
    call Call_05f_5b91
    jr nc, jr_05f_552b

jr_05f_54ca:
    ld hl, $db74
    ld a, [$c863]
    and $02
    srl a
    xor $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db53], a
    ld a, [hl]
    cp $01
    jr z, jr_05f_5515

    cp $02
    jr z, jr_05f_5500

    ld a, [$db89]
    and $03
    cp $01
    jr z, jr_05f_5515

    jr c, jr_05f_54fc

    cp $03
    jr nc, jr_05f_5525

    ld a, $06
    jr jr_05f_5521

jr_05f_54fc:
    ld a, $04
    jr jr_05f_5521

jr_05f_5500:
    ld a, [$db89]
    and $03
    cp $01
    jr z, jr_05f_5511

    cp $03
    jr nc, jr_05f_5525

    ld a, $02
    jr jr_05f_5521

jr_05f_5511:
    ld a, $03
    jr jr_05f_5521

jr_05f_5515:
    ld a, [$db89]
    and $03
    cp $03
    jp nc, Jump_05f_5525

    ld a, $01

jr_05f_5521:
    ld [$db54], a
    ret


Jump_05f_5525:
jr_05f_5525:
    ld a, $08
    ld [$db54], a
    ret


jr_05f_552b:
    ld a, [$db89]
    and $03
    cp $03
    jr nc, jr_05f_5525

    call Call_05f_5ba5
    jr nc, jr_05f_54ca

    ld hl, $db74
    ld a, [$c863]
    and $02
    srl a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db53], a
    ld a, [hl]
    cp $01
    jr z, jr_05f_5585

    cp $02
    jr z, jr_05f_556f

    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_5585

    jr c, jr_05f_556b

    and $03
    cp $03
    jr nc, jr_05f_5525

    ld a, $06
    jr jr_05f_5521

jr_05f_556b:
    ld a, $04
    jr jr_05f_5521

jr_05f_556f:
    ld a, [$db88]
    and $03
    cp $01
    jr z, jr_05f_5581

    cp $03
    jp nc, Jump_05f_5525

    ld a, $02
    jr jr_05f_5521

jr_05f_5581:
    ld a, $03
    jr jr_05f_5521

jr_05f_5585:
    ld a, [$db88]
    and $03
    cp $03
    jp nc, Jump_05f_5525

    ld a, $01
    jr jr_05f_5521

    call Call_05f_5450
    ld a, $01
    ld [$dd68], a
    jr jr_05f_55bd

    ld a, $01
    ld [$db54], a
    ld a, $01
    ld [$dd68], a
    jr jr_05f_55bd

    call Call_05f_5450
    ld a, $02
    ld [$dd68], a
    jr jr_05f_55bd

    ld a, $00
    ld [$db54], a
    ld a, $00
    ld [$dd68], a

jr_05f_55bd:
    call Call_05f_5632
    cp $ff
    ret z

    call Call_05f_5698
    call $3103
    ld a, $01
    ld [$da80], a
    ret


    call Call_05f_4a62
    ld a, $04
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $05
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $06
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $07
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $08
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $09
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $0a
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $0b
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $0c
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $03
    ld [$da83], a
    ret


    call Call_05f_4a62
    ld a, $0d
    ld [$da83], a
    ret


Call_05f_5632:
    ld a, [$db88]
    cp $10
    jr z, jr_05f_564b

    call Call_05f_5b91
    jr c, jr_05f_5640

    jr jr_05f_5661

jr_05f_5640:
    call Call_05f_5ba5
    jr nc, jr_05f_5650

    ld a, $ff
    ld [$da81], a
    ret


jr_05f_564b:
    call Call_05f_5ba5
    jr c, jr_05f_5692

jr_05f_5650:
    ld a, [$db8a]
    ld de, $56ef
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$da81], a
    ret


jr_05f_5661:
    ld a, [$db8a]
    cp $1a
    jr z, jr_05f_5681

    cp $1b
    jr z, jr_05f_5681

    cp $80
    jr z, jr_05f_5681

    cp $29
    jr z, jr_05f_5681

    cp $d5
    jr z, jr_05f_5681

    cp $aa
    jr z, jr_05f_5681

    call Call_05f_5ba5
    jr c, jr_05f_5692

jr_05f_5681:
    ld a, [$db8a]
    ld de, $57d7
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$da81], a
    ret


jr_05f_5692:
    ld a, $ff
    ld [$da81], a
    ret


Call_05f_5698:
    call Call_05f_56bb
    ld a, [$daa4]
    ld [$dd64], a
    ld a, $60
    ld [$dd63], a
    ld a, $00
    ld [$dd62], a
    ld hl, $dd62
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0200
    rst $10
    ret


Call_05f_56bb:
    ld a, [$db88]
    cp $10
    jr z, jr_05f_56c9

    call Call_05f_5b91
    jr c, jr_05f_56c9

    jr jr_05f_56de

jr_05f_56c9:
    call Call_05f_5ba5
    ret c

    ld a, [$db8a]
    ld hl, $56ef
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$daa4], a
    ret


jr_05f_56de:
    ld a, [$db8a]
    ld hl, $57d7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$daa4], a
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $ffff
    rst $38
    dec d
    dec d
    ld [de], a
    rla
    ld d, $12
    rst $38
    ld [de], a
    ld [de], a
    rst $38
    rst $38
    ld [de], a
    ld [de], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    rst $38
    rst $38
    dec e
    dec e
    rst $38
    rst $38
    rst $38
    ld e, $1f
    jr nz, jr_05f_5758

    dec h
    dec e
    dec e
    inc hl
    inc h
    inc h
    dec h
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    dec e
    add hl, bc
    dec bc
    rrca
    dec de
    inc bc
    inc b
    dec b
    inc e
    inc c
    dec c
    ld c, $1a
    jr z, jr_05f_577e

    ld a, [hl+]
    dec d
    dec d

jr_05f_5758:
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $16
    ld d, $ff
    rla
    rst $38
    rst $38
    ld [de], a
    ld [de], a
    rst $38
    ld d, $15
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
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

jr_05f_577e:
    rst $38
    rst $38
    ld [de], a
    ld [de], a
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
    inc d
    rst $38
    rst $38
    rst $38
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc l
    inc l
    inc l
    dec d
    inc l
    rrca
    add hl, bc
    ld [de], a
    inc b
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    ld [hl+], a
    dec e
    ld h, $ff
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
    rst $38
    rst $38
    rst $38
    inc de
    inc de
    rst $38
    rst $38
    inc de
    inc de
    rst $38
    rst $38
    inc de
    inc de
    rst $38
    inc de
    rst $38
    add hl, de
    add hl, de
    jr @+$01

    inc d
    inc d
    inc d
    inc d
    inc d
    rst $38
    rst $38
    inc d
    inc d
    inc d
    inc d
    inc d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
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
    inc d
    inc d
    rst $38
    inc d
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
    inc d
    rst $38
    rst $38
    rst $38
    dec d
    ld [de], a
    rst $38
    jr @+$01

    rst $38
    rst $38
    inc d
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
    rst $38
    rst $38
    jr @+$01

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
    sub e
    ld d, l
    sbc l
    ld d, l
    xor c
    ld d, l
    or e
    ld d, l
    rst $08
    ld d, l
    ret c

    ld d, l
    pop hl
    ld d, l
    ld [$f355], a
    ld d, l
    db $fc
    ld d, l
    dec b
    ld d, [hl]
    ld c, $56
    rla
    ld d, [hl]
    adc $55
    jr nz, jr_05f_5933

    add hl, hl
    ld d, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0202
    ld bc, $0302
    ld bc, $0203
    ld bc, $0202
    ld bc, $0d0d
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, $0d
    ld c, $0e
    dec c
    ld c, $00
    nop
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0d0d
    dec c
    dec c

jr_05f_5933:
    dec c
    nop
    dec c
    ld [bc], a
    nop
    ld bc, $0202
    inc bc
    inc bc
    ld bc, $0301
    ld [bc], a
    ld bc, $0201
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    inc b
    inc b
    nop
    nop
    dec c
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    ld bc, $0504
    dec b
    inc b
    inc b
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    dec b
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld bc, $0d0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    nop
    nop
    dec c
    nop
    ld [bc], a
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    ld b, $0d
    rrca
    rrca
    dec c
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc b
    inc b
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld bc, $0504
    dec b
    inc b
    inc b
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    dec b
    dec c
    nop
    nop
    dec c
    nop
    dec c
    dec c
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    inc b
    inc b
    ld [$0c0d], sp
    inc c
    dec bc
    inc b
    dec bc
    inc b
    inc b
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    ld a, [bc]
    dec c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    inc b
    dec bc
    ld a, [bc]
    ld b, $08
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld bc, $0504
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

Call_05f_5b91:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_05f_5b9e

    ld a, [$db88]
    cp $04
    ret


jr_05f_5b9e:
    ld a, [$db88]
    cp $04
    ccf
    ret


Call_05f_5ba5:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_05f_5bb2

    ld a, [$db89]
    cp $04
    ret


jr_05f_5bb2:
    ld a, [$db89]
    cp $04
    ccf
    ret


    xor a
    ld hl, $c8da
    ld bc, $0008
    call $12c7
    xor a
    ld hl, $c827
    ld bc, $0012
    call $12c7
    call $1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld a, $e0
    ld hl, $c500
    ld bc, $0240
    call $12c7
    xor a
    ld hl, $da82
    ld bc, $0006
    call $12c7
    ld de, $ff00
    ld hl, $9000
    ld bc, $0120
    call Call_05f_5ece
    ld de, $6095
    ld hl, $c500
    call Call_05f_4263
    ld de, $6100
    ld hl, $c500
    call Call_05f_4263
    ld de, $616b
    ld hl, $c500
    call Call_05f_4263
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ld hl, $6197
    ld de, $8b90
    call Call_05f_5f5a
    ld hl, $61af
    ld de, $8ab0
    call Call_05f_5f5a
    call Call_05f_5f88
    call Call_05f_5fa7
    call Call_05f_5fbe
    call Call_05f_5fdd
    ld a, $fc
    call $1688
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld hl, $5005
    rst $10
    ld a, $01
    ld [$dd68], a
    ld a, $01
    ld [$db54], a
    ld a, $01
    ld [$da82], a
    ld a, $03
    ld [$c8da], a
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
    ld a, $03
    ld [$c8a1], a
    call $125d
    ld a, $03
    jp $11cb


    ld a, [$da83]
    cp $09
    jr nz, jr_05f_5c9d

    ld a, [$da82]
    or a
    jp z, $5ec3

jr_05f_5c9d:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$dd62]
    or a
    jp nz, Jump_05f_5ea5

    ld a, [$c8da]
    rst $00
    or l
    ld e, h
    push de
    ld e, h
    pop af
    ld e, h
    inc c
    ld e, l
    ld a, [$c846]
    bit 0, a
    jp nz, Jump_05f_5dd9

    bit 1, a
    jp nz, Jump_05f_5e40

    bit 6, a
    jp nz, Jump_05f_5d77

    bit 7, a
    jp nz, Jump_05f_5d63

    bit 5, a
    jr nz, jr_05f_5d4e

    bit 4, a
    jr nz, jr_05f_5d38

    ret


    ld a, [$c846]
    bit 1, a
    jp nz, Jump_05f_5e40

    bit 6, a
    jp nz, Jump_05f_5d77

    bit 7, a
    jr nz, jr_05f_5d63

    bit 5, a
    jp nz, $5d93

    bit 4, a
    jp nz, $5d93

    ret


    ld a, [$c846]
    bit 1, a
    jp nz, Jump_05f_5e40

    bit 6, a
    jr nz, jr_05f_5d77

    bit 7, a
    jr nz, jr_05f_5d63

    bit 5, a
    jp nz, Jump_05f_5dc4

    bit 4, a
    jp nz, Jump_05f_5da6

    ret


    ld a, [$da82]
    or a
    jr z, jr_05f_5d32

    ld a, [$c846]
    bit 0, a
    jp nz, Jump_05f_5e89

    bit 1, a
    jp nz, Jump_05f_5e40

    bit 6, a
    jr nz, jr_05f_5d77

    bit 7, a
    jr nz, jr_05f_5d63

    bit 5, a
    jp nz, Jump_05f_5e74

    bit 4, a
    jp nz, Jump_05f_5e5e

    ret


jr_05f_5d32:
    call Call_05f_5e29
    jp $5ec3


jr_05f_5d38:
    ld a, [$c8db]
    inc a
    ld [$c8db], a
    ld a, [$c8db]
    cp $2d
    jr c, jr_05f_5d4a

    xor a
    ld [$c8db], a

jr_05f_5d4a:
    call Call_05f_5f88
    ret


jr_05f_5d4e:
    ld a, [$c8db]
    dec a
    ld [$c8db], a
    ld a, [$c8db]
    cp $2d
    jr c, jr_05f_5d4a

    ld a, $2c
    ld [$c8db], a
    jr jr_05f_5d4a

Jump_05f_5d63:
jr_05f_5d63:
    ld a, [$c8da]
    inc a
    ld [$c8da], a
    ld a, [$c8da]
    cp $04
    jr c, jr_05f_5d8a

    xor a
    ld [$c8da], a
    jr jr_05f_5d8a

Jump_05f_5d77:
jr_05f_5d77:
    ld a, [$c8da]
    dec a
    ld [$c8da], a
    ld a, [$c8da]
    cp $04
    jr c, jr_05f_5d8a

    ld a, $03
    ld [$c8da], a

jr_05f_5d8a:
    rst $00
    ld [c], a
    ld e, [hl]
    or $5e
    dec c
    ld e, a
    ld hl, $fa5f
    call c, $eec8
    ld bc, $dcea
    ret z

    call Call_05f_5fa7
    ld a, [$c8dc]
    rst $00
    ld l, a
    ld h, b
    ld a, h
    ld h, b

Jump_05f_5da6:
    ld a, [$c8dd]
    inc a
    ld [$c8dd], a
    ld a, [$c8dd]
    cp $d8
    jr c, jr_05f_5db8

    xor a
    ld [$c8dd], a

jr_05f_5db8:
    call Call_05f_5fbe
    ld a, [$c8dc]
    or a
    ret z

    call Call_05f_607c
    ret


Jump_05f_5dc4:
    ld a, [$c8dd]
    dec a
    ld [$c8dd], a
    ld a, [$c8dd]
    cp $d8
    jr c, jr_05f_5db8

    ld a, $d7
    ld [$c8dd], a
    jr jr_05f_5db8

Jump_05f_5dd9:
    ld a, [$c8db]
    ld hl, $61f0
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $8000
    call $1577
    ld a, [$c8db]
    ld [$c81e], a
    ld hl, $170d
    rst $10
    ld hl, $1708
    rst $10
    ld a, [$c8db]
    ld [$daa4], a
    ld a, [$c8db]
    ld [$da81], a
    ld a, [$daa4]
    ld [$dd64], a
    ld a, $60
    ld [$dd63], a
    ld a, $00
    ld [$dd62], a
    ld hl, $dd62
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0200
    rst $10
    call Call_05f_6016

Call_05f_5e29:
jr_05f_5e29:
    ld hl, $c6cd
    call Call_05f_5f38
    call Call_05f_5f38
    call Call_05f_5f38
    ld hl, $c56d
    call Call_05f_5f38
    ld hl, $5005
    rst $10
    ret


Jump_05f_5e40:
    ld a, $04
    call $1688
    ld a, $07
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


Jump_05f_5e5e:
    ld a, [$c8e1]
    inc a
    ld [$c8e1], a
    ld a, [$c8e1]
    cp $0d
    jr c, jr_05f_5e70

    xor a
    ld [$c8e1], a

jr_05f_5e70:
    call Call_05f_5fdd
    ret


Jump_05f_5e74:
    ld a, [$c8e1]
    dec a
    ld [$c8e1], a
    ld a, [$c8e1]
    cp $0d
    jr c, jr_05f_5e70

    ld a, $0c
    ld [$c8e1], a
    jr jr_05f_5e70

Jump_05f_5e89:
    ld a, $04
    ld [$db89], a
    ld a, $01
    ld [$db75], a
    xor a
    ld hl, $da82
    ld bc, $0006
    call $12c7
    ld a, [$c8e1]
    ld [$da83], a
    jr jr_05f_5e29

Jump_05f_5ea5:
    ld a, [$dd62]
    or a
    jr z, jr_05f_5eb7

    call Call_05f_5ffc
    ld hl, $0200
    rst $10
    ld a, [$dd62]
    or a
    ret nz

jr_05f_5eb7:
    ld a, [$c8da]
    rst $00
    ld [c], a
    ld e, [hl]
    or $5e
    dec c
    ld e, a
    ld hl, $215f
    dec b
    ld e, a
    rst $10
    ld a, [$da82]
    or a
    ret z

    jr jr_05f_5f21

Call_05f_5ece:
jr_05f_5ece:
    di
    call $1aa6
    ld a, d
    ld [hl+], a
    ei
    di
    call $1aa6
    ld a, e
    ld [hl+], a
    ei
    dec bc
    ld a, b
    or c
    jr nz, jr_05f_5ece

    ret


    ld hl, $c6cd
    call Call_05f_5f49
    call Call_05f_5f35
    ld hl, $c56d
    call Call_05f_5f38
    ld hl, $5005
    rst $10
    ret


    ld hl, $c6cd
    call Call_05f_5f38
    call Call_05f_5f49
    call Call_05f_5f38
    ld hl, $c56d
    call Call_05f_5f38
    ld hl, $5005
    rst $10
    ret


    ld hl, $c6cd
    call Call_05f_5f35
    call Call_05f_5f49
    ld hl, $c56d
    call Call_05f_5f38
    ld hl, $5005
    rst $10
    ret


jr_05f_5f21:
    ld hl, $c6cd
    call Call_05f_5f38
    call Call_05f_5f35
    ld hl, $c56d
    call Call_05f_5f49
    ld hl, $5005
    rst $10
    ret


Call_05f_5f35:
    call Call_05f_5f38

Call_05f_5f38:
    di
    call $1aa6
    ld a, $e0
    ld [hl], a
    ei
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ret


Call_05f_5f49:
    di
    call $1aa6
    ld a, $e8
    ld [hl], a
    ei
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ret


Call_05f_5f5a:
jr_05f_5f5a:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    push de
    ld hl, $c180
    push de
    call $0d40
    pop de
    ld hl, $c180
    call Call_05f_5f7a
    pop de
    pop hl
    ld a, $10
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    jr jr_05f_5f5a

Call_05f_5f7a:
    ld b, $10

jr_05f_5f7c:
    di
    call $1aa6
    ld a, [hl+]
    ld [de], a
    ei
    inc de
    dec b
    jr nz, jr_05f_5f7c

    ret


Call_05f_5f88:
    ld hl, $c8de
    ld a, [$c8db]
    and $f0
    call Call_05f_624a
    ld [hl+], a
    ld a, [$c8db]
    and $0f
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ld de, $8b40
    ld hl, $c8de
    call Call_05f_5f5a
    ret


Call_05f_5fa7:
    ld hl, $61b7
    ld a, [$c8dc]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $8b60
    call Call_05f_5f5a
    ret


Call_05f_5fbe:
    ld hl, $c8de
    ld a, [$c8dd]
    and $f0
    call Call_05f_624a
    ld [hl+], a
    ld a, [$c8dd]
    and $0f
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ld de, $8b20
    ld hl, $c8de
    call Call_05f_5f5a
    ret


Call_05f_5fdd:
    ld hl, $c8de
    ld a, [$c8e1]
    and $f0
    call Call_05f_624a
    ld [hl+], a
    ld a, [$c8e1]
    and $0f
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ld de, $8a90
    ld hl, $c8de
    call Call_05f_5f5a
    ret


Call_05f_5ffc:
    ld a, [$c8db]
    cp $0e
    jr c, jr_05f_600c

    cp $21
    jr c, jr_05f_6011

    ld hl, $5e00
    rst $10
    ret


jr_05f_600c:
    ld hl, $5c00
    rst $10
    ret


jr_05f_6011:
    ld hl, $5d00
    rst $10
    ret


Call_05f_6016:
    ld hl, $c89b
    inc hl
    ld a, $d0
    ld [hl+], a
    ld a, $e0
    ld [hl], a
    ld hl, $61c3
    ld a, [$c8db]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c89c], a
    ld a, [$c8db]
    cp $03
    jr z, jr_05f_604b

    cp $04
    jr z, jr_05f_604b

    cp $0a
    jr z, jr_05f_604b

    ld a, $01
    ld [$dd68], a
    ld a, $01
    ld [$db54], a
    jr jr_05f_6055

jr_05f_604b:
    ld a, $00
    ld [$dd68], a
    ld a, $00
    ld [$db54], a

jr_05f_6055:
    ld a, [$c8db]
    cp $0e
    jr c, jr_05f_6065

    cp $21
    jr c, jr_05f_606a

    ld hl, $5e01
    rst $10
    ret


jr_05f_6065:
    ld hl, $5c01
    rst $10
    ret


jr_05f_606a:
    ld hl, $5d01
    rst $10
    ret


    ld de, $ff00
    ld hl, $9000
    ld bc, $0120
    call Call_05f_5ece
    ret


Call_05f_607c:
    ld a, [$c8dd]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $9000
    call $1577
    ret


    and b
    ld bc, $effa
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
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    call nz, $c6c5
    ldh [$c7], a
    ret z

    ldh [$e0], a
    ldh [$e0], a
    or h
    or l
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ret


    jp z, $cccb

    call $cfce
    ldh [$e0], a
    ldh [$b6], a
    or a
    cp b
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
    or d
    or e
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

    cp $e0
    ldh [$e0], a
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    ldh [$bf], a
    ret nz

    pop bc
    jp nz, $e0c3

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

    cp $e0
    ldh [$e0], a
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ldh [$b0], a
    or c
    ldh [$e8], a
    xor c
    xor d
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


    rst $00
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ret c

    ld b, $07
    ld [$0a09], sp
    dec bc
    ret c

    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $12d8
    inc de
    inc d
    dec d
    ld d, $17
    ret c

    jr jr_05f_61a4

    ld a, [de]
    dec de
    inc e
    dec e
    ret c

    ld e, $1f
    jr nz, jr_05f_61b5

    ld [hl+], a
    inc hl
    reti


    dec bc
    ld a, [bc]
    dec e
    dec e
    dec d
    ld c, $0e
    rrca
    ld c, $0c
    dec e
    jr jr_05f_61af

jr_05f_61a4:
    inc de
    rla
    jr jr_05f_61be

    jr jr_05f_61c1

    inc e
    dec e
    ld c, $1b
    rst $38

jr_05f_61af:
    ld c, $0f
    ld c, $0c
    dec e
    rla

jr_05f_61b5:
    jr @+$01

    cp e
    ld h, c
    cp a
    ld h, c
    jr jr_05f_61cc

    rrca

jr_05f_61be:
    rst $38
    jr jr_05f_61d8

jr_05f_61c1:
    sub b
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nc

    ret nc

    ret nc

jr_05f_61cc:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a

jr_05f_61d8:
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
    ld e, d
    ld bc, $025a
    ld e, d
    inc bc
    ld e, d
    inc b
    ld e, d
    dec b
    ld e, d
    ld b, $5a
    rlca
    ld e, d
    ld [$095a], sp
    ld e, d
    ld a, [bc]
    ld e, d
    dec bc
    ld e, d
    inc c
    ld e, d
    dec c
    ld e, d
    ld c, $5a
    rrca
    ld e, d
    db $10
    ld e, d
    ld de, $125a
    ld e, d
    inc de
    ld e, d
    inc d
    ld e, d
    dec d
    ld e, d
    ld d, $5a
    rla
    ld e, d
    jr jr_05f_627c

    add hl, de
    ld e, d
    ld a, [de]
    ld e, d
    dec de
    ld e, d
    inc e
    ld e, d
    dec e
    ld e, d
    ld e, $5a
    rra
    ld e, d
    ld a, [bc]
    ld e, e
    dec bc
    ld e, e
    inc c
    ld e, e
    dec c
    ld e, e
    ld c, $5b
    rrca
    ld e, e
    db $10
    ld e, e
    ld de, $125b
    ld e, e
    inc de
    ld e, e
    inc d
    ld e, e
    dec d
    ld e, e
    ld d, $5b

Call_05f_624a:
    srl a
    srl a
    srl a
    srl a
    ret


    ld a, [$c8da]
    bit 7, a
    ret nz

    ld a, [$da88]
    or a
    jr nz, jr_05f_62d9

    ld a, [$c846]
    bit 2, a
    ret z

    ld a, $01
    ld [$da88], a
    ld hl, $6454
    ld de, $8860
    call Call_05f_5f5a
    ld de, $63b2
    ld hl, $c500
    call Call_05f_4263

jr_05f_627c:
    ld a, [$c863]
    and $02
    rlca
    ld [$db4c], a
    inc a
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db4d], a
    ld a, h
    ld [$db4e], a
    call Call_05f_62e7
    ld a, [$db4d]
    ld l, a
    ld a, [$db4e]
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_05f_62d4

    inc hl
    ld a, l
    ld [$db4d], a
    ld a, h
    ld [$db4e], a
    ld hl, $db4c
    inc [hl]
    call Call_05f_62e7
    ld a, [$db4d]
    ld l, a
    ld a, [$db4e]
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_05f_62d4

    inc hl
    ld a, l
    ld [$db4d], a
    ld a, h
    ld [$db4e], a
    ld hl, $db4c
    inc [hl]
    call Call_05f_62e7

jr_05f_62d4:
    ld hl, $5005
    rst $10
    ret


jr_05f_62d9:
    ld a, [$c846]
    bit 2, a
    ret z

    xor a
    ld [$da88], a
    ld [$d9f4], a
    ret


Call_05f_62e7:
    call Call_05f_633f
    ld a, [$db4c]
    ld hl, $dc44
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_05f_634a
    ld hl, $643c
    call Call_05f_6362
    ld a, [$db4c]
    ld hl, $dc54
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_05f_634a
    ld hl, $6442
    call Call_05f_6362
    ld a, [$db4c]
    ld hl, $dc4c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_05f_634a
    ld hl, $6448
    call Call_05f_6362
    ld a, [$db4c]
    ld hl, $dc5c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_05f_634a
    ld hl, $644e
    call Call_05f_6362
    ret


Call_05f_633f:
    xor a
    ld hl, $db4f
    ld bc, $0003
    call $12c7
    ret


Call_05f_634a:
    ld b, [hl]
    ld a, $64
    call $1dfb
    ld hl, $db4f
    ld [hl], b
    ld b, a
    ld a, $0a
    call $1dfb
    ld hl, $db50
    ld [hl], b
    ld [$db51], a
    ret


Call_05f_6362:
    ld a, [$db4c]
    and $03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c500
    add hl, de
    ld c, $00
    ld a, [$db4f]
    or c
    jr z, jr_05f_638c

    inc c
    ld a, [$db4f]
    ld de, $6432
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a

jr_05f_638c:
    inc hl
    ld a, [$db50]
    or c
    jr z, jr_05f_63a2

    inc c
    ld a, [$db50]
    ld de, $6432
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a

jr_05f_63a2:
    inc hl
    ld a, [$db51]
    ld de, $6432
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ret


    add b
    ld bc, $effa
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
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    add [hl]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$86], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    add a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$87], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    adc b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$88], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    adc c
    ldh [$e0], a
    ldh [$e0], a
    ldh [$89], a
    ldh [$e0], a
    ldh [$e0], a
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
    xor $ee
    db $fd
    reti


    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    and d
    ld bc, $01a8
    xor [hl]
    ld bc, $01c2
    ret z

    ld bc, $01ce
    ld [c], a
    ld bc, $01e8
    xor $01
    ld [bc], a
    ld [bc], a
    ld [$0e02], sp
    ld [bc], a
    ld c, d
    jr z, jr_05f_6486

    ld c, b
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312

jr_05f_6486:
    inc d
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    dec d

jr_05f_648f:
    ld d, $17
    jr jr_05f_64ac

    ld a, [de]
    dec de
    inc e
    ret c

    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_05f_64c2

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $d8
    nop
    nop
    nop
    nop
    nop

jr_05f_64ac:
    daa
    jr z, jr_05f_64d8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_648f

    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]

jr_05f_64c2:
    ld [hl], $00
    jr c, @-$26

    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ret c

    nop
    nop
    nop

jr_05f_64d8:
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    scf
    reti


    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    ret c

    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add c
    add d
    add e
    ret c

    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add h
    add l
    add [hl]
    ret c

    nop
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ret c

    nop
    nop
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    ret c

    nop
    nop
    and a
    xor b
    xor c
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor [hl]
    xor a
    reti


    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    ret c

    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add c
    add d
    add e
    ret c

    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add h
    add l
    add [hl]
    ret c

    nop
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ret c

    nop
    nop
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    ret c

    nop
    nop
    and a
    xor b
    xor c
    xor d
    cp [hl]
    cp a
    call $cfce
    xor e
    xor h
    ret nc

    xor l
    xor [hl]
    xor a
    ret nz

    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    sbc $df
    nop
    nop
    nop
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    nop
    nop
    nop
    cp d
    cp e
    cp h
    cp l
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    ret c

    nop
    nop
    nop
    nop
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    reti


    inc bc
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $d8
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05f_6689

    ld a, [de]
    dec de
    inc e
    ret c

    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    reti


    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a

jr_05f_6689:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rP1], a
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $e012
    ldh [rNR14], a
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_66f0

    ld [hl+], a
    inc hl
    inc h
    dec h
    ldh [$e0], a

jr_05f_66d5:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld h, $27
    jr z, jr_05f_6716

    ld a, [hl+]
    dec hl
    inc l

jr_05f_66f0:
    dec l
    ld l, $2f
    jr nc, jr_05f_66d5

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05f_6741

    ld a, [hl-]
    dec sp
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$3c], a
    dec a
    ld a, $3f
    ld b, b

jr_05f_6716:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rBGP], a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rHDMA2], a
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_05f_6741:
    ld e, d
    ld e, e
    ld e, h
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$5d], a
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rBCPS], a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$73], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    or b
    or c
    or d
    or e
    or h
    or l
    ldh [$e0], a
    ldh [$7e], a
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$89], a
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    ldh [$e0], a
    ldh [$94], a
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    jp nz, $c4c3

    push bc
    add $c7
    ldh [$e0], a
    ldh [$e0], a
    ldh [$9f], a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ret z

    ret


    jp z, $cccb

    call $e0e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $e012
    ldh [rNR14], a
    ldh [$15], a
    ld d, $17
    jr jr_05f_6849

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_6859

    ld [hl+], a
    inc hl
    inc h
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a

jr_05f_6849:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a

jr_05f_6859:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rNR52], a
    daa
    jr z, jr_05f_6891

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_68a1

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @-$1e

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_05f_6891:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ldh [$e0], a

jr_05f_68a1:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rHDMA2], a
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ldh [$e0], a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$73], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    or b
    or c
    or d
    or e
    or h
    or l
    ldh [$e0], a
    ldh [$7e], a
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$89], a
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    ldh [$e0], a
    ldh [$94], a
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    jp nz, $c4c3

    push bc
    add $c7
    ldh [$e0], a
    ldh [$e0], a
    ldh [$9f], a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ret z

    ret


    jp z, $cccb

    call $e0e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rSB], a
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $d912
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
