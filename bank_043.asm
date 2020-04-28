; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]

    ld b, e
    daa
    ld b, c
    ld c, e
    ld b, c
    ld l, a
    ld b, c
    dec bc
    ld b, b
    ld b, a
    ld b, b
    sub e
    ld b, c
    ld l, l
    ld b, e
    ld de, $5044
    ld b, h
    xor b
    ld b, h
    jp hl


    ld b, h
    pop hl
    ld b, [hl]
    ld b, c
    ld b, a
    ld [hl], l
    ld b, a
    sub [hl]
    ld b, a
    cp e
    ld b, a
    ld [c], a
    ld b, a
    and d
    ld c, b
    or b
    ld c, b
    ld l, $49
    ld [hl], b
    ld c, c
    and e
    ld c, c
    or a
    ld c, c
    ld c, h
    ld c, d
    ld h, d
    ld c, d
    sbc d
    ld c, d
    rst $10
    ld c, d
    add hl, sp
    ld c, e
    ld d, e
    ld c, e
    cp e
    ld c, e
    db $d3
    ld c, e
    ld d, a
    ld c, h
    ld a, [c]
    ld c, h
    inc hl
    ld c, l
    ld e, c
    ld c, l
    add hl, sp
    ld c, [hl]
    add a
    ld c, [hl]
    ld sp, hl
    ld c, [hl]
    ld c, d
    ld c, a
    xor l
    ld c, a
    db $f4
    ld c, a
    dec a
    ld d, b
    ld c, a
    ld d, b
    sub c
    ld d, b
    cp [hl]
    ld d, c
    add sp, $51
    daa
    ld d, d
    ld h, d
    ld d, d
    ld a, b
    ld d, d
    add e
    ld d, d
    or h
    ld d, d
    ld d, a
    ld d, e
    ld l, l
    ld d, h
    and [hl]
    ld d, h
    dec a
    ld d, l
    ld sp, $c756
    ld d, a
    ld l, $58
    ld d, b
    ld e, b
    ld d, l
    ld e, c
    or c
    ld e, c
    ld [hl], h
    ld e, d
    sbc $5a
    ld b, b
    ld e, e
    ret c

    ld e, e
    ld [hl], h
    ld e, h
    add d
    ld e, l
    call $905d
    ld e, [hl]
    sbc a
    ld e, [hl]
    dec bc
    ld e, a
    ld b, d
    ld e, a
    and [hl]
    ld e, a
    ccf
    ld h, b
    sub [hl]
    ld h, b
    xor h
    ld h, b
    rst $28
    ld h, b
    add hl, bc
    ld h, c
    ld c, b
    ld h, c
    ld l, b
    ld h, c
    and a
    ld h, c
    add hl, de
    ld h, d
    ld b, [hl]
    ld h, d
    and l
    ld h, d
    pop bc
    ld h, d
    db $dd
    ld h, d
    ld sp, hl
    ld h, d
    ld d, b
    ld h, e
    ld l, h
    ld h, e
    adc b
    ld h, e
    and h
    ld h, e
    pop af
    ld h, e
    rrca
    ld h, h
    ld c, [hl]
    ld h, h
    ld a, b
    ld h, h
    or d
    ld h, h
    push hl
    ld h, h
    ld [hl], b
    ld h, l
    sub $65
    rla
    ld h, [hl]
    or b
    ld h, [hl]
    call z, $2366
    ld h, a
    cpl
    ld h, a
    ei
    ld h, a
    add hl, sp
    ld l, b
    ld l, h
    ld l, b
    ret nc

    ld l, b
    ld a, b
    ld l, c
    db $e3
    ld l, c
    ld b, c
    ld l, d
    ld b, d
    ld l, e
    ld e, $6c
    cp l
    ld l, h
    ld l, [hl]
    ld l, l
    sbc b
    ld l, l
    inc [hl]
    ld l, [hl]
    ret z

    ld l, [hl]
    ld hl, sp+$6e
    ld c, a
    ld l, a
    ld a, [hl]
    ld l, a
    sub d
    ld l, a
    ld c, $70
    ld [hl], l
    ld [hl], b
    cp d
    ld [hl], b
    ld b, c
    ld [hl], c
    ld e, a
    ld [hl], c
    ld a, h
    ld [hl], c
    sub b
    ld [hl], c
    push bc
    ld [hl], c
    or $71
    db $ed
    ld [hl], d
    adc h
    ld [hl], e
    call nz, $0573
    ld [hl], h
    ld h, e
    ld [hl], h
    sbc d
    ld [hl], h
    db $e4
    ld [hl], h
    ld d, c
    ld [hl], l
    adc d
    ld [hl], l
    jp $e975


    ld [hl], l
    ld d, $76
    inc h
    db $76
    ld a, [hl]
    db $76
    adc [hl]
    db $76
    xor l
    db $76

