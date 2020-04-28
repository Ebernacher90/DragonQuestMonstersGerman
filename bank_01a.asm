; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    ld a, [de]
    ld [hl], a
    ld b, c
    ld a, [hl]
    ld b, c
    add l
    ld b, c
    dec c
    ld b, b
    pop de
    ld b, b
    ld hl, $8c41
    ld b, c
    ldh a, [rSTAT]
    inc d
    ld b, d
    ld b, a
    ld b, d
    adc b
    ld b, d
    and c
    ld b, d
    pop bc
    ld b, d
    sbc $42
    add hl, hl
    ld b, e
    ld h, b
    ld b, e
    adc a
    ld b, e
    or e
    ld b, e
    push af
    ld b, e
    scf
    ld b, h
    ld e, b
    ld b, h
    xor l
    ld b, h
    push hl
    ld b, h
    ld [hl+], a
    ld b, l
    ld c, e
    ld b, l
    ld l, a
    ld b, l
    xor d
    ld b, l
    db $e4
    ld b, l
    inc de
    ld b, [hl]
    inc sp
    ld b, [hl]
    ld h, h
    ld b, [hl]
    add [hl]
    ld b, [hl]
    cp h
    ld b, [hl]
    db $dd
    ld b, [hl]
    dec d
    ld b, a
    add [hl]
    ld b, a
    xor l
    ld b, a
    pop de
    ld b, a
    ld [$9748], sp
    ld c, b
    ret


    ld c, b
    ld bc, $2e49
    ld c, c
    ld a, [hl]
    ld c, c
    jp nz, $1049

    ld c, d
    ld b, a
    ld c, d
    ld l, h
    ld c, e
    adc e
    ld c, e
    jp z, $e84b

    ld c, e
    jr jr_01a_40b5

    ld e, e
    ld c, h
    add $4c
    db $fd
    ld c, h
    dec [hl]
    ld c, l
    ld e, e
    ld c, l
    and l
    ld c, l
    rst $30
    ld c, l
    ld a, [hl-]
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    adc d
    ld c, [hl]
    ret nc

    ld c, [hl]
    inc sp
    ld c, a
    ld d, d
    ld c, a
    adc a
    ld c, a
    or b
    ld c, a
    db $eb
    ld c, a
    jr jr_01a_40db

    ld d, l
    ld d, b
    adc b
    ld d, b
    or l
    ld d, b
    and $50
    jr nz, jr_01a_40e6

    ld d, l
    ld d, c
    ld [hl], h
    ld d, c
    or d
    ld d, c
    db $f4
    ld d, c
    inc d
    ld d, d
    ld d, a
    ld d, d
    adc [hl]
    ld d, d
    ld [$0d52], a
    ld d, e
    ld h, $53
    ld h, b
    ld d, e
    xor e
    ld d, e
    bit 2, e
    dec bc
    ld d, h
    cpl
    ld d, h
    ld d, a
    ld d, h

jr_01a_40b5:
    ld [hl], l
    ld d, h
    sbc b
    ld d, h
    di
    ld d, h
    inc sp
    ld d, l
    ld d, a
    ld d, l
    sub e
    ld d, l
    bit 2, l
    ld a, [c]
    ld d, l
    ld [hl+], a
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld a, [hl]
    ld d, [hl]
    and l
    ld d, [hl]
    call $e856
    ld d, [hl]
    ld h, c
    ld d, a
    add d
    ld d, a
    and b
    ld d, a
    ld [c], a
    ld d, a
    ld e, e
    ld e, b

jr_01a_40db:
    ld l, l
    ld e, b
    ld e, [hl]
    ld e, c
    ld a, l
    ld e, c
    dec de
    ld e, d
    dec h
    ld e, e
    or d

