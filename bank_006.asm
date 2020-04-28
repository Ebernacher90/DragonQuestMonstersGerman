; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    ld b, $1f
    ld c, e
    cp h
    ld c, h
    rrca
    ld b, b
    jr z, jr_006_4049

    ld e, d
    ld c, l
    sbc d
    ld c, a
    inc [hl]
    ld h, b
    ld a, [$c8eb]
    bit 1, a
    ret nz

    bit 3, a
    ret nz

    bit 4, a
    ret nz

    bit 7, a
    ret nz

    bit 2, a
    jr z, jr_006_4028

    ld a, [$c91e]
    cp $01
    ret z

jr_006_4028:
    ld hl, $d7d2

jr_006_402b:
    ld a, [hl]
    cp $ff
    ret z

    inc hl
    ld a, [hl]
    dec hl
    cp $ff
    push hl
    call nz, Call_006_4043
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_006_402b

Call_006_4043:
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_006_4049:
    ld a, [hl]
    bit 6, a
    ret nz

    and $0f
    rst $00
    ld [hl], b
    ld b, b
    sub b
    ld b, b
    or c
    ld b, b
    ld [hl+], a
    ld b, c
    and l
    ld b, c
    ld h, [hl]
    ld b, d
    rst $10
    ld b, d
    add hl, bc
    ld b, e
    ccf
    ld b, e
    or b
    ld b, e
    rra
    ld b, h
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    push bc
    ld b, h
    sub c
    ld b, [hl]
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jr nz, jr_006_408d

    ld a, [$d8d7]

Jump_006_4081:
    or a
    jp nz, Jump_006_4a83

    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

jr_006_408d:
    jp Jump_006_4a48


    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

    ld a, [$c8a6]
    and $0f
    jr nz, jr_006_40ae

    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $03
    ld [hl], a

jr_006_40ae:
    jp Jump_006_4a48


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_40fd

    ld a, [hl-]
    and $01
    xor $01
    add a
    inc a
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_40fd

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_40fd

    set 0, [hl]
    call Call_006_4100
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_40fd

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl+], a
    ld [hl], $10

Jump_006_40fd:
jr_006_40fd:
    jp Jump_006_4a48


Call_006_4100:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    db $10
    ld b, c
    add hl, de
    ld b, c
    ld bc, $0001
    ld de, $0020
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $ffe0
    jp Jump_006_49ba


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_416a

    ld a, [hl-]
    and $03
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_416a

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_416a

    set 0, [hl]
    call Call_006_416d
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_416a

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    dec a
    and $03
    ld [hl+], a
    ld [hl], $10

Jump_006_416a:
jr_006_416a:
    jp Jump_006_4a48


Call_006_416d:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    add c
    ld b, c
    adc d
    ld b, c
    sub e
    ld b, c
    sbc h
    ld b, c
    ld bc, $0001
    ld de, $0020
    jp Jump_006_4a01


    ld bc, $ffff
    ld de, $0000
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $0000
    jp Jump_006_4a01


    ld bc, $0001
    ld de, $0020
    jp Jump_006_49ba


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_41f7

    ld a, [hl-]
    and $07
    ld de, $425e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_41f7

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_41f7

    set 0, [hl]
    call Call_006_41fa
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_41f7

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $07
    ld [hl+], a
    ld [hl], $10

Jump_006_41f7:
jr_006_41f7:
    jp Jump_006_4a48


Call_006_41fa:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    ld d, $42
    rra
    ld b, d
    jr z, @+$44

    ld sp, $3a42
    ld b, d
    ld b, e
    ld b, d
    ld c, h
    ld b, d
    ld d, l
    ld b, d
    ld bc, $ffff
    ld de, $ffd0
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $ffd0
    jp Jump_006_4a01


    ld bc, $ffff
    ld de, $ffa0
    jp Jump_006_49ba


    ld bc, $0001
    ld de, $0000
    jp Jump_006_4a01


    ld bc, $0001
    ld de, $ffd0
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $ffd0
    jp Jump_006_4a01


    ld bc, $0001
    ld de, $0000
    jp Jump_006_49ba


    ld bc, $0001
    ld de, $0000
    jp Jump_006_4a01


    ld bc, $0102
    nop
    inc bc
    ld [bc], a
    inc bc
    nop
    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_42b2

    ld a, [hl-]
    and $01
    xor $01
    add a
    inc a
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_42b2

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_42b2

    set 0, [hl]
    call Call_006_42b5
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_42b2

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl+], a
    ld [hl], $10

Jump_006_42b2:
jr_006_42b2:
    jp Jump_006_4a48


Call_006_42b5:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    push bc
    ld b, d
    adc $42
    ld bc, $0001
    ld de, $0030
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $0000
    jp Jump_006_49ba


    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jr nz, jr_006_42f4

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_4a83

    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

jr_006_42f4:
    ld a, [$d8d7]
    or a
    jr nz, jr_006_4306

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    res 6, [hl]

jr_006_4306:
    jp Jump_006_4a83


    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jr nz, jr_006_433c

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_4a83

    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, [hl]
    swap a
    and $03
    push af
    ld a, l
    add $06
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop af
    ld [hl], a

jr_006_433c:
    jp Jump_006_4a48


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_438b

    ld a, [hl-]
    and $01
    xor $01
    add a
    inc a
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_438b

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_438b

    set 0, [hl]
    call Call_006_438e
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_438b

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl+], a
    ld [hl], $10

Jump_006_438b:
jr_006_438b:
    jp Jump_006_4a48


Call_006_438e:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    sbc [hl]
    ld b, e
    and a
    ld b, e
    ld bc, $0001
    ld de, $0010
    jp Jump_006_49ba


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_49ba


    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_43fa

    ld a, [hl-]
    and $01
    add a
    inc a
    dec hl
    ld [hl-], a
    bit 6, [hl]
    jp nz, Jump_006_43fa

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_43fa

    set 0, [hl]
    call Call_006_43fd
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_43fa

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl+], a
    ld [hl], $10

Jump_006_43fa:
jr_006_43fa:
    jp Jump_006_4a48


Call_006_43fd:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    dec c
    ld b, h
    ld d, $44
    ld bc, $ffff
    ld de, $ffe0
    jp Jump_006_49ba


    ld bc, $0001
    ld de, $0020
    jp Jump_006_49ba


    ld a, [$c8a6]
    and $07
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    or a
    jp nz, Jump_006_446a

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jp nz, Jump_006_446a

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_446a

    set 0, [hl]
    call Call_006_446d
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ld a, c
    or b
    jr nz, jr_006_446a

    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl-], a

Jump_006_446a:
jr_006_446a:
    jp Jump_006_4a48


Call_006_446d:
    ldh a, [$d5]
    add $08
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    rst $00
    ld a, l
    ld b, h
    add [hl]
    ld b, h
    ld bc, $0001
    ld de, $0010
    jp Jump_006_448f


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_448f


Jump_006_448f:
    ld a, [$c8eb]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    ldh a, [$d5]
    add $02
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ret


    ld a, [$c925]
    ld b, a
    ld a, [$c926]
    cp b
    ret nz

    ld a, [$c8eb]
    bit 2, a
    ret nz

    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_006_4540

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jp nz, Jump_006_4540

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_4540

    set 0, [hl]
    call Call_006_4543
    cp $00
    jr z, jr_006_4540

    cp $02
    jr z, jr_006_4524

    call Call_006_457d
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $04
    ld a, [$c899]
    and $c0
    jr nz, jr_006_4540

jr_006_4524:
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $04
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [$c899]
    and $03
    ld [hl], a

Jump_006_4540:
jr_006_4540:
    jp Jump_006_4a48


Call_006_4543:
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $03
    rst $00
    ld e, c
    ld b, l
    ld h, d
    ld b, l
    ld l, e
    ld b, l
    ld [hl], h
    ld b, l
    ld bc, $0001
    ld de, $0010
    jp Jump_006_4874


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_472e


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_4874


    ld bc, $0001
    ld de, $0010
    jp Jump_006_472e


Call_006_457d:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0010
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    call Call_006_467c
    jr nz, jr_006_45ae

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0000
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    call Call_006_467c
    jp z, Jump_006_463f

jr_006_45ae:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $fff0
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    call Call_006_467c
    jr nz, jr_006_45de

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0000
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    call Call_006_467c
    jr z, jr_006_463f

jr_006_45de:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0000
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    call Call_006_467c
    jr nz, jr_006_460e

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0010
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    call Call_006_467c
    jr z, jr_006_463f

jr_006_460e:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $0000
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    call Call_006_467c
    jr nz, jr_006_463e

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld bc, $fff0
    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    call Call_006_467c
    jr z, jr_006_463f

jr_006_463e:
    ret


Jump_006_463f:
jr_006_463f:
    ldh a, [$d5]
    add $04
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$d8d4], a
    ld a, $70
    ld [$d8d3], a
    set 6, [hl]
    xor a
    ld [$d8d7], a
    ld hl, $0405
    rst $10
    ld a, [$d8d7]
    or a
    ret z

    bit 1, a
    ret z

    ld hl, $ffff
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ret


Call_006_467c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    and $f0
    or $08
    ld l, a
    ld a, e
    and $f0
    or $08
    cp l
    ret nz

    ld a, d
    cp h
    ret nz

    ret


    ld a, [$c925]
    ld b, a
    ld a, [$c926]
    cp b
    ret nz

    ld a, [$c8eb]
    bit 2, a
    ret nz

    ld a, [$c8a6]
    and $01
    jp nz, Jump_006_4aa1

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_006_46f1

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jp nz, Jump_006_46f1

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_46f1

    set 0, [hl]
    call Call_006_46f4
    cp $00
    jr z, jr_006_46f1

    cp $02
    jr z, jr_006_46e1

    ld a, [$c899]
    and $c0
    jr nz, jr_006_46f1

jr_006_46e1:
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [$c899]
    and $03
    ld [hl], a

Jump_006_46f1:
jr_006_46f1:
    jp Jump_006_4a48


Call_006_46f4:
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $03
    rst $00
    ld a, [bc]
    ld b, a
    inc de
    ld b, a
    inc e
    ld b, a
    dec h
    ld b, a
    ld bc, $0001
    ld de, $0010
    jp Jump_006_4874


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_472e


    ld bc, $ffff
    ld de, $fff0
    jp Jump_006_4874


    ld bc, $0001
    ld de, $0010
    jp Jump_006_472e


Jump_006_472e:
    ld a, [$c8eb]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $0f
    cp $08
    jr nz, jr_006_47bd

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    push bc
    call $1e31
    ldh a, [$aa]
    push af
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    pop af
    pop bc
    srl a
    srl a
    cp $0c
    jr z, jr_006_47bd

    cp $0d
    jr z, jr_006_47bd

    cp $0e
    jr z, jr_006_47bd

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $08
    ld a, $02
    ret


jr_006_47bd:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    ldh a, [$d5]
    add $02
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or a
    jr nz, jr_006_47f6

    ld a, e
    cp $70
    jr c, jr_006_4825

jr_006_47f6:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $08
    ld a, $02
    ret


jr_006_4825:
    push hl
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    pop hl
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    and $0f
    ld a, $00
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $10
    ld a, $01
    ret


Jump_006_4874:
    ld a, [$c8eb]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $0f
    cp $08
    jr nz, jr_006_4903

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    push bc
    call $1e31
    ldh a, [$aa]
    push af
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    pop af
    pop bc
    srl a
    srl a
    cp $0c
    jr z, jr_006_4903

    cp $0d
    jr z, jr_006_4903

    cp $0e
    jr z, jr_006_4903

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $08
    ld a, $02
    ret


jr_006_4903:
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    ldh a, [$d5]
    add $03
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or a
    jr nz, jr_006_493c

    ld a, e
    cp $50
    jr c, jr_006_496b

jr_006_493c:
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $08
    ld a, $02
    ret


jr_006_496b:
    push hl
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    pop hl
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    and $0f
    ld a, $00
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $10
    ld a, $01
    ret


Jump_006_49ba:
    ld a, [$c8eb]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    ldh a, [$d5]
    add $02
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    and $0f
    jr nz, jr_006_4a00

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $10

jr_006_4a00:
    ret


Jump_006_4a01:
    ld a, [$c8eb]
    bit 0, a
    ret nz

    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld b, a
    ldh a, [$d5]
    add $03
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    and $0f
    jr nz, jr_006_4a47

    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $10

jr_006_4a47:
    ret


Jump_006_4a48:
    ldh a, [$d5]
    add $07
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_006_4a5b

    dec [hl]
    dec hl
    dec hl
    res 0, [hl]