Call_043_4127:
    ld a, [$c822]
    cp $01
    jr nz, jr_043_4144

    ld a, [$c823]
    cp $70
    jr c, jr_043_4144

    sub $70
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1a00
    rst $10
    ret


jr_043_4144:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_043_4168

    ld a, [$c823]
    cp $70
    jr c, jr_043_4168

    sub $70
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1a01
    rst $10
    ret


jr_043_4168:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_043_418c

    ld a, [$c823]
    cp $70
    jr c, jr_043_418c

    sub $70
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1a02
    rst $10
    ret


jr_043_418c:
    call Call_043_4127
    call $0609
    ret


    ld [$649f], a
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
    rst $28
    xor $46
    ld c, d
    ld h, h
    ld l, $4c
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $25
    ld b, d
    ld c, a
    ld e, l
    ld b, l
    ld c, d
    ld d, c
    ld b, l
    ld b, d
    ld b, [hl]
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $5b
    ld c, c
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    dec h
    ld d, d
    ld c, e
    ld c, e
    ld d, [hl]
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
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
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $52
    ld c, d
    ld h, h
    ld b, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $52
    ld c, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    rst $28
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
    ld h, h
    ld l, $4c
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
    rst $28
    xor $44
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $67
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, a
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
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    rst $28
    xor $2a
    ld h, h
    ld a, $4b
    ld h, b
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    ld h, h
    add hl, hl
    ld h, b
    ld h, h
    jr z, jr_043_4343

    ld a, [$eff7]
    xor $27
    ld h, h
    ld d, d
    ld d, b
    ld d, h
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
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $35
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    ld h, h
    ld b, c
    ld a, $50

jr_043_4343:
    rst $28
    xor $4a
    ld a, $49
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
    ld h, [hl]
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld a, [hl+]
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $52
    ld c, d
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
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
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $51
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
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
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $28
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $47
    ld a, $64
    ld d, d
    ld c, d
    ld h, h
    dec [hl]
    ld a, $51
    ld h, h
    ld b, e
    ld c, a
    ld a, $44
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
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
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld a, [hl+]
    ld a, [$eff7]
    xor $4d
    ld c, a
    ld c, h
    ccf
    ld c, c
    ld b, d
    ld c, d
    ld c, c
    ld c, h
    ld d, b
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld c, d
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $61
    ld h, h
    jr nc, jr_043_449b

    ld b, [hl]
    ld c, e
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, l
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $2e
    ld c, h
    ld c, d
    ld c, d
    ld h, h
    ccf

jr_043_449b:
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld b, [hl]
    ld c, d
    rst $28
    xor $2e
    ld c, h
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
    ld h, l
    ld a, [$eff7]
    xor $25
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_043_452d

    ld c, b
    ld c, c
    ld e, e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_043_453f

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    dec [hl]
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    rst $28
    xor $57
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $61
    ld h, h
    ld [hl], $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld e, h
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]

jr_043_452d:
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    rst $28

jr_043_453f:
    xor $4a
    ld e, l
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    jr nc, jr_043_4599

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld c, e
    ld d, c
    ld c, a
    ld b, d
    ld d, c
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    dec [hl]
    ld a, $4b

jr_043_4599:
    ld b, h
    rst $28
    xor $42
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$44

    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $60
    ld h, h
    ld c, [hl]
    ld d, d
    ld a, $49
    ld b, [hl]
    ld b, e
    ld b, [hl]
    sbc h
    ld a, [$eff7]
    xor $57
    ld b, [hl]
    ld b, d
    ld c, a
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
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld l, b
    ld d, b
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld e, e
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld b, d
    ld d, b
    ld h, h
    ld b, c
    ld e, l
    ld c, a
    ld b, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $25
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_043_4681

    ld b, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $25
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld a, $44
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
    ld h, h
    ld a, [hl-]
    jr z, jr_043_46a5

    rst $28
    xor $54
    ld e, e
    ld b, l
    ld c, c

