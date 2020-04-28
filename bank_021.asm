; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    ld hl, $417b
    add d
    ld b, c
    adc c
    ld b, c
    rrca
    ld b, b
    cpl
    ld b, b
    ld d, e
    ld b, b
    inc de
    ld b, c
    sub b
    ld b, c
    call $3342
    ld b, h
    or [hl]
    ld b, l
    ld h, [hl]
    ld b, [hl]
    ld d, h
    ld b, a
    and $47
    add c
    ld c, b
    bit 1, b
    and $48
    nop
    ld c, c
    ld c, c
    ld c, c
    ld e, c
    ld c, d
    add h
    ld c, d
    or a
    ld c, d
    ld l, h
    ld c, e
    sbc a
    ld c, e
    cp h
    ld c, e
    ret nc

    ld c, e
    dec de
    ld c, h
    ld [hl], b
    ld c, h
    ld a, [hl-]
    ld c, l
    add [hl]
    ld c, l
    pop hl
    ld c, l
    inc c
    ld c, [hl]
    ld h, $4e
    ld d, h
    ld c, [hl]
    and d
    ld c, [hl]
    or b
    ld c, [hl]
    and $4e
    sub c
    ld c, a
    rra
    ld d, b
    and $51
    nop
    ld d, d
    dec de
    ld d, h
    ld a, c
    ld d, h
    cp d
    ld d, h
    ei
    ld d, h
    rra
    ld d, l
    ld b, c
    ld d, l
    ld h, h
    ld d, l
    ld a, a
    ld d, l
    and c
    ld d, l
    rst $00
    ld d, l
    add sp, $55
    inc c
    ld d, [hl]
    ld b, h
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    add d
    ld d, [hl]
    cp [hl]
    ld d, [hl]
    db $e4
    ld d, [hl]
    add hl, bc
    ld d, a
    dec e
    ld d, a
    sub b
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    xor a
    ld d, a
    ld [bc], a
    ld e, b
    ld c, b
    ld e, b
    adc h
    ld e, b
    ld e, e
    ld e, c
    xor [hl]
    ld e, c
    ld de, $b65a
    ld e, d
    ld a, [c]
    ld e, d
    ld c, h
    ld e, e
    adc l
    ld e, e
    ld hl, $7f5c
    ld e, h
    jr nz, jr_021_412c

    jr nz, jr_021_412e

    jr nz, jr_021_4130

    jr nz, jr_021_4132

    add h
    ld e, l
    and l
    ld e, l
    ld c, c
    ld e, [hl]
    rst $08
    ld e, [hl]
    ld l, a
    ld e, a
    rrca
    ld h, b
    ld e, d
    ld h, b
    ld e, [hl]
    ld h, c
    ld de, $8d63
    ld h, h
    or [hl]
    ld h, h
    xor $64
    inc [hl]
    ld h, l
    adc c
    ld h, l
    xor d
    ld h, l
    rst $38
    ld h, l
    add hl, sp
    ld h, [hl]
    ld a, d
    ld h, [hl]
    jp nz, $0b66

    ld h, a
    ld h, [hl]
    ld h, a
    sub [hl]
    ld h, a
    ld a, [$2667]
    ld l, b
    ld e, b
    ld l, b
    adc h
    ld l, b
    jp z, $1e68

    ld l, c
    ld e, c
    ld l, c
    sbc b
    ld l, c
    xor h
    ld l, c
    dec de
    ld l, d
    ld d, c
    ld l, d
    pop hl
    ld l, d
    inc d
    ld l, e
    db $fd
    ld l, e
    ld sp, $086c
    ld l, l
    add $6d
    db $e3
    ld l, l
    or $6d
    ld [hl-], a
    ld l, [hl]
    ld b, a
    ld l, [hl]
    sbc d

jr_021_412c:
    ld l, [hl]
    cp [hl]

jr_021_412e:
    ld l, [hl]
    db $d3

jr_021_4130:
    ld l, [hl]
    db $e3