jr_006_4a5b:
    ld a, [$d8d7]
    or a
    jr nz, jr_006_4a6d

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    res 6, [hl]

jr_006_4a6d:
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 6, [hl]
    jr z, jr_006_4a83

    ldh a, [$8e]
    add $02
    and $03
    inc hl
    ld [hl], a

Jump_006_4a83:
jr_006_4a83:
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl]
    ld de, $4b1b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, l
    add $11
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [de]
    ld [hl], a

Jump_006_4aa1:
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    bit 7, [hl]
    ret nz

    ld b, $06
    bit 6, [hl]
    jr nz, jr_006_4abc

    ld b, $03
    bit 0, [hl]
    jr nz, jr_006_4abc

    ld b, $00

jr_006_4abc:
    inc hl
    ld a, [hl]
    ld de, $4b17
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add b
    ld b, a
    ld a, l
    add $0a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    inc hl
    inc hl
    ld a, [hl]
    cp b
    jr nz, jr_006_4ae8

    ld a, [$c8eb]
    bit 0, a
    jr z, jr_006_4af7

    ret


jr_006_4ae8:
    ld [hl], b
    xor a
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld a, [$d7b4]
    ld l, a
    ld a, [$d7b5]
    ld h, a
    ld [hl], $00

jr_006_4af7:
    ld a, [$d7b4]
    ld l, a
    ld a, [$d7b5]
    ld h, a
    dec hl
    ld a, [hl+]
    or a
    jr nz, jr_006_4b09

    ld hl, $0200
    rst $10
    ret


jr_006_4b09:
    inc hl
    ld a, [hl]
    push af
    push hl
    ld [hl], $00
    ld hl, $0200
    rst $10
    pop hl
    pop af
    ld [hl], a
    ret


    nop
    ld bc, $0102
    nop
    jr nz, jr_006_4b1e

jr_006_4b1e:
    nop
    ld hl, $ff90
    res 5, [hl]
    ld hl, $d7d2

jr_006_4b27:
    ld a, [hl]
    cp $ff
    jr z, jr_006_4b40

    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    res 5, [hl]
    ld a, l
    add $1b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_006_4b27

jr_006_4b40:
    ld a, [$d8d7]
    or a
    ret nz

    ld hl, $ffdb
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$93]
    ld [hl+], a
    ldh a, [$95]
    ld [hl+], a
    ldh a, [$96]
    ld [hl+], a
    call Call_006_4b58
    ret


Call_006_4b58:
    ldh a, [$db]
    and $0f
    cp $08
    jr nz, jr_006_4b6c

    ldh a, [$dd]
    and $0f
    cp $08
    jr nz, jr_006_4b89

    call Call_006_4ba6
    ret


jr_006_4b6c:
    ld hl, $ffdb
    ld a, [hl]
    add $08
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    call Call_006_4ba6
    ld hl, $ffdb
    ld a, [hl]
    sub $10
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    call Call_006_4ba6
    ret


jr_006_4b89:
    ld hl, $ffdd
    ld a, [hl]
    add $08
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    call Call_006_4ba6
    ld hl, $ffdd
    ld a, [hl]
    sub $10
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    call Call_006_4ba6
    ret


Call_006_4ba6:
    ldh a, [$db]
    ld l, a
    ldh a, [$dc]
    ld h, a
    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ldh [$d5], a
    ldh a, [$dd]
    ld l, a
    ldh a, [$de]
    ld h, a
    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ldh [$d6], a
    ld d, $00
    ld hl, $d7d2

jr_006_4bd3:
    ld a, [hl]
    cp $ff
    ret z

    bit 6, a
    jr nz, jr_006_4be4

    inc hl
    ld a, [hl-]
    cp $4d
    jr z, jr_006_4be4

    call Call_006_4bf0

jr_006_4be4:
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc d
    jr jr_006_4bd3

    ret


Call_006_4bf0:
    push hl
    push bc
    push de
    ld a, l
    add $18
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    and $0f
    cp $08
    jr nz, jr_006_4c17

    ld a, l
    and $0f
    cp $08
    jr nz, jr_006_4c37

    call Call_006_4c72
    jr nz, jr_006_4c6e

    jr jr_006_4c55

jr_006_4c17:
    push hl
    push de
    ld a, e
    add $08
    ld e, a
    ld a, d
    adc $00
    ld d, a
    call Call_006_4c72
    pop de
    pop hl
    jr z, jr_006_4c55

    ld a, e
    add $f8
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    call Call_006_4c72
    jr nz, jr_006_4c6e

    jr jr_006_4c55

jr_006_4c37:
    push hl
    push de
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_006_4c72
    pop de
    pop hl
    jr z, jr_006_4c55

    ld a, l
    add $f8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    call Call_006_4c72
    jr nz, jr_006_4c6e

jr_006_4c55:
    ld hl, $ff90
    set 5, [hl]
    pop de
    ld a, d
    ld [$d7bd], a
    pop bc
    pop hl
    push hl
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    set 5, [hl]
    pop hl
    ret


jr_006_4c6e:
    pop de
    pop bc
    pop hl
    ret


Call_006_4c72:
    swap d
    swap e
    ld a, d
    and $f0
    ld d, a
    ld a, e
    and $0f
    or d
    ld b, a
    ldh a, [$d5]
    cp b
    ret nz

    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ld c, a
    ldh a, [$d6]
    cp c
    ret


    ld a, [$ca37]
    sub b
    jr nc, jr_006_4c9c

    add $31

jr_006_4c9c:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add $73
    ld l, a
    ld a, h
    adc $c9
    ld h, a
    ld a, [hl+]
    ldh [$db], a
    ld a, [hl+]
    ldh [$dd], a
    ld a, [hl]
    swap a
    and $0f
    ldh [$dc], a
    ld a, [hl]
    and $0f
    ldh [$de], a
    ret


    ld a, [$c8ec]
    or a
    ret nz

    ld a, [$c8eb]
    bit 1, a
    ret nz

    bit 3, a
    ret nz

    bit 7, a
    ret nz

    bit 4, a
    jr z, jr_006_4cd7

    ld a, [$c8ef]
    cp $0f
    ret z

jr_006_4cd7:
    ld a, [$c8eb]
    bit 2, a
    jr z, jr_006_4cea

    ld a, [$c969]
    or a
    jr nz, jr_006_4cea

    ld a, [$c91e]
    cp $01
    ret z

jr_006_4cea:
    ld de, $d7d2

jr_006_4ced:
    ld a, [de]
    cp $ff
    ret z

    bit 6, a
    jr nz, jr_006_4cff

    inc de
    ld a, [de]
    dec de
    cp $ff
    push de
    call nz, Call_006_4d0a
    pop de

jr_006_4cff:
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jr jr_006_4ced

    ret


Call_006_4d0a:
    push bc
    push de
    ld a, e
    add $18
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld hl, $ffc3
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    inc de
    add $08
    ld [hl+], a
    ld a, [de]
    inc de
    adc $00
    ld [hl+], a
    pop de
    ld a, e
    add $11
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    ld [hl+], a
    inc de
    inc de
    inc de
    ld a, [de]
    cp $ff
    jr z, jr_006_4d58

    ld [hl+], a
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $f8
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_006_4d54

    ld hl, $0500
    rst $10
    jr jr_006_4d58

jr_006_4d54:
    ld hl, $0402
    rst $10

jr_006_4d58:
    pop bc
    ret


    ld hl, $d7be
    ld b, $06
    ld c, $00

jr_006_4d61:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    push bc
    ld b, a
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_006_4d7a

    ld hl, $2adf
    ld a, b
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_006_4d86

jr_006_4d7a:
    ld l, b
    ld h, $00
    add hl, hl
    ld a, l
    add $cc
    ld l, a
    ld a, h
    adc $4d
    ld h, a

jr_006_4d86:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    add $80
    ld h, a
    ld a, [$c969]
    or a
    jr z, jr_006_4d99

    ld a, h
    add $07
    ld h, a
    jr jr_006_4dae

jr_006_4d99:
    ld a, [$c968]
    cp $08
    jr z, jr_006_4dae

    cp $45
    jr nz, jr_006_4daa

    ld a, h
    add $02
    ld h, a
    jr jr_006_4dae

jr_006_4daa:
    ld a, h
    add $05
    ld h, a

jr_006_4dae:
    ld h, a
    ld l, $00
    call $1577
    pop bc
    pop hl
    ld a, [hl]
    cp $55
    jr z, jr_006_4dbf

    cp $15
    jr nz, jr_006_4dc5

jr_006_4dbf:
    inc hl
    ld a, [hl-]
    or a
    jr nz, jr_006_4dc5

    inc c

jr_006_4dc5:
    inc hl
    inc hl
    inc c
    dec b
    jr nz, jr_006_4d61

    ret


    nop
    cpl
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $2f01
    ld [bc], a
    cpl
    inc bc
    cpl
    inc b
    cpl
    dec b
    cpl
    ld b, $2f
    rlca
    cpl
    ld [$092f], sp
    cpl
    ld a, [bc]
    cpl
    dec bc
    cpl
    inc c
    cpl
    dec c
    cpl
    ld c, $2f
    rrca
    cpl
    db $10
    cpl
    nop
    jr c, @+$03

    jr c, jr_006_4e13

    jr c, @+$05

jr_006_4e13:
    jr c, jr_006_4e19

    jr c, @+$07

    jr c, jr_006_4e1f

jr_006_4e19:
    jr c, @+$09

    jr c, jr_006_4e25

    jr c, @+$0b

jr_006_4e1f:
    jr c, jr_006_4e2b

    jr c, @+$0d

    jr c, jr_006_4e31

jr_006_4e25:
    jr c, @+$0f

    jr c, jr_006_4e37

    jr c, @+$11

jr_006_4e2b:
    jr c, jr_006_4e3d

    jr c, @+$13

    jr c, jr_006_4e43

jr_006_4e31:
    jr c, @+$15

    jr c, jr_006_4e49

    jr c, @+$17

jr_006_4e37:
    jr c, jr_006_4e4f

    jr c, @+$19

    jr c, jr_006_4e55

jr_006_4e3d:
    jr c, @+$1b

    jr c, jr_006_4e5b

    jr c, @+$1d

jr_006_4e43:
    jr c, jr_006_4e61

    jr c, @+$1f

    jr c, jr_006_4e67

jr_006_4e49:
    jr c, @+$21

    jr c, jr_006_4e6d

    jr c, @+$23

jr_006_4e4f:
    jr c, jr_006_4e73

    jr c, @+$25

    jr c, jr_006_4e79

jr_006_4e55:
    jr c, @+$27

    jr c, jr_006_4e7f

    jr c, @+$29

jr_006_4e5b:
    jr c, jr_006_4e85

    jr c, @+$2b

    jr c, jr_006_4e8b

jr_006_4e61:
    jr c, @+$2d

    jr c, jr_006_4e91

    jr c, @+$2f

jr_006_4e67:
    jr c, jr_006_4e97

    jr c, @+$31

    jr c, jr_006_4e9d

jr_006_4e6d:
    jr c, @+$33

    jr c, jr_006_4ea3

    jr c, jr_006_4ea6

jr_006_4e73:
    jr c, @+$36

    jr c, jr_006_4eac

    jr c, jr_006_4eaf

jr_006_4e79:
    jr c, jr_006_4eb2

    jr c, jr_006_4eb5

    jr c, jr_006_4eb8

jr_006_4e7f:
    jr c, jr_006_4ebb

    jr c, jr_006_4ebe

    jr c, jr_006_4ec1

jr_006_4e85:
    jr c, jr_006_4ec4

    jr c, jr_006_4ec7

    jr c, jr_006_4eca

jr_006_4e8b:
    jr c, @+$42

    jr c, jr_006_4ed0

    jr c, jr_006_4ed3

jr_006_4e91:
    jr c, jr_006_4ed6

    jr c, @+$46

    jr c, jr_006_4edc

jr_006_4e97:
    jr c, @+$48

    jr c, jr_006_4ee2

    jr c, jr_006_4e9d

jr_006_4e9d:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_006_4ea3:
    add hl, sp
    inc b
    add hl, sp

jr_006_4ea6:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_006_4eac:
    ld [$0939], sp

jr_006_4eaf:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_006_4eb2:
    dec bc
    add hl, sp
    inc c

jr_006_4eb5:
    add hl, sp
    dec c
    add hl, sp

jr_006_4eb8:
    ld c, $39
    rrca

jr_006_4ebb:
    add hl, sp
    db $10
    add hl, sp

jr_006_4ebe:
    ld de, $1239