jr_043_4681:
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, h
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c

jr_043_46a5:
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld c, a
    ld e, l
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld c, d
    ld h, h
    jr z, jr_043_4717

    ld c, l
    ld b, e
    ld a, $4b
    ld b, h
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, c
    ld c, a
    ld a, $44
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
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld a, [hl+]
    sbc h
    dec [hl]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $44

jr_043_4717:
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
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
    rst $28
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_043_479b

    ld a, $3e
    ld a, $65
    ld h, l
    ld h, h
    ld [hl], $4d
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, a
    ld c, e
    ld b, d
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
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, h
    dec h
    ld b, d
    ld d, c
    ld a, $51
    ld d, b
    ld b, b
    ld b, l
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
    ldh a, [$2c]
    ld c, a
    ld b, h
    ld b, d
    ld c, e

jr_043_479b:
    ld b, c
    ld d, h
    ld c, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld b, l
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    and h
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec a
    ld d, d
    ld d, c
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, [hl]
    ld c, c
    ld c, e
    ld b, d
    ld b, l
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
    ld a, [hl+]
    ld d, d
    and h
    ld b, h
    ld d, d
    and h
    ld b, h
    ld d, d
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $37
    ld a, $44
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    and h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld a, [$eff7]
    xor $37
    ld b, d
    ld h, h
    scf
    ld b, d
    ld h, h
    scf
    ld b, d
    ld h, h
    scf
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
    xor $4b
    ld b, d
    ld c, a
    ld d, e
    ld e, h
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, b
    ld h, h
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_043_4899

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
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
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
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

jr_043_4899:
    ld b, [hl]
    ld c, h
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
    ld a, [hl+]
    ld e, e
    ld b, l
    ld c, e
    and h
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
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $38
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld e, l
    ccf
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    daa
    ld a, $50
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $4b
    ld e, l
    ld d, c
    ld d, a
    ld c, c
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
    ld c, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $29
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $4d
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld h, h
    add hl, hl
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    rst $28
    xor $51
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
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
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, b
    ld h, h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $33
    ld a, $4d
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld a, $4b
    ld b, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld c, c
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
    daa
    ld d, d
    ld h, h
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl-]
    ld a, $45
    ld c, c
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, l
    ld a, $4b
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $25
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld e, l
    ld c, a
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $35
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $65
    ld h, h
    jr z, jr_043_4a85

    ld c, e
    ld d, b
    and h
    rst $28
    xor $57
    ld d, h
    ld b, d
    ld b, [hl]
    ld h, b
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_043_4a98

    ld e, [hl]
    ld d, c
    ld h, l
    rst $28
    xor $31
    ld c, h
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $2e
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $57
    ld b, d
    ld b, [hl]

jr_043_4a85:
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a

jr_043_4a98:
    rst $30
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
    ld h, b
    ld b, [hl]
    ld c, e
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    add hl, hl
    ld a, $49
    ld c, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    rst $28
    xor $2b
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $65
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $61
    ld h, h
    daa
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, h
    ld a, $50
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld b, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld b, l
    ld c, h
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, c
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
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld c, h
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $29
    ld c, a
    ld a, $52
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld d, b
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $49
    ld d, b
    ld c, h
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $3d
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
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
    and h
    ld d, c
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld h, h
    dec b
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_043_4c2c

    ld b, c
    ld b, l
    ld a, $4b
    ld b, c
    ld h, b
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
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
    daa
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld b, d
    ld d, b
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld b, d
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d