jr_021_4132:
    ld l, [hl]
    ei
    ld l, [hl]
    inc l
    ld l, a
    or a
    ld l, a
    pop af
    ld l, a
    or d
    ld [hl], b
    ld l, e
    ld [hl], c
    ret c

    ld [hl], c
    xor c
    ld [hl], d
    cp a
    ld [hl], d
    ld [de], a
    ld [hl], e
    ld d, h
    ld [hl], e
    ld h, c
    ld [hl], h
    rst $18
    ld [hl], h
    sub a
    ld [hl], l
    or c
    ld [hl], l
    ld a, d
    db $76
    ld d, b
    ld [hl], a
    add h
    ld [hl], a
    or a
    ld [hl], a
    xor $77
    dec a
    ld a, b
    db $e4
    ld a, b
    add a
    ld a, c
    ld a, [$2e79]
    ld a, d
    ld l, c
    ld a, d
    add hl, bc
    ld a, e
    dec sp
    ld a, e
    ld d, a
    ld a, e
    add [hl]
    ld a, e
    or [hl]
    ld a, e
    or $7b
    ld [hl], h
    ld a, h
    reti


    ld a, h
    jr nc, jr_021_41f6

    sbc b
    ld a, l

Call_021_417b:
    ld de, $4007
    call $05b6
    ret


    ld de, $4007
    call $05f6
    ret


    call Call_021_417b
    call $0609
    ret


    ld [$5c2e], a
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr z, jr_021_41ff

    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $a4
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $24
    ld c, e
    ld b, h

jr_021_41f6:
    ld b, d
    ccf
    ld c, h
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]

jr_021_41ff:
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    and h
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl+]
    ld a, $4b
    ld d, a
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $4f
    ld e, l
    ccf
    ld b, d
    ld c, a
    rst $28
    xor $43
    ld c, a
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    and h
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $25
    ld b, d
    ld d, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    and h
    rst $28
    xor $4b
    ld a, $64
    ld b, a
    ld a, $61
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    ld a, [$eff7]
    xor $28
    ld d, d
    ld c, a
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3a
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld e, e
    ld c, a
    ld b, d
    rst $28
    xor $42
    ld d, b
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld a, $52
    ld c, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $35
    ld a, $52
    ld c, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    rst $28
    xor $2b
    ld b, [hl]
    ld c, e
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    jr nc, jr_021_447f

    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld h, l
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld a, $44
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $a4
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld e, [hl]

jr_021_447f:
    and h
    ld b, c
    ld a, $50
    ld h, h
    ld d, b
    ld a, $44
    ld d, c
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $28
    ld d, d
    ld c, a
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld e, e
    ld c, a
    ld b, d
    rst $28
    xor $42
    ld d, b
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld a, $52
    ld c, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $35
    ld a, $52
    ld c, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    rst $28
    xor $2b
    ld b, [hl]
    ld c, e
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $35
    ld a, $52
    ld c, d
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld sp, $4f52
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $4f
    ld b, e
    ld a, [$eff7]
    xor $41
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    sbc h
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $2b
    ld b, [hl]
    ld c, e
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $28
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld b, l
    ld a, $43
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_021_46d8

    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_021_46d9

    ld c, e
    ld c, e
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld a, $4f
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e

jr_021_46d8:
    ld d, c

jr_021_46d9:
    ld a, $44
    ld h, c
    ld a, [$eff7]
    xor $2b
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    ld b, h
    ld c, e
    ld e, l
    ld b, h
    ld d, c
    ld h, h
    jr z, @+$54

    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld a, $4b
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld a, $4f
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    and h
    ld h, h
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, c
    ld a, [$eff7]
    xor $2b
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    ld b, h
    ld c, e
    ld e, l
    ld b, h
    ld d, c
    ld h, h
    jr z, jr_021_47f7

    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld a, $4b
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld a, $4f
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    rst $28
    xor $45
    ld a, $51
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, c
    rst $28

jr_021_47f7:
    xor $2b
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_021_4869

    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld d, b
    and h
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf

jr_021_4869:
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, a
    ld a, $52
    ld d, b
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, h
    rst $28
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $49
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    rst $28
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_021_49a3

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld a, $4b
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $51
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_021_49a3:
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    ld h, l
    ld h, h
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    rst $28
    xor $44
    ld c, a
    ld a, $51
    ld d, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, e
    ld b, l
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $25
    ld b, d
    ld b, c
    ld b, d
    ld d, d
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $3e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $25
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_021_4b0d

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld a, $4b
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $51
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, a
    rst $28
    xor $fa