jr_01a_40e6:
    ld e, e
    ld c, b
    ld e, h
    and d
    ld e, h
    add l
    ld e, l
    push bc
    ld e, l
    reti


    ld e, [hl]
    ld e, $5f
    ld h, b
    ld e, a
    ld a, [hl-]
    ld h, b
    ld [hl+], a
    ld h, c
    ld h, b
    ld h, c
    ld b, b
    ld h, d
    ld d, [hl]
    ld h, d
    ld h, [hl]
    ld h, d
    call Call_01a_4e62
    ld h, e
    db $f4
    ld h, e
    ld e, e
    ld h, h
    jp nz, $2964

    ld h, l
    ld a, [hl]
    ld h, l
    rst $30
    ld h, l
    ld h, h
    ld h, [hl]
    adc $66
    ld b, d
    ld h, a
    cp c
    ld h, a
    ld c, $68
    and $68
    ld e, h
    ld l, c
    inc bc
    ld l, d
    xor c
    ld l, d
    and [hl]
    ld l, e
    call c, Call_01a_5b6b
    ld l, h
    ld a, [hl+]
    ld l, l
    db $d3
    ld l, l
    rlca
    ld l, [hl]
    nop
    ld l, a
    ld e, [hl]
    ld l, a
    sub c
    ld l, a
    jr c, jr_01a_41a7

    ld d, l
    ld [hl], c
    add e
    ld [hl], c
    and a
    ld [hl], d
    push de
    ld [hl], d
    ld a, c
    ld [hl], e
    di
    ld [hl], e
    push bc
    ld [hl], h
    pop af
    ld [hl], h
    inc e
    ld [hl], l
    ld c, d
    ld [hl], l
    ld [hl], l
    ld [hl], l
    and d
    ld [hl], l
    rst $08
    ld [hl], l
    rst $38
    ld [hl], l
    ld a, [hl+]
    db $76
    add l
    ld [hl], a
    and l
    ld [hl], a
    add hl, bc
    ld a, b
    ld a, [hl-]
    ld a, b
    push bc
    ld a, b
    inc a
    ld a, c
    ld h, h
    ld a, c
    add d
    ld a, c
    db $fd
    ld a, c
    xor a
    ld a, d
    ld e, l
    ld a, e
    sub [hl]
    ld a, e
    ret nc

    ld a, e
    ld c, d
    ld a, h
    ei
    ld a, h
    ld e, b
    ld a, l
    ld l, l
    ld a, l

Call_01a_4177:
    ld de, $4007
    call $05b6
    ret


    ld de, $4007
    call $05f6
    ret


    call Call_01a_4177
    call $0609
    ret


    ld [$649f], a
    ld h, a
    jr nc, jr_01a_41d8

    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, h
    ld a, $49
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f

jr_01a_41a7:
    ld c, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $4a

jr_01a_41d8:
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2e
    ld c, a
    ld a, $43
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
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
    daa
    ld d, d
    ld h, c
    ld h, h
    jr c, jr_01a_424d

    ld b, c
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $44
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $3e
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $41
    ld c, a
    ld a, $4b
    ld b, l
    ld e, e
    ld c, e
    ld b, h
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
    ld d, d

jr_01a_424d:
    ld b, e
    ld b, e
    ld h, l
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
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2a
    ld c, a
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $28
    ld b, [hl]
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
    ld d, b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $35
    ld d, d
    ld b, l
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld c, e
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
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
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld a, $4f
    ld c, a
    ld c, h
    ld b, h
    ld a, $4b
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
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
    dec h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $4c
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld c, c
    ld b, d
    ld b, h
    ld a, $4b
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $24
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld a, $4b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld e, e
    ld b, l
    ld e, e
    and h
    inc h
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $4c
    ld c, e
    ld c, e
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $3e
    ld a, $3e
    ld a, $4b
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, h
    ld c, e
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
    ld b, [hl]
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
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld h, h
    ld a, $4b
    sbc h
    ld a, [$eff7]
    xor $44
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld b, c
    rst $28
    xor $41
    ld a, $3e
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, h
    ld c, h
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld l, $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $4c
    ld c, a
    ld b, h
    ld b, d
    ld h, b
    rst $28
    xor $f6
    ld h, c
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, a
    ld d, d
    ld b, l
    ld b, [hl]
    ld b, h
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, b
    ld b, l
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
    dec hl
    ld a, $45
    ld a, $45
    ld a, $61
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld e, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $2e
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, e
    ld e, h
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
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $41
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld l, $4b
    ld b, [hl]
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld l, $49
    ld a, $4d
    ld c, l
    ld b, d
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld b, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld h, h
    ld a, $52
    ld b, e
    ld l, b
    ld d, b
    ld h, h
    jr nc, jr_01a_4582

    ld d, d
    ld c, c
    ld h, [hl]
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01a_45b7

    ld b, [hl]
    ld c, e
    ld b, d
    ld d, c
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld e, e

jr_01a_4582:
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $25
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld d, d
    ld c, d
    rst $28
    xor $38
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, l
    ld d, c
    ld d, a
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
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, h
    ld b, e
    ld d, c
    ld h, h
    ld d, b

jr_01a_45b7:
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, l
    ld h, [hl]
    ld a, [$eff7]
    xor $2f
    ld a, $5e
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld l, b
    ld d, b
    rst $28
    xor $50
    ld a, $44
    ld b, d
    ld h, b
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld l, $24
    jr nc, jr_01a_4660

    add hl, hl
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4c
    ld c, h
    ld c, h
    ld c, h
    ld c, h
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    rst $28
    xor $2e
    ld c, a
    ld a, $43
    ld d, c
    ld h, l