jr_043_4c2c:
    ld c, a
    ld h, h
    ld l, $4b
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld d, e
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
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
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
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld d, b
    sbc h
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ld b, h
    ld c, h
    ld d, c
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $61
    rst $28
    xor $2a
    ld c, a
    ld d, d
    ld c, e
    ld b, c
    ld c, a
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $31
    ld c, a
    ld h, c
    ld h, h
    ld bc, $64a3
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, h
    rst $28
    xor $50
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, b
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $4d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld h, c
    rst $28
    xor $2b
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, a
    ld h, h
    ld l, $4b
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    ld h, c
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
    scf
    ld d, [hl]
    ld c, l
    ld h, h
    ld a, $4a
    rst $28
    xor $2e
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, $4b
    ld b, h
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $35
    ld b, [hl]
    ld d, e
    ld a, $49
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_043_4da1

    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld b, [hl]
    ld d, e
    ld a, $49
    ld b, d
    rst $28
    xor $3f
    ld b, d
    ld d, h
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
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
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
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
    ld h, h
    jr nc, jr_043_4ddf

jr_043_4da1:
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $4b
    ld c, e
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
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
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h

jr_043_4ddf:
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, b
    ld c, c
    ld a, $4b
    ld b, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_043_4e48

    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $31
    ld d, d
    ld h, h
    ld c, l
    ld c, c
    ld a, $51
    ld d, c
    ld b, h
    ld b, d
    sbc h
    rst $28
    xor $4a
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
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e

jr_043_4e48:
    ld h, h
    scf
    ld c, h
    ld c, l
    ld b, e
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $31
    ld c, h
    ld d, c
    ld b, [hl]
    ld d, a
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    scf
    ld b, l
    ld b, d
    ld c, d
    ld a, $64
    jr z, @+$51

    ld d, a
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $2f
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    rst $38
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
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $31
    ld c, h
    ld d, c
    ld b, [hl]
    ld d, a
    ld h, c
    ld a, [$eff7]
    xor $67
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld h, h
    dec b
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_043_4f0d

    ld b, c
    ld b, l
    ld a, $4b
    ld b, c
    ld h, b
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, l
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_043_4f4e

    ld h, h
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $3e

jr_043_4f0d:
    ld d, d
    ld b, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $42
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $2c
    ld sp, $6137
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a

jr_043_4f4e:
    jr c, jr_043_4f93

    ld b, e
    ld h, l
    ld h, h
    inc sp
    ld b, e
    ld d, d
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
    jr nc, jr_043_4fa6

    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    dec hl
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld c, h

jr_043_4f93:
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $43
    ld c, a
    ld d, d
    ld d, b
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, a

jr_043_4fa6:
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $663e
    ld h, h
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
    ld a, [hl+]
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, d
    ld h, h
    jr z, jr_043_5048

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
    rst $28
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
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, d
    ld c, c
    ld b, c
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
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
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
    rst $30
    ldh a, [$ea]
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

jr_043_5048:
    ld d, c
    ld h, c
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
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $28
    ld c, a
    ld c, c
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $3d
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    ld h, h
    ld b, l
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld a, $52
    ld c, d
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    rst $28
    xor $2b
    ld b, d
    ld d, d
    ld b, l
    ld c, h
    ld c, l
    ld d, b
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $3d
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld e, e
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $2a
    ld c, a
    ld b, d
    ld c, d
    ld c, c
    ld b, [hl]
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld a, $61
    rst $28
    xor $25
    ld a, $52
    ld c, d
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $47
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    sbc h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld c, h
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    rst $28
    xor $2b
    ld b, d
    ld d, d
    ld b, l
    ld c, h
    ld c, l
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $2e
    ld c, a
    ld e, e
    ld b, e
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld a, $4a
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
    daa
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, hl
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld a, $51
    ld b, d
    ld c, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $44
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld sp, $4542
    ld c, d
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld e, l
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    rst $28
    xor $2e
    ld c, a
    ld e, e
    ld d, d
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
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
    xor $50
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $28
    ld c, a
    ld c, c
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld h, c
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
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_043_5254

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    ld a, [hl-]
    ld a, $40
    ld b, l
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4d
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $4b
    ld a, $40
    ld b, l
    ld h, b
    ld h, h
    dec h
    ld b, d
    ccf
    ld b, d
    ld h, c
    ld a, [$eff7]
    xor $27
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
    xor $36