jr_021_4b0d:
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $5c
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $65
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
    ld a, $4b
    ld b, h
    ld b, d
    ld c, c
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $4646
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $49
    ld a, $3e
    ld a, $3e
    ld d, d
    ld b, e
    ld b, d
    ld b, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $65
    ld h, h
    dec hl
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, l
    ld b, e
    ld h, c
    ld a, [$eff7]
    xor $27
    ld b, d
    ld c, a
    ld h, h
    scf
    ld c, h
    ld c, l
    ld b, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, d
    rst $28
    xor $2a
    ld c, c
    ld a, $4b
    ld d, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, l
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $4b
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, l
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, a
    ld b, d
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld a, $65
    ld h, a
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld e, e
    ld d, c
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld a, $4a
    ld a, $49
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld c, h
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld d, h
    ld e, e
    ld c, a
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld a, $4b
    ld c, b
    ld h, l
    rst $28
    xor $38
    ld c, e
    ld b, c
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $42
    ld d, h
    ld b, [hl]
    ld b, h
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    and h
    ld b, l
    ld b, d
    ld d, [hl]
    and h
    daa
    ld d, d
    ld h, h
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $fa
    rst $30
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $54
    ld a, $45
    ld c, a
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    ld h, h
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $44
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $64
    ld b, l
    ld a, $51
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $60
    rst $28
    xor $51
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $52
    ld c, l
    ld b, d
    ld c, a
    ld h, l
    ld h, h
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $25
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    rst $28
    xor $a4
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_021_4ec1

    ld b, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    and h
    ld a, [$eff7]
    xor $a4
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    rst $28
    xor $a4
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $61
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_021_4efc

    ld c, a
    ld h, h
    ld b, c
    ld c, a
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b

jr_021_4ec1:
    ld b, l
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    and h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, c
    ld a, $4b
    ld d, a
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_021_4f37

    ld b, c
    ld c, b
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2a
    ld b, d
    ld d, b
    ld b, b

jr_021_4efc:
    ld b, l
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld b, h
    ld a, $3f
    ld l, b
    ld d, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e

jr_021_4f37:
    rst $28
    xor $2f
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $48
    ld c, h
    ld c, d
    ld c, l
    ld c, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, b
    ld h, h
    or $64
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    and h
    rst $28
    xor $49
    ld a, $49
    ld a, $49
    ld a, $61
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld c, c
    ld e, e
    ld c, e
    ld d, a
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld c, c
    ld a, $4b
    ld d, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    and h
    dec h
    ld a, $49
    ld b, c
    and h
    rst $28
    xor $3f
    ld a, $49
    ld b, c
    ld h, h
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld c, e
    ld a, $52
    ld h, c
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld d, b
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    or $61
    ld h, h
    daa
    ld a, $43
    ld e, l
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld d, b
    ld b, l
    ld a, $49
    ccf
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld b, l
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld a, [$eff7]
    xor $44
    ld c, a
    ld e, l
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    rst $28
    xor $3f
    ld b, d
    ld c, a
    ld e, l
    ld b, l
    ld c, a
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $45
    ld a, $3f
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    jr nc, @+$48

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl+]
    ld e, e
    ld b, l
    ld c, e
    and h
    rst $28
    xor $45
    ld a, $3f
    ld l, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    dec hl
    ld d, d
    ld b, b
    ld b, l
    ld h, [hl]
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $54
    ld a, $40
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, c
    ld h, h
    jr z, jr_021_52c2

    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $64
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $43
    ld c, a
    ld e, l
    ld b, l
    ld h, c
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld [hl], $4c
    ld c, e
    ld d, b
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, e
    ld c, h

jr_021_52c2:
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_021_5319

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $31
    ld a, $40
    ld b, l
    ld d, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    and h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld c, b

jr_021_5319:
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld a, $41
    ld b, d
    ld h, b
    ld h, h
    ld b, e
    ld a, $50
    ld d, c
    ld a, [$eff7]
    xor $45
    ld e, e
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    rst $28
    xor $3a
    ld c, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, a
    ld b, d
    ld b, c
    ld b, d
    ld h, [hl]
    ld a, [$eff7]
    xor $5a
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, a
    ld a, $52
    ld c, d
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld a, $53
    ld c, h
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld d, c
    ld c, a
    ld e, e
    ld d, d
    ld c, d
    ld d, c
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    and h
    ld h, [hl]
    ld h, h
    daa
    ld a, $50
    rst $28
    xor $54
    ld a, $4f
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld c, a
    ld a, $52
    ld c, d
    ld h, [hl]
    ld h, l
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    and h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_021_5480

    ld h, h
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    rst $28
    xor $3d
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $54
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, @+$51

    ld h, h