jr_006_4ec1:
    add hl, sp
    inc de
    add hl, sp

jr_006_4ec4:
    inc d
    add hl, sp
    dec d

jr_006_4ec7:
    add hl, sp
    ld d, $39

jr_006_4eca:
    rla
    add hl, sp
    jr jr_006_4f07

    add hl, de
    add hl, sp

jr_006_4ed0:
    ld a, [de]
    add hl, sp
    dec de

jr_006_4ed3:
    add hl, sp
    inc e
    add hl, sp

jr_006_4ed6:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_006_4edc:
    jr nz, jr_006_4f17

    ld hl, $2239
    add hl, sp

jr_006_4ee2:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_006_4f27

    add hl, hl
    add hl, sp
    ld a, [hl+]
    add hl, sp
    dec hl
    add hl, sp
    inc l
    add hl, sp
    dec l
    add hl, sp
    ld l, $39
    cpl
    add hl, sp
    jr nc, jr_006_4f37

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_006_4f07:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_006_4f47

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_006_4f17:
    add hl, sp
    ld a, $39
    ccf
    add hl, sp
    ld b, b
    add hl, sp
    ld b, c
    add hl, sp
    ld b, d
    add hl, sp
    ld b, e
    add hl, sp
    ld b, h
    add hl, sp
    ld b, l

jr_006_4f27:
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, a
    add hl, sp
    nop
    ld a, [hl-]
    ld bc, $023a
    ld a, [hl-]
    inc bc
    ld a, [hl-]
    inc b
    ld a, [hl-]
    dec b

jr_006_4f37:
    ld a, [hl-]
    ld b, $3a
    rlca
    ld a, [hl-]
    ld [$093a], sp
    ld a, [hl-]
    ld a, [bc]
    ld a, [hl-]
    dec bc
    ld a, [hl-]
    inc c
    ld a, [hl-]
    dec c

jr_006_4f47:
    ld a, [hl-]
    ld c, $3a
    rrca
    ld a, [hl-]
    db $10
    ld a, [hl-]
    ld de, $123a
    ld a, [hl-]
    inc de
    ld a, [hl-]
    inc d
    ld a, [hl-]
    dec d
    ld a, [hl-]
    ld d, $3a
    rla
    ld a, [hl-]
    jr jr_006_4f98

    add hl, de
    ld a, [hl-]
    ld a, [de]
    ld a, [hl-]
    dec de
    ld a, [hl-]
    inc e
    ld a, [hl-]
    dec e
    ld a, [hl-]
    ld e, $3a
    rra
    ld a, [hl-]
    jr nz, jr_006_4fa8

    ld hl, $223a
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    inc h
    ld a, [hl-]
    dec h
    ld a, [hl-]
    ld h, $3a
    daa
    ld a, [hl-]
    jr z, jr_006_4fb8

    add hl, hl
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    dec hl
    ld a, [hl-]
    inc l
    ld a, [hl-]
    dec l
    ld a, [hl-]
    ld l, $3a
    cpl
    ld a, [hl-]
    jr nc, jr_006_4fc8

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_006_4f98:
    ld [hl], $3a
    ld a, [$cac0]
    ld hl, $cb0c
    call $223b
    ld e, l
    ld d, h
    ld hl, $50e0

jr_006_4fa8:
    ld c, $00

Jump_006_4faa:
    push de
    push hl
    push bc
    push de
    call Call_006_50d2
    pop de
    jp z, Jump_006_507c

    ld a, [de]
    inc a
    cp [hl]

jr_006_4fb8:
    jp c, Jump_006_507c

    ld a, e
    add $07
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl

jr_006_4fc8:
    ld a, [de]
    sbc [hl]
    jp c, Jump_006_507c

    ld a, e
    add $03
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jp c, Jump_006_507c

    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jp c, Jump_006_507c

    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jr c, jr_006_507c

    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jr c, jr_006_507c

    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    ld a, [de]
    sub [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jr c, jr_006_507c

    ld a, e
    add $d2
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    pop bc
    push bc
    push de
    ld b, $19

jr_006_5031:
    ld a, [de]
    cp c
    jr z, jr_006_5097

    inc de
    dec b
    jr nz, jr_006_5031

    pop de
    ld a, e
    add $f8
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_006_507c

    call Call_006_50c0
    jr nz, jr_006_507c

    ld a, [hl]
    cp $ff
    jp z, Jump_006_50a6

    call Call_006_50c0
    jr nz, jr_006_507c

    ld a, [hl]
    cp $ff
    jp z, Jump_006_50b5

    call Call_006_50c0
    jr nz, jr_006_507c

    ld a, [hl]
    cp $ff
    jp z, Jump_006_50b5

    call Call_006_50c0
    jr nz, jr_006_507c

    ld a, [hl]
    cp $ff
    jp z, Jump_006_50b5

    call Call_006_50c0
    jr nz, jr_006_507c

    jp Jump_006_50b5


Jump_006_507c:
jr_006_507c:
    pop bc
    pop hl
    pop de
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    ld a, c
    cp $da
    jp nz, Jump_006_4faa

    ld a, $ff
    ldh [$d8], a
    ld a, $ff
    ldh [$d9], a
    ret


jr_006_5097:
    ld a, $ff
    ld [de], a
    pop de
    pop bc
    pop hl
    pop de
    ld a, c
    ldh [$d8], a
    ld a, $00
    ldh [$d9], a
    ret


Jump_006_50a6:
    dec hl
    ld a, [hl]
    ldh [$da], a
    pop bc
    pop hl
    pop de
    ld a, c
    ldh [$d8], a
    ld a, $01
    ldh [$d9], a
    ret


Jump_006_50b5:
    pop bc
    pop hl
    pop de
    ld a, c
    ldh [$d8], a
    ld a, $02
    ldh [$d9], a
    ret


Call_006_50c0:
    push de
    call Call_006_50c7
    pop de
    inc hl
    ret


Call_006_50c7:
    ld b, $08

jr_006_50c9:
    ld a, [de]
    cp [hl]
    ret z

    inc de
    dec b
    jr nz, jr_006_50c9

    inc b
    ret


Call_006_50d2:
    ld de, $c0d8
    ld b, $28

jr_006_50d7:
    ld a, [de]
    cp c
    ret z

    inc de
    dec b
    jr nz, jr_006_50d7

    inc b
    ret


    ld bc, $0000
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    nop
    nop
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    nop
    ld bc, $ffff
    rst $38
    rst $38
    inc bc
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    nop
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $00
    nop
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld b, $ff
    rst $38
    rst $38
    rst $38
    dec e
    nop
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    nop
    nop
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_006_51a1

jr_006_51a1:
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    nop
    nop
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    nop
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    nop
    nop
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $00
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    nop
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    stop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_006_5238

jr_006_5238:
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    nop
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    jr jr_006_525f

jr_006_525f:
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $00
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    nop
    nop
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    nop
    nop
    jr c, jr_006_52a7

jr_006_52a7:
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    nop
    nop
    jr nz, jr_006_52b9

jr_006_52b9:
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    ld a, [de]
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_006_52f7

jr_006_52f7:
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $00
    nop
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_531b

jr_006_531b:
    ld e, $ff
    rst $38
    rst $38
    rst $38
    inc bc
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    nop
    nop
    jr nz, jr_006_5337

jr_006_5337:
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    ld bc, $0000
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$ff00], sp
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    nop
    nop
    jr jr_006_535b

jr_006_535b:
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    nop
    nop
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0000
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    stop
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    nop
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    nop
    nop
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_006_5405

jr_006_5405:
    dec hl
    rst $38
    rst $38
    rst $38
    rst $38
    stop
    nop
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    inc l
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    nop
    nop
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ld l, $ff
    rst $38
    rst $38
    rst $38
    ld c, $00
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    nop
    nop
    xor [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    nop
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    jr nz, jr_006_5466

jr_006_5466:
    nop
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    inc d
    ld sp, $ffff
    rst $38
    dec b
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $00
    nop
    jr jr_006_549f

jr_006_549f:
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    nop
    nop
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_54b9

jr_006_54b9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    jr z, jr_006_54c3

jr_006_54c3:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    jr z, jr_006_54d5

jr_006_54d5:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, jr_006_54e4

jr_006_54e4:
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    nop
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0050], sp
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    ld d, h
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld a, [hl]
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    nop
    nop
    nop
    nop
    inc a
    ld b, c
    rst $38
    rst $38
    rst $38
    inc c
    ld d, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld l, d
    nop
    nop
    nop
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    adc h
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0077
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    ld c, l
    nop
    ld [hl+], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld b, c
    ld bc, $ffff
    rst $38
    dec bc
    ld c, l
    nop
    ld [hl+], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld b, c
    ld e, d
    rst $38
    rst $38
    rst $38
    dec bc
    ld c, l
    nop
    ld [hl+], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld b, c
    ld e, b
    rst $38
    rst $38
    rst $38
    dec bc
    ld c, l
    nop
    ld [hl+], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld b, c
    dec c
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld a, $00
    nop
    nop
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld a, $00
    nop
    nop
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, b
    nop
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    ld a, $00
    jr nc, jr_006_5645

jr_006_5645:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, b
    nop
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    ld a, $00
    jr nc, jr_006_5657

jr_006_5657:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    rst $38

Call_006_566b:
    rst $38
    rst $38
    rst $38
    inc e
    sbc d
    nop
    adc h
    nop
    xor b
    nop
    nop
    nop
    xor b
    nop
    sub h
    nop
    ld c, l
    ld e, c
    rst $38
    rst $38
    rst $38
    inc de
    ld h, d
    nop
    nop
    nop
    ld e, b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_006_5710

    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0054
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld [hl], $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    add b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld d, d
    nop
    ld c, d
    nop
    ld d, d
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld b, c
    ld b, e
    sub e
    rst $38
    rst $38
    inc c
    ld c, b
    nop
    nop
    nop
    ld b, h
    nop
    nop
    nop
    ld d, d
    nop
    nop
    nop
    inc hl
    ld b, c
    rst $38
    rst $38
    rst $38
    inc c
    ld c, b
    nop
    nop
    nop
    ld d, d
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld e, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    ld d, b
    ld d, l
    rst $38
    rst $38
    rst $38

jr_006_5710:
    dec c
    ld c, d
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    ld [hl], b
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    add h
    nop
    nop
    nop
    ld e, b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, c
    nop
    nop
    nop
    ld e, d
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    ld a, h
    nop
    nop
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $d2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $d2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    cp b
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, $1100
    ld e, d
    rst $38
    rst $38
    rst $38
    inc h
    call nz, $c400
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    nop
    ld [$635f], sp
    rst $38
    rst $38
    ld h, $00
    nop
    jp nc, RST_00

    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld [bc], a
    dec b
    ld [$0e0b], sp
    dec b
    inc hl
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    ld e, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld sp, $0000
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ccf
    nop
    nop
    nop
    ld [hl], $00
    nop
    nop
    nop
    nop
    ld [hl], $00
    ld h, a
    ld l, b
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld l, d
    ld l, l
    rst $38
    rst $38
    rst $38
    add hl, bc
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ld d, d
    nop
    ld d, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    adc h
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld l, a
    ld a, b
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld c, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $00
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld l, a
    ld [hl], e
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld [hl], $00
    dec de
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld sp, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    daa
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    dec a
    nop
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $54
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    nop
    nop
    nop
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $20
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    jr nc, jr_006_5991

jr_006_5991:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, d
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ld c, l
    nop
    nop
    nop
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_006_59c9

jr_006_59c9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    sub e
    nop
    sub e
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    add hl, hl
    ld d, h
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    nop
    add c
    add d
    rst $38
    rst $38
    rst $38
    rla
    nop
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $ff
    dec d
    nop
    nop
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub [hl]
    nop
    jr jr_006_5a30

    ld hl, $ffff
    ld d, $00
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop

jr_006_5a30:
    nop
    nop
    nop
    ld e, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $00
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub [hl]
    nop
    add l
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    nop
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    nop
    add [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    inc hl
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ld e, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld d, h
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld c, b
    nop
    nop
    nop
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    ld c, e
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    adc h
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    adc h
    nop
    nop
    nop
    adc d
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld a, [hl]
    nop
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    ld e, e
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $62
    nop
    nop
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    nop
    nop
    dec sp
    adc [hl]
    rst $38
    rst $38
    rst $38
    db $10
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0078
    nop
    nop
    ld h, h
    nop
    nop
    nop
    adc h
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    or [hl]
    nop
    nop
    nop
    nop
    nop
    sbc h
    nop
    nop
    nop
    sbc h
    nop
    adc c
    adc [hl]
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    ld h, b
    nop
    dec l
    ld [hl], a
    rst $38
    rst $38
    rst $38
    dec de
    add $00
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    sub c
    nop
    and d
    nop
    ld sp, $ff7d
    rst $38
    rst $38
    ld e, $d2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    nop
    or h
    nop
    inc d
    sub h
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    nop
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld a, $00
    nop
    nop
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld b, h
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    ld c, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $00e7
    and h
    nop
    add $00
    nop
    nop
    add $00
    add $00
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    rst $38
    ld a, [$c88f]
    or a
    ret nz

    ld a, [$c8eb]
    bit 5, a
    jp nz, Jump_006_6b87

    bit 7, a
    jp nz, Jump_006_6295

    bit 4, a
    jp nz, Jump_006_62b2

    bit 0, a
    jp nz, Jump_006_67a9

    bit 1, a
    jr z, jr_006_6059

    ld hl, $0700
    rst $10
    ret


jr_006_6059:
    bit 3, a
    jr z, jr_006_6062

    ld hl, $1900
    rst $10
    ret


jr_006_6062:
    bit 6, a
    jr z, jr_006_606b

    ld hl, $1303
    rst $10
    ret


jr_006_606b:
    bit 2, a
    jp nz, Jump_006_62f6

    ld a, [$d9e8]
    or a
    jp nz, Jump_006_6284

    ld a, [$d8d7]
    or a
    jp nz, Jump_006_6284

    ld a, [$c8a8]
    or a
    jp nz, Jump_006_6284

    ldh a, [$90]
    bit 0, a
    jp nz, Jump_006_6284

    ld a, [$c8aa]
    or a
    jp nz, Jump_006_611d

    ld a, [$c850]
    or a
    jp nz, Jump_006_60b8

    ld a, [$c846]
    and $08
    jr z, jr_006_60b8

    ld a, [$ca8d]
    or a
    jr z, jr_006_60ac

    ld a, [$ca3f]
    xor $01

jr_006_60ac:
    ld [$ca3f], a
    call $2518
    call $25f1
    jp Jump_006_6284


Jump_006_60b8:
jr_006_60b8:
    ld a, [$c850]
    or a
    jp nz, Jump_006_611d

    ld a, [$c846]
    and $04
    jr z, jr_006_611d

    ld a, [$c969]
    or a
    jr nz, jr_006_60e7

    ld a, [$c968]
    cp $61
    jr z, jr_006_60e7

    cp $62
    jr z, jr_006_60e7

    cp $63
    jr z, jr_006_60e7

    cp $64
    jr z, jr_006_60e7

    cp $50
    jr c, jr_006_611d

    cp $5d
    jr nc, jr_006_611d

jr_006_60e7:
    ld hl, $c8eb
    set 3, [hl]
    xor a
    ld [$c905], a
    ld [$c906], a
    xor a
    ld [$c907], a
    ld [$c908], a
    ldh a, [$b7]
    ld l, a
    ldh a, [$b8]
    ld h, a
    ld a, l
    ldh [$bf], a
    ld a, h
    ldh [$c0], a
    ldh a, [$bb]
    ld l, a
    ldh a, [$bc]
    ld h, a
    ld a, l
    ldh [$c1], a
    ld a, h
    ldh [$c2], a
    call Call_006_62b7
    ld a, $59
    call $1b2c
    jp Jump_006_6284


Jump_006_611d:
jr_006_611d:
    ld a, [$d8d7]
    or a
    jp nz, Jump_006_6247

    ld a, [$c850]
    or a
    jp nz, Jump_006_6247

    ld a, [$c846]
    and $01
    jp z, Jump_006_6247

    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    ldh [$db], a
    ld a, h
    ldh [$dc], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    ldh [$dd], a
    ld a, h
    ldh [$de], a
    ld hl, $0b04
    rst $10
    ldh a, [$d5]
    cp $ff
    jr nz, jr_006_618e

    ld hl, $6285
    ldh a, [$8e]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$db], a
    ld a, h
    ldh [$dc], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    add hl, de
    ld a, l
    ldh [$dd], a
    ld a, h
    ldh [$de], a
    ld hl, $0b04
    rst $10
    ldh a, [$d5]
    cp $ff
    jp z, Jump_006_61e9

jr_006_618e:
    ld [$d8d4], a
    ld a, [$c968]
    ld [$d8d3], a
    ld a, [$c969]
    or a
    jr z, jr_006_61a2

    ld a, $70
    ld [$d8d3], a

jr_006_61a2:
    ldh a, [$d6]
    cp $ff
    jr z, jr_006_61b7

    ld c, $20
    call $1dbe
    ld a, l
    add $d7
    ld l, a
    ld a, h
    adc $d7
    ld h, a
    set 6, [hl]

jr_006_61b7:
    ld hl, $d8d8
    res 0, [hl]
    res 1, [hl]
    xor a
    ld [$d8d7], a
    ld hl, $0405
    rst $10
    ld a, [$d8d7]
    or a
    jp z, Jump_006_61e9

    bit 1, a
    jp z, Jump_006_61e9

    ld hl, $ffff
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a

Jump_006_61e9:
    ld a, [$c969]
    or a
    jp z, Jump_006_6247

    ld hl, $6285
    ldh a, [$8e]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$db], a
    ld a, h
    ldh [$dc], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    add hl, de
    ld a, l
    ldh [$dd], a
    ld a, h
    ldh [$de], a
    ldh a, [$db]
    swap a
    and $0f
    ld b, a
    ldh a, [$dc]
    swap a
    and $f0
    or b
    ldh [$db], a
    ldh a, [$dd]
    swap a
    and $0f
    ld b, a
    ldh a, [$de]
    swap a
    and $f0
    or b
    ldh [$dd], a
    ld a, $01
    ld [$d78f], a
    ld hl, $0108
    rst $10

Jump_006_6247:
    ld a, [$d8d7]
    or a
    jp nz, Jump_006_6284

    ld a, [$c8eb]
    or a
    jp nz, Jump_006_6284

    ld a, [$c850]
    or a
    jp nz, Jump_006_6284

    ld a, [$c846]
    and $01
    jr z, jr_006_6284

    ld a, [$ca8d]
    or a
    jr z, jr_006_6284

    ld hl, $c8eb
    set 1, [hl]
    xor a
    ld [$c90d], a
    ld [$c90e], a
    xor a
    ld [$c90f], a
    ld [$c910], a
    ld a, $59
    call $1b2c
    jp Jump_006_6284


Jump_006_6284:
jr_006_6284:
    ret


    nop
    nop
    stop
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    stop
    nop
    nop

Jump_006_6295:
    call Call_006_62a0
    ld hl, $0901
    rst $10
    call Call_006_62a0
    ret


Call_006_62a0:
    ld hl, $c905
    ld de, $c876
    ld b, $08

jr_006_62a8:
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_006_62a8

    ret


Jump_006_62b2:
    ld hl, $0900
    rst $10
    ret


Call_006_62b7:
    ld a, $80
    ldh [$b6], a
    ld hl, $9c00
    ld de, $c1c0
    ld c, $02

jr_006_62c3:
    ld b, $14
    push hl

jr_006_62c6:
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
    jr nz, jr_006_62c6

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_62c3

    ret


Jump_006_62f6:
    ld a, [$c91d]
    rst $00
    ld [bc], a
    ld h, e
    ld b, [hl]
    ld h, h
    dec de
    ld h, l
    ld [$fa65], a
    ld e, $c9
    rst $00
    db $10
    ld h, e
    cp b
    ld h, [hl]
    rst $00
    ld h, [hl]
    jr z, @+$65

    rst $10
    ld h, e
    ld a, [$c925]
    dec a
    ld [$c925], a
    call Call_006_66e5
    ld hl, $0b03
    rst $10
    ld a, $13
    ld [$c91f], a
    ld hl, $c91e
    inc [hl]
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
    dec a
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$c740], a
    ld a, h
    ld [$c741], a
    ld a, [$c91f]
    ld de, $c500
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $01
    ld [$c742], a
    ld a, $10
    ld [$c743], a
    ld hl, $c744
    ld b, $10

jr_006_6369:
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_6369

    ld a, [$c91f]
    srl a
    push af
    ld de, $c200
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    pop af
    ld b, $10
    ld hl, $c754
    jr c, jr_006_63a0

jr_006_638d:
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_638d

    jr jr_006_63af

jr_006_63a0:
    ld a, [de]
    and $0f
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_63a0

jr_006_63af:
    ld a, $01
    ld [$c8a3], a
    ldh a, [$b7]
    ld l, a
    ldh a, [$b8]
    ld h, a
    ld a, l
    add $f8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ld a, [$c91f]
    dec a
    ld [$c91f], a
    cp $ff
    ret nz

    ld hl, $c91e
    inc [hl]
    ret


    ld hl, $c300
    ld de, $c500
    ld bc, $0200

jr_006_63e0:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_006_63e0

    ld hl, $c8eb
    res 2, [hl]
    call Call_006_66f0
    ld b, $31

jr_006_63f2:
    ld a, [$ca37]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add $73
    ld l, a
    ld a, h
    adc $c9
    ld h, a
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$95]
    ld [hl+], a
    ldh a, [$93]
    swap a
    ld c, a
    ldh a, [$96]
    or c
    ld [hl+], a
    ldh a, [$8b]
    ld c, a
    ldh a, [$8d]
    or c
    ld [hl+], a
    ld a, [$ca37]
    inc a
    ld [$ca37], a
    cp $31
    jr c, jr_006_6427

    xor a
    ld [$ca37], a

jr_006_6427:
    dec b
    jr nz, jr_006_63f2

    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    ld hl, $010a
    rst $10
    xor a
    ld [$d9e8], a
    ret


    ld a, [$c91e]
    rst $00
    ld d, h
    ld h, h
    cp b
    ld h, [hl]
    rst $00
    ld h, [hl]
    ld l, e
    ld h, h
    rst $10
    ld h, e
    ld a, [$c925]
    inc a
    ld [$c925], a
    call Call_006_66e5
    ld hl, $0b03
    rst $10
    xor a
    ld [$c91f], a
    ld hl, $c91e
    inc [hl]
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
    add $14
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$c740], a
    ld a, h
    ld [$c741], a
    ld a, [$c91f]
    ld de, $c500
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $01
    ld [$c742], a
    ld a, $10
    ld [$c743], a
    ld hl, $c744
    ld b, $10

jr_006_64ad:
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_64ad

    ld a, [$c91f]
    srl a
    push af
    ld de, $c200
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    pop af
    ld b, $10
    ld hl, $c754
    jr c, jr_006_64e4

jr_006_64d1:
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_64d1

    jr jr_006_64f3

jr_006_64e4:
    ld a, [de]
    and $0f
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_006_64e4