jr_01a_4660:
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld b, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, [hl]
    ld h, h
    inc h
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld b, d
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01a_46db

    ld d, b
    ld d, c
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $2f
    ld a, $44
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, @+$40

    ld c, e
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a

jr_01a_46db:
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01a_4721

    ld c, e
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $42
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $4d
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, h
    ld c, b
    ld b, d
    ld c, e
    ld c, e
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
    jr nc, jr_01a_4759

    ld c, e
    ld h, h
    ld b, c
    ld a, $4f
    ld b, e

jr_01a_4721:
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $49
    ld a, $50
    ld d, b
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
    daa
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, d

jr_01a_4759:
    ld a, $4b
    rst $28
    xor $3e
    ld c, e
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ccf
    ld a, $4f
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $53
    ld c, h
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01a_47f9

    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $2f
    ld d, d
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    cpl
    ld a, $52
    ld c, e
    ld b, d
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $4a
    ld a, $4b
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]

jr_01a_47f9:
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld c, e
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $3e
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, c
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
    jr c, jr_01a_489f

    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, l
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld c, e
    ld a, $64
    ld b, a
    ld a, $61
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld l, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, b
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01a_48db

    ld b, b
    ld b, l

jr_01a_489f:
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $52
    ld c, e
    ld c, e
    ld e, h
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, c
    ld a, $4b
    ld c, b
    ld b, d
    ld c, e
    ld h, [hl]
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
    ld b, c
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28

jr_01a_48db:
    xor $3e
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $60
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $2b
    ld a, $3e
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $4f
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $53
    ld c, h
    ld c, a
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, [hl]
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, h
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $49
    ld e, e
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    sbc h
    rst $28
    xor $54
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $4f
    ld a, $4b
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01a_4a0e

    ld c, e
    ld b, d
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    rst $28
    xor $38
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, l
    ld d, c
    ld d, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3f
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, c
    ld h, a

jr_01a_4a0e:
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $4c
    ld c, a
    ld b, h
    ld b, d
    ld h, c
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, c
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    rst $28
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    and e
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $44
    ld c, h
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01a_4ad9

    ld c, e
    ld b, d
    ld d, b
    ld h, h
    scf
    ld a, $44
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld a, $45
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld c, h
    ld c, c
    sbc h
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h

jr_01a_4ad9:
    ld h, a
    jr z, jr_01a_4b2b

    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2b
    ld b, d
    ld b, [hl]
    ld c, a
    ld a, $51
    ld d, b
    ld a, $4b
    ld d, c
    ld c, a
    ld a, $44
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_01a_4b2b:
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01a_4b78

    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $50
    ld c, l
    ld e, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $44
    ld c, h
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
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
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]

jr_01a_4b78:
    ld d, c
    ld h, h
    jr nc, jr_01a_4bba

    ld e, [hl]
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec a
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01a_4bd7

    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, l
    ld a, [$eff7]
    xor $27
    ld a, $4b
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $3e
    ld d, d

jr_01a_4bba:
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $65
    ld h, h
    cpl
    ld a, $5e
    ld d, c
    ld h, h

jr_01a_4bd7:
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $49
    ld c, h
    ld d, b
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $48
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld d, a
    ld d, d
    ld c, c
    ld b, d
    ld c, a
    ld c, e
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
    ld [hl-], a
    ld c, h
    ld c, l
    ld d, b
    ld h, c
    ld h, h
    inc l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, c
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $4a
    ld a, $40
    ld b, l
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld l, b
    ld d, b
    rst $28
    xor $41
    ld c, a
    ld a, $52
    ld b, e
    ld h, h
    ld a, $4b
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, l
    ld c, a
    ld d, a
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld d, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    scf
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld a, $51
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $35
    ld d, d
    ld b, l
    ld b, d
    ld h, c
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
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $50
    ld d, c
    ld e, l
    ld c, a
    ld d, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld a, $64
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $66
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld e, e
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $2b
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, [hl]
    ld a, [$eff7]
    xor $36
    ld c, h
    ld d, h
    ld a, $50
    ld h, h
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    sbc h
    rst $28
    xor $49
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $51
    ld e, h
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld d, c
    ld a, $48
    ld d, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01a_4e41

    ld a, $49
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld a, $44
    ld d, c
    ld h, c
    ld h, h
    jr z, jr_01a_4e58

    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
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