jr_021_5480:
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $37
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, jr_021_5510

    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    rst $28
    xor $4f
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    ld c, d
    ld c, d
    and h
    and h
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]

jr_021_5510:
    ld c, e
    ld h, h
    jr nc, jr_021_556f

    ld c, e
    ld c, e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    and h
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ccf
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_021_5589

    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, c

jr_021_556f:
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $50
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    daa
    ld d, d

jr_021_5589:
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_021_55e2

    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $f9
    nop
    ld a, [hl+]
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, jr_021_561d

    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, d
    ld b, h
    ld c, e
    ld b, d

jr_021_55e2:
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    cpl
    ld a, $49
    ld a, $49
    ld a, $a4
    scf
    ld c, a
    ld a, $49
    ld a, $49
    ld a, $a4
    rst $28
    xor $25
    ld c, c
    ld a, $3f
    ld c, c
    ld a, $3f
    ld c, c
    ld d, d
    ccf
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, jr_021_5662

    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld d, b

jr_021_561d:
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld d, b
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, jr_021_569a

    ld h, h
    ld d, c
    ld d, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $2f
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld b, [hl]

jr_021_5662:
    ld c, e
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld c, c
    ld b, c
    ld h, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    and h
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $31
    ld a, $4a
    ld b, d
    ld c, a
    ld h, c
    ld h, h

jr_021_569a:
    ld [hl], $4c
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $47
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld d, d
    ld c, d
    ccf
    ld b, d
    ld c, e
    ld a, $4b
    ld c, e
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld c, c
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld d, d
    ld c, d
    sbc h
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld a, $4b
    ld c, e
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_021_575a

    ld b, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr nc, jr_021_5773

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld a, $49
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, d
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a

jr_021_575a:
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c

jr_021_5773:
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $44
    ld a, $4b
    ld d, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld c, e
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, h
    ld sp, hl
    nop
    rst $28
    xor $24
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $64
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld sp, $5242
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    jr z, jr_021_5881

    ld b, e
    ld c, h
    ld c, c
    ld b, h
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    ld [hl], $3e
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    and h
    ld a, [$eff7]
    xor $29
    ld e, l
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c

jr_021_5881:
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $4a
    ld a, $49
    ld h, h
    ld b, h
    ld b, d
    ld c, l
    ld a, $3e
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $43
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld c, h
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    jr nc, jr_021_5974

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $51
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    ld [hl], $3e
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld a, $4b
    ld b, h
    ld d, b
    ld a, $4a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, a
    ld a, $64

jr_021_5974:
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $4f
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, c
    ld a, $52
    ld b, d
    ld c, a
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    dec b
    nop
    ld h, h
    jr nc, jr_021_5a15

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $4f
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a

jr_021_5a15:
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $05
    nop
    ld h, h
    jr nc, jr_021_5a82

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, c
    ld h, a

jr_021_5a82:
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $49
    ld d, b
    ld c, h
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $25
    ld b, d
    ld d, b
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_021_5b28

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_021_5b3a

    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $01
    nop
    nop
    ld h, h
    jr nc, jr_021_5b52

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]

jr_021_5b28:
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld e, l
    ccf
    ld b, d

jr_021_5b3a:
    ld c, a
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $49
    ld d, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_021_5b9d

jr_021_5b52:
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    rst $28
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    jr nc, jr_021_5bb3

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld a, $4b
    ld b, h
    ld d, b
    ld a, $4a
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d

jr_021_5b9d:
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld a, $4b
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $35
    ld b, d
    ld c, b
    ld c, h
    ld c, a

jr_021_5bb3:
    ld b, c
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    ld a, $4b
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_021_5c13

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld a, $4f
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld [bc], a
    nop
    nop
    rst $28
    xor $50
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld c, b
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]