jr_043_5254:
    ld a, $52
    ld d, b
    ld a, $44
    ld b, d
    ld h, b
    ld h, h
    ld d, b
    ld c, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    dec h
    ld b, d
    ccf
    ld b, d
    ld h, h
    ld h, a
    dec hl
    ld d, d
    ld a, $60
    ld h, h
    dec hl
    ld d, d
    ld a, $65
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    ld [hl], $3e
    ld d, d
    ld d, b
    ld a, $44
    ld b, d
    ld h, l
    rst $28
    xor $36
    ld a, $44
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3a
    jr c, jr_043_52e1

    ld [hl], $37
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld b, d
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_043_52e1:
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, c
    ld a, $4a
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $45
    ld a, $4f
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $3e
    ld c, e
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    scf
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
    rst $28
    xor $2f
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, h
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
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
    ld h, b
    ld h, h
    jr nc, jr_043_53b3

    and h
    ld a, [$eff7]
    xor $31
    ld b, d
    ld b, [hl]
    ld c, e
    and h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, @+$44

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
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
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h

jr_043_53b3:
    jr nc, jr_043_53f7

    ld b, c
    ld a, $46
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
    ld l, $3e
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d

jr_043_53f7:
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $36
    ld d, c
    ld e, l
    ld b, b
    ld c, b
    ld d, a
    ld a, $45
    ld c, c
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, c
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    rst $28
    xor $2a
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld c, b
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
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    scf
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld a, [$eff7]
    xor $37
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $28
    xor $fa
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
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
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
    xor $50
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, c
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
    ccf
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld h, h
    ld c, d
    ld e, h
    ld b, h
    ld b, d
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
    ld h, l
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
    daa
    ld d, d
    ld h, h
    jr nc, jr_043_5519

    ld b, c
    ld a, $46
    ld c, c
    sbc h
    rst $28
    xor $49
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $51
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d

jr_043_5519:
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $44
    ld b, d
    ccf
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $50
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
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_043_5594

    ld d, b
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
    xor $27
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    ld c, h
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28

jr_043_5594:
    xor $57
    ld d, d
    ld c, b
    ld e, l
    ld c, e
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
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
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $4b
    ld e, l
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    ld h, c
    rst $28
    xor $2c
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_043_5687

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld e, h
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_043_569c

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_043_56cc

    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h

jr_043_5687:
    ld a, [hl-]
    ld a, $45
    ld c, a
    sbc h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c

jr_043_569c:
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, e
    ld e, l
    ld d, c
    sbc h
    rst $28
    xor $51
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld h, h
    ld d, c
    ld b, d
    ld d, d

jr_043_56cc:
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $29
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $45
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld a, $45
    ld c, a
    sbc h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld e, e
    ld d, d
    ld b, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    rst $28
    xor $43
    ld e, l
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$40

    ld c, e
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, c
    ld a, $3f
    ld b, d
    ld b, [hl]
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld d, c
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
    ld d, a
    ld d, d
    ld c, c
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $4f52
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
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
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_043_5813

    ld c, e
    ld b, d
    ld c, e
    ld h, h
    scf
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    sbc h
    rst $28
    xor $4b
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $51
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $27
    ld b, [hl]

jr_043_5813:
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
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
    ld b, [hl]
    ld b, d
    rst $28
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
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld a, $43
    ld b, d
    ld c, c
    ld h, c
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
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
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_043_58d2

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $49
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld e, e
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a

jr_043_58d2:
    ld a, [$eff7]
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
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
    jr z, jr_043_5936

    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld a, $3f
    sbc h
    rst $28
    xor $54
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_043_5957

    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld b, d
    rst $28
    xor $2c
    ld c, e
    ld d, c
    ld h, c
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]

jr_043_5936:
    ld b, d
    ld h, b
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, c
    ld d, d
    ld c, e
    ld a, [$eff7]
    xor $4a
    ld e, l
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h

jr_043_5957:
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld a, $43
    ld b, d
    ld c, c
    ld h, c
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_043_59b3

    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $4b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $37
    ld a, $44
    ld h, c
    ld h, h
    scf
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a