jr_01a_4e41:
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    sbc h
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld c, c
    ld c, h
    ld d, b
    ld h, [hl]
    ld h, a

jr_01a_4e58:
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    and h
    ld d, b

Call_01a_4e62:
    ld b, b
    ld b, l
    ld c, d
    ld c, h
    ld c, c
    ld c, c
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
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
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
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, a
    ld c, h
    ccf
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $36
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    inc [hl]
    ld d, d
    ld a, $51
    ld d, b
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
    and h
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld c, h
    ld c, c
    ld c, c
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, [hl]
    ld a, [$eff7]
    xor $31
    ld e, h
    ld h, h
    ld c, e
    ld e, h
    ld h, c
    ld h, h
    ld [hl-], a
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
    rst $28
    xor $27
    ld a, $4b
    ld c, e
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, c
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
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $3e
    ld c, e
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, l
    ld a, $52
    ld c, l
    ld d, c
    ld d, b
    ld e, e
    ld b, b
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld d, c
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $38
    ld c, e
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld e, e
    ld c, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
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
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
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
    scf
    ld b, a
    ld a, $60
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld b, d
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld c, d
    ld a, $44
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld h, c
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
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2c
    ld c, e
    ld d, e
    ld a, $49
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld e, b
    ld b, l
    ld h, b
    ld h, h
    ld e, e
    ld b, l
    ld c, d
    ld h, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $32
    ld l, $60
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $45
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld a, $4a
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    add hl, hl
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
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
    xor $29
    ld c, a
    ld a, $44
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc sp
    ld c, c
    ld a, $4b
    ld h, [hl]
    ld h, h
    add hl, hl
    ld c, a
    ld a, $44
    ld l, b
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ccf
    ld h, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
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
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld d, d
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $2e
    ld a, $4a
    ld b, d
    ld c, a
    ld a, $41
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01a_5240

    ld c, e
    ld h, h
    daa
    ld d, d
    ld d, b
    ld d, b
    ld b, d
    ld c, c
    ld h, [hl]
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld a, $50
    ld d, c
    ld h, h
    ld b, l
    ld e, e
    ld d, c
    ld d, c

jr_01a_5240:
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, h
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
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
    ld d, b
    ld c, h
    ld c, a
    ld b, h
    ld b, d
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
    ld b, h
    ld b, d
    ld c, d
    ld e, l
    ld d, c
    sbc h
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
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
    ld c, e
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld c, d
    ld e, l
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, l
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
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, a
    ld c, e
    ld c, c
    ld c, h
    ld d, b
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
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $4d
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    jr z, @+$4d

    ld b, c
    ld b, d
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $53
    ld c, h
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, b
    ld h, h
    ccf
    ld b, d
    ld d, e
    ld c, h
    ld c, a
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
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
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$62]
    db $eb
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $4b
    ld c, e
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $35
    ld d, d
    ld b, l
    ld b, d
    ld h, l
    ld h, h
    inc l
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    sbc h
    ld a, [$eff7]
    xor $54
    ld a, $4b
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $2f
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld d, b
    ld c, h
    ld d, b
    ld c, h
    ld d, b
    ld c, h
    ld h, c
    ld h, h
    jr z, jr_01a_548a

    ld d, c
    sbc h
    rst $28
    xor $50
    ld c, l
    ld a, $4b
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $60
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    inc h
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, l
    rst $28
    xor $35
    ld d, d
    ld b, l

jr_01a_548a:
    ld l, b
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    rst $28
    xor $3f
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $3e
    ccf
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld d, c
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld h, h
    rst $30
    ldh a, [$ea]
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
    ccf
    ld b, d
    ld b, [hl]
    rst $28
    xor $47
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    rst $28
    xor $2e
    ld c, a
    ld a, $43
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld h, l
    ld h, h
    jr z, jr_01a_5585

    ld c, e
    ld h, h
    inc l
    ld b, c
    ld b, [hl]
    ld c, h
    ld d, c
    rst $28
    xor $4a
    ld d, d
    ld e, [hl]
    ld h, h
    ccf
    ld e, l
    ld b, e
    ld b, e
    ld b, d
    ld c, c
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $49
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, e

jr_01a_5585:
    ld b, h
    ld h, h
    ld a, $4f
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, [hl]
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
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_01a_5625

    ld a, $3e
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    rst $28
    xor $24
    ld c, e
    ld b, h
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec a
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
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
    jr nc, jr_01a_5654

    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld c, b
    ld a, $49
    ld d, c
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h

jr_01a_5625:
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld b, e
    ld e, l
    ld b, l
    ld c, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l