jr_006_64f3:
    ld a, $01
    ld [$c8a3], a
    ldh a, [$b7]
    ld l, a
    ldh a, [$b8]
    ld h, a
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ld a, [$c91f]
    inc a
    ld [$c91f], a
    cp $14
    ret nz

    ld hl, $c91e
    inc [hl]
    ret


    ld a, [$c91e]
    rst $00
    add hl, hl
    ld h, l
    cp b
    ld h, [hl]
    rst $00
    ld h, [hl]
    ld b, d
    ld h, l
    rst $10
    ld h, e
    ld a, [$c925]
    sub $04
    ld [$c925], a
    call Call_006_66e5
    ld hl, $0b03
    rst $10
    ld a, $0f
    ld [$c91f], a
    ld hl, $c91e
    inc [hl]
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
    add $e0
    ld l, a
    ld a, h
    adc $03
    ld h, a
    res 2, h
    ld a, l
    ld [$c740], a
    ld a, h
    ld [$c741], a
    ld a, [$c91f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld e, l
    ld d, h
    ld a, $00
    ld [$c742], a
    ld a, $14
    ld [$c743], a
    ld hl, $c744
    ld b, $14

jr_006_6595:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_006_6595

    ld a, [$c91f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c2
    ld h, a
    ld e, l
    ld d, h
    ld hl, $c758
    ld b, $0a

jr_006_65b4:
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    ld a, [de]
    and $0f
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_006_65b4

    ld a, $01
    ld [$c8a3], a
    ldh a, [$bb]
    ld l, a
    ldh a, [$bc]
    ld h, a
    ld a, l
    add $f8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    ld a, [$c91f]
    dec a
    ld [$c91f], a
    cp $ff
    ret nz

    ld hl, $c91e
    inc [hl]
    ret


    ld a, [$c91e]
    rst $00
    ld hl, sp+$65
    cp b
    ld h, [hl]
    rst $00
    ld h, [hl]
    db $10
    ld h, [hl]
    rst $10
    ld h, e
    ld a, [$c925]
    add $04
    ld [$c925], a
    call Call_006_66e5
    ld hl, $0b03
    rst $10
    xor a
    ld [$c91f], a
    ld hl, $c91e
    inc [hl]
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
    ld a, l
    ld [$c740], a
    ld a, h
    ld [$c741], a
    ld a, [$c91f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld e, l
    ld d, h
    ld a, $00
    ld [$c742], a
    ld a, $14
    ld [$c743], a
    ld hl, $c744
    ld b, $14

jr_006_6663:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_006_6663

    ld a, [$c91f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c2
    ld h, a
    ld e, l
    ld d, h
    ld hl, $c758
    ld b, $0a

jr_006_6682:
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    ld a, [de]
    and $0f
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_006_6682

    ld a, $01
    ld [$c8a3], a
    ldh a, [$bb]
    ld l, a
    ldh a, [$bc]
    ld h, a
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    ld a, [$c91f]
    inc a
    ld [$c91f], a
    cp $10
    ret nz

    ld hl, $c91e
    inc [hl]
    ret


    ld a, [$c969]
    or a
    jr nz, jr_006_66c2

    ld hl, $0b07
    rst $10

jr_006_66c2:
    ld hl, $c91e
    inc [hl]
    ret


    ld hl, $c91e
    inc [hl]
    ld a, [$c969]
    or a
    ret nz

    ld a, [$d8d7]
    or a
    ret nz

    ld a, $00
    ld [$d8d4], a
    ld a, [$c968]
    ld [$d8d3], a
    ld hl, $0405
    rst $10
    ret


Call_006_66e5:
    ld a, $80
    ldh [$b6], a
    ld hl, $9c00
    call Call_006_671f
    ret


Call_006_66f0:
    ld a, $ff
    ldh [$b6], a
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
    call Call_006_671f
    ret


Call_006_671f:
    push hl
    call Call_006_6771
    pop hl
    ld a, [$c81d]
    or a
    ret z

    di
    call $1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    ld c, $02

jr_006_6734:
    ld b, $14
    push hl

jr_006_6737:
    ld a, $07
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
    jr nz, jr_006_6737

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_6734

    di
    call $1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_006_6771:
    ld de, $c1c0
    ld c, $02

jr_006_6776:
    ld b, $14
    push hl

jr_006_6779:
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
    jr nz, jr_006_6779

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_6776

    ret


Jump_006_67a9:
    ld hl, $ffb7
    call Call_006_67e3
    ld hl, $ffbb
    call Call_006_67e3
    ld a, [$c915]
    rst $00
    ld b, e
    ld l, b
    call nc, $2f68
    ld l, c
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld h, h
    ld l, c
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld a, c
    ld l, c
    rst $38
    ld h, a
    ret nc

    ld l, c
    ld e, $6b
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld c, c
    ld l, e
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    ld l, b
    ld l, h
    ld l, e
    ld a, l
    ld l, e

Call_006_67e3:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_006_67f0:
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


    ld a, $fd
    ld [$c83b], a
    ld hl, $5605
    rst $10
    ld a, [$c917]
    ld l, a
    ld a, [$c918]
    ld h, a
    ld a, h
    and l
    cp $ff
    jr z, jr_006_6819

    call $096d

jr_006_6819:
    ld hl, $c915
    inc [hl]
    ld hl, $0020
    call Call_006_682f
    call Call_006_67f0
    call $0ca0
    ret


    ld hl, $c915
    inc [hl]
    ret


Call_006_682f:
    ld a, [$c919]
    add l
    ld l, a
    ld a, [$c91a]
    adc h
    and $03
    ld h, a
    ld a, [$c91a]
    and $fc
    or h
    ld h, a
    ret


    ld hl, $c915
    inc [hl]
    ld a, $01
    ldh [$d3], a
    ld a, $00
    ld [$c83c], a
    ld a, $20
    ld [$c83d], a
    ld de, $0000
    ld a, [$d8d7]
    or a
    jr z, jr_006_686e

    ld hl, $d8d8
    ld a, [hl]
    res 0, [hl]
    res 1, [hl]
    bit 0, a
    jr nz, jr_006_6882

    bit 1, a
    jr nz, jr_006_6893

jr_006_686e:
    ldh a, [$bb]
    ld c, a
    ldh a, [$95]
    sub c
    ld c, a
    ldh a, [$bc]
    ld b, a
    ldh a, [$96]
    sbc b
    jr nz, jr_006_6882

    ld a, c
    cp $50
    jr nc, jr_006_6893

jr_006_6882:
    ld a, $02
    ldh [$d3], a
    ld a, $00
    ld [$c83c], a
    ld a, $80
    ld [$c83d], a
    ld de, $01a0

jr_006_6893:
    ld a, [$c969]
    or a
    jr nz, jr_006_68a7

    ld a, [$c968]
    cp $08
    jr z, jr_006_68a4

    cp $5d
    jr nz, jr_006_68a7

jr_006_68a4:
    xor a
    ldh [$d3], a

jr_006_68a7:
    ld hl, $ffb7
    call Call_006_6957
    ld hl, $ffbb
    call Call_006_6957
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
    add hl, de
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c919], a
    ld a, h
    ld [$c91a], a
    ld hl, $c915
    inc [hl]
    ld a, [$c919]
    ld l, a
    ld a, [$c91a]
    ld h, a
    ld bc, $0000
    ld de, $c100
    call Call_006_690a
    ld bc, $0020
    ld de, $c114
    call Call_006_690a
    ld bc, $0040
    ld de, $c128
    call Call_006_690a
    ld bc, $0060
    ld de, $c13c
    call Call_006_690a
    ld bc, $0080
    ld de, $c150

Call_006_690a:
    ld a, [$c919]
    ld l, a
    ld a, [$c91a]
    ld h, a
    add hl, bc
    ld a, h
    and $03
    ld h, a
    ld a, [$c91a]
    and $fc
    or h
    ld h, a
    ld b, $14

jr_006_6920:
    di
    call $1aa6
    ld a, [hl]
    ei
    ld [de], a
    inc de
    call Call_006_67f0
    dec b
    jr nz, jr_006_6920

    ret


    ld hl, $c915
    inc [hl]
    ld hl, $0040
    call Call_006_682f

Call_006_6939:
jr_006_6939:
    ld a, $fe
    call $1aad
    call Call_006_67f0
    ld b, $12
    ld a, $e0
    call Call_006_694d
    ld a, $ff
    jp $1aad


Call_006_694d:
jr_006_694d:
    call $1aad
    call Call_006_67f0
    dec b
    jr nz, jr_006_694d

    ret


Call_006_6957:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


    ld hl, $c915
    inc [hl]
    ld hl, $0020
    call Call_006_682f
    call Call_006_6939
    ld hl, $0060
    call Call_006_682f
    jr jr_006_6939

    ld hl, $c915
    inc [hl]
    ld a, [$c919]
    ld l, a
    ld a, [$c91a]
    ld h, a
    ld a, $fa
    call $1aad
    call Call_006_67f0
    ld b, $12
    ld a, $ef
    call Call_006_694d
    ld a, $fb
    call $1aad
    ld hl, $0080
    call Call_006_682f
    ld a, $fc
    call $1aad
    call Call_006_67f0
    ld b, $12
    ld a, $ee
    call Call_006_694d
    ld a, $fd
    call $1aad
    call $1ed5
    ld hl, $0000
    ldh a, [$d3]
    cp $02
    jr nz, jr_006_69c2

    ld hl, $000d

jr_006_69c2:
    ld a, $00
    ld bc, $1304
    ld d, $01
    call $1f27
    call $1f59
    ret


    ld a, [$c8aa]
    or a
    ret nz

    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    ld a, [$c917]
    ld l, a
    ld a, [$c918]
    ld h, a
    ld a, h
    and l
    cp $ff
    jr nz, jr_006_6a02

    ld a, [$d8d7]
    bit 1, a
    jr z, jr_006_6a02

    ld a, [$c8eb]
    bit 7, a
    ret nz

    bit 4, a
    ret nz

    ld hl, $0406
    rst $10
    ret


jr_006_6a02:
    ld a, [$c918]
    cp $02
    jr nz, jr_006_6a25

    ld a, [$c917]
    cp $11
    jr nz, jr_006_6a1a

    call Call_006_6ac2
    ld a, [$c917]
    cp $17
    jr nz, jr_006_6a1a

jr_006_6a1a:
    ld a, [$c917]
    cp $17
    jr nz, jr_006_6a25

    call Call_006_6ad7
    ret


jr_006_6a25:
    ld a, [$c917]
    cp $1a
    jp nz, Jump_006_6ab9

    ld hl, $c8eb
    res 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, $08
    ld [$d92b], a
    ld hl, $0000
    ld a, l
    ld [$c96d], a
    ld a, h
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
    ld a, $01
    ld [$c96c], a
    ld hl, $c8ea
    res 7, [hl]
    ld a, [$ca4b]
    ld l, a
    ld a, [$ca4c]
    ld h, a
    ld a, [$ca4d]
    ld e, a
    ld a, $02
    call $1e1e
    ld a, l
    ld [$ca4b], a
    ld a, h
    ld [$ca4c], a
    ld a, e
    ld [$ca4d], a
    ld hl, $ca51
    ld b, $14

jr_006_6a8b:
    ld a, [hl]
    or a
    jr z, jr_006_6aa7

    cp $ff
    jr z, jr_006_6aa7

    ld [$da5e], a
    push hl
    push bc
    ld hl, $0302
    rst $10
    pop bc
    pop hl
    ld a, [$da6d]
    bit 2, a
    jr nz, jr_006_6aa7

    ld [hl], $ff

jr_006_6aa7:
    inc hl
    dec b
    jr nz, jr_006_6a8b

    ld hl, $0305
    rst $10
    ld a, $04
    call $1688
    ld hl, $c88f
    inc [hl]
    ret


Jump_006_6ab9:
    ld hl, $c915
    inc [hl]
    ld hl, $0801
    rst $10
    ret


Call_006_6ac2:
    ld de, $d793

jr_006_6ac5:
    ld a, [de]
    cp $ff
    ret z

    ld a, [de]
    res 5, a
    ld [de], a
    ld a, e
    add $04
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jr jr_006_6ac5

Call_006_6ad7:
    ld hl, $c8eb
    res 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, [$cab4]
    add a
    ld hl, $6b0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$da03], a
    ld a, [hl]
    ld [$da04], a
    ld a, $00
    ld [$da02], a
    ld hl, $c8eb
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $00
    ld [$da09], a
    ret


    dec a
    ld bc, $013e
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0142
    ld b, e
    ld bc, HeaderNewLicenseeCode
    ld b, h
    ld bc, $1521
    ret


    inc [hl]
    ld a, [$c919]
    ld l, a
    ld a, [$c91a]
    ld h, a
    ld de, $c100
    ld b, $14
    call Call_006_6b3d
    ld hl, $0080
    call Call_006_682f
    ld de, $c150
    ld b, $14

Call_006_6b3d:
jr_006_6b3d:
    ld a, [de]
    call $1aad
    inc de
    call Call_006_67f0
    dec b
    jr nz, jr_006_6b3d

    ret


    ld a, $00
    ldh [$d3], a
    ld hl, $c915
    inc [hl]
    ld hl, $0020
    call Call_006_682f
    ld de, $c114
    ld b, $14
    call Call_006_6b3d
    ld hl, $0060
    call Call_006_682f
    ld de, $c13c
    ld b, $14
    jr jr_006_6b3d

    ld hl, $c915
    inc [hl]
    ld hl, $0040
    call Call_006_682f
    ld de, $c128
    ld b, $14
    jr jr_006_6b3d

    ld hl, $c8eb
    res 0, [hl]
    xor a
    ld [$c915], a
    ret


Jump_006_6b87:
    ld a, [$c905]
    or a
    jr nz, jr_006_6ba7

    ld a, [$c969]
    or a
    jr nz, jr_006_6ba2

    ld a, [$c968]
    cp $50
    jr c, jr_006_6ba7

    cp $52
    jr z, jr_006_6ba7

    cp $60
    jr z, jr_006_6ba7

jr_006_6ba2:
    ld a, $10
    ld [$c905], a

jr_006_6ba7:
    ld a, [$c905]
    rst $00
    call c, Call_006_566b
    ld l, h
    ld a, e
    ld l, h
    rra
    ld l, l
    ld d, e
    ld l, l
    ld [de], a
    ld l, [hl]
    dec hl
    ld l, [hl]
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    db $db
    ld l, e
    sbc a
    ld l, [hl]
    inc d
    ld l, a
    ccf
    ld l, a
    rst $00
    ld l, a
    rra
    ld l, l
    ld d, e
    ld l, l
    ld [de], a
    ld l, [hl]
    dec hl
    ld l, [hl]
    ret


    ld a, $02
    call $1ae1
    call $3331
    ld a, $52
    call $1b2c
    ld hl, $ffb7
    call Call_006_6e4f
    ld hl, $ffbb
    call Call_006_6e4f
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
    ld [$c90b], a
    ld a, h
    ld [$c90c], a
    ld hl, $0014
    ld b, $10

jr_006_6c25:
    push bc
    push hl
    ld b, $0c

jr_006_6c29:
    push bc
    push hl
    call Call_006_6e7f
    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_006_6c29

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop bc
    dec b
    jr nz, jr_006_6c25

    ld hl, $c905
    inc [hl]
    ld hl, $c100
    ld b, $80

jr_006_6c4a:
    ldh a, [$b7]
    ld [hl+], a
    dec b
    jr nz, jr_006_6c4a

    ld a, $1e
    ld [$c906], a
    ret


    ld a, [$c906]
    and $01
    ld [$c8ec], a
    ld a, [$c906]
    dec a
    ld [$c906], a
    ret nz

    ld hl, $c905
    inc [hl]
    ld a, $01
    ld [$c907], a
    di
    ld a, $02
    ldh [rLYC], a
    ld a, $02
    ld [$c892], a
    ei
    ret


    ld a, $01
    ld [$c8ec], a
    ld a, [$c8a6]
    and $07
    jr nz, jr_006_6ca3

    ld a, [$c907]
    swap a
    and $0f
    inc a
    ld b, a
    ld a, [$c907]
    add b
    ld [$c907], a
    cp $38
    jr c, jr_006_6ca3

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c908], a

Call_006_6ca3:
Jump_006_6ca3:
jr_006_6ca3:
    ld a, [$c907]
    ldh [$d5], a
    ld a, [$c8a6]
    rra
    rra
    and $0f
    ld e, a
    ld d, $00
    ld a, [$c8a6]
    and $03
    cp $00
    jr nz, jr_006_6cc5

    ld bc, $c100
    ld a, $20
    ldh [$d6], a
    jp Jump_006_6ce8


jr_006_6cc5:
    cp $01
    jr nz, jr_006_6cd3

    ld bc, $c120
    ld a, $40
    ldh [$d6], a
    jp Jump_006_6ce8


jr_006_6cd3:
    cp $02
    jr nz, jr_006_6ce1

    ld bc, $c140
    ld a, $60
    ldh [$d6], a
    jp Jump_006_6ce8


jr_006_6ce1:
    ld bc, $c160
    ld a, $80
    ldh [$d6], a

Jump_006_6ce8:
jr_006_6ce8:
    inc e
    ld a, e
    and $0f
    ld e, a
    ld hl, $6d0f
    add hl, de
    push bc
    ld c, [hl]
    ldh a, [$d5]
    call $1dbe
    pop bc
    bit 3, e
    jr z, jr_006_6d02

    ldh a, [$b7]
    sub h
    jr jr_006_6d05

jr_006_6d02:
    ldh a, [$b7]
    add h

jr_006_6d05:
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ldh a, [$d6]
    cp c
    jr nz, jr_006_6ce8

    ret


    nop
    ld h, b
    or [hl]
    db $ec
    rst $38
    db $ec
    or [hl]
    ld h, b
    nop
    ld h, b
    or [hl]
    db $ec
    rst $38
    db $ec
    or [hl]
    ld h, b
    ld a, [$c8a6]
    and $0f
    jr nz, jr_006_6d3a

    ld a, [$c908]
    inc a
    ld [$c908], a
    cp $04
    jr nz, jr_006_6d3a

    ld hl, $c905
    inc [hl]
    ld a, $00
    ld [$c892], a

jr_006_6d3a:
    ld a, [$c908]
    ld hl, $6d4e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c89b], a
    call Call_006_6ca3
    ret


    jp nc, Jump_006_4081

    nop
    nop
    ld hl, $c905
    inc [hl]
    ld hl, $c88f
    inc [hl]
    ld a, $28
    ld [$c906], a
    ld a, $00
    ld [$c89b], a
    ld a, $00
    ld [$c89c], a
    ld a, $00
    ld [$c89d], a
    ld a, $01
    ld [$c8ec], a
    ld a, [$c96e]
    or a
    ret nz

    ld a, [$c96d]
    or a
    ret nz

    ld a, [$d92b]
    cp $01
    ret z

    cp $02
    ret z

    cp $03
    ret z

    cp $04
    ret z

    cp $05
    ret z

    ld a, $00
    ld [$c8ec], a
    ld hl, $c8eb
    res 5, [hl]
    xor a
    ld [$c905], a
    di
    ld a, $7f
    ldh [rLYC], a
    ld a, $01
    ld [$c892], a
    ei
    ret


    ld a, $00
    ld [$c89b], a
    di
    ld a, $02
    ldh [rLYC], a
    ld a, $02
    ld [$c892], a
    ei
    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c8a6]
    and $0f
    jr nz, jr_006_6dd5

    ld a, [$c908]
    dec a
    ld [$c908], a
    cp $00
    jr nz, jr_006_6dd5

    ld hl, $c905
    inc [hl]