jr_043_59b3:
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
    ld h, h
    ld b, e
    ld e, e
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $5e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld b, h
    ld b, d
    ld d, h
    ld c, h
    ld b, h
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
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ld d, d
    ld b, e
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld h, h
    ld a, $4b
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
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
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, d
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
    ld [hl], $4c
    ld c, c
    ld b, c
    and h
    add hl, hl
    ld b, d
    ld c, c
    ld d, b
    and h
    ld [hl], $4c
    ld c, c
    ld b, c
    and h
    rst $28
    xor $25
    ld d, d
    ccf
    ccf
    ld c, c
    ld b, d
    and h
    ld [hl], $4c
    ld c, c
    ld b, c
    and h
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld b, b
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
    ld b, b
    and h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    and h
    ld [hl], $4c
    ld c, c
    ld b, c
    and h
    rst $28
    xor $29
    ld b, d
    ld c, c
    ld d, b
    and h
    ld [hl], $4c
    ld c, c
    ld b, c
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $3e
    ld c, d
    ld h, h
    jr z, @+$4c

    ld c, l
    ld b, e
    ld a, $4b
    ld b, h
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld c, e
    ld a, $52
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    rst $28
    xor $25
    ld d, d
    ld c, e
    ld c, e
    ld d, [hl]
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $3e
    ld c, c
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, c
    ld h, c
    ld h, h
    daa
    ld b, [hl]
    ld b, d
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $50
    ld d, d
    ld b, b
    ld b, l
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
    ld b, d
    ld c, a
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
    ld b, d
    rst $28
    xor $42
    ld b, l
    ld c, a
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
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
    jr c, jr_043_5c61

    ld b, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld a, [hl+]
    ld a, $50
    ld d, c
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    sbc h
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
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

jr_043_5c61:
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld sp, $4046
    ld b, [hl]
    ld h, c
    rst $28
    xor $3a
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld a, $4b
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, d
    sbc h
    rst $28
    xor $4a
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, c
    ld h, h
    scf
    ld b, a
    ld a, $61
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld l, b
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
    inc h
    ld c, e
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_043_5d42

    ld b, d
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
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
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld b, d
    ld c, e

jr_043_5d42:
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
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
    xor $36
    ld d, c
    ld a, $4f
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
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
    rst $28
    xor $45
    ld b, [hl]
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
    ld [hl], $51
    ld a, $4f
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ld h, c
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
    xor $27
    ld a, $4a
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2b
    ld b, d
    ld c, a
    ld c, a
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
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, a
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
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $f6
    ld h, l
    ld a, [$eff7]
    xor $27
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld a, $52
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, c
    ld h, h
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $42
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    dec [hl]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $51
    ld a, $4f
    ld d, c
    ld h, l
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
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    rst $28
    xor $44
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld a, $4b
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
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
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $35
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $2f
    ld a, $5e
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
    xor $44
    ld b, d
    ld b, l
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
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld h, h
    ld b, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld a, $4b
    ld h, h
    ld b, c
    ld b, d
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
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec l
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
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $41
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    dec [hl]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, c
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
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_043_6045

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld b, d
    ld d, b
    ld h, h
    ld a, [hl+]
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld b, d
    ld b, [hl]
    ld b, h
    ld l, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, b
    rst $28
    xor $54
    ld a, $50
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, c

jr_043_6045:
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
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2b
    ld b, d
    ld c, c
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
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
    jr z, @+$48

    ld c, e
    ld h, h
    inc h
    ld c, l
    ld c, l
    ld c, c
    ld a, $52
    ld d, b
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    or $65
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $4f
    ld a, $52
    ld d, c
    ld h, c
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $4f
    ld a, $52
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $3d
    ld d, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, c
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $2e
    ld c, a
    ld a, $52
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
    ldh a, [$f6]
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_043_6142

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld h, l
    rst $30
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_043_6152

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
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
    ld h, c
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, a

jr_043_6142:
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa

jr_043_6152:
    ld d, d
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $68
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_043_61a1

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld h, [hl]
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, [hl]
    ld h, h
    daa
    ld a, $50
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
    ld b, h
    ld d, d
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $27
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
    xor $3f
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l

jr_043_61a1:
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
    ld a, $4b
    ld c, e
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
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, h
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld b, d
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
    xor $fa
    rst $30
    rst $28
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    sbc h
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
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
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_043_624b

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $52
    ld c, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4c
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]

jr_043_624b:
    ld a, $4b
    ld d, a
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $28
    ld c, a
    ld b, c
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
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2f
    ld a, $4b
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $25
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
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
    ld a, [$eff7]
    xor $24
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    scf
    ld e, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $67
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $3a
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
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
    ld a, $50
    ld h, h
    add hl, hl
    ld a, $5e
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
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $67
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld d, h
    ld a, $4f
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld a, $50
    ld h, h
    add hl, hl
    ld a, $5e
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld a, [$f0f7]
    jr z, @+$48

    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_043_6458

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
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
    ld h, c
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $46