jr_01a_5654:
    ld a, $3f
    ld b, d
    rst $28
    xor $24
    ld c, e
    ld b, h
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$27]
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
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    ld h, h
    and h
    and h
    and h
    ld h, h
    and h
    rst $28
    xor $64
    and h
    ld h, h
    and h
    and h
    and h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    and h
    ld d, a
    ld d, a
    ld d, a
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $2b
    ld a, $52
    ld d, b
    ld b, d
    ld h, l
    ld h, h
    dec h
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, d
    ld e, l
    ld b, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $35
    ld d, d
    ld b, l
    ld b, d
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
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $52
    ld d, b
    ld b, d
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    rst $28
    xor $25
    ld a, $52
    ld b, b
    ld b, l
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
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
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, [hl]
    ld h, h
    daa
    ld b, d
    ld c, e
    ld c, b
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $50
    ld b, [hl]
    ld c, d
    ld d, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_01a_57bb

    ld a, $4c
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $2e
    ld c, h
    ld b, l
    ld c, c
    ld b, c
    ld a, $4a
    ld c, l
    ld b, e
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_01a_57dc

    ld a, $4c
    ld h, l
    ld h, h
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, [hl]
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $3a
    ld a, $45
    ld c, a
    ld d, b
    ld a, $44
    ld b, d
    ld c, a

jr_01a_57bb:
    ld b, [hl]
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $36
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, a
    ld a, $51

jr_01a_57dc:
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    rst $28
    xor $2f
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $36
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $43
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_01a_5896

    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
    rst $28
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld d, d
    ld d, c
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
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld c, a
    ld a, $52
    ld c, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, [hl]
    ld d, e

jr_01a_5896:
    ld b, [hl]
    ld c, c
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $3a
    ld a, $40
    ld b, l
    ld c, a
    ld a, $52
    ld c, d
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $43
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
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
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $3d
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
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
    daa
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld c, e
    ld e, l
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_01a_595a

    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    ld d, d
    ld c, d
    sbc h
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld b, d
    ld c, e

jr_01a_595a:
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld b, l
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
    daa
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_01a_59e6

    ld b, c
    ld c, b
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    cpl
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, l

jr_01a_59e6:
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $ef
    xor $45
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld e, e
    ld c, c
    ld c, c
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
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
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
    inc h
    ccf
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    dec [hl]
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $43
    ld e, l
    ld c, a
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
    ld a, [$eff7]
    xor $4e
    ld d, d
    ld a, $49
    ld b, [hl]
    ld b, e
    ld b, [hl]
    ld d, a
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
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
    daa
    ld d, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    dec [hl]
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
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
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_01a_5b8b

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28

Call_01a_5b6b:
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
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
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d

jr_01a_5b8b:
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, c
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
    ld d, b
    ld a, $4a
    ld c, d
    ld c, c
    ld b, d
    rst $28
    xor $28
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $49
    ld a, $50
    ld d, b
    ld b, d
    ld h, l
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    rst $28
    xor $29
    ld h, h
    ld b, h
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
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
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
    ld c, a
    ld a, $52
    ld c, d
    rst $28
    xor $44
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
    daa
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld c, c
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $29
    sbc h
    dec [hl]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $4b
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $25
    ld c, a
    ld d, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    and h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld b, d
    ld d, c
    ld h, c
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld a, [hl+]
    ld a, [$eff7]
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
    rst $28
    xor $fa
    rst $30
    rst $28
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
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld a, [hl+]
    ld h, [hl]
    ld a, [$eff7]
    xor $39
    ld b, [hl]
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
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    inc l
    ld c, e
    ld b, e
    ld c, h
    ld d, b
    ld a, [$eff7]
    xor $50
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
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
    dec a
    ld h, c
    dec h
    ld h, c
    ld h, h
    inc l
    ld c, e
    ld b, e
    ld c, h
    ld d, b
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    jr z, jr_01a_5df5

    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $46
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    jr z, jr_01a_5e09

    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $45
    ld a, $65
    ld h, h
    ld sp, $4046
    ld b, l
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $24
    ld d, d
    ld d, b
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld e, l
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e