jr_021_5c13:
    ld b, d
    ld c, c
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $4246
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld c, a
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    or $a4
    and h
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    or $65
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld b, d
    ld c, a
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld b, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_021_5d6c

    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld a, $52
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h

jr_021_5d6c:
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    jr nc, jr_021_5db9

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld d, h
    ld c, h
    ld b, l
    ld c, c
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    rst $28
    xor $3a
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, l

jr_021_5db9:
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$48

    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $33
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $3a
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $35
    ld d, d
    ld b, l
    ld b, d
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $30
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    sbc h
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    sbc h
    ld h, h
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_021_5ef8

    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld a, [$eff7]
    xor $36
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $53
    ld c, h
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    or $65
    rst $28
    xor $2b
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld c, a
    ld a, $52
    ld c, d
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_021_5ef8:
    rst $28
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, h
    dec a
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    sbc h
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl-]
    ld a, $40
    ld b, l
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_021_5f6b

    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld a, $4f
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld b, d
    ld c, d
    ld c, h
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $3d
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a

jr_021_5f6b:
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, l
    ld h, l
    ld h, h
    or $65
    rst $28
    xor $2b
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld c, a
    ld a, $52
    ld c, d
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, h
    dec a
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    sbc h
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl-]
    ld a, $40
    ld b, l
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_021_600b

    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld a, $4f
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld b, d
    ld c, d
    ld c, h
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $3d
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a

jr_021_600b:
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld a, [hl+]
    ld a, $4b
    ld b, h
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $53
    ld c, h
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, l
    rst $28
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    rst $28
    xor $44
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    and h
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, a
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $61
    ld h, h
    jr z, jr_021_6104

    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $24
    ld c, a
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    dec h
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld c, h

jr_021_6104:
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $4a
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $48
    ld c, c
    ld a, $4d
    ld c, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld c, a
    ld a, $52
    ld c, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, b
    ld b, d
    ld c, a
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld b, h
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $60
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $29
    ld a, $49
    ld c, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $4f
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    jr z, jr_021_6250

    ld c, a
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    dec a
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_021_6250:
    ld b, [hl]
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    add hl, sp
    ld e, h
    ld b, h
    ld b, d
    ld c, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld c, d
    ld h, h
    dec h
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld c, d
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld b, h
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $60
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $29
    ld a, $49
    ld c, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $35
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    jr z, jr_021_63cd

    ld c, a
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    dec a
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_021_63cd:
    ld b, [hl]
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    add hl, sp
    ld e, h
    ld b, h
    ld b, d
    ld c, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld c, d
    ld h, h
    dec h
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld c, d
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$3a]
    ld a, $51
    ld d, b
    ld b, b
    ld b, l
    ld h, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $32
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $37
    ld a, $4b
    ld d, a
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, l
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, d
    ld e, l
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld c, c
    ld a, $4f
    ld h, l
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld b, h
    ld b, d
    ld b, h
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ccf
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    rst $28
    xor $2f
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld a, $51
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_021_659f

    ld c, e
    ld d, a
    ld b, d
    ld c, c
    ld b, h
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld d, d
    ld b, e
    ld b, e
    ld h, l
    ld h, h
    ld a, [hl-]
    ld d, d
    ld b, e
    ld b, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h

jr_021_659f:
    ld d, a
    ld d, d
    ld h, h
    jr z, jr_021_65ef

    ld b, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $57
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $53
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld d, b
    ld b, d

jr_021_65ef:
    ld b, l
    ld c, a
    rst $28
    xor $3e
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, b
    ld h, h
    daa
    ld d, d
    ld h, l
    ld h, h
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4f
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld a, $4b
    ld b, h
    rst $28
    xor $44
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, l
    ld b, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $64
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $48
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, l
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $3e
    ld a, $49
    ld c, c
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld a, $3e
    ld a, $51
    ld d, c
    ld h, h
    ld d, h
    ld a, $3e
    ld a, $3e
    ld c, a
    ld d, c
    ld b, d
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $3e
    ld a, $49
    ld c, c
    ld h, c
    ld a, [$eff7]
    xor $39
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    jr z, jr_021_6743

    ld b, e
    ld c, h
    ld c, h
    ld c, h
    ld c, c
    ld b, h
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    rst $28
    xor $54
    ld b, d
    ld b, h
    ld b, d