jr_043_6458:
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    add hl, hl
    ld a, $5e
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, c
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
    ld a, $50
    ld h, h
    add hl, hl
    ld a, $5e
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld b, c
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
    ld h, c
    rst $30
    ldh a, [$f6]
    ld h, h
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld b, l
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld b, l
    ld b, d
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld c, c
    ld b, d
    ld b, d
    ld c, a
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    scf
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4b
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
    add hl, hl
    ld c, a
    ld e, l
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld a, $3f
    ld l, b
    ld d, b
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld a, $50
    ld a, $4f
    ld h, c
    ld a, [$eff7]
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, h
    ccf
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, b
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
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    and h
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
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld e, e
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    and h
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld b, b
    ld h, a
    rst $28
    xor $f7
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
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld l, b
    ld d, b
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $2c
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
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_043_6687

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
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
    jr c, jr_043_66a3

    ld b, c
    ld h, [hl]
    ld h, h
    dec hl
    ld a, $50
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $2f
    ld b, [hl]
    ld b, d
    ccf
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld b, e
    ld d, d

jr_043_6687:
    ld c, e
    ld b, c
    ld b, d
    ld c, e
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, c

jr_043_66a3:
    rst $28
    xor $27
    ld d, d
    ld h, h
    inc h
    ld c, d
    ld c, h
    ld c, a
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
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
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
    ld b, l
    ld b, [hl]
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $2c
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
    xor $44
    ld b, d
    ld b, l
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
    ldh a, [$ea]
    ld sp, $4046
    ld b, l
    ld d, c
    ld d, b
    ld h, c
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, b
    ld b, d
    ld h, h
    or $65
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, a
    ld a, $64
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_043_6798

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_043_6798:
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, h
    ld l, $4c
    ld c, d
    ld c, d
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
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
    ld l, b
    ld d, b
    ld h, l
    ld h, h
    daa
    ld a, $ef
    xor $45
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld c, a
    ld e, l
    ld b, e
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    or $60
    rst $28
    xor $50
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
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
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $2f
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, c
    ld h, c
    ld c, h
    ld b, l
    ld h, l
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
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $41
    ld b, [hl]
    ld c, a
    ld h, b
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
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
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, a
    ld e, e
    ld b, l
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld a, $4b
    ld d, b
    ld d, c
    ld a, $49
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $4c
    ld b, c
    ld b, d
    ld c, a
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
    ld b, l
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $44
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld d, d
    ld b, b
    ld b, l
    ld h, [hl]
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
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld c, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, c
    ld h, [hl]
    ld a, [$eff7]
    xor $2c
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
    ld h, h
    ld l, $5c
    sbc h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, h
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    jr nc, jr_043_6a1a

    ld c, c
    ld d, c
    ld a, $61
    ld h, a
    rst $30
    ldh a, [$ea]
    jr nc, jr_043_6a24

    ld c, c
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $67
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $43
    ld c, a
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h

jr_043_6a1a:
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, l
    ld h, a

jr_043_6a24:
    ld a, [$eff7]
    xor $30
    ld a, $49
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $67
    dec hl
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $65
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc h
    inc h
    inc h
    inc h
    dec [hl]
    ld a, [hl+]
    dec hl
    ld h, l
    ld h, l
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
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
    or $65
    ld h, l
    rst $28
    xor $3a
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
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
    ld b, d
    ld c, a
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
    ld a, [$eff7]
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    jr z, jr_043_6b12

    ld b, b
    ld b, l
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
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, b
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

jr_043_6b12:
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
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    sbc h
    rst $28
    xor $4f
    ld a, $52
    ld c, d
    ld h, h
    ccf
    ld b, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    sbc h
    rst $28
    xor $51
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $2e
    ld c, h
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $35
    ld b, [hl]
    ld d, e
    ld a, $49
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, b
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, $4a
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, d
    ld b, [hl]
    ld c, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
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
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ccf
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
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
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
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, c
    ld a, $52
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
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
    ld c, e
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
    ld a, [hl-]
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld c, e
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
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld b, [hl]
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
    ld sp, $5152
    ld d, a
    ld b, d
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
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
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
    ldh a, [$f6]
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    scf
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
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
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    jr nc, jr_043_6df5

    ld c, d
    ld b, d
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
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $47
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
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