jr_01a_5df5:
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_01a_5e09:
    inc h
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    and e
    ld h, h
    add hl, sp
    ld a, $4a
    ld c, l
    ld d, [hl]
    ld h, b
    rst $28
    xor $33
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld d, [hl]
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $32
    ld c, a
    ld a, $40
    ld d, d
    ld c, c
    ld d, d
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
    inc h
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, h
    and e
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
    ld a, [$eff7]
    xor $36
    ld a, $43
    ld d, c
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $2b
    ld a, $52
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, $4c
    ld d, b
    and e
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
    ld h, h
    ld l, $4b
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $31
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $25
    ld e, h
    ld d, b
    ld d, b
    ld d, c
    ld a, $3f
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    rst $28
    xor $45
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3d
    ld d, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01a_5f2f

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ccf
    ld c, h
    sbc h
    rst $28
    xor $51
    ld b, d
    ld c, e
    ld h, b
    ld d, c
    ld c, h
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld l, $4c
    ld b, a
    ld c, h
    sbc h
    ld a, [$eff7]
    xor $51
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec hl
    ld c, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, b
    ld c, e
    ld c, h
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $54
    ld b, [hl]

jr_01a_5f2f:
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    add hl, hl
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, b
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $33
    ld c, a
    ld c, h
    ld b, e
    ld b, d
    ld d, b
    ld d, b
    ld c, h
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $25
    ld c, a
    ld d, d
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
    jr z, @+$51

    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $37
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld c, a
    ld a, $3f
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $2e
    ld e, e
    ld c, e
    ld b, h
    ld d, d
    ld c, a
    ld d, d
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc sp
    ld a, $5e
    ld h, h
    ld a, $52
    ld b, e
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    rst $28
    xor $37
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld c, a
    ld a, $3f
    ld b, d
    ld a, [$eff7]
    xor $45
    ld c, h
    ld b, b
    ld b, l
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
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
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $24
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld e, h
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $48
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld d, a
    ld d, d
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld a, $4f
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    dec h
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
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
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, c
    ld b, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
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
    ld l, $4c
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $3e
    ccf
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
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
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $25
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
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
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $53
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, c
    ld b, c
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, l
    ld a, $49
    ccf
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4d
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $50
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, @+$40

    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
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
    ld c, l
    ld a, $3e
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $48
    ld e, h
    ld c, e
    ld c, e
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
    jr nc, jr_01a_62e9

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
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, e
    ld a, $52
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    inc h
    ld c, a
    ld d, c
    ld b, d
    ld c, e

jr_01a_62e9:
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    jr z, jr_01a_6344

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, h
    ld b, d
    ld d, b
    ld a, $4a
    ld d, c
    rst $28
    xor $09
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld c, h
    ld c, a
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
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $67
    inc h
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    ld h, a
    ld h, h
    ld b, h

jr_01a_6344:
    ld b, d
    ld c, e
    ld a, $4b
    ld c, e
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    jr z, @+$52

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, h
    ld b, d
    ld d, b
    ld a, $4a
    ld d, c
    rst $28
    xor $43
    ld c, h
    ld c, c
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    rst $28
    xor $25
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, b
    rst $28
    xor $33
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    jr nc, jr_01a_63f8

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, b
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, b
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    and h
    and h
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]

jr_01a_63f8:
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld bc, $fa67
    rst $30
    rst $28
    xor $67
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    jr nc, jr_01a_6473

    ld d, c
    ld a, $49
    ld c, c
    rst $28
    xor $48
    ld c, e
    ld b, d
    ld d, c
    ld b, d
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld b, l
    ld e, e
    ld c, a
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp

jr_01a_6473:
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld [bc], a
    ld h, a
    ld a, [$eff7]
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    inc bc
    ld h, a
    ld a, [$eff7]
    xor $67
    inc l
    ld c, d
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ccf
    ld c, c
    ld d, d
    ld d, c
    rst $28
    xor $4f
    ld d, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $4f
    ld e, e
    ld b, e
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld e, h
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld h, h
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    inc b
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_01a_65a3

    ld c, e
    ld b, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, d
    ld b, c
    ld b, d
    ld c, c
    ld d, c
    ld b, d
    rst $28
    xor $35
    ld c, h
    ld d, b
    ld b, d
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    daa
    ld c, h
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a

jr_01a_65a3:
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    dec b
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_01a_65f8

    ld d, b
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $29
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld c, h
    ld c, c
    sbc h
    ld a, [$eff7]
    xor $57
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    ld [hl], $4c
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld c, h
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]

jr_01a_65f8:
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, $67
    ld a, [$eff7]
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $42
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $4c
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
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
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    rlca
    ld h, a
    ld a, [$eff7]
    xor $67
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $29
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $2f
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    ld d, b
    ld d, c
    ld c, a
    ld a, $45
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld [$fa67], sp
    rst $30
    rst $28
    xor $67
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $37
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, h
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    and h
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    dec sp
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    add hl, bc
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_01a_67c1

    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
    ld a, $45
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_01a_67c9

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $5c
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld e, l
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    rst $28

jr_01a_67c1:
    xor $41
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld c, e
    ld d, b