jr_006_6dd5:
    ld a, [$c908]
    ld hl, $6d4e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c89b], a
    call Call_006_6ca3
    ret


    ld a, [$c8a6]
    and $07
    jr nz, jr_006_6e0f

    ld a, [$c907]
    swap a
    and $0f
    inc a
    ld b, a
    ld a, [$c907]
    sub b
    ld [$c907], a
    jr nc, jr_006_6e0f

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c907], a
    ld a, $3c
    ld [$c906], a

jr_006_6e0f:
    jp Jump_006_6ca3


    di
    ld a, $7f
    ldh [rLYC], a
    ld a, $01
    ld [$c892], a
    ei
    ld a, [$c969]
    or a
    jr z, jr_006_6e26

    xor a
    ldh [$90], a

jr_006_6e26:
    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c906]
    and $01
    ld [$c8ec], a
    ld a, [$c906]
    dec a
    ld [$c906], a
    ret nz

    ld a, $00
    ld [$c8ec], a
    xor a
    ld [$c905], a
    ld hl, $c8eb
    res 5, [hl]
    ret


Call_006_6e4f:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_006_6e5c:
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


Call_006_6e6b:
    ld a, [$c90b]
    add l
    ld l, a
    ld a, [$c90c]
    adc h
    and $03
    ld h, a
    ld a, [$c90c]
    and $fc
    or h
    ld h, a
    ret


Call_006_6e7f:
    call Call_006_6e88
    ld a, $e0
    call $1aad
    ret


Call_006_6e88:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_006_6e6b
    ld a, b
    and $1f
    jr z, jr_006_6e9d

    ld b, a

jr_006_6e97:
    call Call_006_6e5c
    dec b
    jr nz, jr_006_6e97

jr_006_6e9d:
    pop bc
    ret


    ld a, $55
    call $1b2c
    ld hl, $ffb7
    call Call_006_6e4f
    ld hl, $ffbb
    call Call_006_6e4f
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
    ld [$c90b], a
    ld a, h
    ld [$c90c], a
    ld hl, $0240
    ld b, $0e

jr_006_6ee0:
    push bc
    push hl
    ld b, $14

jr_006_6ee4:
    push bc
    push hl
    call Call_006_6e7f
    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_006_6ee4

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop bc
    dec b
    jr nz, jr_006_6ee0

    ld hl, $c905
    inc [hl]
    ld hl, $c100
    ld b, $80

jr_006_6f05:
    ldh a, [$bb]
    ld [hl+], a
    dec b
    jr nz, jr_006_6f05

    ld a, $1e
    ld [$c906], a
    call Call_006_7031
    ret


    ld a, [$c906]
    and $01
    ld [$c8ec], a
    ld a, [$c906]
    dec a
    ld [$c906], a
    ret nz

    ld hl, $c905
    inc [hl]
    ld hl, $0000
    ld a, l
    ld [$c907], a
    ld a, h
    ld [$c908], a
    di
    ld a, $02
    ldh [rLYC], a
    ld a, $03
    ld [$c892], a
    ei
    ret


    ldh a, [$bb]
    add $20
    ld [$c180], a
    ld [$c181], a
    ld [$c182], a
    ld [$c183], a
    ld a, $01
    ld [$c8ec], a
    ld hl, $0000
    ld de, $c140
    ld bc, $c140

jr_006_6f5d:
    ld a, h
    add e
    cp $7c
    jr c, jr_006_6f73

    ldh a, [$bb]
    add $98
    sub e
    ld [de], a
    inc de
    dec bc
    ldh a, [$bb]
    sub $08
    sub c
    ld [bc], a
    jr jr_006_6f87

jr_006_6f73:
    ld a, [$c907]
    add l
    ld l, a
    ld a, [$c908]
    adc h
    ld h, a
    ldh a, [$bb]
    add h
    ld [de], a
    inc de
    dec bc
    ldh a, [$bb]
    sub h
    ld [bc], a

jr_006_6f87:
    ld a, c
    or a
    jr nz, jr_006_6f5d

    ld a, [$c907]
    ld l, a
    ld a, [$c908]
    ld h, a
    ld a, h
    cp $20
    jr nc, jr_006_6fbe

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    add $02
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$c907]
    ld c, a
    ld a, [$c908]
    ld b, a
    add hl, bc
    ld a, l
    ld [$c907], a
    ld a, h
    ld [$c908], a
    ret


jr_006_6fbe:
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c908], a
    ret


    ld hl, $0000
    ld a, [$c908]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_006_6e88
    ld b, $10

jr_006_6fd8:
    ld a, $e0
    call $1aad
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_006_6fd8

    ld hl, $0013
    ld a, [$c908]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    call Call_006_6e88
    ld b, $10

jr_006_6ffb:
    ld a, $e0
    call $1aad
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_006_6ffb

    ld hl, $c908
    inc [hl]
    ld a, [$c908]
    cp $0a
    ret nz

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c908], a
    ldh a, [$bb]
    ldh [rSCY], a
    ld a, $ff
    ldh [$b6], a
    di
    ld a, $7f
    ldh [rLYC], a
    ld a, $01
    ld [$c892], a
    ei
    ret


Call_006_7031:
    ld a, $80
    ldh [$b6], a
    ld hl, $9c00
    push hl
    call Call_006_708a
    pop hl
    ld a, [$c81d]
    or a
    ret z

    di
    call $1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    ld c, $02

jr_006_704d:
    ld b, $14
    push hl

jr_006_7050:
    ld a, $07
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
    jr nz, jr_006_7050

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_704d

    di
    call $1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_006_708a:
    ld de, $c1c0
    ld c, $02

jr_006_708f:
    ld b, $14
    push hl

jr_006_7092:
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
    jr nz, jr_006_7092

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    ld a, h
    add hl, bc
    and $fc
    ld b, a
    ld a, h
    and $03
    or b
    ld h, a
    pop bc
    dec c
    jr nz, jr_006_708f

    ret


    ret nz

    nop
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    dec b
    nop
    add d
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    adc l
    dec c
    dec sp
    ld a, l
    ld a, e
    ld a, l
    jp $df61


    pop hl
    rst $18
    pop hl
    rra
    ld bc, $ff03
    and b
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    ei
    dec c
    ei
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    stop
    adc [hl]
    rst $38
    ldh a, [$9f]
    ret nc

    sbc a
    ret nc

    sbc a
    ret nc

    sbc a
    rst $18
    add c
    rst $08
    add c
    add c
    inc bc
    rst $38
    adc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    nop
    inc b
    rst $38
    xor a
    rrca
    ld sp, hl
    dec c
    ld sp, hl
    dec c
    ld sp, hl
    dec c
    ld sp, hl
    db $fd
    add c
    db $fd
    add c
    add c
    rst $38
    rst $38
    ld hl, sp+$0f
    pop af
    rra
    ld a, [c]
    rra
    db $f4
    rra
    rst $30
    rra
    db $f4
    rra
    ld hl, sp+$0f
    rst $38
    rlca
    ccf
    ldh [$1f], a
    ldh a, [$9f]
    ldh a, [$5f]
    di
    rst $18
    di
    ld e, a
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    stop
    sub b
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    rst $38
    adc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    rst $38
    sbc d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    ret nc

    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    add d
    nop
    nop
    db $10
    rst $38
    ld de, $9f00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc d
    ld a, a
    inc c
    ld a, h
    add h
    ld a, a
    ld a, a
    jr nc, jr_006_71fd

    inc b
    ld a, a
    add d
    ld [hl-], a
    inc sp
    ld a, [bc]
    ld a, a
    inc c
    ld a, h
    add d
    ld a, a
    ld b, b
    db $10
    ld b, c
    add d
    ld b, d
    ld b, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    db $10
    ld a, a
    add d
    ld l, b
    ld d, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    inc b
    ld a, a
    ld [$043f], sp
    ld a, a
    add d
    ld h, a
    ld d, e
    inc c
    ld a, h
    adc c
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    adc a