jr_021_6743:
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $3e
    ld c, b
    ld d, c
    ld b, [hl]
    ld d, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_021_67cc

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $43
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $49
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_021_6817

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c

jr_021_67cc:
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $37
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld a, $41
    ld b, d
    ld c, c
    ld h, c
    ld a, [$eff7]
    xor $27
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $40
    ld c, h
    ld c, h
    ld c, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc a
    ld a, $45
    ld c, h
    ld c, h
    ld h, l
    ld h, l
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2a
    ld c, c

jr_021_6817:
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_021_6872

    ld c, d
    ld b, d
    ld h, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, d
    ld b, d
    and h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld a, $45
    ld c, d
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_021_68b0

jr_021_6872:
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    or $ef
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec a
    ld d, a
    ld d, a
    and h
    and h
    ld b, d
    ld d, b
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $57

jr_021_68b0:
    ld d, d
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    and h
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, e
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld a, $49
    ld c, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld e, h
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $4d
    ld b, d
    ld d, a
    ld b, [hl]
    ld a, $49
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    scf
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld a, $41
    ld b, d
    ld c, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, d
    ld c, l
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    rst $28
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, h
    dec hl
    ld d, d
    ld a, $65
    ld h, l
    ld h, a
    rst $30
    ldh a, [$31]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld c, l
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    dec hl
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    and h
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld d, c
    ld d, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_021_6a71

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    jr nc, @+$44

    ld c, d
    ld c, h
    sbc h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec a
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    jr nc, jr_021_6a9c

    ld c, d
    ld c, h
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_021_6aa6

    ld b, c
    ld b, l
    ld a, $4b
    ld b, c
    ld h, b
    ld a, [$eff7]

jr_021_6a71:
    xor $3a
    ld c, h
    ld c, c
    ld c, c
    ld c, a
    ld a, $51
    ld d, c
    ld b, d
    ld h, b
    rst $28
    xor $33
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc sp
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    rst $28
    xor $29
    ld b, d

jr_021_6a9c:
    ld b, d
    ld c, a
    ld a, $51
    ld d, c
    ld b, d
    ld h, h
    ld d, d
    ld d, b
    ld d, h

jr_021_6aa6:
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    dec a
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld l, $4c
    ld c, d
    ld a, $41
    ld c, h
    ld c, a
    ld a, $60
    ld a, [$eff7]
    xor $25
    ld e, h
    ld d, b
    ld d, b
    ld a, $4a
    ld b, d
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_021_6b37

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    sbc h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_021_6b5b

    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_021_6b6d

    ld b, h
    ld a, $45
    ld a, $45
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $33

jr_021_6b37:
    ld d, d
    ld c, e
    ld c, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld c, b

jr_021_6b5b:
    ld b, [hl]
    ld b, c
    ld h, b
    rst $28
    xor $2b
    ld a, $45
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]

jr_021_6b6d:
    xor $2e
    ld c, e
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld b, l
    ld a, $50
    ld b, d
    ld h, b
    ld h, h
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, e
    ld a, $3f
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    jr nc, jr_021_6bff

    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    dec h
    ld a, $3f
    ld d, [hl]
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, b
    ld a, [$eff7]
    xor $38
    ld c, e
    ld b, [hl]
    ld b, b
    ld c, c
    ld c, h
    ld d, h
    ld c, e
    ld h, b
    rst $28
    xor $32
    ld c, a
    ld a, $40
    ld d, d
    ld c, c
    ld d, d
    ld c, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_021_6c23

    ld d, d
    ld c, c
    ld d, b
    ld e, e
    ccf
    ld b, d
    ld c, c
    ld h, b
    rst $28
    xor $25
    ld c, h
    ld b, l
    ld c, e
    ld b, [hl]
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld h, a
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a

jr_021_6bff:
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c