jr_01a_67c9:
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld h, c
    ld a, [$eff7]
    xor $67
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld e, l
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld e, l
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $2c
    ld c, e
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
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
    ld h, c
    ld h, h
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, [hl]
    ccf
    ld c, c
    ld b, [hl]
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld c, a
    ld a, $44
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld a, [$eff7]
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
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
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
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
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
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $25
    ld e, l
    ld b, b
    ld b, l
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4f
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld d, b
    ld c, h
    ccf
    ld a, $49
    ld b, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld bc, $0000
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    scf
    ld a, $40
    ld b, l
    ld h, l
    ld h, h
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld c, c
    ld a, $41
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01a_69ce

    ld c, e
    ld h, h
    inc h
    ccf
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld e, e
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $3e
    ld d, d
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    inc l
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $45
    ld b, d

jr_01a_69ce:
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2a
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $42
    ld c, a
    ld d, b
    ld d, c
    ld c, b
    ld c, c
    ld a, $50
    ld d, b
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
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld a, $4f
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $36
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    ld a, [hl+]
    ld d, d
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
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
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
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
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $36
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, e
    ld d, b
    ccf
    ld b, d
    ld d, b
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $3e
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
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
    ld b, c
    ld a, $5e
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
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    and h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, h
    ld c, a
    ld e, l
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
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
    xor $3a
    ld c, h
    ld h, h
    ld d, h
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    rst $28
    xor $3d
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
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
    rst $28
    xor $54
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $36
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
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
    ld a, [hl-]
    ld c, h
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, [hl]
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
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
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    jr z, @+$54

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $60
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $54
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $28
    ld d, d
    ld b, b
    ld b, l
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld d, c
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
    ld sp, $5242
    ld b, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    jr z, jr_01a_6dd2

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
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
    and h
    rst $28
    xor $37
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $30

jr_01a_6dd2:
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $a4
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $27
    ld a, $4b
    ld c, b
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $44
    ld c, a
    ld c, h
    ld e, [hl]
    ld a, $4f
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $24
    ccf
    ld b, d
    ld c, e
    ld b, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld h, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld a, $4b
    ld d, c
    ld b, d
    ld d, b
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld b, e
    ld b, e
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $28
    ld c, c
    ld b, d
    ld b, e
    ld a, $4b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
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
    rst $28
    xor $2f
    ld e, h
    ld d, h
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, d
    ld a, $44
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, [hl]
    ld h, h
    jr z, jr_01a_6f27

    ld c, e
    ld a, [$eff7]
    xor $24
    ld b, e
    ld b, e
    ld b, d
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
    xor $28
    ld c, c
    ld b, d
    ld b, e
    ld a, $4b
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, @+$4d

    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    dec [hl]
    ld e, e
    ld d, d
    ld c, d
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld e, h

jr_01a_6f27:
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $25
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld b, [hl]
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
    ld h, h
    ld d, d
    ld c, e
    ld d, b
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
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, d
    ccf
    ld c, e
    ld b, d
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
    ld sp, $5152
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $2a
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, d
    ld b, h
    ld a, $4b
    ld b, h
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
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
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    inc l
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld b, d
    ld d, b
    rst $28
    xor $42
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld sp, $403e
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    inc b
    rlca
    ld h, c
    rst $28
    xor $39
    ld c, h
    ld c, c
    ld c, c
    ld c, d
    ld c, h
    ld c, e
    ld b, c
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    scf
    ld a, $44
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
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
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld h, b
    ld h, h
    rst $28
    xor $51
    ld a, $52
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ccf
    ld b, d
    ld b, c
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld h, b
    rst $28
    xor $51
    ld a, $52
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ccf
    ld b, d
    ld b, c
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_01a_714a

    ld b, c
    ld b, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $4b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01a_7169

    ld c, e
    ld h, h
    scf
    ld a, $44
    ld h, b
    rst $28
    xor $3e
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $42
    ld c, e

jr_01a_714a:
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c

jr_01a_7169:
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    add hl, sp
    ld c, h
    ld c, a
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $49
    ld a, $4b
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr c, @+$51

    ld a, $45
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ccf
    ld e, h
    ld d, b
    ld b, d
    ld c, e
    ld h, h
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
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld c, l
    ld b, d
    ld c, a
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_01a_7257

    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, e
    ld c, h
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    sbc h
    rst $28
    xor $51
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld a, $4a
    ld h, h
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, h
    ld d, a