jr_006_71fd:
    adc [hl]
    sub [hl]
    add h
    sub c
    ld b, $7f
    add l
    and b
    ld a, a
    ld a, a
    ld h, a
    ld d, e
    inc c
    ld a, h
    add e
    ld a, a
    ld h, b
    ld h, h
    rrca
    ld h, l
    add d
    ld h, [hl]
    ld d, e
    inc c
    ld a, h
    add d
    ld a, a
    ld [hl], b
    ld de, $8171
    ld [hl], e
    inc c
    ld a, h
    inc d
    ld a, a
    inc c
    ld a, h
    add l
    ld a, a
    ld a, a
    jr nc, jr_006_7259

    ld sp, $7f03
    add d
    ld [hl-], a
    inc sp
    ld a, [bc]
    ld a, a
    inc c
    ld a, h
    add d
    ld a, a
    ld b, b
    db $10
    ld b, c
    add d
    ld b, d
    ld b, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    db $10
    ld a, a
    add d
    ld l, b
    ld d, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    inc b
    ld a, a
    ld [$043f], sp
    ld a, a
    add d
    ld h, a
    ld d, e
    inc c
    ld a, h
    adc c
    ld a, a
    ld d, b
    ld a, a
    ld a, a

jr_006_7259:
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld b, $7f
    add l
    and b
    ld a, a
    ld a, a
    ld h, a
    ld d, e
    inc c
    ld a, h
    add e
    ld a, a
    ld h, b
    ld h, h
    rrca
    ld h, l
    add d
    ld h, [hl]
    ld d, e
    inc c
    ld a, h
    add d
    ld a, a
    ld [hl], b
    ld de, $8171
    ld [hl], e
    inc c
    ld a, h
    ld b, $7f
    adc b
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, a
    adc [hl]
    adc d
    ld b, $7f
    inc c
    ld a, h
    inc d
    ld a, a
    inc c
    ld a, h
    add d
    ld a, a
    ld b, b
    db $10
    ld b, c
    add d
    ld b, d
    ld b, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    inc bc
    ld a, a
    add c
    ld c, d
    ld [$814b], sp
    ld c, h
    inc bc
    ld a, a
    add d
    ld l, b
    ld d, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    inc bc
    ld a, a
    add c
    ld e, d
    ld [$817f], sp
    ld e, h
    inc bc
    ld a, a
    add d
    ld h, a
    ld d, e
    inc c
    ld a, h
    add [hl]
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    adc a
    ld e, d
    ld [$867f], sp
    ld e, h
    and b
    ld a, a
    ld a, a
    ld h, a
    ld d, e
    inc c
    ld a, h
    adc a
    ld a, a
    ld h, b
    ld h, h
    ld h, l
    ld h, l
    ld e, d
    ld a, a
    ld a, a
    or b
    or c
    or d
    or e
    ld a, a
    ld a, a
    ld e, h
    inc bc
    ld h, l
    add d
    ld h, [hl]
    ld d, e
    inc c
    ld a, h
    add d
    ld a, a
    ld [hl], b
    inc bc
    ld [hl], c
    adc d
    ld e, d
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ld e, h
    inc b
    ld [hl], c
    add c
    ld [hl], e
    inc c
    ld a, h
    dec b
    ld a, a
    add c
    ld l, d
    ld [$816b], sp
    ld l, h
    dec b
    ld a, a
    inc c
    ld a, h
    inc d
    ld a, a
    ld a, [bc]
    ld a, h
    nop
    inc d
    ld bc, $000c
    inc d
    ld bc, $000c
    add c
    ld bc, $0512
    add c
    ld bc, $000c
    add d
    ld bc, $1005
    inc bc
    add d
    dec b
    ld [bc], a
    inc c
    nop
    add d
    ld bc, $1005
    inc bc
    add d
    dec b
    ld [bc], a
    inc c
    nop
    add d
    ld bc, $1005
    inc bc
    add d
    dec b
    ld [bc], a
    inc c
    nop
    add c
    ld bc, $0512
    add c
    ld [bc], a
    inc c
    nop
    add d
    ld bc, $1201
    ld [bc], a
    inc c
    nop
    inc d
    ld bc, $000c
    inc d
    ld bc, $000c
    add c
    ld bc, $0612
    add c
    ld bc, $000c
    add c
    ld bc, $0603
    dec bc
    inc bc
    inc b
    ld b, $81
    ld [bc], a
    inc c
    nop
    add c
    ld bc, $0612
    add c
    ld [bc], a
    inc c
    nop
    add c
    ld bc, $0603
    inc c
    inc bc
    inc bc
    ld b, $81
    ld [bc], a
    inc c
    nop
    add c
    ld bc, $0612
    add c
    ld [bc], a
    inc c
    nop
    add d
    ld bc, $1201
    ld [bc], a
    inc c
    nop
    ld b, $01
    ld [$0607], sp
    ld bc, $000c
    inc d
    ld bc, $000c
    add c
    ld bc, $0612
    add c
    ld bc, $000c
    add c
    ld bc, $0604
    add c
    inc b
    ld [$8103], sp
    inc b
    inc b
    ld b, $81
    ld [bc], a
    inc c
    nop
    add c
    ld bc, $0604
    ld a, [bc]
    inc bc
    inc b
    ld b, $81
    ld [bc], a
    inc c
    nop
    add c
    ld bc, $0603
    inc c
    inc bc
    inc bc
    ld b, $81
    ld [bc], a
    inc c
    nop
    add c
    ld bc, $0604
    ld a, [bc]
    inc bc
    inc b
    ld b, $81
    ld [bc], a
    inc c
    nop
    add d
    ld bc, $0301
    ld [bc], a
    ld a, [bc]
    inc bc
    dec b
    ld [bc], a
    inc c
    nop
    dec b
    ld bc, $0481
    ld [$8203], sp
    inc b
    ld [bc], a
    inc b
    ld bc, $000c
    ld b, $01
    ld a, [bc]
    ld [bc], a
    inc b
    ld bc, $000a
    nop
    xor l
    dec [hl]
    ldh [$03], a
    sub $5a
    rra
    nop
    dec c
    ld b, h
    ldh [$03], a
    scf
    halt
    nop
    dec c
    ld b, h
    ld b, b
    ld [bc], a
    scf
    halt
    nop
    rst $38
    inc bc
    rst $38
    ld a, a
    cp a
    ld [bc], a
    nop
    nop
    ld [de], a
    ld a, h
    rst $38
    ld a, a
    ld e, d
    ld a, [hl]
    nop
    nop
    nop
    ld a, d
    rst $38
    ld a, a
    ldh [$7f], a
    nop
    nop
    ld c, $00
    rst $38
    ld a, a
    cp a
    ld bc, $0000
    rra
    nop
    ldh [$03], a
    rst $38
    inc bc
    nop
    nop
    nop
    inc a
    rst $38
    ld a, a
    ldh [$7f], a
    nop
    nop
    nop
    inc a
    rst $38
    ld a, a
    cp a
    ld bc, $0000
    nop
    inc a
    rst $38
    ld a, a
    rst $38
    inc bc
    nop
    nop
    nop
    inc a
    rst $38
    ld a, a
    rst $38
    inc bc
    rra
    nop
    nop
    inc a
    rst $38
    inc bc
    rra
    nop
    nop
    nop
    nop
    inc a
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    inc a
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    inc a
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    inc bc
    rra
    adc l
    db $10
    jr nc, jr_006_74a7

    ld [hl], $2f
    ld h, l
    ld e, a
    ld h, l
    ld e, a
    add $bf
    call nz, $03bf
    rst $38
    adc h
    nop
    nop
    rst $38
    ld b, d
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld b, a
    rst $38
    ld b, l
    inc b
    rst $38
    adc h
    nop
    nop
    rst $38
    ld d, a
    rst $38
    ld d, h
    rst $38
    ld h, $ff
    inc h
    rst $38
    inc h
    inc b
    rst $38
    adc h
    nop
    nop
    rst $38
    ld h, e

jr_006_74a7:
    rst $38
    ld d, d
    rst $38
    ld d, e
    rst $38
    ld h, d
    rst $38
    ld d, d
    inc b
    rst $38
    adc l
    nop
    nop
    rst $38
    xor b
    rst $38
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    inc bc
    ld hl, sp-$6e
    ld [$fc04], sp
    db $e4
    db $fc
    add d
    cp $c2
    cp $81
    rst $38
    add c
    rst $38
    add h
    ld a, a
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    ld [hl], l
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    daa
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    ld d, d
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    ld l, $ff
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    ldh [rIE], a
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$0300], sp
    rra
    adc l
    db $10
    jr nc, jr_006_753f

    jr nc, jr_006_7541

    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ret nz

    cp a
    ret nz

    cp a
    inc bc
    rst $38
    adc h
    nop
    nop
    rst $38
    ld [hl-], a
    rst $38
    ld b, l
    rst $38
    dec h
    rst $38
    rla
    rst $38
    dec d
    inc b
    rst $38
    adc h
    nop
    nop
    rst $38
    ld d, a
    rst $38
    ld d, h
    rst $38
    ld d, [hl]
    rst $38
    ld d, h
    rst $38
    inc h
    inc b
    rst $38
    adc h
    nop
    nop
    rst $38
    ld a, [hl-]

jr_006_753f:
    rst $38
    ld [hl+], a

jr_006_7541:
    rst $38
    ld [hl-], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    inc b
    rst $38
    adc l
    nop
    nop
    rst $38
    adc [hl]
    rst $38
    adc b
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    inc bc
    ld hl, sp-$6e
    ld [$fc04], sp
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    ld h, l
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    daa
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$8500], sp
    xor $ff
    nop
    rst $38
    nop
    inc bc
    rst $38
    add hl, bc
    nop
    add h
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld [$b000], sp
    rst $38
    rst $38
    add b
    rst $38
    cp a
    rst $38
    cp a
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$bf]
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    db $fd
    rrca
    db $fd
    rrca
    db $fd
    rst $38
    ld bc, $01ff
    rst $38
    add hl, de
    rst $38
    reti


    rst $38
    pop bc
    rst $38
    inc b
    nop
    adc h
    ldh [$e0], a
    sub b
    ldh a, [$88]
    ld hl, sp-$5c
    call c, $ceb2
    cp c
    rst $00
    inc b
    nop
    adc h
    ldh [$e0], a
    sub b
    ldh a, [$e8]
    sbc b
    db $f4
    adc h
    jp c, $cda6

    or e
    inc b
    nop
    adc h
    ldh [$e0], a
    ldh a, [$90]
    ld hl, sp-$78
    call c, $cea4
    or d
    rst $00
    cp c
    inc b
    nop
    sub e
    ldh [$e0], a
    ldh a, [$90]
    sbc b
    add sp, -$74
    db $f4
    and [hl]
    jp c, $cdb3

    sbc b
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_006_7614:
    add b
    inc bc

jr_006_7616:
    rst $38
    ld b, $00
    adc d
    ld bc, $01ff
    rst $38
    ld [bc], a
    cp $0c
    db $fc
    ldh a, [$f0]
    rlca
    nop
    adc l
    stop
    jr nc, jr_006_7631

    db $76
    ld b, $f6
    ld b, $76
    nop

jr_006_7631:
    jr nc, jr_006_7633

jr_006_7633:
    db $10
    ld b, $00
    add [hl]
    jr jr_006_7614

    jr jr_006_7616

    jr @-$23

    ld b, $00
    adc [hl]
    db $10
    db $10
    jr nc, @+$32

    ld [hl], b
    db $76
    ldh a, [$f6]
    ld [hl], b
    db $76
    jr nc, jr_006_767c

    db $10
    db $10
    ld b, $00
    add [hl]
    jp $c3db


    db $db
    jp Jump_006_7fdb


    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld b, c
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, a
    rst $38
    ld h, e