jr_021_6c23:
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $3e
    ld c, e
    ld b, c
    ld c, d
    ld a, $4b
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $48
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ld h, b
    ld h, h
    rst $28
    xor $29
    ld b, d
    ld b, d
    ld b, c
    ld c, a
    ld a, $48
    ld h, b
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ccf
    ld a, $52
    ld c, d
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld c, a
    ld a, $48
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    rst $28
    xor $29
    ld c, c
    ld d, d
    ld b, h
    ccf
    ld a, $52
    ld c, d
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_021_6cfb

    ld b, h
    ld a, $54
    ld d, d
    ld c, a
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld h, b
    rst $28
    xor $2a
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld b, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld h, $3e
    ld d, c
    ld b, e
    ld c, c
    ld d, [hl]
    ld h, b
    rst $28
    xor $32
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ld h, b
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]

jr_021_6cfb:
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$2c]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld e, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $36
    ld a, $51
    ld d, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld c, a
    ld a, $53
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $67
    ld [hl], $46
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    ld sp, $4f52
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    scf
    ld d, d
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    ld b, c
    ld a, $4f
    ld b, e
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    and h
    and h
    jr nc, jr_021_6e01

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr c, jr_021_6e24

    ld b, h
    ld b, d
    ccf
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    rst $30
    ldh a, [$29]
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $f7
    ldh a, [$29]
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld d, d
    ld c, e

jr_021_6e01:
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $3d
    ld d, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld b, d
    rst $28
    xor $29

jr_021_6e24:
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    rst $30
    ldh a, [$37]
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    rst $28
    xor $42
    ld c, a
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$37]
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld b, e
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld b, d
    rst $28
    xor $37
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    rst $30
    ldh a, [rSB]
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $01
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    and h
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$36]
    ld c, c
    ld c, h
    ld d, c
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld a, $4a
    ld h, h
    rst $28
    xor $25
    ld c, h
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, [hl]
    ld h, h
    cpl
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, l
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, d
    ld b, l
    ld c, a
    ld d, c
    ld b, d
    rst $28
    xor $3d
    ld d, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $52
    ld b, d
    ld c, a
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $65
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_021_6fb2

    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_021_6fad

    ld c, e
    ld c, e
    ld h, b
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $2b
    ld b, d
    ld c, a
    ld a, $52
    ld d, b
    ld b, e
    ld c, h
    ld c, a
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld a, $52
    ld d, b
    ld b, e
    ld c, h

jr_021_6fad:
    ld c, a
    ld b, c
    ld b, d
    ld c, a
    ld b, d

jr_021_6fb2:
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    and h
    and h
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld a, $52
    ld d, b
    ld b, e
    ld c, h
    ld c, a
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $60
    ld h, h
    ld b, l
    ld a, $60
    ld h, h
    ld b, l
    ld a, $61
    rst $28
    xor $3a
    ld a, $50
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $42
    ld c, e
    ld d, c
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, b
    rst $28
    xor $f6
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld d, c
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $30
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld c, b
    ld a, $4b
    ld c, e
    ld d, c
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $3e
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_021_70cb

    ld c, e
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $2f
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $64
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld h, h
    ld a, [hl+]
    ld e, e
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    rst $28
    xor $2b
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b

jr_021_70cb:
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $f6
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_021_712f

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $f6
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b

jr_021_712f:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    rst $28
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_021_7195

    ld b, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $60
    ld h, h
    ld b, l
    ld a, $60
    ld h, h
    ld b, l
    ld a, $61
    rst $28
    xor $2d
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h

jr_021_7195:
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, b
    rst $28
    xor $f6
    ld h, [hl]
    ld a, [$eff7]
    xor $2b
    ld a, $50
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    rst $28
    xor $51
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $64
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$48

    ld c, e
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    rst $28
    xor $2a
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $f6
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, l
    ld c, l
    ld c, c
    ld a, $52
    ld d, b
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    or $65
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_021_72d6

    ld b, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$30]
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $f7
    ldh a, [$30]
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $2f
    ld b, d
    ld b, [hl]

jr_021_72d6:
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, l
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f6
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    add hl, hl
    ld a, $4b
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    sbc h
    rst $28
    xor $51
    ld a, $44
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld c, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, c
    ld a, $4b
    ld c, b
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ld h, h
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld d, a
    ld d, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2b
    ld c, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $4b
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld a, [hl-]
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld c, a
    ld c, h
    ld b, l
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ld b, d
    rst $28
    xor $39
    ld b, d
    ld c, a
    ccf
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, b
    ld a, $4a
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld d, b
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc sp
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld c, c
    ld a, [$eff7]
    xor $41
    ld d, d
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    rst $28
    xor $41
    ld a, $64
    ld c, a
    ld d, d
    ld c, d
    ld b, h
    ld b, d
    ld b, e
    ld d, d
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $61
    ld h, h
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld c, d
    ld e, h
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld h, $45
    ld b, d
    ld b, e
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld d, b
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld h, $45
    ld b, d
    ld b, e
    rst $28
    xor $46
    ld c, e
    ld h, h
    add hl, hl
    ld c, a
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_021_7696

    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld l, b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l