jr_01a_7257:
    ld d, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld a, $4b
    ld d, b
    ld d, c
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_01a_72bb

    ld b, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    dec l
    ld a, $45
    ld c, a
    ld b, d
    rst $28
    xor $41
    ld a, $4b
    ld a, $40
    ld b, l
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, a
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
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c

jr_01a_72bb:
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$5c2e], a
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
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
    jr nc, jr_01a_735d

    ld c, a
    ld h, h
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld c, h
    ccf
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    and h
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
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d

jr_01a_735d:
    ld a, [$eff7]
    xor $33
    ld c, h
    ld d, b
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    dec l
    ld a, $66
    rst $28
    xor $2e
    ld a, $4b
    ld c, e
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
    scf
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld a, [$eff7]
    xor $2b
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $65
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
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
    xor $37
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld c, a
    ld d, b
    ld d, c
    ld a, $52
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, sp
    ld c, h
    ld c, a
    ccf
    ld b, [hl]
    ld c, c
    ld b, c
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_01a_74c9

    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    dec l
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    jr z, jr_01a_7501

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, a
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld l, $5c
    ld c, e

jr_01a_74c9:
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    dec hl
    ld a, $44
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h

jr_01a_7501:
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld [hl], $46
    ld b, c
    ld c, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld a, [$eff7]
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$5c2e], a
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    dec a
    ld c, h
    ld c, d
    ld a, $fa
    rst $30
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$5c2e], a
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    jr z, jr_01a_7609

    ld d, c
    ld a, $4f
    ld c, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$5c2e], a
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65

jr_01a_7609:
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    jr nc, jr_01a_7668

    ld b, c
    ld c, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $ef
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
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
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    rst $28
    xor $30

jr_01a_7668:
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
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
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    jr c, jr_01a_7718

    ld b, [hl]
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld c, d
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
    dec h
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $4b
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]

jr_01a_7718:
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
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
    add hl, sp
    ld b, d
    ld c, a
    ld b, h
    ld b, d
    ld e, [hl]
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, l
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
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld d, b
    ld d, b
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
    ld h, b
    ld h, h
    ld d, h
    ld a, $4f
    ld d, d
    ld c, d
    ld a, [$eff7]
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
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
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
    xor $53
    ld b, d
    ld c, a
    ld a, $4b
    ld d, b
    ld d, c
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld a, $4b
    ld d, a
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr nc, @+$5d

    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $3f
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld c, h
    ld h, h
    ld d, h
    ld a, $4f
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
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
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
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
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
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
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $52
    ld c, l
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec l
    ld a, $61
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld h, c
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
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    rst $28
    xor $2a
    ld b, d
    ld b, e
    ld e, l
    ld b, l
    ld c, c
    ld h, b
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld c, h
    ccf
    ld h, h
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ccf
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    rst $28
    xor $45
    ld a, $3f
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
    jr nc, jr_01a_7a45

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld d, b
    ld c, l
    ld e, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, d
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
    ld h, c
    ld h, a
    ld a, [$eff7]

jr_01a_7a45:
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ccf
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
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_01a_7a9b

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, h
    ld b, d
    ld c, a
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
    inc l
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld a, $3f
    ld b, d

jr_01a_7a9b:
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld h, c
    ld h, a
    rst $30
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
    xor $51
    ld a, $51
    ld d, b
    ld e, e
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
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
    ld b, c
    ld a, $4b
    ld c, e
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
    xor $64
    ld b, d
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
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
    xor $25
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, a
    ld h, c
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
    ld h, h
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
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
    xor $25
    ld a, $50
    ld a, $4f
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld a, $4f
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, b
    ld c, h
    ld c, h
    ld c, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
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
    ld h, l
    rst $28
    xor $2b
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
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
    ld sp, $403e
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    jr z, jr_01a_7c64

    ld b, c
    sbc h
    rst $28
    xor $3f
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01a_7ca6

    ld h, l
    ld h, h
    ld a, [hl-]
    ld c, h
    ld h, h
    ld d, h
    ld a, $4f
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, h

jr_01a_7c64:
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    ld a, [$eff7]
    xor $3d
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, [hl]
    ld h, h
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    rst $28
    xor $4f
    ld d, d
    ld b, l
    ld b, [hl]
    ld b, h
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
    rst $28

jr_01a_7ca6:
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, d
    ld c, d
    ld b, d
    ld c, c
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
    and h
    inc h
    ccf
    ld b, d
    ld c, a
    and h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld [hl], $4c
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $36
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $42
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    dec hl
    ld a, $52
    ld h, h
    ld a, $3f
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, l
    ld a, $66
    ld h, h
    ld [hl], $3e
    ld b, h
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, l
    ld h, a
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