jr_006_767c:
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld h, e
    rst $38
    ld a, [hl]
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld h, b
    rst $38
    ld a, h
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld h, b
    rst $38
    ld a, h
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld h, b
    rst $38
    ld h, e
    rst $38
    ld h, a
    rst $38
    dec sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, a
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, a
    rst $38
    ld l, h
    rst $38
    ld a, b
    rst $38
    ld l, h
    rst $38
    ld h, [hl]
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, e
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld l, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, [hl]
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld l, e
    rst $38
    ld h, a
    rst $38
    ld a, $ff
    inc bc
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, [hl]
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    jr c, @+$01

    ld b, $ff
    ld h, a
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld [hl], $ff
    ld [hl], $ff
    inc e
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld [hl], $ff
    inc e
    rst $38
    inc e
    rst $38
    ld [hl], $ff
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld h, [hl]
    rst $38
    inc c
    rst $38
    jr @+$01

    inc sp
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    nop
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld c, $ff
    jr @+$01

    nop
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld h, $ff
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld [hl-], a
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    rlca
    rst $38
    inc a
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ld b, $ff
    inc e
    rst $38
    inc bc
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld e, $ff
    ld [hl], $ff
    ld h, [hl]
    rst $38
    ld a, a
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld h, b
    rst $38
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, b
    rst $38
    ld a, [hl]
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld h, e
    rst $38
    ld b, $ff
    inc c
    rst $38
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld h, e
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    jr @+$01

    ld [$00ff], sp
    rst $38
    ld [$0cff], sp
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    inc c
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, d
    rst $38
    ld b, e
    rst $38
    ld [hl], d
    rst $38
    ld b, d
    rst $38
    ld a, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, $ff
    add hl, hl
    rst $38
    xor c
    rst $38
    rst $38
    ld l, c
    rst $38
    ld l, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub e
    rst $38
    sub $ff
    or [hl]
    rst $38
    sub [hl]
    rst $38
    sub e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    add l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    ld c, $ff
    inc c
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, c
    rst $38
    ld a, e
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    ld e, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call z, $2cff
    rst $38
    rrca
    rst $38
    inc l
    rst $38
    call z, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc h
    rst $38
    rst $00
    or d
    rst $38
    or d
    rst $38
    cp [hl]
    rst $38
    or d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret


    rst $38
    db $eb
    rst $38
    db $db
    rst $38
    set 7, a
    ret


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $28
    rst $38
    ld b, $ff
    ld h, [hl]
    rst $38
    ld h, $ff
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, h
    rst $38
    ld [hl], l
    rst $38
    ld l, l
    rst $38
    ld h, l
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    or b
    rst $38
    sub b
    rst $38
    ldh a, [$7f]
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld c, [hl]
    nop
    and h
    rst $38
    ld bc, $01ff
    cp $03
    cp $03
    db $fc
    ld b, $fc
    ld b, $f8
    inc c
    ld hl, sp+$0c
    rst $38
    rst $38
    ld de, $22ff
    inc sp
    ld [hl+], a
    inc sp
    ld b, h
    ld h, [hl]
    ld b, h
    ld h, [hl]
    adc b
    call z, $cc88
    rst $38
    rst $38
    adc b
    rst $38
    inc b
    ld b, h
    inc b
    ld [hl+], a
    inc b
    ld de, $ff9c
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_006_7acb

    jr nz, jr_006_7aad

    db $10
    rra
    db $10
    rst $38
    ld hl, sp-$71
    ld hl, sp+$47
    ld b, h
    ld b, a
    ld b, h
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc b
    ld de, $0050
    ldh [rIE], a
    nop
    rst $38
    ld [hl], d
    rst $38
    ld d, h
    rst $38
    ld a, b
    rst $38
    ld e, $ff

jr_006_7aad:
    ld a, [hl+]
    rst $38
    ld c, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, h
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38

jr_006_7acb:
    ld l, l
    rst $38
    ld l, l
    rst $38
    ld l, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp h
    rst $38
    or c
    rst $38
    cp c
    rst $38
    or b
    rst $38
    or c
    rst $38
    cp h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sub b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    jr nc, @+$01

    ldh [rIE], a
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    adc l
    add b
    ret nz

    cp a
    jp $c2bf


    cp [hl]
    jp nz, $debe

    cp [hl]
    ret nc

    or b
    inc bc
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    inc bc
    nop
    add h
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    db $ec
    ld bc, $ff01
    pop hl
    rst $18
    ld h, c
    ld e, a
    ld h, c
    rst $18
    ld a, l
    ei
    dec c
    ei
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ld [hl], b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    rst $38
    ld b, $f9
    dec c
    pop af
    add hl, de
    db $e3
    ld [hl-], a
    rst $00
    ld h, h
    adc a
    ret z

    sbc a
    sub b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    rla
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, $ff
    ld d, l
    rst $38
    ld [hl], l
    rst $38
    ld d, [hl]
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    inc hl
    rst $38
    inc hl
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $9000
    rst $38
    rst $38
    add b
    rst $38
    add c
    pop bc
    sbc a
    rst $18
    sbc a
    ret nc

    sbc a
    ret nc

    sbc a
    ret nc

    rst $38
    ldh a, [$03]
    rst $38
    add d
    nop
    nop
    inc b
    rst $38
    adc l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add c
    db $fd
    add c
    add c
    inc bc
    ld sp, hl
    rst $38
    dec c
    ld sp, hl
    dec c
    ld sp, hl
    dec c
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, $ff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ret nc

    or e
    ret nc

    or e
    ret nc

    or e
    ret nc

    or e
    ret nc

    or e
    ret nc

    or e
    ret nc

    or e
    ret nc

    or e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $38
    sub a
    rst $38
    and d
    rst $38
    and d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    and d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $29ff
    rst $38
    add hl, sp
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, c
    rst $38
    push de
    rst $38
    push de
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, d
    rst $38
    jp nc, $dbff

    rst $38
    ld d, e
    rst $38
    ld d, d
    rst $38
    ld c, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    nop
    rst $18
    or b
    rst $18
    or b
    rst $18
    or b
    rst $18
    or b
    rst $18
    or b
    rst $18
    or b
    rst $18
    or b
    rst $18
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    xor c
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    ld hl, sp+$0f
    rst $30
    rra
    db $f4
    rra
    rst $30
    rra
    db $f4
    rra
    rst $30
    rra
    ld hl, sp+$0f
    rst $38
    rlca
    ccf
    ldh [$9f], a
    ldh a, [$5f]
    ldh a, [$9f]
    di
    ld e, a
    di
    sbc a
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    stop
    sub a
    ret nc

    or e
    sbc $bf
    sbc $a2
    jp nz, $c3be

    cp a
    jp $c0bc


    cp a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    adc l
    dec c
    ei
    ld a, l
    ei
    ld a, l
    jp $df61


    pop hl
    rst $18
    pop hl
    rra
    ld bc, $ff03
    sub a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    nop
    ret nz

    nop
    ret nz

    nop
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    dec b
    nop
    add d
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    adc l
    dec c
    dec sp
    ld a, l
    ld a, e
    ld a, l
    jp $df61


    pop hl
    rst $18
    pop hl
    rra
    ld bc, $ff03
    and b
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    ei
    dec c
    ei
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    dec c
    dec sp
    stop
    adc [hl]
    rst $38
    ldh a, [$9f]
    ret nc

    sbc a
    ret nc

    sbc a
    ret nc

    sbc a
    rst $18
    add c
    rst $08
    add c
    add c
    inc bc
    rst $38
    add a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    add d
    nop
    nop
    inc b
    rst $38
    xor a
    rrca
    ld sp, hl
    dec c
    ld sp, hl
    dec c
    ld sp, hl
    dec c
    ld sp, hl
    db $fd
    add c
    db $fd
    add c
    add c
    rst $38
    rst $38
    ld hl, sp+$0f
    pop af
    rra
    ld a, [c]
    rra
    db $f4
    rra
    rst $30
    rra
    db $f4
    rra
    ld hl, sp+$0f
    rst $38
    rlca
    ccf
    ldh [$1f], a
    ldh a, [$9f]
    ldh a, [$5f]
    di
    rst $18
    di
    ld e, a
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    stop
    sub b
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    rst $38
    adc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $18
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    add c
    nop
    db $10
    rst $38
    ld de, $9f00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc d
    ld a, a
    inc c
    ld a, h
    add h
    ld a, a
    ld a, a
    jr nc, jr_006_7e65

    inc b
    ld a, a
    add d
    ld [hl-], a
    inc sp
    ld a, [bc]
    ld a, a
    inc c
    ld a, h
    add d
    ld a, a
    ld b, b
    db $10
    ld b, c
    add d
    ld b, d
    ld b, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    db $10
    ld a, a
    add d
    ld l, b
    ld h, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    inc b
    ld a, a
    ld [$043f], sp
    ld a, a
    add d
    ld h, a
    ld h, e
    inc c
    ld a, h
    adc c
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    adc a

jr_006_7e65:
    adc [hl]
    sub [hl]
    add h
    sub c
    ld b, $7f
    add l
    and b
    ld a, a
    ld a, a
    ld h, a
    ld h, e
    inc c
    ld a, h
    add e
    ld a, a
    ld h, b
    ld h, h
    rrca
    ld h, l
    add d
    ld h, [hl]
    ld h, e
    inc c
    ld a, h
    add d
    ld a, a
    ld [hl], b
    ld de, $8172
    ld [hl], e
    inc c
    ld a, h
    inc d
    ld a, a
    inc c
    ld a, h
    add l
    ld a, a
    ld a, a
    jr nc, jr_006_7ec1

    ld sp, $7f03
    add d
    ld [hl-], a
    inc sp
    ld a, [bc]
    ld a, a
    inc c
    ld a, h
    add d
    ld a, a
    ld b, b
    db $10
    ld b, c
    add d
    ld b, d
    ld b, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    db $10
    ld a, a
    add d
    ld l, b
    ld h, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    inc b
    ld a, a
    ld [$043f], sp
    ld a, a
    add d
    ld h, a
    ld h, e
    inc c
    ld a, h
    adc c
    ld a, a
    ld d, b
    ld a, a
    ld a, a

jr_006_7ec1:
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld b, $7f
    add l
    and b
    ld a, a
    ld a, a
    ld h, a
    ld h, e
    inc c
    ld a, h
    add e
    ld a, a
    ld h, b
    ld h, h
    rrca
    ld h, l
    add d
    ld h, [hl]
    ld h, e
    inc c
    ld a, h
    add d
    ld a, a
    ld [hl], b
    ld de, $8172
    ld [hl], e
    inc c
    ld a, h
    ld b, $7f
    adc b
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, a
    adc [hl]
    adc d
    ld b, $7f
    inc c
    ld a, h
    inc d
    ld a, a
    inc c
    ld a, h
    add d
    ld a, a
    ld b, b
    db $10
    ld b, c
    add d
    ld b, d
    ld b, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    inc bc
    ld a, a
    add c
    ld c, d
    ld [$814b], sp
    ld c, h
    inc bc
    ld a, a
    add d
    ld l, b
    ld h, e
    inc c
    ld a, h
    add d
    ld a, a
    ld d, b
    inc bc
    ld a, a
    add c
    ld e, d
    ld [$817f], sp
    ld e, h
    inc bc
    ld a, a
    add d
    ld h, a
    ld h, e
    inc c
    ld a, h
    add [hl]
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    adc a
    ld e, d
    ld [$867f], sp
    ld e, h
    and b
    ld a, a
    ld a, a
    ld h, a
    ld h, e
    inc c
    ld a, h
    adc a
    ld a, a
    ld h, b
    ld h, h
    ld h, l
    ld h, l
    ld e, d
    ld a, a
    ld a, a
    or b
    or c
    or d
    or e
    ld a, a
    ld a, a
    ld e, h
    inc bc
    ld h, l
    add d
    ld h, [hl]
    ld h, e
    inc c
    ld a, h
    add d
    ld a, a
    ld [hl], b
    inc bc
    ld [hl], d
    adc d
    ld e, d
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ld e, h
    inc b
    ld [hl], d
    add c
    ld [hl], e
    inc c
    ld a, h
    dec b
    ld a, a
    add c
    ld l, d
    ld [$826b], sp
    ld l, h
    ld a, [hl]
    inc b
    ld a, a
    inc c
    ld a, h
    ld b, $7f
    ld a, [bc]
    ld a, [hl]
    inc b
    ld a, a
    ld a, [bc]
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_006_7fdb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