jr_021_7696:
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld bc, $fa00
    rst $30
    rst $28
    xor $2d
    ld a, $45
    ld c, a
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld bc, $6400
    dec l
    ld a, $45
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $49
    ld a, $4b
    ld b, h
    ld h, h
    cpl
    ld b, d
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld c, h
    ld b, e
    ld b, e
    ld d, c
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld c, a
    ld a, $52
    ld c, d
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, h
    inc l
    ld c, e
    rst $28
    xor $28
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_021_779c

    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $32
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    rst $28
    xor $44
    ld b, d
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_021_77d0

    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, d

jr_021_779c:
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $3c
    ld b, d
    ld d, c
    ld b, [hl]
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_021_7803

    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]

jr_021_77d0:
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $28
    ld c, a
    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]

jr_021_7803:
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld a, $49
    ld c, c
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_021_7893

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, h
    ld a, [$eff7]
    xor $49
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b

jr_021_7893:
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, h
    ld l, $52
    ld c, a
    ld d, a
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld d, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    ld h, l
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $ef
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld a, $49
    ld d, b
    ld c, h
    ld h, h
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld e, b
    ld c, a
    ld b, h
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    rst $28
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, c
    ld c, a
    ld c, h
    ld d, c
    ld d, a
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    jr z, jr_021_79cc

    ld b, e
    ld c, h
    ld c, c
    ld b, h
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld a, $49
    ld d, b
    ld c, h
    ld h, h
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_021_79cc:
    ld e, b
    ld c, a
    ld b, h
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    rst $28
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, c
    ld c, a
    ld c, h
    ld d, c
    ld d, a
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    jr z, jr_021_7a3f

    ld b, e
    ld c, h
    ld c, c
    ld b, h
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    ld c, h
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, c
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, c
    ld b, d

jr_021_7a3f:
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld c, c
    ld d, c
    ld d, b
    ld a, $4a
    ld b, d
    ld h, h
    daa
    ld c, h
    ld c, b
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $25
    ld c, a
    ld d, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $4b
    ld c, e
    ld h, h
    ld h, c
    ld h, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld c, d
    ld h, [hl]
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    rst $28
    xor $3d
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_021_7b28

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    rst $28
    xor $4d
    ld c, h
    ld c, l
    ld d, d
    ld c, c
    ld e, e
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_021_7b66

jr_021_7b28:
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    scf
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a

jr_021_7b66:
    rst $28
    xor $36
    ld e, e
    ld d, d
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2e
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, l
    ld a, $3f
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $51
    ld b, [hl]
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld b, e
    ld a, $4b
    and h
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    and h
    and h
    dec l
    ld a, $61
    rst $28
    xor $2e
    ld a, $4b
    ld c, e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $25
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, e
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    scf
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    rst $28
    xor $51
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $30
    ldh a, [$67]
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld h, h
    ld b, $67
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    jr z, jr_021_7ccc

    ld c, e
    ld h, h
    jr nc, jr_021_7cd6

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $5e
    ld d, c
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $36
    ld d, c
    ld a, $3f
    ld h, h
    ld a, $4b
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld b, [hl]

jr_021_7ccc:
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    rst $28

jr_021_7cd6:
    xor $ff
    ldh a, [$67]
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld h, h
    rlca
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $3a
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld h, h
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld a, $52
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$67]
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld h, h
    rlca
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $3a
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld a, $52
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    rst $28
    xor $ff
    ldh a, [$67]
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld h, h
    ld [$efa4], sp
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, a
    ld h, c
    dec h
    ld h, c
    rst $28
    xor $2a
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2f
    ld e, e
    ld b, l
    ld c, d
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $45
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $42
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld d, a
    ld e, e
    ld b, l
    ld c, d
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