jr_043_6df5:
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $42
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    sbc h
    rst $28
    xor $3e
    ld b, l
    ld c, d
    ld b, d
    ld c, e
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
    ld h, h
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
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
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
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
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld b, a
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
    ld b, c
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
    inc l
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    jr nc, @+$48

    ld c, c
    ld c, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $53
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
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
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
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $3d
    ld b, [hl]
    ld d, e
    ld b, [hl]
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
    daa
    ld b, d
    ld c, a
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $29
    ld c, a
    ld a, $52
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
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
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
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $3a
    ld a, $40
    ld b, l
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, c
    rst $28
    xor $33
    ld b, e
    ld d, d
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_043_6fde

    ld c, e
    ld h, h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $25
    ld b, d
    ld c, a
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, b
    ld d, c
    ld b, d

jr_043_6fde:
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld c, h
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $41
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, [hl]
    rst $28
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, @+$40

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
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld h, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
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
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld a, $49
    ld b, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $44
    ld a, $4b
    ld d, a
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, c
    ld a, $ef
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
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
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld e, h
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $42
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    rst $28
    xor $42
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    xor h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld b, [hl]
    ccf
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, b
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    ld a, [hl-]
    ld a, $50
    rst $28
    xor $4a
    ld a, $44
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, [hl]
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
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld a, $50
    ld a, $4f
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, c
    ld b, d
    ld b, d
    ld c, a
    ld h, c
    rst $28
    xor $f7
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
    xor $39
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $29
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $31
    ld e, l
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, c
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
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $3e
    ld c, e
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld c, h
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    ld c, h
    ld c, d
    ld c, d
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
    jr nc, jr_043_72c4

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
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
    ld l, $3e
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, a
    ld a, $ef
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, d

jr_043_72c4:
    ld a, $49
    ld h, h
    ld c, b
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld b, d
    ld c, c
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
    ld c, d
    ld h, h
    jr nc, @+$4e

    ld c, d
    ld b, d
    ld c, e
    ld d, c
    rst $28
    xor $4f
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    ld h, h
    ld d, b
    ld c, h
    ld b, h
    ld a, $4f
    ld h, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $51
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
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $4b
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
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
    ld d, h
    ld c, h
    ld c, e
    ld c, e
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
    inc h
    ld c, d
    ld h, h
    ld c, c
    ld b, d
    ld d, c
    ld d, a
    ld d, c
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
    ld d, h
    ld a, $4f
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2f
    ld a, $41
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    cpl
    ld a, $41
    ld b, d
    ld c, e
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, c
    ld a, [$eff7]
    xor $28
    ld c, a
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
    ld d, b
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, b
    ld a, $52
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
    daa
    ld d, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_043_7450

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    rst $28
    xor $27
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $44
    ld a, $4f
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b

jr_043_7450:
    ld b, l
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $2b
    ld a, $52
    ld h, h
    ld a, $3f
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
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
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2a
    ld b, d
    ld c, c
    ld b, c
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld d, a
    ld d, d
    ld c, b
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$f6]
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld c, e
    ld b, d
    ld h, c
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
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
    xor $49
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld h, l
    ld h, h
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld c, e
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
    dec hl
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, h
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $29
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, l
    ld d, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ccf
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_043_75b6

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $29
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, l
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    ld h, c
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
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, a
    ld a, $ef
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld a, $4f
    ld d, b
    ld b, b
    ld b, l
    ld l, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, [hl]

jr_043_75b6:
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
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld h, l
    ld h, [hl]
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
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
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $f9
    nop
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$f6]
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $f9
    nop
    ld h, l
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld c, h
    ld d, h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $5e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld c, h
    ld d, h
    ld a, $50
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    ld b, d
    ld d, b
    rst $28
    xor $3f
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
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
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    rst $28
    xor $f9
    nop
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    scf
    ld c, h
    ld c, a
    ld a, [$eff7]
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
    ld h, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
