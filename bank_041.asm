; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

    ld b, c
    sub c
    ld c, d
    sbc b
    ld c, d
    sbc a
    ld c, d
    dec h
    ld b, b
    add hl, sp
    ld b, b
    ld bc, $e141
    ld b, c
    ld hl, $3743
    ld b, e
    scf
    ld b, l
    scf
    ld b, a
    push hl
    ld c, b
    dec a
    ld c, c
    sub l
    ld c, c
    bit 1, c
    dec d
    ld c, d
    add hl, de
    ld c, d
    ld a, c
    ld c, d
    and [hl]
    ld c, d
    and [hl]
    ld c, d
    and [hl]
    ld c, d
    and [hl]
    ld c, d
    inc h
    ld c, e
    ld l, l
    ld c, e
    ld a, a
    ld c, e
    sbc b
    ld c, e
    cp [hl]
    ld c, e
    ld c, $4c
    ld d, d
    ld c, h
    ld e, c
    ld c, h
    ld e, [hl]
    ld c, h
    ld e, [hl]
    ld c, h
    ld h, [hl]
    ld c, h
    ld l, l
    ld c, h
    ld [hl], e
    ld c, h
    ld a, c
    ld c, h
    ld a, l
    ld c, h
    add c
    ld c, h
    add a
    ld c, h
    adc a
    ld c, h
    sub a
    ld c, h
    sbc [hl]
    ld c, h
    and [hl]
    ld c, h
    xor [hl]
    ld c, h
    xor a
    ld c, h
    or a
    ld c, h
    cp [hl]
    ld c, h
    cp a
    ld c, h
    add $4c
    bit 1, h
    call z, $d44c
    ld c, h
    db $dd
    ld c, h
    sbc $4c
    rst $18
    ld c, h
    rst $20
    ld c, h
    add sp, $4c
    ldh a, [$4c]
    ld hl, sp+$4c
    nop
    ld c, l
    ld [$104d], sp
    ld c, l
    rla
    ld c, l
    ld e, $4d
    ld h, $4d
    daa
    ld c, l
    jr z, @+$4f

    add hl, hl
    ld c, l
    jr nc, jr_041_40d8

    ld [hl], $4d
    inc a
    ld c, l
    ld b, d
    ld c, l
    ld c, b
    ld c, l
    ld c, [hl]
    ld c, l
    ld d, h
    ld c, l
    ld e, d
    ld c, l
    ld e, [hl]
    ld c, l
    ld h, e
    ld c, l
    ld l, b
    ld c, l
    ld l, l
    ld c, l
    db $76
    ld c, l
    ld a, [hl]
    ld c, l
    add [hl]
    ld c, l
    adc [hl]
    ld c, l
    sub [hl]
    ld c, l
    sbc [hl]
    ld c, l
    and [hl]
    ld c, l
    xor l
    ld c, l
    or l
    ld c, l
    cp l
    ld c, l
    jp $c84d


    ld c, l
    ret nc

    ld c, l
    rst $10
    ld c, l
    sbc $4d
    rst $20
    ld c, l
    rst $28
    ld c, l
    rst $30
    ld c, l
    rst $38
    ld c, l
    rlca
    ld c, [hl]
    db $10
    ld c, [hl]
    jr jr_041_411b

    jr nz, @+$50

    jr z, jr_041_411f

    jr nc, @+$50

    jr c, jr_041_4123

    ld b, b
    ld c, [hl]
    ld c, b

jr_041_40d8:
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld d, a
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld h, [hl]
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    db $76
    ld c, [hl]
    ld a, l
    ld c, [hl]
    add l
    ld c, [hl]
    adc l
    ld c, [hl]
    sub l
    ld c, [hl]
    sbc l
    ld c, [hl]
    and l
    ld c, [hl]
    xor l
    ld c, [hl]
    or h
    ld c, [hl]
    cp e
    ld c, [hl]
    jp nz, $c94e

    ld c, [hl]
    ret nc

    ld c, [hl]
    ret c

    ld c, [hl]
    ldh [$4e], a
    pop hl
    ld c, [hl]
    db $e4
    ld c, [hl]
    ei
    ld c, [hl]
    inc c
    ld c, a
    ld hl, $324f
    ld c, a
    ld b, h
    ld c, a
    ld d, h
    ld c, a
    ld l, c
    ld c, a
    ld a, b
    ld c, a
    sub c
    ld c, a
    or b
    ld c, a
    cp l
    ld c, a

jr_041_411b:
    jp z, $d14f

    ld c, a

jr_041_411f:
    call nc, $e84f
    ld c, a

jr_041_4123:
    ld a, [c]
    ld c, a
    db $10
    ld d, b
    jr nz, jr_041_4179

    inc sp
    ld d, b
    ld c, [hl]
    ld d, b
    ld e, l
    ld d, b
    ld a, c
    ld d, b
    sub e
    ld d, b
    xor [hl]
    ld d, b
    ret


    ld d, b
    jp c, $3850

    ld d, c
    ld c, [hl]
    ld d, c
    ld [hl], h
    ld d, c
    sbc d
    ld d, c
    xor b
    ld d, c
    cp d
    ld d, c
    push bc
    ld d, c
    sub $51
    ld sp, hl
    ld d, c
    ld a, [bc]
    ld d, d
    daa
    ld d, d
    add hl, sp
    ld d, d
    ld d, a
    ld d, d
    ld l, d
    ld d, d
    and d
    ld d, d
    cp e
    ld d, d
    jp $ce52


    ld d, d
    jp c, $f552

    ld d, d
    ld [bc], a
    ld d, e
    ld c, e
    ld d, e
    ld d, [hl]
    ld d, e
    ld h, h
    ld d, e
    ld l, b
    ld d, e
    ld [hl], b
    ld d, e
    ld [hl], e
    ld d, e
    db $76
    ld d, e
    ld a, l
    ld d, e
    add h
    ld d, e
    adc l
    ld d, e
    sub d
    ld d, e

jr_041_4179:
    sub h
    ld d, e
    sub [hl]
    ld d, e
    sbc b
    ld d, e
    sbc d
    ld d, e
    sbc h
    ld d, e
    sbc [hl]
    ld d, e
    and b
    ld d, e
    and d
    ld d, e
    jp nz, $c853

    ld d, e
    db $fd
    ld d, e
    add hl, bc
    ld d, h
    dec d
    ld d, h
    cpl
    ld d, h
    ld c, d
    ld d, h
    ld e, c
    ld d, h
    sub l
    ld d, h
    xor d
    ld d, h
    or e
    ld d, h
    push bc
    ld d, h
    rst $18
    ld d, h
    ld [$1155], sp
    ld d, l
    dec h
    ld d, l
    dec [hl]
    ld d, l
    ld c, l
    ld d, l
    ld d, d
    ld d, l
    ld [hl], l
    ld d, l
    sbc e
    ld d, l
    cp b
    ld d, l
    call $cd55
    ld d, l
    call $1255
    ld d, [hl]
    ld [hl-], a
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld l, e
    ld d, [hl]
    ld [hl], h
    ld d, [hl]
    ld a, h
    ld d, [hl]
    add h
    ld d, [hl]
    adc a
    ld d, [hl]
    sub a
    ld d, [hl]
    sbc a
    ld d, [hl]
    xor b
    ld d, [hl]
    or b
    ld d, [hl]
    cp e
    ld d, [hl]
    push bc
    ld d, [hl]
    rst $08
    ld d, [hl]
    ret c

    ld d, [hl]
    rst $18
    ld d, [hl]
    ld [$f556], a
    ld d, [hl]
    or $56
    ei
    ld d, [hl]
    nop
    ld d, a
    dec b
    ld d, a
    ld a, [bc]
    ld d, a
    rrca
    ld d, a
    inc d
    ld d, a
    add hl, de
    ld d, a
    ld e, $57
    inc hl
    ld d, a
    jr z, @+$59

    dec l
    ld d, a
    ld [hl-], a
    ld d, a
    scf
    ld d, a
    inc a
    ld d, a
    ld b, c
    ld d, a
    ld b, l
    ld d, a
    ld c, c
    ld d, a
    ld c, [hl]
    ld d, a
    ld d, e
    ld d, a
    ld e, b
    ld d, a
    ld e, l
    ld d, a
    ld h, d
    ld d, a
    ld h, a
    ld d, a
    ld l, h
    ld d, a
    ld [hl], c
    ld d, a
    db $76
    ld d, a
    ld a, e
    ld d, a
    add b
    ld d, a
    add l
    ld d, a
    adc d
    ld d, a
    adc a
    ld d, a
    sub h
    ld d, a
    sbc c
    ld d, a
    sbc [hl]
    ld d, a
    and e
    ld d, a
    xor b
    ld d, a
    xor l
    ld d, a
    or d
    ld d, a
    or [hl]
    ld d, a
    cp e
    ld d, a
    ret nz

    ld d, a
    push bc
    ld d, a
    jp z, $cf57

    ld d, a
    call nc, $d957
    ld d, a
    sbc $57
    db $e3
    ld d, a
    add sp, $57
    db $ed
    ld d, a
    ld a, [c]
    ld d, a
    rst $30
    ld d, a
    db $fc
    ld d, a
    ld bc, $0658
    ld e, b
    dec bc
    ld e, b
    db $10
    ld e, b
    dec d
    ld e, b
    ld a, [de]
    ld e, b
    rra
    ld e, b
    inc h
    ld e, b
    jr z, jr_041_42b7

    dec l
    ld e, b
    ld sp, $3658
    ld e, b
    dec sp
    ld e, b
    ld b, b
    ld e, b
    ld b, l
    ld e, b
    ld c, d
    ld e, b
    ld c, [hl]
    ld e, b
    ld d, e
    ld e, b
    ld e, b
    ld e, b
    ld e, h
    ld e, b
    ld h, c
    ld e, b
    ld h, [hl]
    ld e, b
    ld l, e
    ld e, b
    ld [hl], b
    ld e, b
    ld [hl], l
    ld e, b
    ld a, d
    ld e, b
    ld a, [hl]
    ld e, b
    add e
    ld e, b
    adc b
    ld e, b
    adc h
    ld e, b
    sub c
    ld e, b
    sub [hl]
    ld e, b
    sbc e
    ld e, b
    and b
    ld e, b
    and l
    ld e, b
    xor d
    ld e, b
    xor a
    ld e, b
    or h
    ld e, b
    cp c
    ld e, b
    cp [hl]
    ld e, b
    jp $c858


    ld e, b
    call $d258
    ld e, b
    rst $10
    ld e, b
    call c, $e158
    ld e, b
    and $58
    db $eb
    ld e, b
    rst $28
    ld e, b
    db $f4
    ld e, b
    ld sp, hl
    ld e, b
    cp $58

jr_041_42b7:
    inc bc
    ld e, c
    ld [$0d59], sp
    ld e, c
    ld [de], a
    ld e, c
    ld d, $59
    dec de
    ld e, c
    jr nz, @+$5b

    inc h
    ld e, c
    add hl, hl
    ld e, c
    dec l
    ld e, c
    ld [hl-], a
    ld e, c
    scf
    ld e, c
    inc a
    ld e, c
    ld b, c
    ld e, c
    ld b, [hl]
    ld e, c
    ld c, e
    ld e, c
    ld d, b
    ld e, c
    ld d, l
    ld e, c
    ld e, d
    ld e, c
    ld e, a
    ld e, c
    ld h, e
    ld e, c
    ld l, b
    ld e, c
    ld l, l
    ld e, c
    ld [hl], d
    ld e, c
    ld [hl], a
    ld e, c
    ld a, h
    ld e, c
    add c
    ld e, c
    add [hl]
    ld e, c
    adc e
    ld e, c
    sub b
    ld e, c
    sub l
    ld e, c
    sbc d
    ld e, c
    sbc a
    ld e, c
    and h
    ld e, c
    xor c
    ld e, c
    xor [hl]
    ld e, c
    or e
    ld e, c
    cp b
    ld e, c
    cp l
    ld e, c
    jp nz, $c759

    ld e, c
    call z, $d159
    ld e, c
    sub $59
    db $db
    ld e, c
    ldh [$59], a
    push hl
    ld e, c
    ld [$ef59], a
    ld e, c
    db $f4
    ld e, c
    ld sp, hl
    ld e, c
    cp $59
    inc bc
    ld e, d
    ld [$0a5a], sp
    ld e, d
    inc c
    ld e, d
    ld c, $5a
    db $10
    ld e, d
    ld [de], a
    ld e, d
    inc d
    ld e, d
    ld d, $5a
    jr jr_041_438d

    ld a, [de]
    ld e, d
    inc e
    ld e, d
    dec e
    ld e, d
    daa
    ld e, d
    ld sp, $3b5a
    ld e, d
    ld b, l
    ld e, d
    ld c, a
    ld e, d
    ld d, a
    ld e, d
    ld e, [hl]
    ld e, d
    ld h, a
    ld e, d
    ld l, l
    ld e, d
    ld [hl], a
    ld e, d
    add c
    ld e, d
    adc e
    ld e, d
    sub l
    ld e, d
    sbc h
    ld e, d
    and l
    ld e, d
    xor a
    ld e, d
    cp b
    ld e, d
    jp nz, $ca5a

    ld e, d
    call nc, $de5a
    ld e, d
    rst $20
    ld e, d
    ldh a, [$5a]
    ld sp, hl
    ld e, d
    ld bc, $0a5b
    ld e, e
    inc d
    ld e, e
    dec e
    ld e, e
    inc h
    ld e, e
    dec l
    ld e, e
    dec [hl]
    ld e, e
    dec a
    ld e, e
    ld b, a
    ld e, e
    ld d, c
    ld e, e
    ld e, d
    ld e, e
    ld h, b
    ld e, e
    ld l, d
    ld e, e
    ld [hl], e
    ld e, e
    ld a, l
    ld e, e
    add a
    ld e, e
    adc [hl]
    ld e, e
    sub l
    ld e, e

jr_041_438d:
    sbc [hl]
    ld e, e
    and [hl]
    ld e, e
    xor a
    ld e, e
    or a
    ld e, e
    ret nz

    ld e, e
    rst $00
    ld e, e
    pop de
    ld e, e
    rst $10
    ld e, e
    db $dd
    ld e, e
    and $5b
    xor $5b
    ld hl, sp+$5b
    rst $38
    ld e, e
    add hl, bc
    ld e, h
    ld [de], a
    ld e, h
    add hl, de
    ld e, h
    ld hl, $265c
    ld e, h
    cpl
    ld e, h
    jr c, jr_041_4411

    ld b, b
    ld e, h
    ld c, d
    ld e, h
    ld d, e
    ld e, h
    ld e, e
    ld e, h
    ld h, l
    ld e, h
    ld l, h
    ld e, h
    ld [hl], h
    ld e, h
    ld a, h
    ld e, h
    add e
    ld e, h
    adc e
    ld e, h
    sub l
    ld e, h
    sbc a
    ld e, h
    xor b
    ld e, h
    or d
    ld e, h
    cp h
    ld e, h
    push bc
    ld e, h
    bit 3, h
    call nc, $de5c
    ld e, h
    add sp, $5c
    pop af
    ld e, h
    ei
    ld e, h
    inc b
    ld e, l
    dec bc
    ld e, l
    inc d
    ld e, l
    ld e, $5d
    jr z, @+$5f

    ld [hl-], a
    ld e, l
    inc a
    ld e, l
    ld b, e
    ld e, l
    ld c, h
    ld e, l
    ld d, l
    ld e, l
    ld e, h
    ld e, l
    ld h, [hl]
    ld e, l
    ld l, a
    ld e, l
    ld a, b
    ld e, l
    add d
    ld e, l
    adc e
    ld e, l
    sub l
    ld e, l
    sbc a
    ld e, l
    xor c
    ld e, l
    or e
    ld e, l
    cp c
    ld e, l
    pop bc
    ld e, l
    bit 3, l
    push de
    ld e, l

jr_041_4411:
    rst $18
    ld e, l
    and $5d
    rst $28
    ld e, l
    ld hl, sp+$5d
    rst $38
    ld e, l
    ld [$105e], sp
    ld e, [hl]
    add hl, de
    ld e, [hl]
    ld hl, $2b5e
    ld e, [hl]
    ld [hl-], a
    ld e, [hl]
    inc a
    ld e, [hl]
    ld b, l
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    add c
    ld e, [hl]
    adc d
    ld e, [hl]
    sub d
    ld e, [hl]
    sbc c
    ld e, [hl]
    and e
    ld e, [hl]
    xor c
    ld e, [hl]
    or e
    ld e, [hl]
    cp e
    ld e, [hl]
    call nz, $ce5e
    ld e, [hl]
    ret c

    ld e, [hl]
    pop hl
    ld e, [hl]
    jp hl


    ld e, [hl]
    ldh a, [$5e]
    ld a, [$035e]
    ld e, a
    rlca
    ld e, a
    inc c
    ld e, a
    inc d
    ld e, a
    dec e
    ld e, a
    dec h
    ld e, a
    dec hl
    ld e, a
    dec [hl]
    ld e, a
    ccf
    ld e, a
    ld c, b
    ld e, a
    ld c, l
    ld e, a
    ld d, l
    ld e, a
    ld e, e
    ld e, a
    ld h, c
    ld e, a
    ld l, d
    ld e, a
    ld [hl], e
    ld e, a
    ld a, l
    ld e, a
    add e
    ld e, a
    adc h
    ld e, a
    sub e
    ld e, a
    sbc h
    ld e, a
    and e
    ld e, a
    xor l
    ld e, a
    or a
    ld e, a
    cp [hl]
    ld e, a
    rst $00
    ld e, a
    bit 3, a
    push de
    ld e, a
    rst $18
    ld e, a
    and $5f
    ldh a, [$5f]
    or $5f
    ei
    ld e, a
    dec b
    ld h, b
    dec c
    ld h, b
    inc de
    ld h, b
    dec e
    ld h, b
    inc hl
    ld h, b
    add hl, hl
    ld h, b
    inc sp
    ld h, b
    dec a
    ld h, b
    ld b, l
    ld h, b
    ld c, a
    ld h, b
    ld d, a
    ld h, b
    ld e, [hl]
    ld h, b
    ld l, b
    ld h, b
    ld [hl], d
    ld h, b
    ld a, h
    ld h, b
    add [hl]
    ld h, b
    adc h
    ld h, b
    sub [hl]
    ld h, b
    sbc a
    ld h, b
    and l
    ld h, b
    xor [hl]
    ld h, b
    or h
    ld h, b
    cp e
    ld h, b
    push bc
    ld h, b
    rst $08
    ld h, b
    ret c

    ld h, b
    pop hl
    ld h, b
    rst $20
    ld h, b
    db $ec
    ld h, b
    push af
    ld h, b
    ld a, [$0160]
    ld h, c
    ld [$1261], sp
    ld h, c
    inc e
    ld h, c
    ld hl, $2861
    ld h, c
    cpl
    ld h, c
    ld [hl], $61
    ld b, b
    ld h, c
    ld b, [hl]
    ld h, c
    ld c, h
    ld h, c
    ld d, d
    ld h, c
    ld e, e
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld h, a
    ld h, c
    ld [hl], b
    ld h, c
    ld a, c
    ld h, c
    add d
    ld h, c
    adc b
    ld h, c
    sub d
    ld h, c
    sbc h
    ld h, c
    and d
    ld h, c
    xor d
    ld h, c
    or h
    ld h, c
    cp c
    ld h, c
    jp nz, $cb61

    ld h, c
    rst $08
    ld h, c
    rst $10
    ld h, c
    rst $18
    ld h, c
    jp hl


    ld h, c
    pop af
    ld h, c
    ei
    ld h, c
    rst $38
    ld h, c
    ld b, $62
    inc c
    ld h, d
    inc de
    ld h, d
    inc e
    ld h, d
    inc h
    ld h, d
    dec l
    ld h, d
    inc [hl]
    ld h, d
    inc a
    ld h, d
    ld b, h
    ld h, d
    ld c, l
    ld h, d
    ld d, [hl]
    ld h, d
    ld e, l
    ld h, d
    ld h, a
    ld h, d
    ld l, h
    ld h, d
    ld [hl], l
    ld h, d
    ld a, e
    ld h, d
    add l
    ld h, d
    adc e
    ld h, d
    sub d
    ld h, d
    sbc e
    ld h, d
    and h
    ld h, d
    xor [hl]
    ld h, d
    cp b
    ld h, d
    ret nz

    ld h, d
    push bc
    ld h, d
    adc $62
    rst $10
    ld h, d
    rst $18
    ld h, d
    jp hl


    ld h, d
    rst $28
    ld h, d
    ld sp, hl
    ld h, d
    nop
    ld h, e
    ld [$1063], sp
    ld h, e
    ld a, [de]
    ld h, e
    inc h
    ld h, e
    dec l
    ld h, e
    inc sp
    ld h, e
    ld a, [hl-]
    ld h, e
    ld b, d
    ld h, e
    ld c, d
    ld h, e
    ld d, c
    ld h, e
    ld e, d
    ld h, e
    ld h, d
    ld h, e
    ld l, e
    ld h, e
    ld [hl], l
    ld h, e
    ld a, a
    ld h, e
    adc b
    ld h, e
    sub c
    ld h, e
    sbc e
    ld h, e
    and l
    ld h, e
    xor a
    ld h, e
    cp c
    ld h, e
    jp nz, $cc63

    ld h, e
    sub $63
    ldh [$63], a
    ld [$f363], a
    ld h, e
    db $fd
    ld h, e
    inc b
    ld h, h
    dec bc
    ld h, h
    inc d
    ld h, h
    ld a, [de]
    ld h, h
    inc hl
    ld h, h
    inc l
    ld h, h
    dec [hl]
    ld h, h
    ld a, $64
    ld b, h
    ld h, h
    ld c, [hl]
    ld h, h
    ld e, b
    ld h, h
    ld e, [hl]
    ld h, h
    ld l, b
    ld h, h
    ld [hl], d
    ld h, h
    ld a, h
    ld h, h
    add [hl]
    ld h, h
    sub b
    ld h, h
    sbc d
    ld h, h
    and d
    ld h, h
    xor e
    ld h, h
    or l
    ld h, h
    cp l
    ld h, h
    add $64
    adc $64
    push de
    ld h, h
    sbc $64
    push hl
    ld h, h
    rst $28
    ld h, h
    ld hl, sp+$64
    ld bc, $0a65
    ld h, l
    inc d
    ld h, l
    ld a, [de]
    ld h, l
    ld [hl+], a
    ld h, l
    inc l
    ld h, l
    ld [hl], $65
    ccf
    ld h, l
    ld c, c
    ld h, l
    ld d, d
    ld h, l
    ld e, d
    ld h, l
    ld h, e
    ld h, l
    ld l, h
    ld h, l
    ld [hl], l
    ld h, l
    ld a, a
    ld h, l
    adc b
    ld h, l
    sub d
    ld h, l
    sbc c
    ld h, l
    sbc a
    ld h, l
    xor c
    ld h, l
    or e
    ld h, l
    cp l
    ld h, l
    rst $00
    ld h, l
    pop de
    ld h, l
    rst $10
    ld h, l
    db $dd
    ld h, l
    and $65
    db $ec
    ld h, l
    di
    ld h, l
    db $fc
    ld h, l
    dec b
    ld h, [hl]
    dec bc
    ld h, [hl]
    inc de
    ld h, [hl]
    ld a, [de]
    ld h, [hl]
    inc h
    ld h, [hl]
    ld l, $66
    dec [hl]
    ld h, [hl]
    ld a, $66
    ld b, a
    ld h, [hl]
    ld d, c
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, a
    ld h, [hl]
    ld l, c
    ld h, [hl]
    ld [hl], c
    ld h, [hl]
    ld a, e
    ld h, [hl]
    add d
    ld h, [hl]
    adc d
    ld h, [hl]
    sub c
    ld h, [hl]
    sbc d
    ld h, [hl]
    and c
    ld h, [hl]
    xor e
    ld h, [hl]
    or d
    ld h, [hl]
    cp c
    ld h, [hl]
    pop bc
    ld h, [hl]
    jp z, $d466

    ld h, [hl]
    sbc $66
    rst $20
    ld h, [hl]
    ldh a, [$66]
    ld sp, hl
    ld h, [hl]
    db $fd
    ld h, [hl]
    ld [bc], a
    ld h, a
    inc c
    ld h, a
    ld [de], a
    ld h, a
    dec de
    ld h, a
    dec h
    ld h, a
    cpl
    ld h, a
    ld [hl], $67
    inc a
    ld h, a
    ld b, [hl]
    ld h, a
    ld c, a
    ld h, a
    ld e, c
    ld h, a
    ld h, d
    ld h, a
    ld l, e
    ld h, a
    ld [hl], h
    ld h, a
    ld a, l
    ld h, a
    add a
    ld h, a
    sub c
    ld h, a
    sbc d
    ld h, a
    and e
    ld h, a
    xor h
    ld h, a
    or l
    ld h, a
    cp a
    ld h, a
    ret


    ld h, a
    db $d3
    ld h, a
    db $dd
    ld h, a
    db $e4
    ld h, a
    db $ed
    ld h, a
    push af
    ld h, a
    ei
    ld h, a
    ld bc, $0b68
    ld l, b
    dec d
    ld l, b
    ld e, $68
    daa
    ld l, b
    cpl
    ld l, b
    add hl, sp
    ld l, b
    ld b, d
    ld l, b
    ld c, e
    ld l, b
    ld d, c
    ld l, b
    ld e, e
    ld l, b
    ld h, e
    ld l, b
    ld l, l
    ld l, b
    ld [hl], l
    ld l, b
    ld a, [hl]
    ld l, b
    adc b
    ld l, b
    sub c
    ld l, b
    sbc d
    ld l, b
    and c
    ld l, b
    xor e
    ld l, b
    or d
    ld l, b
    cp d
    ld l, b
    jp nz, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $ca68

    ld l, b
    jp z, $cb68

    ld l, b
    adc $68
    pop de
    ld l, b
    call nc, $d768
    ld l, b
    jp c, $dd68

    ld l, b
    ldh [rBCPS], a
    db $e3
    ld l, b
    and $68
    jp hl


    ld l, b
    db $ec
    ld l, b
    rst $28
    ld l, b
    ld a, [c]
    ld l, b
    push af
    ld l, b
    ld hl, sp+$68
    ei
    ld l, b
    cp $68
    ld bc, $0469
    ld l, c
    rlca
    ld l, c
    ld a, [bc]
    ld l, c
    dec c
    ld l, c
    db $10
    ld l, c
    inc de
    ld l, c
    ld d, $69
    add hl, de
    ld l, c
    inc e
    ld l, c
    rra
    ld l, c
    ld [hl+], a
    ld l, c
    dec h
    ld l, c
    jr z, jr_041_47e0

    dec hl
    ld l, c
    ld l, $69
    ld sp, $3469
    ld l, c
    scf
    ld l, c
    ld a, [hl-]
    ld l, c
    dec a
    ld l, c
    ld b, b
    ld l, c
    ld b, e
    ld l, c
    ld b, [hl]
    ld l, c
    ld c, c
    ld l, c
    ld c, h
    ld l, c
    ld c, a
    ld l, c
    ld d, d
    ld l, c
    ld d, l
    ld l, c
    ld e, b
    ld l, c
    ld e, e
    ld l, c
    ld e, [hl]
    ld l, c
    ld h, c
    ld l, c
    ld h, h
    ld l, c
    ld h, a
    ld l, c
    ld l, d
    ld l, c
    ld l, l
    ld l, c
    ld [hl], b
    ld l, c
    ld [hl], e
    ld l, c
    db $76
    ld l, c
    ld a, c
    ld l, c
    ld a, h
    ld l, c
    ld a, a
    ld l, c
    add d
    ld l, c
    add l
    ld l, c
    adc b
    ld l, c
    adc e
    ld l, c
    adc [hl]
    ld l, c
    sub c
    ld l, c
    sub h
    ld l, c
    sub a
    ld l, c
    sbc d
    ld l, c
    sbc l
    ld l, c
    and b
    ld l, c
    and e
    ld l, c
    and [hl]
    ld l, c
    xor c
    ld l, c
    xor h
    ld l, c
    xor a
    ld l, c
    or d
    ld l, c
    or l
    ld l, c
    cp b
    ld l, c
    cp e
    ld l, c
    cp [hl]
    ld l, c
    pop bc
    ld l, c
    call nz, $c769

jr_041_47e0:
    ld l, c
    jp z, $cd69

    ld l, c
    ret nc

    ld l, c
    db $d3
    ld l, c
    sub $69
    reti


    ld l, c
    call c, $df69
    ld l, c
    ld [c], a
    ld l, c
    push hl
    ld l, c
    add sp, $69
    db $eb
    ld l, c
    xor $69
    pop af
    ld l, c
    db $f4
    ld l, c
    rst $30
    ld l, c
    ld a, [$fd69]
    ld l, c
    nop
    ld l, d
    inc bc
    ld l, d
    ld b, $6a
    add hl, bc
    ld l, d
    inc c
    ld l, d
    rrca
    ld l, d
    ld [de], a
    ld l, d
    dec d
    ld l, d
    jr jr_041_4881

    dec de
    ld l, d
    ld e, $6a
    ld hl, $246a
    ld l, d
    daa
    ld l, d
    ld a, [hl+]
    ld l, d
    dec l
    ld l, d
    jr nc, jr_041_4891

    inc sp
    ld l, d
    ld [hl], $6a
    add hl, sp
    ld l, d
    inc a
    ld l, d
    ccf
    ld l, d
    ld b, d
    ld l, d
    ld b, l
    ld l, d
    ld c, b
    ld l, d
    ld c, e
    ld l, d
    ld c, [hl]
    ld l, d
    ld d, c
    ld l, d
    ld d, h
    ld l, d
    ld d, a
    ld l, d
    ld e, d
    ld l, d
    ld e, l
    ld l, d
    ld h, b
    ld l, d
    ld h, e
    ld l, d
    ld h, [hl]
    ld l, d
    ld l, c
    ld l, d
    ld l, h
    ld l, d
    ld l, a
    ld l, d
    ld [hl], d
    ld l, d
    ld [hl], l
    ld l, d
    ld a, b
    ld l, d
    ld a, e
    ld l, d
    ld a, [hl]
    ld l, d
    add c
    ld l, d
    add h
    ld l, d
    add a
    ld l, d
    adc d
    ld l, d
    adc l
    ld l, d
    sub b
    ld l, d
    sub e
    ld l, d
    sub [hl]
    ld l, d
    sbc c
    ld l, d
    sbc h
    ld l, d
    sbc a
    ld l, d
    and d
    ld l, d
    and l
    ld l, d
    xor b
    ld l, d
    xor e
    ld l, d
    xor [hl]
    ld l, d
    or c
    ld l, d
    or h
    ld l, d
    or a
    ld l, d

jr_041_4881:
    cp d
    ld l, d
    cp l
    ld l, d
    ret nz

    ld l, d
    jp $c66a


    ld l, d
    ret


    ld l, d
    call z, $cf6a
    ld l, d

jr_041_4891:
    jp nc, $d56a

    ld l, d
    ret c

    ld l, d
    db $db
    ld l, d
    sbc $6a
    pop hl
    ld l, d
    db $e4
    ld l, d
    rst $20
    ld l, d
    ld [$ed6a], a
    ld l, d
    ldh a, [rOCPS]
    di
    ld l, d
    or $6a
    ld sp, hl
    ld l, d
    db $fc
    ld l, d
    rst $38
    ld l, d
    ld [bc], a
    ld l, e
    dec b
    ld l, e
    ld [$0b6b], sp
    ld l, e
    ld c, $6b
    ld de, $146b
    ld l, e
    rla
    ld l, e
    ld a, [de]
    ld l, e
    dec e
    ld l, e
    jr nz, jr_041_4932

    inc hl
    ld l, e
    ld h, $6b
    add hl, hl
    ld l, e
    inc l
    ld l, e
    cpl
    ld l, e
    ld [hl-], a
    ld l, e
    dec [hl]
    ld l, e
    jr c, jr_041_4942

    dec sp
    ld l, e
    ld a, $6b
    ld b, c
    ld l, e
    ld b, h
    ld l, e
    ld b, a
    ld l, e
    ld c, d
    ld l, e
    ld c, l
    ld l, e
    ld d, b
    ld l, e
    ld d, c
    ld l, e
    ld d, a
    ld l, e
    ld h, c
    ld l, e
    ld l, d
    ld l, e
    ld [hl], h
    ld l, e
    ld a, l
    ld l, e
    add [hl]
    ld l, e
    adc a
    ld l, e
    sbc b
    ld l, e
    and d
    ld l, e
    xor h
    ld l, e
    or l
    ld l, e
    cp [hl]
    ld l, e
    rst $00
    ld l, e
    ret nc

    ld l, e
    jp c, $e46b

    ld l, e
    xor $6b
    ld hl, sp+$6b
    rst $38
    ld l, e
    ld [$106c], sp
    ld l, h
    ld d, $6c
    inc e
    ld l, h
    ld h, $6c
    jr nc, jr_041_4987

    add hl, sp
    ld l, h
    ld b, d
    ld l, h
    ld c, d
    ld l, h
    ld d, e
    ld l, h
    ld e, h
    ld l, h
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld [hl], h
    ld l, h
    ld a, [hl]
    ld l, h
    add [hl]
    ld l, h
    adc a
    ld l, h
    sbc c

jr_041_4932:
    ld l, h
    sbc a
    ld l, h
    xor b
    ld l, h
    or d
    ld l, h
    cp b
    ld l, h
    pop bc
    ld l, h
    jp z, $cb6c

    ld l, h
    jp hl


jr_041_4942:
    ld l, h
    rlca
    ld l, l
    inc l
    ld l, l
    ld c, c
    ld l, l
    ld h, a
    ld l, l
    ld a, l
    ld l, l
    sbc b
    ld l, l
    or [hl]
    ld l, l
    rst $10
    ld l, l
    di
    ld l, l
    ld b, $6e
    inc h
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld h, d
    ld l, [hl]
    ld a, l
    ld l, [hl]
    sbc b
    ld l, [hl]
    or l
    ld l, [hl]
    push de
    ld l, [hl]
    push de
    ld l, [hl]
    push de
    ld l, [hl]
    db $e4
    ld l, [hl]
    db $fd
    ld l, [hl]
    inc c
    ld l, a
    ld hl, $3c6f
    ld l, a
    ld e, c
    ld l, a
    ld l, l
    ld l, a
    add l
    ld l, a
    and e
    ld l, a
    jp nz, $c26f

    ld l, a
    jp nz, $c26f

    ld l, a
    jp nz, $c26f

    ld l, a

jr_041_4987:
    db $db
    ld l, a
    ldh a, [$6f]
    ld [de], a
    ld [hl], b
    jr nc, jr_041_49ff

    ld d, c
    ld [hl], b
    ld [hl], h
    ld [hl], b
    sbc c
    ld [hl], b
    cp c
    ld [hl], b
    cp a
    ld [hl], b
    ret z

    ld [hl], b
    pop de
    ld [hl], b
    reti


    ld [hl], b
    pop hl
    ld [hl], b
    ld [$f470], a
    ld [hl], b
    db $fd
    ld [hl], b
    rlca
    ld [hl], c
    db $10
    ld [hl], c
    add hl, de
    ld [hl], c
    jr nz, jr_041_4a20

    daa
    ld [hl], c
    ld l, $71
    scf
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, a
    ld [hl], c
    ld c, [hl]
    ld [hl], c
    ld d, h
    ld [hl], c
    ld e, l
    ld [hl], c
    ld h, a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, d
    ld [hl], c
    ld a, a
    ld [hl], c
    add h
    ld [hl], c
    adc [hl]
    ld [hl], c
    sub e
    ld [hl], c
    xor l
    ld [hl], c
    jp z, $f771

    ld [hl], c
    ld de, $7672
    ld [hl], d
    adc l
    ld [hl], d
    and e
    ld [hl], d
    or [hl]
    ld [hl], d
    jp $d072


    ld [hl], d
    jp c, $de72

    ld [hl], d
    db $ec
    ld [hl], d
    db $ec
    ld [hl], d
    dec c
    ld [hl], e
    dec sp
    ld [hl], e
    add e
    ld [hl], e
    ret nz

    ld [hl], e
    reti


    ld [hl], e
    ldh a, [$73]
    ld a, [bc]
    ld [hl], h
    rra
    ld [hl], h
    inc sp
    ld [hl], h
    ld c, e
    ld [hl], h
    ld h, h
    ld [hl], h

jr_041_49ff:
    ld a, b
    ld [hl], h
    adc e
    ld [hl], h
    sbc e
    ld [hl], h
    or c
    ld [hl], h
    rst $00
    ld [hl], h
    add hl, sp
    ld [hl], l
    xor e
    ld [hl], l
    call $e075
    ld [hl], l
    cp $75
    ld [hl+], a
    db $76
    ld b, e
    db $76
    ld b, e
    db $76
    ld [hl], d
    db $76
    adc b
    db $76
    sbc b
    db $76
    xor d

jr_041_4a20:
    db $76
    jp nz, $d476

    db $76
    ld [$fc76], a
    db $76
    inc de
    ld [hl], a
    add hl, hl
    ld [hl], a
    ld b, a
    ld [hl], a
    ld e, a
    ld [hl], a
    add b
    ld [hl], a
    adc a
    ld [hl], a
    and a
    ld [hl], a
    pop de
    ld [hl], a
    ei
    ld [hl], a
    dec h
    ld a, b
    ld c, a
    ld a, b
    ld a, d
    ld a, b
    and d
    ld a, b
    or e
    ld a, b
    pop hl
    ld a, b
    inc l
    ld a, c
    inc a
    ld a, c
    ld e, d
    ld a, c
    ld [hl], c
    ld a, c
    adc e
    ld a, c
    and [hl]
    ld a, c
    cp h
    ld a, c
    rst $08
    ld a, c
    rst $18
    ld a, c
    ei
    ld a, c
    ld [hl+], a
    ld a, d
    ld c, e
    ld a, d
    ld a, e
    ld a, d
    xor b
    ld a, d
    ret c

    ld a, d
    ei
    ld a, d
    ld d, $7b
    cpl
    ld a, e
    ld h, c
    ld a, e
    xor h
    ld a, e
    cp l
    ld a, e
    call c, $eb7b
    ld a, e
    ld [de], a
    ld a, h
    dec hl
    ld a, h
    ld c, h
    ld a, h
    ld e, h
    ld a, h
    ld l, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    sub a
    ld a, h
    xor a
    ld a, h
    sub $7c
    xor $7c
    ld de, $427d
    ld a, l
    ld c, [hl]
    ld a, l
    ld [hl], b
    ld a, l

Call_041_4a91:
    ld de, $4007
    call $05b6
    ret


    ld de, $4007
    call $05f6
    ret


    call Call_041_4a91
    call $0609
    ret


    sub [hl]
    ld h, h
    daa
    jr z, @+$27

    jr c, @+$2c

    ld h, h
    jr nc, jr_041_4ae2

    daa
    jr z, @-$0d

    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $28
    cpl
    jr z, jr_041_4ae2

    scf
    ld h, h
    ld h, h
    ld h, h
    sub a
    pop af
    ld bc, $2aa3
    ld [hl-], a
    scf
    ld [hl-], a
    ld h, h
    inc sp
    dec [hl]
    ld [hl-], a
    ld a, [hl+]
    dec [hl]
    inc h
    jr nc, jr_041_4b35

    ld h, h
    ld [bc], a
    and e
    jr nc, jr_041_4b08

    ld sp, $3736
    jr z, jr_041_4b10

    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h

jr_041_4ae2:
    inc bc
    and e
    ld a, [hl+]
    inc h
    jr nc, jr_041_4b10

    ld h, h
    jr z, jr_041_4b12

    inc l
    scf
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc b
    and e
    ld [hl], $32
    jr c, jr_041_4b29

    daa
    ld h, h
    scf
    jr z, jr_041_4b33

    scf
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec b
    and e
    dec h
    inc h
    scf
    scf

jr_041_4b08:
    cpl
    jr z, jr_041_4b6f

    jr z, jr_041_4b34

    inc l
    scf
    ld h, h

jr_041_4b10:
    ld h, h
    ld h, h

jr_041_4b12:
    ld h, h
    ld h, h
    ld h, h
    sbc h
    ld h, h
    dec a
    jr c, @+$37

    ld e, d
    ld h, $2e
    ld h, h
    sbc h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ldh a, [$64]
    sbc h
    ld h, h
    jr z, jr_041_4b50

jr_041_4b29:
    inc l
    scf
    ld h, h
    sbc h
    pop af
    pop af
    ld l, $3e
    ld c, a
    ld d, c

jr_041_4b33:
    ld b, d

jr_041_4b34:
    ld h, h

jr_041_4b35:
    ld sp, $614f
    pop af
    ld [hl], $51
    ld c, h
    ld b, b
    ld c, b
    pop af
    jr nc, jr_041_4b8d

    ld c, e
    ld d, a
    ld a, $45
    ld c, c
    pop af
    jr nc, jr_041_4b95

    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld bc, $30f1

jr_041_4b50:
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld [bc], a
    pop af
    jr nc, jr_041_4ba5

    ld c, e
    ld d, b
    ld d, c
    ld h, h
    inc bc
    pop af
    daa
    ld d, d
    ld c, d
    ld c, d
    ld d, [hl]
    ld h, h
    ld h, h
    pop af
    daa
    ld b, d
    ccf
    ld d, d
    ld b, h
    ldh a, [$64]
    nop

jr_041_4b6f:
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$2409], sp
    dec h
    ld h, $27
    jr z, jr_041_4ba7

    ldh a, [$64]
    ld h, h
    sbc h
    ld h, h

jr_041_4b83:
    ld [hl], $32
    jr c, jr_041_4bb8

    daa
    ld h, h
    sbc h
    pop af
    pop af
    ld h, h

jr_041_4b8d:
    ld h, h
    dec h
    ld a, [hl+]
    jr nc, jr_041_4b83

    ld h, h
    ld h, h
    ld h, h

jr_041_4b95:
    ld [hl], $28
    ldh a, [$9c]
    ld h, h
    ld a, [hl+]
    ld [hl-], a
    scf
    ld [hl-], a
    inc sp
    dec [hl]
    ld a, [hl+]
    ld h, h
    sbc h
    pop af
    pop af

jr_041_4ba5:
    pop af
    ld h, h

jr_041_4ba7:
    inc sp
    dec [hl]
    ld a, [hl+]
    ld sp, $0132
    pop af
    ld h, h
    inc sp
    dec [hl]
    ld a, [hl+]
    ld sp, $0232
    pop af
    ld h, h
    inc sp

jr_041_4bb8:
    dec [hl]
    ld a, [hl+]
    ld sp, $0332
    ldh a, [$37]
    inc l
    scf
    cpl
    jr z, @+$66

    sbc l
    ld bc, $6464
    ld a, [hl+]
    inc h
    jr nc, jr_041_4bf4

    ld h, h
    ld h, h
    ld h, h
    dec h
    inc h
    scf
    scf
    cpl
    jr z, jr_041_4c3a

    jr z, jr_041_4c11

    scf
    daa
    jr z, jr_041_4c0c

    ld [hl-], a
    ld h, h
    ld h, h
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    ld h, h
    ld h, h
    ld h, h
    jr z, jr_041_4c12

    add hl, hl
    jr z, jr_041_4c12

    scf
    ld h, h
    ld h, h
    dec [hl]
    jr z, @+$38

    jr c, @+$31

jr_041_4bf4:
    scf
    ld h, h
    daa
    jr z, jr_041_4c1e

    jr c, jr_041_4c25

    ld h, h
    sbc l
    ld [bc], a

jr_041_4bfe:
    ld [hl-], a
    dec h
    dec l
    scf
    jr z, jr_041_4c3a

    scf
    ld h, h
    ld sp, $6432
    jr nc, jr_041_4c3d

    dec [hl]

jr_041_4c0c:
    jr z, jr_041_4bfe

    sbc h
    ld h, h
    dec h

jr_041_4c11:
    inc h

jr_041_4c12:
    scf
    scf
    cpl
    jr z, jr_041_4c7b

    sbc h
    pop af
    pop af
    ld a, [hl+]
    ld b, h
    ld h, h
    dec a

jr_041_4c1e:
    ld a, $45
    ld c, c
    pop af
    jr nc, @+$4e

    ld c, e

jr_041_4c25:
    ld d, b
    ld d, c
    ld bc, $30f1
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld bc, $30f1
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld [bc], a
    pop af
    jr nc, jr_041_4c85

    ld c, e

jr_041_4c3a:
    ld d, b
    ld d, c
    ld [bc], a

jr_041_4c3d:
    pop af
    jr nc, jr_041_4c8c

    ld c, e
    ld d, b
    ld d, c
    inc bc
    pop af
    jr nc, jr_041_4c93

    ld c, e
    ld d, b
    ld d, c
    inc bc
    pop af
    daa
    ld d, d
    ld c, d
    ld c, d
    ld d, [hl]
    ldh a, [$31]
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ldh a, [rNR50]
    ld d, d
    ld d, c
    ld c, h
    ldh a, [$37]
    ld b, d
    ld a, $4a
    ld sp, $614f
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ldh a, [$36]
    ld d, c
    ld a, $41
    ld d, c
    ldh a, [rNR51]
    ld a, $57
    ld a, $4f
    ldh a, [$37]
    ld c, h

jr_041_4c7b:
    ld c, a
    ldh a, [$2b]
    ld c, h
    ld b, e
    ldh a, [rNR51]
    ld h, c
    dec hl
    ld c, h

jr_041_4c85:
    ld b, e
    ldh a, [$2e]
    ld c, h
    ld c, c
    ld c, c
    ld c, h

jr_041_4c8c:
    ld d, b
    ld bc, $2ef0
    ld c, h
    ld c, c
    ld c, c

jr_041_4c93:
    ld c, h
    ld d, b
    ld [bc], a
    ldh a, [$2a]
    ld b, d
    ld c, a
    ld e, e
    ld d, c
    ld h, [hl]
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ldh a, [$3a]
    jr nc, jr_041_4ceb

    ld b, c
    ld a, $46
    ld c, c
    ldh a, [$f0]
    jr z, jr_041_4cf7

    ld c, l
    ld c, a
    ld c, h
    ld b, e
    ld b, [hl]
    ldh a, [$28]
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ldh a, [$f0]
    dec h
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ldh a, [$29]
    ld c, a
    ld a, $52
    ldh a, [$f0]
    dec h
    ld b, [hl]
    ccf
    ld c, c
    ld b, [hl]
    ld c, h
    ld d, c
    ldh a, [rNR51]
    ld b, [hl]
    ccf
    ld c, c
    ld a, $44
    ld b, d
    ld c, a
    ldh a, [$f0]
    ldh a, [$30]
    ld b, d
    ld b, c
    ld c, d
    ld a, $4b
    ld c, e
    ldh a, [$f0]
    dec h
    ld c, a
    ld d, d

jr_041_4ceb:
    ld c, e
    ld c, e
    ld b, d
    ld [bc], a
    ldh a, [$30]
    ld a, $41
    ld b, l
    ld a, $4b
    ld b, c

jr_041_4cf7:
    ldh a, [rWX]
    ld a, $4a
    ld b, d
    ld b, h
    ld b, d
    ccf
    ldh a, [rNR51]
    ld b, l
    ld a, $52
    ld d, b
    ld h, h
    cpl
    ldh a, [rNR51]
    ld b, l
    ld a, $52
    ld d, b
    ld h, h
    dec [hl]
    ldh a, [$36]
    ld b, b
    ld b, l
    ld d, d
    ld c, c
    ld b, d
    ldh a, [$2e]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    ldh a, [$2e]
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ldh a, [$f0]
    ldh a, [$f0]
    scf
    ld c, h
    ld c, a
    ld h, h
    ld [hl-], a
    inc sp
    ldh a, [$37]
    ld c, h

jr_041_4d32:
    ld c, a
    ld h, h
    ld a, [hl+]
    ldh a, [$37]
    ld c, h
    ld c, a
    ld h, h
    add hl, hl
    ldh a, [$37]
    ld c, h
    ld c, a
    ld h, h
    jr z, jr_041_4d32

    scf
    ld c, h
    ld c, a
    ld h, h
    daa
    ldh a, [$37]
    ld c, h
    ld c, a
    ld h, h
    ld h, $f0
    scf
    ld c, h
    ld c, a
    ld h, h
    dec h
    ldh a, [$37]
    ld c, h
    ld c, a
    ld h, h
    inc h
    ldh a, [$37]
    ld c, h
    ld c, a
    ldh a, [$37]
    ld c, h
    ld c, a
    ld bc, $37f0
    ld c, h
    ld c, a
    ld [bc], a
    ldh a, [$37]
    ld c, h
    ld c, a
    inc bc
    ldh a, [$37]
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld a, $52
    ld d, b
    ldh a, [rNR51]
    ld c, a
    ld d, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ldh a, [$36]
    ld d, d
    dec hl
    ld e, h
    ld b, l
    ld c, c
    ld b, d
    ldh a, [$30]
    ld b, d
    ld c, a
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, c
    ldh a, [$30]
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$3a]
    ld a, $49
    ld b, c
    inc l
    ld c, d
    ld c, a
    ldh a, [$27]
    ld c, h
    ld c, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $f0
    ld h, $3e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, h
    ldh a, [$2a]
    ld c, h
    ld d, c
    ld d, c
    ld d, d
    ld c, a
    ld c, d
    ldh a, [$2f]
    ld c, h
    ld c, e
    ld b, c
    ld a, $4f
    ld b, b
    ldh a, [$2f]
    ld b, d
    ld c, e
    ld d, d
    ld c, a
    ldh a, [rNR50]
    ld c, a
    ld c, l
    ld b, d
    ldh a, [$37]
    ld e, e
    ld c, e
    ld d, a
    ld b, d
    ld c, a
    ld b, [hl]
    ldh a, [rNR50]
    dec hl
    ld e, h
    ld b, l
    ld c, c
    ld b, d
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, [hl]
    ldh a, [$2a]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    cpl
    ld a, $4b
    ldh a, [$2f]
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, b
    ld c, h
    ld b, c
    ldh a, [$33]
    ld c, a
    ld e, l
    ld b, e
    ld d, c
    ld d, d
    ld bc, $33f0
    ld c, a
    ld e, l
    ld b, e
    ld d, c
    ld d, d
    ld [bc], a
    ldh a, [$30]
    ld d, [hl]
    ld b, l
    ld e, h
    ld b, l
    ld c, c
    ld b, d
    ldh a, [$2a]
    ld b, d
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld c, e
    ld b, [hl]
    ldh a, [$2d]
    ld a, $4d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, d
    ldh a, [$2b]
    ld e, h
    ld c, c
    ld d, h
    ld c, h
    ld c, c
    ld c, b
    ldh a, [$27]
    ld c, a
    ld [hl], $40
    ld b, l
    ld c, c
    ld c, h
    ldh a, [$2b]
    ld a, $44
    ld c, h
    ld c, l
    ld a, $49
    ldh a, [rNR51]
    ld a, $49
    ld [hl], $40
    ld b, l
    ld c, c
    ldh a, [$3d]
    ld c, h
    ld c, d
    ld a, $36
    ld b, b
    ld b, l
    ldh a, [rNR51]
    ld b, d
    ld c, a
    ld b, h
    ld b, h
    ld b, [hl]
    ld c, l
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld b, d
    ld c, d
    ld d, c
    ldh a, [rNR51]
    ld e, h
    ld d, b
    ccf
    ld b, d
    ld c, a
    ld b, h
    ldh a, [$30]
    ld d, d
    ld b, c
    ld c, h
    ld [hl], $40
    ld b, l
    ldh a, [$27]
    ld b, [hl]
    ld c, d
    ld [hl], $40
    ld b, l
    ldh a, [$36]
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld d, c
    ld l, $f0
    inc l
    ld d, c
    ld b, d
    ld c, d
    cpl
    ld a, $41
    ldh a, [$2e]
    ld b, [hl]
    ld c, a
    ld b, b
    ld b, l
    ld b, d
    ldh a, [rNR52]
    ld c, h
    ld c, c
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ldh a, [$2c]
    ld c, a
    ld c, a
    ld a, [hl-]
    ld a, $49
    ld b, c
    ldh a, [$35]
    ld d, d
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld bc, $35f0
    ld d, d
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld [bc], a
    ldh a, [$35]
    ld d, d
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    inc bc
    ldh a, [$2f]
    ld a, $3f
    ld d, [hl]
    ld c, a
    ld b, [hl]
    ld bc, $2ff0
    ld a, $3f
    ld c, a
    ld d, [hl]
    ld [bc], a
    ldh a, [$2f]
    ld a, $3f
    ld c, a
    ld d, [hl]
    inc bc
    ldh a, [$30]
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld c, b
    ld bc, $30f0
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld c, b
    ld [bc], a
    ldh a, [$30]
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld c, b
    inc bc
    ldh a, [$2e]
    ld a, $4a
    daa
    ld b, d
    ld c, d
    ld c, h
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    dec h
    ld a, [hl+]
    ldh a, [$f0]
    ld sp, hl
    nop
    ldh a, [$f9]
    db $10
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    pop af
    ld d, h
    ld b, d
    ld b, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld a, $4f
    ld b, e
    pop af
    ld sp, hl
    db $10
    ld h, h
    ld d, h
    ld b, d
    ld b, h
    ld h, l
    rst $30
    ldh a, [$2b]
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld c, d
    ld e, h
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, h
    ld h, l
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld b, h
    ld a, $3f
    ld h, h
    ld sp, hl
    db $10
    pop af
    ld a, $4b
    ld h, h
    ld sp, hl
    jr nz, jr_041_4fa7

    rst $30
    ldh a, [$2e]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld c, b
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    rst $30
    ldh a, [$36]
    ld c, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, [hl]
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, c
    pop af
    ld sp, hl
    nop
    ld h, c
    rst $30
    ldh a, [$2c]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld sp, $4a3e
    ld b, d
    pop af
    ld sp, hl
    nop
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, [hl]
    ldh a, [rNR51]
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    pop af
    ld sp, $4a3e
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]

jr_041_4fa7:
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$2a]
    jr z, jr_041_4fd8

    jr z, jr_041_4fe0

    ld [hl-], a
    cpl
    jr z, jr_041_4fe1

    ld sp, $2827
    ldh a, [$2c]
    scf
    jr z, jr_041_4ff1

    ld a, [hl+]
    jr z, jr_041_4ff3

    daa
    jr z, jr_041_4ff8

    daa
    jr z, @-$0e

    ld sp, $4046
    ld b, l
    ld d, c
    ld d, b
    ldh a, [$28]
    ld b, [hl]
    ldh a, [$3a]
    ld b, [hl]
    ld c, a
    ld b, c

jr_041_4fd8:
    ld h, h
    ld sp, hl
    db $10
    pop af
    ld sp, hl
    nop
    ld h, h
    ccf

jr_041_4fe0:
    ld b, d

jr_041_4fe1:
    ld c, e
    ld a, $4b
    ld c, e
    ld d, c
    ld h, [hl]
    ldh a, [$28]
    ld sp, $2827
    inc h
    dec hl
    ld sp, $3128

jr_041_4ff1:
    ldh a, [$f9]

jr_041_4ff3:
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, e

jr_041_4ff8:
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    pop af
    dec a
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
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld a, $52
    ld b, e
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$3a]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    ld d, h
    ld b, d
    ld b, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$f9]
    db $10
    ld h, h
    ld a, $3f
    ld b, h
    ld b, d
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld h, b
    pop af
    ld sp, hl
    nop
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
    ldh a, [$f6]
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    pop af
    ld sp, hl
    nop
    ld a, [hl+]
    ld h, c
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    pop af
    dec a
    ld d, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, c
    ld b, c
    ld h, c
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, l
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, a
    ld d, d
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, a
    ld d, d
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$f6]
    pop af
    ld b, l
    ld a, $51
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$2e]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ccf
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, d
    ld c, e
    ld b, h
    pop af
    ld d, e
    ld c, h
    ld c, a
    ld b, l
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld a, [$f2f7]
    dec h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld c, l
    ld c, a
    ld e, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ccf
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, d
    ld c, e
    ld b, h
    ld a, [$f2f7]
    ld d, d
    ld c, e
    ld b, c
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
    pop af
    ld [hl], $46
    ld b, d
    ld l, b
    ld d, b
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    ld h, c
    rst $30
    ldh a, [$3a]
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    pop af
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ldh a, [$2c]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    pop af
    ld bc, $3064
    ld c, h
    ld c, e
    ld d, b
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
    ld h, c
    rst $30
    ldh a, [$27]
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    pop af
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
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    rst $30
    ldh a, [rNR51]
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    and h
    ldh a, [$33]
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [rNR50]
    ccf
    ld b, h
    ld b, d
    ld c, c
    ld b, d
    ld b, l
    ld c, e
    ld d, c
    ld h, c
    ldh a, [$3a]
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $3f
    ld b, h
    ld b, d
    ld c, c
    ld b, d
    ld b, l
    ld c, e
    ld d, c
    ld h, c
    ldh a, [$27]
    ld a, $50
    ld h, h
    jr z, jr_041_522b

    ld b, h
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, h
    ld [hl-], a
    ld l, $66
    ldh a, [$33]
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, c
    ldh a, [$30]
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    pop af
    ld a, $52
    ld d, b
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$3a]
    ld a, $50
    ld h, h

jr_041_522b:
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, [hl]
    ldh a, [$31]
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    pop af
    ld a, $52
    ld d, b
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    rst $30
    ldh a, [$2e]
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    jr nc, jr_041_52ae

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    rst $30
    ldh a, [$2e]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_041_52bd

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld b, e
    pop af
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, c
    ld h, h
    inc h
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$f2f7]
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    inc sp
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, b
    ld h, c
    pop af
    rst $30
    ldh a, [$3a]
    ld a, $50
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    ld h, h
    ld b, c

jr_041_52ae:
    ld b, d
    ld c, a
    pop af
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld h, [hl]
    ldh a, [rNR51]
    ld b, d

jr_041_52bd:
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, [hl]
    ldh a, [$2f]
    ld c, h
    ld d, b
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld d, b
    ld h, l
    ldh a, [rNR50]
    ccf
    ld b, h
    ld b, d
    ld c, c
    ld b, d
    ld b, l
    ld c, e
    ld d, c
    ld h, c
    ld h, h
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $3f
    ld b, h
    ld b, d
    ld c, c
    ld b, d
    ld b, l
    ld c, e
    ld d, c
    ld h, c
    ldh a, [$2e]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    inc sp
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, b
    ld h, c
    rst $30
    ldh a, [$28]
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld c, l
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    ld a, [$f2f7]
    daa
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, c
    rst $30
    ldh a, [$33]
    cpl
    inc h
    scf
    dec a
    ld h, h
    add hl, hl
    dec [hl]
    jr z, jr_041_5381

    ldh a, [$2a]
    ld b, d
    ld d, b
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    rst $30
    ldh a, [rNR51]
    ld c, c
    ld a, $f0
    jr z, jr_041_53b3

    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, [hl]
    ldh a, [$2b]
    inc sp
    ldh a, [$30]
    inc sp
    ldh a, [$36]
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ldh a, [rNR50]
    ccf
    ld d, h
    ld b, d

jr_041_5381:
    ld b, l
    ld c, a
    ldh a, [rNR50]
    ld b, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ldh a, [$2c]
    ld c, e
    ld d, c
    ld h, c
    ldh a, [$ae]
    ldh a, [$af]
    ldh a, [$a9]
    ldh a, [$b0]
    ldh a, [$b1]
    ldh a, [$ad]
    ldh a, [$b2]
    ldh a, [$b3]
    ldh a, [$2b]
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    pop af
    ld c, e
    ld b, [hl]
    ld b, b

jr_041_53b3:
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    rst $30
    ldh a, [rDMA]
    ld c, b
    ld c, h
    or h
    ld h, h
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld a, [$f2f7]
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld sp, hl
    db $10
    pop af
    ld sp, hl
    nop
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld a, $4b
    ld c, e
    ld d, c
    ld h, [hl]
    ldh a, [$2a]
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld a, [$f0f7]
    add hl, sp
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    and h
    ld a, [$f0f7]
    ld sp, hl
    db $10
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
    pop af
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$f9]
    db $10
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
    pop af
    ld sp, hl
    nop
    ld h, h
    ld a, $3f
    ld b, h
    ld b, d
    ld b, l
    ld c, h
    ld c, c
    ld d, c
    ld h, c
    rst $30
    ldh a, [$3a]
    jr z, @+$37

    ld [hl], $37
    inc h
    scf
    ld [hl-], a
    ld l, $30
    ld [hl-], a
    ld sp, $2c28
    ldh a, [$27]
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
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld h, l
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld d, c
    ld a, $52
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$f9]
    db $10
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    pop af
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, c
    rst $30
    ldh a, [$30]
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    inc h
    ld d, d
    ld d, b
    ld d, h
    ld a, $45
    ld c, c
    ld h, [hl]
    ldh a, [$30]
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, d
    pop af
    ld a, $52
    ld d, b
    ld d, c
    ld a, $52
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$30]
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    pop af
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
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
    rst $30
    ldh a, [$30]
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ldh a, [$2e]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld b, l
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$30]
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, d
    ld h, h
    jr z, jr_041_5579

    ld h, [hl]
    ldh a, [$f9]
    db $10
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, e
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
    ld h, c
    rst $30
    ldh a, [$2a]
    jr z, jr_041_557f

    daa
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $4d
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld [hl-], a
    ld l, $66
    and $f0
    dec h
    ld b, d
    ld b, d
    ld c, e

jr_041_5579:
    ld b, c
    ld b, d
    ld d, c
    ld h, c
    ld h, h
    dec h

jr_041_557f:
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $50
    pop af
    ld a, [hl+]
    ld b, d
    ld c, a
    ld e, e
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld d, b
    ld b, b
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$27]
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, a
    ld e, e
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    pop af
    ld a, $52
    ld d, b
    ld d, b
    ld b, b
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [rNR51]
    jr c, jr_041_55e1

    dec hl
    dec hl
    ld [hl-], a
    add hl, hl
    jr nc, jr_041_55f3

    ld sp, $2636
    dec hl
    cpl
    inc h
    add hl, hl
    jr z, jr_041_55f6

    or h
    sbc e
    ldh a, [$28]
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    scf

jr_041_55e1:
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, c
    ld h, h
    daa
    ld a, $45
    ld b, d
    ld c, a
    ld a, [$f2f7]
    ld c, b
    ld a, $4b

jr_041_55f3:
    ld c, e
    ld h, h
    ld b, d

jr_041_55f6:
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$30]
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    pop af
    dec hl
    ld c, h
    ld b, e
    ld h, h
    ld a, $52
    ld d, b
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$36]
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, b
    ld a, $4a
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld d, a
    ld d, d
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld a, [$f2f7]
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld e, [hl]
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    pop af
    rst $30
    ldh a, [$36]
    ld d, c
    ld a, $4f
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$3d]
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$3a]
    ld a, $40
    ld b, l
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$30]
    ld b, d
    ld c, d
    ld c, h
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$3d]
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$35]
    ld d, d
    ld b, l
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$30]
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    ldh a, [$33]
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$3a]
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    ldh a, [$29]
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$2a]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$2a]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$36]
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$2c]
    ld c, a
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$38]
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$36]
    ld c, l
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$f0]
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld d, c
    ldh a, [$35]
    ld d, d
    ld c, b
    ld d, [hl]
    ldh a, [$36]
    ld b, [hl]
    ld c, c
    ld d, a
    ldh a, [rNR51]
    ld c, h
    ld b, a
    ld b, d
    ldh a, [$33]
    ld b, [hl]
    ld b, d
    ld c, a
    ldh a, [$36]
    ld c, c
    ld d, d
    ld b, b
    ldh a, [$30]
    ld b, d
    ld c, c
    ld d, c
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, l
    ldh a, [$2e]
    ld d, [hl]
    ld a, $4f
    ldh a, [$36]
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ldh a, [$36]
    ld c, c
    ld a, $49
    ldh a, [$2f]
    ld b, [hl]
    ld c, d
    ld d, [hl]
    ldh a, [$2f]
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$30]
    ld a, $4f
    ld c, e
    ldh a, [rNR50]
    ld d, d
    ld d, c
    ldh a, [$35]
    ld b, d
    ld d, l
    ldh a, [$30]
    ld c, h
    ccf
    ld b, d
    ldh a, [$2e]
    ld a, $49
    ld a, $f0
    scf
    ld c, h
    ld b, l
    ld b, d
    ldh a, [$2e]
    ld b, [hl]
    ld d, c
    ld b, d
    ldh a, [$27]
    ld c, h
    ld c, a
    ld a, $f0
    ld a, [hl+]
    ld b, [hl]
    ld b, c
    ld d, [hl]
    ldh a, [$37]
    ld b, [hl]
    ld d, c
    ld d, [hl]
    ldh a, [$27]
    ld c, h
    ld c, a
    ld c, e
    ldh a, [$2e]
    ld a, $4f
    ld d, [hl]
    ldh a, [rNR51]
    ld b, d
    ld d, c
    ld b, l
    ldh a, [$35]
    ld d, d
    ld c, a
    ld d, d
    ldh a, [$2c]
    ld d, b
    ld b, [hl]
    ld d, b
    ldh a, [$30]
    ld a, $4f
    ld c, h
    ldh a, [$27]
    ld c, h
    ld d, c
    ld a, $f0
    dec h
    ld b, d
    ld c, a
    ld b, [hl]
    ldh a, [$3d]
    ld a, $3f
    ld b, d
    ldh a, [$2a]
    ld d, h
    ld a, $52
    ldh a, [rNR51]
    ld d, d
    ld c, b
    ld c, c
    ldh a, [rNR51]
    ld c, h
    ld c, a
    ld c, h
    ldh a, [$2a]
    ld a, $4b
    ld b, c
    ldh a, [$36]
    ld d, d
    ld c, b
    ld b, d
    ldh a, [$30]
    ld a, $55
    ldh a, [$31]
    ld c, h
    ld b, c
    ld b, d
    ldh a, [$31]
    ld b, d
    ccf
    ld b, d
    ldh a, [$37]
    ld b, [hl]
    ld c, a
    ld c, h
    ldh a, [$3c]
    ld b, d
    ld d, c
    ld d, c
    ldh a, [$36]
    ld d, [hl]
    ld c, e
    ld d, c
    ldh a, [$30]
    ld c, h
    ld c, b
    ld c, h
    ldh a, [$2e]
    ld a, $4f
    ld b, d
    ldh a, [rNR51]
    ld a, $3f
    ld d, b
    ldh a, [$31]
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ldh a, [$39]
    ld c, h
    ld b, h
    ld c, c
    ldh a, [$35]
    ld a, $40
    ld c, b
    ldh a, [$33]
    ld b, [hl]
    ld c, l
    ld d, b
    ldh a, [$33]
    ld a, $4f
    ld c, b
    ldh a, [$2b]
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$35]
    ld a, $53
    ld b, d
    ldh a, [$37]
    ld c, h
    ld c, e
    ld d, d
    ldh a, [$35]
    ld a, $41
    ld d, [hl]
    ldh a, [$2e]
    ld c, h
    ld b, b
    ld c, b
    ldh a, [$2e]
    ld c, h
    ld c, b
    ld c, c
    ldh a, [$2d]
    ld c, h
    ld b, c
    ld d, [hl]
    ldh a, [rNR51]
    ld c, h
    ld c, e
    ld d, [hl]
    ldh a, [$30]
    ld b, [hl]
    ld d, b
    ld a, $f0
    jr nc, jr_041_5868

    ld b, h
    ldh a, [$2e]
    ld b, d
    ld c, c
    ld d, [hl]
    ldh a, [$29]
    ld b, d
    ld b, [hl]
    ldh a, [rNR51]
    ld c, h
    ld c, e
    ld d, a
    ldh a, [$3d]
    ld d, d
    ld c, a
    ld d, d
    ldh a, [rNR51]
    ld a, $3f
    ld a, $f0
    jr nc, @+$48

    ld d, c
    ld d, [hl]
    ldh a, [$2b]
    ld c, h
    ld c, c
    ld d, [hl]
    ldh a, [$36]
    ld c, b
    ld b, [hl]
    ldh a, [$2e]
    ld a, $4a
    ld a, $f0
    ld h, $56
    ld a, $4b
    ldh a, [$28]
    ld d, e
    ld b, d
    ldh a, [$3a]
    ld a, $50
    ld a, $f0
    dec [hl]
    ld c, h
    ld d, b
    ld b, d
    ldh a, [$2e]
    ld d, d

jr_041_5868:
    ld d, c
    ld d, d
    ldh a, [$2d]
    ld b, [hl]
    ld c, c
    ld c, c
    ldh a, [rNR51]
    ld b, d
    ld b, b
    ld c, b
    ldh a, [$36]
    ld b, [hl]
    ld d, b
    ld a, $f0
    add hl, hl
    ld a, $45
    ldh a, [$2e]
    ld b, [hl]
    ld c, b
    ld d, b
    ldh a, [$27]
    ld a, $46
    ld d, b
    ldh a, [$28]
    ccf
    ld d, [hl]
    ldh a, [$33]
    ld b, d
    ld d, c
    ld b, d
    ldh a, [$2a]
    ld c, a
    ld c, h
    ld c, d
    ldh a, [rNR51]
    ld d, d
    ld c, a
    ld c, d
    ldh a, [$37]
    ld c, h
    ld c, l
    ld d, d
    ldh a, [$33]
    ld b, d
    ld d, c
    ld a, $f0
    jr nc, jr_041_58e5

    ld c, a
    ld b, [hl]
    ldh a, [$2f]
    ld b, [hl]
    ld b, c
    ld c, c
    ldh a, [rNR51]
    ld b, d
    ld d, c
    ld b, l
    ldh a, [$36]
    ld b, b
    ld b, l
    ld a, $f0
    inc sp
    ld c, h
    ld c, c
    ld b, [hl]
    ldh a, [$2e]
    ld c, h
    ld c, b
    ld c, c
    ldh a, [$2b]
    ld a, $4b
    ld a, $f0
    ld [hl], $3e
    ld c, e
    ld d, [hl]
    ldh a, [$30]
    ld b, d
    ld b, e
    ld b, [hl]
    ldh a, [$33]
    ld b, d
    ld c, a
    ld d, a
    ldh a, [$30]
    ld a, $4f
    ld b, [hl]
    ldh a, [rNR51]
    ld d, d
    ld c, a
    ld c, e
    ldh a, [$33]
    ld c, c
    ld d, d
    ld d, c

jr_041_58e5:
    ldh a, [rNR51]
    ld c, h
    ld c, a
    ld b, c
    ldh a, [$35]
    ld d, d
    ld c, b
    ldh a, [rNR50]
    ld c, d
    ld c, h
    ld d, b
    ldh a, [$36]
    ld a, $4f
    ld a, $f0
    inc sp
    ld c, h
    ld c, a
    ld c, e
    ldh a, [$2d]
    ld d, d
    ld b, c
    ld d, [hl]
    ldh a, [rNR51]
    ld b, [hl]
    ccf
    ld b, [hl]
    ldh a, [$29]
    ld c, c
    ld a, $4f
    ldh a, [$36]
    ld a, $49
    ld c, h
    ldh a, [$28]
    ld c, d
    ld d, [hl]
    ldh a, [$35]
    ld c, h
    ld c, e
    ld a, $f0
    jr nc, @+$48

    ld c, c
    ld c, c
    ldh a, [$2b]
    ld d, d
    ld b, h
    ldh a, [$37]
    ld d, d
    ld d, c
    ld b, [hl]
    ldh a, [$31]
    ld b, d
    ld d, l
    ldh a, [$37]
    ld b, d
    ld c, b
    ld b, d
    ldh a, [$37]
    ld c, h
    ld d, c
    ld c, h
    ldh a, [$2a]
    ld b, d
    ld c, a
    ld c, a
    ldh a, [$35]
    ld b, d
    ld c, a
    ld b, d
    ldh a, [rNR51]
    ld b, d
    ld c, c
    ld c, c
    ldh a, [$2d]
    ld b, d
    ld c, e
    ld d, [hl]
    ldh a, [$29]
    ld d, d
    ld c, a
    ld a, $f0
    daa
    ld c, h
    ld c, a
    ld a, $f0
    scf
    ld d, h
    ld b, [hl]
    ld d, c
    ldh a, [$2e]
    ld a, $4b
    ld a, $f0
    dec [hl]
    ld a, $56
    ldh a, [$2d]
    ld b, d
    ld d, b
    ld d, b
    ldh a, [$31]
    ld b, [hl]
    ld d, c
    ld c, a
    ldh a, [$33]
    ld a, $4d
    ld b, d
    ldh a, [$35]
    ld c, h
    ld b, b
    ld c, b
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $f0
    inc sp
    ld b, l
    ld c, h
    ld d, c
    ldh a, [rNR51]
    ld b, d
    ld c, e
    ld c, e
    ldh a, [$35]
    ld c, h
    ccf
    ld b, d
    ldh a, [$35]
    ld c, h
    ccf
    ld b, [hl]
    ldh a, [$2d]
    ld d, d
    ld d, h
    ld b, d
    ldh a, [$35]
    ld d, d
    ccf
    ld d, [hl]
    ldh a, [$33]
    ld b, d
    ld c, a
    ld c, c
    ldh a, [rNR50]
    ld c, d
    ld b, d
    ld d, c
    ldh a, [rNR51]
    ld b, [hl]
    ld a, $3f
    ldh a, [$37]
    ld b, [hl]
    ld a, $4f
    ldh a, [$36]
    ld b, d
    ld c, a
    ld a, $f0
    dec [hl]
    ld b, d
    ld b, c
    ld a, $f0
    daa
    ld c, a
    ld a, $48
    ldh a, [$33]
    ld a, $4d
    ld d, b
    ldh a, [$2e]
    ld a, $4f
    ld c, c
    ldh a, [$36]
    ld b, [hl]
    ld b, d
    ld c, b
    ldh a, [rNR52]
    ld b, l
    ld c, a
    ld b, [hl]
    ldh a, [$2a]
    ld c, h
    ld c, c
    ld b, c
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $f0
    ld h, $42
    ld c, e
    ld d, c
    ldh a, [$30]
    ld a, $4f
    ld b, [hl]
    ldh a, [rNR50]
    ld c, e
    ld c, e
    ld a, $f0
    jr z, jr_041_5a35

    ld c, h
    ld c, e
    ldh a, [$28]
    ld c, c
    ld b, [hl]
    ld d, a
    ldh a, [$2c]
    ld d, b
    ld a, $3f
    ldh a, [$2f]
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ldh a, [rNR50]
    ld c, e
    ld b, [hl]
    ld d, c
    ldh a, [rNR51]
    ld a, $4f
    ccf
    ldh a, [rNR10]
    ldh a, [rNR11]
    ldh a, [rNR12]
    ldh a, [rNR13]
    ldh a, [rNR14]
    ldh a, [$15]
    ldh a, [rNR21]
    ldh a, [rNR22]
    ldh a, [rNR23]
    ldh a, [rNR24]
    ldh a, [$f0]
    daa
    ld c, a
    ld a, $48
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$33]
    ld d, d
    ld c, e
    ld c, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$29]
    ld c, c
    ld d, d
    ld b, h

jr_041_5a35:
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ccf
    ld a, $52
    ld c, d
    ldh a, [$2b]
    ld a, $52
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$3d]
    ld b, d
    ld c, e
    ld d, c
    ld a, $52
    ld c, a
    ldh a, [rNR51]
    ld d, d
    ccf
    ccf
    ld c, c
    ld b, d
    ldh a, [rNR51]
    ld c, h
    ld d, l
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$29]
    ld a, $4b
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$29]
    ld b, d
    ld c, c
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, h
    ldh a, [$36]
    ld c, c
    ld a, $4d
    ld c, l
    ld d, [hl]
    ldh a, [$33]
    ld d, d
    ld c, e
    ld c, b
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$28]
    ld c, a
    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$2f]
    ld a, $53
    ld a, $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$28]
    ld c, a
    ld d, a
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$2a]
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$27]
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld c, b
    ld b, [hl]
    ld b, c
    ldh a, [$35]
    ld e, l
    ld d, b
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$33]
    ld d, c
    ld b, d
    ld c, a
    ld a, $4b
    ld c, h
    ld b, c
    ldh a, [$29]
    ld c, c
    ld d, d
    ld b, h
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$29]
    ld b, d
    ld b, d
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$28]
    ld b, b
    ld b, l
    ld d, b
    ld c, d
    ld a, $4b
    ld c, e
    ldh a, [$2a]
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld b, d
    ldh a, [$27]
    ld c, h
    ld c, a
    ld c, e
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [$2e]
    ld c, h
    ld c, d
    ld a, $41
    ld c, h
    ld c, a
    ld a, $f0
    jr nc, jr_041_5b6d

    ld b, c
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$35]
    ld a, $56
    ccf
    ld d, d
    ld c, a
    ld c, e
    ldh a, [rNR52]
    ld b, l
    ld a, $4a
    ld e, e
    ld c, c
    ld b, d
    ld c, h
    ld c, e
    ldh a, [$29]
    ld c, c
    ld d, d
    ld b, h
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld b, d
    ldh a, [$38]
    ld c, e
    ld b, c
    ld c, h
    ld c, a
    ld b, d
    ld a, $49
    ldh a, [$2e]
    ld c, h
    ccf
    ld c, a
    ld a, $f0
    daa
    ld b, d
    ld c, e
    ld d, a
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ldh a, [$30]
    ld b, d
    ld b, h

jr_041_5b6d:
    ld a, $41
    ld c, a
    ld a, $48
    ldh a, [$2b]
    ld a, $45
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    ldh a, [$3a]
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    ldh a, [$3a]
    ld e, l
    ld c, a
    ld b, h
    ld b, d
    ld c, a
    ldh a, [$3c]
    ld a, $4a
    ld a, $51
    ld a, $f0
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, a
    ld b, d
    ld d, l
    ldh a, [$36]
    ld c, b
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$2a]
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$3d]
    ld e, l
    ld c, e
    ld b, h
    ld c, c
    ld b, d
    ld c, a
    ldh a, [$2b]
    ld c, h
    ld c, a
    ld c, e
    ld b, l
    ld a, $50
    ld b, d
    ldh a, [rNR52]
    ld a, $51
    ld b, e
    ld c, c
    ld d, [hl]
    ldh a, [$3a]
    ld c, h
    ld c, c
    ld c, c
    ld c, a
    ld a, $51
    ld d, c
    ld b, d
    ldh a, [$30]
    ld b, [hl]
    ld c, e
    ld c, e
    ld c, h
    ldh a, [$2d]
    ld a, $3f
    ccf
    ld a, $f0
    ld l, $5b
    ld c, e
    ld b, h
    ld d, d
    ld c, a
    ld d, d
    ld b, l
    ldh a, [$3a]
    ld b, [hl]
    ld c, a
    ccf
    ld c, c
    ld b, d
    ld c, a
    ldh a, [$3d]
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld e, e
    ld c, a
    ldh a, [$37]
    ld e, e
    ld c, e
    ld d, a
    ld b, d
    ld c, a
    ldh a, [$2b]
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld c, a
    ld e, h
    ld d, c
    ld b, d
    ldh a, [$30]
    ld c, h
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld b, a
    ld a, $f0
    dec hl
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ldh a, [$2a]
    ld c, a
    ld b, [hl]
    ld d, a
    ld d, a
    ld c, c
    ld d, [hl]
    ldh a, [$3c]
    ld b, d
    ld d, c
    ld b, [hl]
    ldh a, [$30]
    ld a, $52
    ld c, c
    ld d, h
    ld d, d
    ld c, a
    ld b, e
    ldh a, [$29]
    ld b, d
    ld b, d
    ld c, a
    ld a, $51
    ld d, c
    ld b, d
    ldh a, [$38]
    ld c, e
    ld b, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    ldh a, [$3a]
    ld b, [hl]
    ld c, c
    ld b, c
    ld d, a
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ldh a, [$30]
    ld c, h
    ld c, a
    ld b, c
    ld a, $43
    ld b, e
    ld b, d
    ldh a, [$33]
    ld a, $4c
    ld b, e
    ld a, $4b
    ld d, c
    ldh a, [$2e]
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    cpl
    ld b, d
    ld c, h
    ldh a, [$37]
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ldh a, [$33]
    ld a, $4b
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ldh a, [rNR51]
    ld b, [hl]
    ld b, h
    ld h, h
    jr z, jr_041_5cd0

    ld b, d
    ldh a, [$33]
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ldh a, [rNR52]
    ld b, l
    ld b, [hl]
    ld c, d
    ld e, e
    ld c, a
    ld a, $f0
    ld [hl], $40
    ld b, l
    ld c, e
    ld a, $3f
    ld c, c
    ld b, d
    ld c, a
    ldh a, [$29]
    ld c, c
    ld c, h
    ld c, a
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$27]
    ld c, a
    ld a, $48
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ldh a, [$37]
    ld c, h
    ld b, c
    ld c, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ldh a, [$37]
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld c, a
    ld a, $3f
    ld b, d
    ldh a, [$29]
    ld b, [hl]
    ld c, a
    ld b, d
    ccf
    ld b, [hl]
    ld c, a
    ld b, c
    ldh a, [$39]
    ld a, $4a
    ld c, l
    ld d, [hl]
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $45

jr_041_5cd0:
    ld a, $45
    ld c, e
    ldh a, [$31]
    ld b, d
    ld c, a
    ld d, e
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$2e]
    ld a, $4a
    ld c, l
    ld b, e
    ld b, d
    ld d, d
    ld c, c
    ld b, d
    ldh a, [$2e]
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, h
    ld a, $4b
    ld d, b
    ldh a, [$2b]
    ld e, h
    ld c, c
    ld c, c
    ld b, h
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, a
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld b, e
    ld a, $49
    ld c, b
    ld b, d
    ldh a, [$33]
    ld b, l
    ld e, h
    ld c, e
    ld b, [hl]
    ld d, l
    ldh a, [$27]
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ldh a, [$35]
    ld c, h
    ld b, b
    ld c, b
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$37]
    ld a, $4b
    ld d, a
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [rNR51]
    ld d, d
    ld c, e
    ld d, c
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$36]
    ld a, $43
    ld d, c
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    ldh a, [$31]
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, c
    ldh a, [$32]
    ld c, a
    ld a, $40
    ld d, d
    ld c, c
    ld d, d
    ld c, d
    ldh a, [$29]
    ld c, c
    ld d, d
    ld b, h
    ccf
    ld a, $52
    ld c, d
    ldh a, [$2e]
    ld a, $48
    ld d, c
    ld b, d
    ld b, d
    ldh a, [rNR51]
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld a, $4d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$33]
    ld b, [hl]
    ld c, c
    ld d, a
    ld c, d
    ld a, $4b
    ld c, e
    ldh a, [$28]
    ld c, a
    ld d, a
    ccf
    ld c, c
    ld d, d
    ld c, d
    ld b, d
    ldh a, [rNR51]
    ld a, $52
    ld c, d
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ldh a, [$3d]
    ld d, h
    ld b, [hl]
    ld b, d
    ccf
    ld c, c
    ld b, d
    ld c, a
    ldh a, [$37]
    ld a, $4b
    ld d, a
    ld c, d
    ld e, h
    ld b, l
    ld c, a
    ld b, d
    ldh a, [rNR51]
    ld a, $52
    ld c, d
    ld d, a
    ld d, h
    ld b, d
    ld c, a
    ld b, h
    ldh a, [rNR50]
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld a, $52
    ld c, d
    ldh a, [$30]
    ld a, $4b
    ld b, c
    ld c, a
    ld a, $44
    ld c, a
    ld a, $f0
    dec h
    ld c, h
    ld b, l
    ld c, e
    ld b, [hl]
    ldh a, [rNR51]
    ld e, h
    ld d, b
    ld d, b
    ld a, $4a
    ld b, d
    ldh a, [rNR50]
    ld b, b
    ld b, [hl]
    ld b, c
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, e
    ld a, $4d
    ld c, l
    ld b, d
    ld c, a
    ldh a, [$2e]
    ld a, $4a
    ld c, l
    ld b, e
    ld c, a
    ld c, h
    ld d, b
    ld b, d
    ldh a, [$3a]
    ld a, $51
    ld a, $3f
    ld c, h
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ldh a, [$33]
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ldh a, [$2a]
    ld c, a
    ld e, e
    ccf
    ld b, d
    ld c, a
    ldh a, [$29]
    ld c, c
    ld d, d
    ld b, h
    ld c, d
    ld a, $52
    ld c, c
    ldh a, [$33]
    ld b, [hl]
    ld c, c
    ld d, a
    ccf
    ld d, d
    ld b, h
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $54
    ld d, d
    ld c, a
    ld c, d
    ldh a, [$2e]
    ld e, l
    ld e, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ldh a, [$3d]
    ld a, $45
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ldh a, [$36]
    ld c, h
    ld c, c
    ld b, c
    ld a, $51
    ldh a, [$2b]
    ld b, d
    ld d, d
    ld b, l
    ld c, h
    ld c, l
    ld d, b
    ld b, d
    ld c, a
    ldh a, [$36]
    ld a, $52
    ld b, h
    ld d, h
    ld d, d
    ld c, a
    ld c, d
    ldh a, [$2e]
    ld b, [hl]
    ld c, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ldh a, [$32]
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $4a
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ldh a, [$27]
    ld c, h
    ld c, a
    ld c, h
    ld c, c
    ld c, c
    ldh a, [$2e]
    ld c, a
    ld a, $3f
    ccf
    ld b, d
    ldh a, [$2b]
    ld e, h
    ld c, c
    ld c, c
    ccf
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, d
    ldh a, [$2b]
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ldh a, [$36]
    ld c, b
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$2a]
    ld a, $4f
    ld c, e
    ld b, d
    ld c, c
    ld b, d
    ldh a, [$33]
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld d, [hl]
    ldh a, [rNR50]
    ld c, a
    ld b, b
    ld b, l
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [rNR50]
    ld d, d
    ld c, a
    ld d, d
    ld c, d
    ldh a, [rNR51]
    ld a, $3f
    ld d, [hl]
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ldh a, [$27]
    ld a, $4f
    ld c, b
    ld b, d
    ld d, [hl]
    ld b, d
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $3e
    ld d, d
    ld b, h
    ld b, d
    ldh a, [$36]
    ld c, b
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ldh a, [$2b]
    ld e, h
    ld c, c
    ld c, c
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$38]
    ld c, e
    ld b, [hl]
    ld b, b
    ld c, c
    ld c, h
    ld d, h
    ld c, e
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld c, d
    ld c, c
    ld b, [hl]
    ld c, e
    ldh a, [$30]
    ld b, d
    ld b, c
    ld d, d
    ld d, b
    ld a, $f0
    cpl
    ld e, h
    ld d, h
    ld b, d
    ld c, e
    ld b, l
    ld a, $49
    ld d, b
    ldh a, [$2b]
    ld c, h
    ld c, a
    ld c, e
    ld c, d
    ld a, $4b
    ld c, e
    ldh a, [$32]
    ld c, a
    ld c, b
    ldh a, [$32]
    ld b, h
    ld b, d
    ld c, a
    ldh a, [$3a]
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ldh a, [$30]
    ld a, $41
    ld b, b
    ld c, c
    ld c, h
    ld d, h
    ld c, e
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, c
    ldh a, [rNR50]
    ld b, b
    ld d, d
    ccf
    ld a, $f0
    jr nc, jr_041_5f6b

    ld b, c
    ld c, b
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    ld b, d
    ld d, b
    ld d, b
    ldh a, [$30]
    ld a, $4b
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ldh a, [$28]
    ld d, e
    ld b, [hl]
    ld c, c
    ldh a, [$2d]
    ld a, $4a
    ld b, [hl]
    ld c, a
    ld d, d
    ld d, b
    ldh a, [$27]
    ld d, d
    ld c, a
    ld a, $4b
    ldh a, [$2a]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ldh a, [$36]
    ld c, b
    ld b, d
    ld c, c
    ld b, h
    ld c, h
    ld c, e
    ld b, d
    ldh a, [$3d]

jr_041_5f6b:
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$30]
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld c, a
    ld a, $3f
    ld b, d
    ldh a, [$30]
    ld d, d
    ld c, d
    ld b, [hl]
    ld b, d
    ldh a, [$27]
    ld a, $4f
    ld c, b
    ld b, b
    ld c, a
    ld a, $3f
    ldh a, [$2e]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld a, $51
    ld d, c
    ld b, d
    ld c, e
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ldh a, [$31]
    ld a, $40
    ld b, l
    ld d, c
    ld d, h
    ld b, [hl]
    ld c, l
    ld d, b
    ldh a, [$36]
    ld c, l
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld d, c
    ldh a, [$2a]
    ld b, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld d, b
    ld d, c
    ldh a, [$37]
    ld c, h
    ld b, c
    ldh a, [$37]
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld a, $41
    ld b, d
    ld c, c
    ldh a, [$27]
    ld b, d
    ld a, $51
    ld b, l
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$2e]
    ld c, e
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ldh a, [$36]
    ld c, b
    ld b, d
    ld c, c
    ld b, h
    ld c, c
    ld a, $41
    ld a, $f0
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$30]
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$37]
    ld a, $4b
    ld d, a
    ld b, a
    ld d, d
    ld d, h
    ld b, d
    ld c, c
    ldh a, [rNR51]
    ld e, h
    ld d, b
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$2e]
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ldh a, [$37]
    ld c, h
    ld d, c
    ld b, d
    ld c, d
    ldh a, [$36]
    ld c, l
    ld b, [hl]
    ld c, b
    ld d, [hl]
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld c, c
    ld b, h
    ld c, c
    ld a, $50
    ldh a, [$2c]
    ld c, a
    ld c, a
    ld c, l
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ldh a, [$30]
    ld a, $41
    ld b, l
    ld a, $4b
    ld b, c
    ldh a, [$30]
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, e
    ld b, [hl]
    ld b, h
    ld d, d
    ld c, a
    ldh a, [$27]
    ld c, a
    ld a, $48
    ccf
    ld c, h
    ld d, c
    ldh a, [rNR51]
    ld a, $4f
    ld d, a
    ld a, $48
    ldh a, [$30]
    ld a, $52
    ld c, c
    ld d, b
    ld e, e
    ccf
    ld b, d
    ld c, c
    ldh a, [rNR51]
    ld a, $4b
    ld c, e
    ld c, c
    ld a, $4a
    ld c, l
    ld b, d
    ldh a, [$2e]
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ccf
    ld c, h
    ld d, c
    ldh a, [$37]
    ld c, h
    ld c, l
    ld b, e
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$2a]
    ld b, [hl]
    ld d, a
    ld c, d
    ld c, h
    ldh a, [$2f]
    ld a, $53
    ld a, $41
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$30]
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld c, b
    ldh a, [$36]
    ld a, $4b
    ld b, c
    ld c, d
    ld a, $4b
    ld c, e
    ldh a, [$2a]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ldh a, [$36]
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ldh a, [$29]
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, h
    ld c, d
    ccf
    ld b, d
    ldh a, [$2a]
    ld c, h
    ld c, c
    ld b, c
    ld b, h
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ldh a, [$27]
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ldh a, [$27]
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ldh a, [$2b]
    ld a, $44
    ld c, h
    ld c, e
    ldh a, [$36]
    ld b, [hl]
    ld b, c
    ld c, h
    ldh a, [rNR51]
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ldh a, [$3d]
    ld c, h
    ld c, d
    ld a, $f0
    inc sp
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ldh a, [$28]
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ldh a, [$30]
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ldh a, [$30]
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ldh a, [$30]
    ld d, d
    ld b, c
    ld c, h
    ldh a, [$37]
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $f0
    scf
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $f0
    scf
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $f0
    daa
    ld a, $4f
    ld c, b
    ld b, c
    ld c, h
    ld c, a
    ld b, d
    ld c, d
    ldh a, [$37]
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ldh a, [$37]
    ld a, $51
    ld d, c
    ld d, b
    ldh a, [$27]
    ld b, d
    ld a, $44
    ld c, h
    ldh a, [$36]
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ldh a, [rNR51]
    ld a, $57
    ld d, a
    ld d, d
    ldh a, [$f0]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$29]
    ld b, [hl]
    ld c, a
    ld b, d
    ccf
    ld a, $49
    ld c, c
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $3f
    ld a, $49
    ld c, c
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $3f
    ld a, $49
    ld c, c
    ldh a, [$29]
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $43
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ldh a, [$2b]
    ld d, [hl]
    ld c, l
    ld h, c
    add hl, hl
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ldh a, [$28]
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ldh a, [$28]
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld b, c
    ld b, d
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $42
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ldh a, [$3a]
    ld b, [hl]
    ld c, e
    ld b, c
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $54
    ld b, [hl]
    ld c, e
    ld b, c
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $54
    ld b, [hl]
    ld c, e
    ld b, c
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $42
    ld b, [hl]
    ld d, b
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $42
    ld b, [hl]
    ld d, b
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $3f
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ldh a, [$3b]
    sbc h
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $3f
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ldh a, [$37]
    ld c, h
    ld b, c
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld d, c
    ld c, h
    ld b, c
    ldh a, [$32]
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ldh a, [rNR50]
    ld c, c
    ld c, c
    sbc h
    ld l, $4c
    ld c, d
    ld a, $f0
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, h
    ldh a, [$2c]
    ld c, c
    ld c, c
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$2e]
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ldh a, [$30]
    inc sp
    sbc h
    ld l, $49
    ld a, $52
    ldh a, [$30]
    inc sp
    sbc h
    add hl, hl
    ld a, $4b
    ld b, h
    ldh a, [$36]
    ld b, b
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld b, d
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ldh a, [$36]
    ld b, b
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ldh a, [$2f]
    ld a, $45
    ld c, d
    ldh a, [rNR50]
    ld c, c
    ld c, c
    sbc h
    cpl
    ld a, $45
    ld c, d
    ldh a, [$36]
    ld c, l
    ld b, d
    ld b, d
    ld b, c
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $50
    ld c, l
    ld b, d
    ld b, d
    ld b, c
    ldh a, [$2f]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ldh a, [rSC]
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ldh a, [$30]
    sbc h
    ld [hl], $40
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ldh a, [$30]
    sbc h
    dec [hl]
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld c, b
    ldh a, [$30]
    ld a, $44
    ld c, a
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld c, b
    ldh a, [$2c]
    ld c, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $45
    ld b, d
    ld b, [hl]
    ld c, c
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $45
    ld b, d
    ld b, [hl]
    ld c, c
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, a
    ldh a, [$2f]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ldh a, [$32]
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ld c, e
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, h
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, $4c
    ld d, b
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$36]
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ldh a, [$2e]
    ld a, $4f
    ld d, c
    ld b, d
    ldh a, [$30]
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, b
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld b, d
    ldh a, [$37]
    ld a, $40
    ld c, b
    ld c, c
    ld b, d
    ldh a, [$2e]
    ld a, $4a
    ld b, [hl]
    ld c, b
    ld a, $57
    ld b, d
    ldh a, [$36]
    ld d, c
    ld e, l
    ld c, a
    ld c, d
    ld b, d
    ld c, e
    ldh a, [$30]
    ld a, $50
    ld d, b
    ld a, $48
    ld b, d
    ld c, a
    ldh a, [$27]
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, l
    ld b, [hl]
    ld b, d
    ccf
    ldh a, [$33]
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, b
    ld a, $53
    ld b, d
    ldh a, [$2b]
    ld c, h
    ld b, b
    ld b, l
    ld b, e
    ld c, c
    ld d, d
    ld b, h
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld a, $51
    ld c, d
    ld b, d
    ld c, e
    ldh a, [$29]
    sbc h
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ldh a, [rNR51]
    sbc h
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ldh a, [$39]
    sbc h
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ldh a, [$28]
    sbc h
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ldh a, [$30]
    ld b, d
    ld d, c
    ld a, $48
    ld b, [hl]
    ld c, c
    ld c, c
    ldh a, [$27]
    ld c, a
    ld a, $48
    ld d, c
    ld e, h
    ld d, c
    ld b, d
    ld c, a
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld e, h
    ld d, c
    ld b, d
    ld c, a
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ldh a, [$27]
    ld e, e
    ld c, d
    ld c, h
    ld d, c
    ld e, h
    ld d, c
    ld b, d
    ld c, a
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
    ldh a, [$3d]
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld b, d
    ld c, a
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $64
    dec sp
    ldh a, [$27]
    ld c, h
    ld c, l
    ld c, l
    ld b, d
    ld c, c
    ldh a, [$39]
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, e
    ld a, $40
    ld b, l
    ldh a, [$2b]
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    ldh a, [$2b]
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    ld c, a
    ld d, d
    ld b, e
    ldh a, [$2c]
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld b, [hl]
    ld d, e
    ldh a, [rSB]
    ld h, c
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $44
    ldh a, [rNR50]
    ld d, d
    ld b, e
    ld c, c
    ld a, $41
    ld b, d
    ld c, e
    ldh a, [$30]
    ld d, d
    ld c, c
    ld d, c
    ld b, [hl]
    ldh a, [$36]
    ld c, h
    ld c, e
    ld b, [hl]
    ld b, b
    ccf
    ld c, h
    ld c, h
    ld c, d
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $36
    ld c, h
    ld c, e
    ld b, [hl]
    ld b, b
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ldh a, [$29]
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ldh a, [$29]
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld a, $51
    ld b, d
    ld c, d
    ldh a, [$29]
    ld c, c
    ld a, $4a
    ld c, d
    ld a, $51
    ld b, d
    ld c, d
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $43
    ld c, c
    ld a, $4a
    ld b, d
    ldh a, [$37]
    ld b, d
    ld c, a
    ld a, $43
    ld c, c
    ld a, $4a
    ld b, d
    ldh a, [$2e]
    ld e, e
    ld c, c
    ld d, c
    ld b, d
    ld a, $51
    ld b, d
    ld c, d
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld a, $51
    ld b, d
    ld c, d
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld b, c
    ldh a, [$2f]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, $51
    ld b, d
    ld c, d
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld b, d
    ld c, a
    ldh a, [rNR51]
    ld b, [hl]
    ld b, h
    ld h, h
    dec h
    ld a, $4b
    ld b, h
    ldh a, [$30]
    ld a, $41
    ld a, $4b
    ld d, c
    ld b, d
    ldh a, [$2a]
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ldh a, [$2f]
    ld e, e
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ldh a, [$2a]
    ld b, [hl]
    ld b, e
    ld d, c
    ld a, $51
    ld b, d
    ld c, d
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $44
    ld b, [hl]
    ld b, e
    ld d, c
    ldh a, [$2e]
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, c
    ld a, $4b
    ld d, a
    ldh a, [$29]
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$30]
    ld a, $50
    ld d, b
    ld a, $44
    ld b, d
    ldh a, [$37]
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld a, $4b
    ld d, a
    ldh a, [$36]
    ld a, $4b
    ld b, c
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ld c, d
    ldh a, [$2b]
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ldh a, [$27]
    ld e, e
    ld c, d
    ld c, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ldh a, [$30]
    ld d, [hl]
    ld d, b
    ld d, c
    ld d, c
    ld a, $4b
    ld d, a
    ldh a, [$30]
    inc sp
    sbc h
    scf
    ld a, $4b
    ld d, a
    ldh a, [$29]
    ld c, h
    ld c, h
    ld d, c
    ld d, h
    ld c, h
    ld c, a
    ld c, b
    ldh a, [$2f]
    ld c, h
    ld b, b
    ld c, b
    ld d, c
    ld a, $4b
    ld d, a
    ldh a, [rNR50]
    ccf
    ld c, c
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $57
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ldh a, [$29]
    ld d, d
    ld e, [hl]
    ld b, e
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $43
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ldh a, [$33]
    ld b, e
    ld b, [hl]
    ld b, e
    ld b, e
    ldh a, [$31]
    ld a, $40
    ld b, l
    ld a, $45
    ld c, d
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ld c, c
    ld c, c
    sbc h
    daa
    ld c, a
    ld d, d
    ld b, b
    ld c, b
    ldh a, [rNR50]
    ld c, c
    ld c, c
    sbc h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ldh a, [$27]
    ld a, $4f
    ld c, b
    ld h, h
    ld a, [hl-]
    ld a, $53
    ld b, d
    ldh a, [$35]
    ld d, d
    ld b, l
    ld b, d
    ld c, e
    ld b, d
    ccf
    ld b, d
    ld c, c
    ldh a, [$37]
    ld a, $51
    ld d, c
    ld d, b
    ldh a, [$27]
    ld b, d
    ld a, $44
    ld c, h
    ldh a, [$36]
    ld c, h
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    ldh a, [rNR51]
    ld a, $57
    ld d, a
    ld d, d
    ldh a, [$27]
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ldh a, [rNR50]
    ccf
    ld b, e
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ldh a, [$35]
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ldh a, [$36]
    ld d, c
    ld d, d
    ld c, a
    ld c, d
    ldh a, [$2a]
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ldh a, [$36]
    inc sp
    sbc h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld d, b
    ld a, $52
    ld b, h
    ld b, d
    ld c, e
    ldh a, [$2e]
    ld c, h
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld a, $4b
    ld d, a
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld a, $51
    ld b, d
    ld c, d
    ldh a, [$30]
    ld b, d
    ld b, c
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld a, $4b
    ld d, a
    ldh a, [$2f]
    ld b, [hl]
    ld b, d
    ld b, c
    ldh a, [$2f]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld d, c
    ld a, $4b
    ld d, a
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ldh a, [$29]
    ld a, $52
    ld c, c
    ld b, d
    ld c, e
    ld d, a
    ld b, d
    ld c, e
    ldh a, [$39]
    ld b, d
    ld c, a
    ld c, a
    ld a, $51
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ldh a, [$3d]
    ld d, d
    ld b, e
    ld a, $49
    ld c, c
    ldh a, [$29]
    ld e, l
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ldh a, [$37]
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ldh a, [$2b]
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ldh a, [$35]
    ld b, d
    ld b, h
    ld c, c
    ld c, h
    ld d, b
    ldh a, [$35]
    ld b, d
    ld b, h
    ld c, c
    ld c, h
    ld d, b
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ldh a, [rNR51]
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld e, h
    ld c, a
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, a
    ldh a, [$3d]
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ldh a, [$29]
    ld b, [hl]
    ld c, c
    ld d, b
    ld d, a
    ld c, h
    ld c, e
    ld b, d
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld d, b
    ld d, d
    ld c, l
    ld b, d
    ld c, a
    ldh a, [$30]
    ld b, d
    ld b, h
    ld a, $4a
    ld e, l
    ld b, c
    ld b, d
    ldh a, [$30]
    inc sp
    nop
    ldh a, [$28]
    ld b, b
    ld b, l
    ld c, h
    ldh a, [$27]
    ld c, a
    ld a, $48
    ld c, b
    ld c, a
    ld a, $43
    ld d, c
    ldh a, [$27]
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$39]
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, e
    ldh a, [rNR50]
    ld c, c
    ld c, c
    sbc h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ldh a, [$30]
    inc sp
    ld h, h
    add hl, hl
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ldh a, [$30]
    ld b, d
    ld d, c
    ld b, d
    ld c, h
    ld c, a
    ldh a, [$2e]
    ld c, a
    ld a, $52
    ld d, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, a
    ld a, $4b
    ld c, b
    ldh a, [$2b]
    inc sp
    sbc h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, a
    ld c, h
    ld c, l
    ld b, e
    ldh a, [$30]
    inc sp
    sbc h
    ld l, $4f
    ld a, $52
    ld d, c
    ldh a, [$30]
    inc sp
    sbc h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ld b, d
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, d
    ld e, l
    ld b, c
    ld b, d
    ldh a, [$2f]
    ld b, d
    ccf
    ccf
    ld c, c
    ld a, $51
    ld d, c
    ldh a, [$2b]
    inc sp
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$30]
    inc sp
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$36]
    ld d, c
    ld e, e
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [rNR50]
    ccf
    ld d, h
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [rNR50]
    ld b, h
    ld b, [hl]
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld d, c
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$29]
    ld d, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ldh a, [$36]
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ldh a, [$31]
    ld d, d
    ld b, h
    ld b, h
    ld b, d
    ld d, c
    ld d, b
    ldh a, [$35]
    ld a, $51
    ld d, c
    ld b, d
    ldh a, [$29]
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$36]
    ld d, c
    ld c, a
    ld a, $43
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$35]
    ld d, d
    ld b, l
    ld b, d
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$2f]
    ld a, $53
    ld a, $50
    ld d, c
    ld a, $3f
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$29]
    ld c, c
    ld a, $4a
    ld c, d
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$37]
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ldh a, [$30]
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ldh a, [$35]
    ld c, h
    ld c, d
    ld a, $4b
    ldh a, [$2a]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ccf
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$30]
    ld e, e
    ld c, a
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ldh a, [$37]
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ccf
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$3d]
    ld b, d
    ld b, [hl]
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ldh a, [$3a]
    ld b, [hl]
    ld d, c
    ld d, a
    ccf
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$27]
    ld c, a
    ld a, $48
    ld c, b
    ld c, a
    ld a, $43
    ld d, c
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, c
    ld c, h
    ld b, c
    ldh a, [rNR51]
    ld d, d
    ld b, h
    ld d, c
    ld e, h
    ld d, c
    ld b, d
    ld c, a
    ldh a, [$36]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$2a]
    ld b, [hl]
    ld b, h
    ld a, $50
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ldh a, [$2e]
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ld d, b
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ldh a, [$30]
    ld a, $50
    ld d, b
    ld a, $44
    ld b, d
    ldh a, [$f0]
    daa
    ld a, $f0
    dec h
    ld d, d
    ldh a, [$29]
    ld b, d
    ldh a, [$36]
    ld b, d
    ldh a, [$36]
    ld b, d
    ldh a, [$36]
    ld b, d
    ldh a, [rNR51]
    ld d, d
    ldh a, [rNR51]
    ld c, h
    ldh a, [$36]
    ld b, [hl]
    ldh a, [$2b]
    ld b, [hl]
    ldh a, [$36]
    ld d, d
    ldh a, [$36]
    ld c, h
    ldh a, [$36]
    ld a, $f0
    ld [hl], $3e
    ldh a, [rNR51]
    ld d, d
    ldh a, [$2e]
    ld b, [hl]
    ldh a, [$30]
    ld b, d
    ldh a, [$2b]
    ld a, $f0
    jr nc, jr_041_6945

    ldh a, [$2a]
    ld c, h
    ldh a, [$27]
    ld c, h
    ldh a, [$2a]
    ld a, $f0
    inc sp
    ld d, d
    ldh a, [$29]
    ld d, d
    ldh a, [$29]
    ld b, d
    ldh a, [$2f]
    ld b, [hl]
    ldh a, [$33]
    ld c, h
    ldh a, [$36]
    ld c, h
    ldh a, [$27]
    ld c, h
    ldh a, [$2e]
    ld c, h
    ldh a, [$27]
    ld c, h
    ldh a, [$35]
    ld a, $f0
    ld [hl-], a
    ld c, h
    ldh a, [$2f]
    ld b, [hl]
    ldh a, [$38]
    ld c, e
    ldh a, [$2e]
    ld b, [hl]
    ldh a, [$27]
    ld b, d
    ldh a, [$2a]
    ld c, a
    ldh a, [$37]
    ld c, h
    ldh a, [$3a]
    ld b, [hl]
    ldh a, [$2e]
    ld c, h

jr_041_6945:
    ldh a, [$3c]
    ld a, $f0
    dec h
    ld d, d
    ldh a, [$36]
    ld d, d
    ldh a, [$36]
    ld b, [hl]
    ldh a, [rNR51]
    ld b, d
    ldh a, [rNR50]
    ld c, a
    ldh a, [$2e]
    ld d, [hl]
    ldh a, [$29]
    ld a, $f0
    jr nc, @+$48

    ldh a, [$36]
    ld d, d
    ldh a, [$36]
    ld d, d
    ldh a, [$3a]
    ld b, [hl]
    ldh a, [rNR50]
    ld c, d
    ldh a, [$36]
    ld d, d
    ldh a, [$28]
    ld b, [hl]
    ldh a, [$30]
    ld c, h
    ldh a, [$32]
    ld c, h
    ldh a, [$2a]
    ld c, a
    ldh a, [$2c]
    ld b, d
    ldh a, [$2e]
    ld b, [hl]
    ldh a, [$29]
    ld b, d
    ldh a, [$38]
    ld c, e
    ldh a, [$2a]
    ld c, h
    ldh a, [$2e]
    ld b, [hl]
    ldh a, [$28]
    ld c, c
    ldh a, [$2e]
    ld b, [hl]
    ldh a, [$27]
    ld a, $f0
    ld l, $46
    ldh a, [$33]
    ld b, [hl]
    ldh a, [$33]
    ld b, [hl]
    ldh a, [rNR52]
    ld b, [hl]
    ldh a, [rNR50]
    ccf
    ldh a, [$31]
    ld a, $f0
    ld a, [hl+]
    ld a, $f0
    daa
    ld b, d
    ldh a, [$37]
    ld c, h
    ldh a, [$30]
    ld b, [hl]
    ldh a, [$27]
    ld c, h
    ldh a, [$32]
    ld c, h
    ldh a, [$2a]
    ld d, d
    ldh a, [$30]
    ld c, h
    ldh a, [$37]
    ld e, h
    ldh a, [$2b]
    ld e, h
    ldh a, [$2b]
    ld c, h
    ldh a, [$29]
    ld d, d
    ldh a, [$36]
    ld a, $f0
    add hl, hl
    ld b, d
    ldh a, [$29]
    ld a, $f0
    dec [hl]
    ld b, d
    ldh a, [$30]
    ld a, $f0
    ld l, $3e
    ldh a, [$31]
    ld a, $f0
    ld a, [hl-]
    ld b, [hl]
    ldh a, [$36]
    ld a, $f0
    ld a, [hl+]
    ld a, $f0
    jr nc, jr_041_6a2b

    ldh a, [$2e]
    ld c, h
    ldh a, [$31]
    ld b, d
    ldh a, [$37]
    ld b, d
    ldh a, [$27]
    ld a, $f0
    dec hl
    ld b, d
    ldh a, [$2d]
    ld b, [hl]
    ldh a, [$30]
    ld a, $f0
    dec h
    ld b, [hl]
    ldh a, [$28]
    ccf
    ldh a, [$30]
    ld a, $f0
    jr nc, jr_041_6a4c

    ldh a, [$35]
    ld c, h
    ldh a, [$3a]
    ld a, $f0
    ld [hl-], a
    ld c, h
    ldh a, [$2e]
    ld a, $f0
    inc l
    ld c, e
    ldh a, [$2d]
    ld b, [hl]
    ldh a, [$37]
    ld c, h
    ldh a, [$35]
    ld b, [hl]
    ldh a, [$2f]
    ld b, [hl]
    ldh a, [$3d]

jr_041_6a2b:
    ld a, $f0
    jr nc, @+$48

    ldh a, [$2b]
    ld b, d
    ldh a, [$37]
    ld b, d
    ldh a, [$35]
    ld e, l
    ldh a, [$30]
    ld b, d
    ldh a, [$37]
    ld c, h
    ldh a, [$27]
    ld c, h
    ldh a, [$30]
    ld b, [hl]
    ldh a, [$2b]
    ld e, h
    ldh a, [$2b]
    ld c, h
    ldh a, [$39]

jr_041_6a4c:
    ld b, d
    ldh a, [$27]
    ld a, $f0
    inc sp
    ld b, [hl]
    ldh a, [rNR50]
    ld c, a
    ldh a, [$36]
    ld b, [hl]
    ldh a, [rNR51]
    ld b, d
    ldh a, [$27]
    ld a, $f0
    ld [hl-], a
    ld c, h
    ldh a, [$36]
    ld d, d
    ldh a, [$2b]
    ld e, h
    ldh a, [$30]
    ld a, $f0
    ld a, [hl+]
    ld d, d
    ldh a, [$30]
    ld b, d
    ldh a, [$2f]
    ld e, h
    ldh a, [rNR50]
    ld c, e
    ldh a, [$32]
    ld c, c
    ldh a, [$32]
    ld b, h
    ldh a, [$2b]
    ld e, h
    ldh a, [$31]
    ld b, d
    ldh a, [$2a]
    ld c, a
    ldh a, [rNR50]
    ld c, a
    ldh a, [rNR51]
    ld e, h
    ldh a, [$2a]
    ld b, [hl]
    ldh a, [$3d]
    ld d, d
    ldh a, [$37]
    ld b, d
    ldh a, [$2a]
    ld b, [hl]
    ldh a, [$27]
    ld d, d
    ldh a, [$2a]
    ld c, h
    ldh a, [$36]
    ld a, $f0
    inc h
    ld c, e
    ldh a, [$3c]
    ld a, $f0
    jr nc, jr_041_6afc

    ldh a, [$27]
    ld a, $f0
    ld [hl], $46
    ldh a, [$36]
    ld a, $f0
    ld l, $52
    ldh a, [$30]
    ld a, $f0
    ld sp, $f03e
    jr z, jr_041_6afe

    ldh a, [$3a]
    ld b, [hl]
    ldh a, [$36]
    ld b, [hl]
    ldh a, [$36]
    ld b, [hl]
    ldh a, [$3a]
    ld a, $f0
    dec h
    ld c, h
    ldh a, [$2a]
    ld a, $f0
    jr nc, jr_041_6b12

    ldh a, [$31]
    ld a, $f0
    scf
    ld a, $f0
    jr z, @+$41

    ldh a, [$2a]
    ld b, d
    ldh a, [$2a]
    ld b, d
    ldh a, [$37]
    ld c, h
    ldh a, [$36]
    ld d, d
    ldh a, [$27]
    ld e, e
    ldh a, [$35]
    ld b, [hl]
    ldh a, [$30]
    ld a, $f0
    jr nc, @+$48

    ldh a, [$30]
    ld b, d
    ldh a, [rNR51]
    ld a, $f0

jr_041_6afc:
    jr nc, jr_041_6b3c

jr_041_6afe:
    ldh a, [$29]
    ld c, c
    ldh a, [$2e]
    ld b, [hl]
    ldh a, [rNR51]
    ld e, h
    ldh a, [$2a]
    ld b, [hl]
    ldh a, [$2f]
    ld a, $f0
    jr z, jr_041_6b56

    ldh a, [$30]

jr_041_6b12:
    ld b, [hl]
    ldh a, [$36]
    ld a, $f0
    ld a, [hl+]
    ld c, h
    ldh a, [$36]
    ld a, $f0
    add hl, hl
    ld b, d
    ldh a, [$2a]
    ld c, h
    ldh a, [$27]
    ld a, $f0
    daa
    ld a, $f0
    dec hl
    ld a, $f0
    ld [hl], $46
    ldh a, [rNR51]
    ld a, $f0
    dec a
    ld c, h
    ldh a, [$37]
    ld c, h
    ldh a, [$28]
    ld d, b
    ldh a, [$30]

jr_041_6b3c:
    ld b, [hl]
    ldh a, [$30]
    ld b, [hl]
    ldh a, [$30]
    ld d, d
    ldh a, [$37]
    ld c, h
    ldh a, [$37]
    ld c, h
    ldh a, [$37]
    ld c, h
    ldh a, [$27]
    ld a, $f0
    ldh a, [$2e]
    ld c, a
    ld a, $52
    ld d, c

jr_041_6b56:
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, a
    ld a, $4b
    ld c, b
    ldh a, [$2b]
    inc sp
    sbc h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, a
    ld c, h
    ld c, l
    ld b, e
    ldh a, [$30]
    inc sp
    sbc h
    ld l, $4f
    ld a, $52
    ld d, c
    ldh a, [$30]
    inc sp
    sbc h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ld b, d
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, b
    ld c, h
    ld c, e
    ld b, e
    ld d, d
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, d
    ld e, l
    ld b, c
    ld b, d
    ldh a, [$2f]
    ld b, d
    ccf
    ccf
    ld c, c
    ld a, $51
    ld d, c
    ldh a, [$2b]
    inc sp
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$30]
    inc sp
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$36]
    ld d, c
    ld e, e
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [rNR50]
    ccf
    ld d, h
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [rNR50]
    ld b, h
    ld b, [hl]
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld d, c
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ldh a, [$29]
    ld d, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ldh a, [$36]
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ldh a, [$31]
    ld d, d
    ld b, h
    ld b, h
    ld b, d
    ld d, c
    ld d, b
    ldh a, [$35]
    ld a, $51
    ld d, c
    ld b, d
    ldh a, [$29]
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$36]
    ld d, c
    ld c, a
    ld a, $43
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$35]
    ld d, d
    ld b, l
    ld b, d
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$2f]
    ld a, $53
    ld a, $50
    ld d, c
    ld a, $3f
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$37]
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ldh a, [$30]
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ldh a, [$35]
    ld c, h
    ld c, d
    ld a, $4b
    ldh a, [$2a]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ccf
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$30]
    ld e, e
    ld c, a
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ldh a, [$37]
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ccf
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$3d]
    ld b, d
    ld b, [hl]
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ldh a, [$3a]
    ld b, [hl]
    ld d, c
    ld d, a
    ccf
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$29]
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $3f
    ldh a, [$29]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ldh a, [$2f]
    ld d, d
    ld c, a
    ld a, $50
    ld d, c
    ld a, $3f
    ldh a, [rNR50]
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ldh a, [$2b]
    ld a, $4f
    ld b, e
    ld b, d
    ldh a, [$36]
    ld b, d
    ld b, l
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    ldh a, [$37]
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ldh a, [$f0]
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    pop af
    inc bc
    nop
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    inc b
    nop
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    pop af
    ld b, $00
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    rlca
    nop
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    pop af
    ld b, $00
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    rlca
    nop
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    pop af
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld e, e
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    jr nc, jr_041_6d84

    ld h, h
    ld d, d
    ld c, d
    pop af
    ld [bc], a
    nop
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    inc bc
    nop
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    jr nc, jr_041_6da2

    pop af
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld e, e
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$28]
    ld c, e
    ld d, c
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c

jr_041_6d84:
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    pop af
    jr nc, jr_041_6ddc

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    cpl
    ld e, e
    ld b, l
    ld c, d

jr_041_6da2:
    ld d, d
    ld c, e
    ld b, h
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_041_6dfa

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    pop af
    ld b, d
    ld b, [hl]
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
    ld d, b
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c

jr_041_6ddc:
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_041_6e37

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$3a]
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    ld b, d

jr_041_6dfa:
    ld b, [hl]
    ld c, e
    pop af
    jr nc, jr_041_6e4b

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$3a]
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_041_6e68

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$28]
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    dec hl
    inc sp
    ld h, h
    jr nc, jr_041_6e72

    ld d, l
    pop af
    ld d, d

jr_041_6e37:
    ld c, d
    ld h, h
    dec b
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, h
    ld b, c

jr_041_6e4b:
    ld a, $50
    ld h, h
    jr nc, jr_041_6e83

    ld h, h
    jr nc, jr_041_6e91

    ld d, l
    pop af
    ld d, d
    ld c, d
    ld h, h
    dec b
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c

jr_041_6e68:
    ld h, h
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    pop af
    ld d, d
    ld c, d

jr_041_6e72:
    ld h, h
    inc bc
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c

jr_041_6e83:
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld d, d
    ld c, d
    ld h, h
    inc bc
    ld h, h
    inc sp

jr_041_6e91:
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, h
    inc h
    ld b, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    pop af
    ld d, d
    ld c, d
    ld h, h
    inc bc
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, h
    inc l
    ld c, e
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, a
    pop af
    ld d, d
    ld c, d
    ld h, h
    inc bc
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$3d]
    ld e, e
    ld b, l
    ld c, d
    ld d, c
    ld h, h
    jr nc, jr_041_6f29

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2f]
    ld e, e
    ld e, [hl]
    ld d, c
    ld h, h
    jr nc, jr_041_6f37

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    pop af
    ld a, $4b
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$3d]
    ld e, e
    ld b, l
    ld c, d
    ld d, c
    ld h, h
    jr nc, jr_041_6f51

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld h, c
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h

jr_041_6f29:
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    add hl, sp
    ld a, $48
    ld d, d
    ld d, d
    ld c, d
    ld d, h
    ld b, d

jr_041_6f37:
    ld c, c
    ld c, c
    ld b, d
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a

jr_041_6f51:
    sbc h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    cpl
    ld a, $53
    ld a, $61
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    dec h
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld b, c
    ld h, c
    ldh a, [$37]
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    pop af
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ld h, c
    ldh a, [$3a]
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    pop af
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    ld d, c
    ld a, $52
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld h, $45
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    add hl, hl
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$3d]
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    pop af
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $51
    ld d, d
    ld b, e
    ld b, d
    ld h, c
    ldh a, [$37]
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    pop af
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    cpl
    ld c, h
    ld b, b
    ld b, l
    ld h, c
    ldh a, [$3d]
    ld d, d
    ld b, e
    ld a, $49
    ld c, c
    ld d, b
    ld c, b
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld d, c
    ld h, c
    ldh a, [$35]
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    jr nc, jr_041_70a4

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    sbc h
    pop af
    ccf
    ld b, d
    ld b, [hl]
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    jr nc, jr_041_70c1

    ld d, b
    ld b, [hl]
    ld c, b
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    jr c, jr_041_70c4

    ld b, h
    ld b, d
    ccf
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ld c, b
    ld a, $4f
    ld d, c
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld e, e
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$2e]
    ld a, $4b
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld [hl], $4d

jr_041_70a4:
    ld b, [hl]
    ld b, d
    ld c, c
    pop af
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld a, $49
    ld c, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ldh a, [$30]
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ldh a, [$37]
    ld c, h

jr_041_70c1:
    ld c, c
    ld c, c
    ld c, b

jr_041_70c4:
    ld e, l
    ld b, l
    ld c, e
    ldh a, [$37]
    ld c, h
    ld c, c
    ld c, c
    ld c, b
    ld e, l
    ld b, l
    ld c, e
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld d, a
    ld b, d
    ld c, c
    ld c, e
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, a
    ldh a, [$32]
    ld c, l
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, c
    ldh a, [$2b]
    ld c, h
    ld b, b
    ld b, l
    ld c, e
    ld e, e
    ld d, b
    ld b, [hl]
    ld b, h
    ldh a, [rNR50]
    ld c, a
    ld c, a
    ld c, h
    ld b, h
    ld a, $4b
    ld d, c
    ldh a, [$36]
    ld d, c
    ld e, l
    ld c, a
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ldh a, [$2a]
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ldh a, [$2f]
    ld a, $52
    ld c, e
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ldh a, [$2f]
    ld e, e
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld a, $52
    ldh a, [$31]
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ldh a, [$27]
    ld d, d
    ld d, b
    ld d, b
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, h
    ldh a, [$36]
    ld d, c
    ld e, h
    ld c, a
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ldh a, [$29]
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ldh a, [$28]
    ld b, h
    ld c, h
    ld b, [hl]
    ld d, b
    ld d, c
    ldh a, [$2a]
    ld e, l
    ld d, c
    ld b, [hl]
    ld b, h
    ldh a, [$3d]
    ld a, $52
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld b, c
    ldh a, [$38]
    ld c, e
    ld a, $40
    ld b, l
    ld d, c
    ld d, b
    ld a, $4a
    ldh a, [$38]
    ld c, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ldh a, [$2a]
    ld b, d
    ld b, c
    ld d, d
    ld c, c
    ld b, c
    ld b, [hl]
    ld b, h
    ldh a, [$31]
    ld b, d
    ld d, c
    ld d, c
    ldh a, [$29]
    ld b, [hl]
    ld b, d
    ld d, b
    ldh a, [$58]
    ld c, e
    ld b, h
    ld d, b
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ldh a, [$29]
    ld a, $52
    ld c, c
    ldh a, [$2f]
    ld [hl-], a
    ld [hl], $65
    add hl, sp
    jr z, jr_041_71cf

    ld [hl], $38
    ld h, $2b
    add hl, sp
    ld [hl-], a
    dec [hl]
    ld [hl], $2c
    ld h, $2b
    scf
    dec h
    jr z, jr_041_71d2

    jr z, jr_041_71d6

    cpl
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, d
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld sp, hl
    db $10
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, l
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld b, d

jr_041_71cf:
    ld c, a
    ld c, a
    ld b, d

jr_041_71d2:
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c

jr_041_71d6:
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld sp, hl
    db $10
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$f2f7]
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld h, h

jr_041_71f0:
    ld sp, hl
    jr nz, jr_041_7258

    pop af
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    ld d, b
    ld h, h
    ld sp, hl
    jr nc, jr_041_71f0

    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld a, [$f2f7]
    ld sp, hl
    jr nz, jr_041_7272

    pop af
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld d, a
    ld d, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    pop af
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, h
    jr z, @+$48

    ld c, e
    ld b, d
    ld a, [$f2f7]
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    pop af
    ld a, [$f2f7]
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, h
    ld b, d
    ld c, c
    ld e, h
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    dec h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d

jr_041_7258:
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$f2f7]
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, h
    ld a, $52
    ld d, b
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, c

jr_041_7272:
    pop af
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld b, h
    ld b, d
    ld c, c
    ld e, h
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, h
    ld [hl-], a
    ld l, $66
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, h
    ld b, d
    ld c, c
    ld e, h
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld a, [$f0f7]
    db $ed
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, [hl]
    ld a, [$f0f7]
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr z, jr_041_7303

    ld c, e
    ld d, a
    ld b, d
    ld c, c
    ld c, e
    ldh a, [$3d]
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ldh a, [$3a]
    jr z, jr_041_7308

    ld [hl], $37
    inc h
    scf
    ld [hl-], a
    ld l, $f0
    cpl
    ld [hl-], a
    ld [hl], $f0
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld h, h
    inc h
    ccf
    ld d, h
    ldh a, [$ed]
    or $64
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    ld h, h
    ld sp, hl
    nop
    pop af
    jr z, jr_041_734a

    ld b, e
    ld a, $45
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld d, b

jr_041_7303:
    ld c, l
    ld d, d
    ld c, e
    ld c, b
    ld d, c

jr_041_7308:
    ld b, d
    ld h, l
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, h
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, c
    ld d, c
    pop af
    ld a, $4b
    ld b, l
    ld a, $4b
    ld b, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$f2f7]
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, h
    ld sp, hl
    jr nz, jr_041_739c

    pop af
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld a, $52
    ld b, e
    ld b, h
    ld b, d
    ld d, b
    ld d, c

jr_041_734a:
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$f2f7]
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    pop af
    ld a, [$f2f7]
    db $ed
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    pop af
    ld a, $52
    ld b, e
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$ed]
    daa
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
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, h
    ld d, e

jr_041_739c:
    ld c, h
    ld c, c
    ld c, c
    ld h, l
    ld a, [$f2f7]
    db $ed
    daa
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld d, h
    ld b, d
    ld b, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    pop af
    ld d, c
    ld c, a
    ld a, $52
    ld c, a
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, e
    ld c, h
    ld c, a
    ld d, c
    ld h, c
    ld a, [$f0f7]
    db $ed
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    pop af
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, e
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
    ld h, c
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    pop af
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, l
    ld a, [$f0f7]
    db $ed
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld sp, hl
    nop
    pop af
    ccf
    ld b, d
    ld c, e
    ld a, $4b
    ld c, e
    ld d, c
    ld h, [hl]
    ld a, [$f0f7]
    db $ed
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    pop af
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    pop af
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, l
    ld a, [$f0f7]
    db $ed
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld h, [hl]
    ldh a, [$64]
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_041_74c3

    ld sp, $2c28
    ld h, h
    inc h
    dec hl
    ld sp, $3128
    ldh a, [$ed]
    ld l, $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld b, l
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld a, [$f0f7]
    db $ed
    jr z, jr_041_7504

    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, d
    ld c, e
    ld d, c
    ld b, e
    ld b, d

jr_041_74c0:
    ld c, a
    ld c, e
    ld d, c

jr_041_74c3:
    ld h, c
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    add sp, $08
    nop
    jr nc, jr_041_750d

    ld d, l
    ld h, h
    dec hl
    inc sp
    ld h, h
    and d
    ld sp, hl
    jr nz, jr_041_74c0

    nop
    ld bc, $422f
    ld d, e
    ld b, d
    ld c, c
    ld sp, hl
    db $10
    add sp, $08
    ld bc, $3e30
    ld d, l

jr_041_74e7:
    ld h, h
    jr nc, jr_041_751d

    ld h, h
    and d
    ld sp, hl
    inc h
    ld a, [$f2f7]
    db $ed
    ld sp, hl
    nop
    add sp, $08
    nop
    ld [hl], $37
    ld e, b
    ld h, h
    and d
    ld sp, hl
    jr z, jr_041_74e7

    nop
    ld bc, $422f
    ld d, e

jr_041_7504:
    ld b, d
    ld c, c
    ld sp, hl
    db $10
    add sp, $08
    ld bc, $2524

jr_041_750d:
    ld a, [hl-]
    ld h, h
    and d
    ld sp, hl
    inc l
    ld a, [$f2f7]
    db $ed
    ld sp, hl
    nop
    add sp, $08
    nop
    inc h
    ld a, [hl+]

jr_041_751d:
    inc l
    ld h, h
    and d
    ld sp, hl
    jr nc, @-$16

    nop
    ld bc, $422f
    ld d, e
    ld b, d
    ld c, c
    ld sp, hl
    db $10
    add sp, $08
    ld bc, $312c
    scf

jr_041_7532:
    ld h, h
    and d
    ld sp, hl
    inc [hl]
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    add sp, $08
    nop
    jr nc, jr_041_757f

    ld d, l
    ld h, h
    dec hl
    inc sp
    ld h, h
    sbc h
    ld sp, hl
    jr nz, jr_041_7532

    nop
    ld bc, $422f
    ld d, e
    ld b, d
    ld c, c
    ld sp, hl
    db $10
    add sp, $08
    ld bc, $3e30
    ld d, l

jr_041_7559:
    ld h, h
    jr nc, jr_041_758f

    ld h, h
    sbc h
    ld sp, hl
    inc h
    ld a, [$f2f7]
    db $ed
    ld sp, hl
    nop
    add sp, $08
    nop
    ld [hl], $37
    inc h
    ld h, h
    sbc h
    ld sp, hl
    jr z, jr_041_7559

    nop
    ld bc, $422f
    ld d, e
    ld b, d
    ld c, c
    ld sp, hl
    db $10
    add sp, $08
    ld bc, $2524

jr_041_757f:
    ld a, [hl-]
    ld h, h
    sbc h
    ld sp, hl
    inc l
    ld a, [$f2f7]
    db $ed
    ld sp, hl
    nop
    add sp, $08
    nop
    inc h
    ld a, [hl+]

jr_041_758f:
    inc l
    ld h, h
    sbc h
    ld sp, hl
    jr nc, @-$16

    nop
    ld bc, $422f
    ld d, e
    ld b, d
    ld c, c
    ld sp, hl
    db $10
    add sp, $08
    ld bc, $312c
    scf
    ld h, h
    sbc h
    ld sp, hl
    inc [hl]
    ld a, [$f0f7]
    db $ed
    dec hl
    ld e, h
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld a, [$f0f7]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    pop af
    ld sp, hl
    db $10
    ld h, l
    ld a, [$f0f7]
    db $ed
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    jr z, jr_041_7631

    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld b, e
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, [hl]
    ldh a, [$ed]
    or $64
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    pop af
    ld sp, hl
    nop
    ld a, [$f2f7]
    jr z, jr_041_765e

    ld b, e
    ld a, $45
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ld c, l
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, l
    pop af
    ld a, [$f0f7]
    db $ed
    jr nc, jr_041_766b

    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e

jr_041_7631:
    ld b, d
    ld c, a
    pop af
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ccf
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld a, [$f0f7]
    db $ed
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    pop af
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld h, l
    ld a, [$f2f7]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h

jr_041_765e:
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld d, d

jr_041_766b:
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$f9]
    jr nz, jr_041_76d9

    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_041_76f7

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
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_041_771c

    ld b, e
    ld e, l
    ld c, a
    rst $30
    ld a, [c]
    ld sp, hl
    db $10
    pop af
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    pop af
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld b, d

jr_041_76d9:
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    dec hl
    inc sp
    sbc h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    pop af

jr_041_76f7:
    ld sp, hl
    jr nz, @+$67

    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    jr nc, jr_041_7735

    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, [hl]
    ld b, e
    ld d, c
    pop af

jr_041_771c:
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld a, $4b
    ld b, c
    ld h, l
    rst $30
    ldh a, [$f9]
    db $10
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c

jr_041_7735:
    rst $30
    ld a, [c]
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld d, c
    ld h, l
    pop af
    rst $30
    ldh a, [$f9]
    db $10
    ld h, h
    ld c, b
    ld a, $4a
    pop af
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    rst $30
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    pop af
    ld sp, hl
    db $10
    rst $30
    ld a, [c]
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld a, $4b
    ld b, c
    ld h, l
    pop af
    rst $30
    ldh a, [$f9]
    db $10
    pop af
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, l
    rst $30
    ldh a, [$f9]
    db $10
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    jr nc, jr_041_77eb

    ld d, l
    ld h, h
    dec hl
    inc sp
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    jr nc, jr_041_7820

    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    rst $30
    ld a, [c]
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    pop af
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    jr nc, jr_041_7815

    ld d, l
    ld h, h
    jr nc, jr_041_780e

    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    jr nc, jr_041_784a

    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c

jr_041_77eb:
    ld b, d
    rst $30
    ld a, [c]
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    pop af
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl

jr_041_780e:
    jr nc, jr_041_7874

    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c

jr_041_7815:
    ld b, d
    rst $30
    ld a, [c]
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d

jr_041_7820:
    ld c, e
    ld h, l
    pop af
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    jr nc, jr_041_789e

    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    rst $30
    ld a, [c]
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d

jr_041_784a:
    ld c, e
    ld h, l
    pop af
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    pop af
    inc h
    ld b, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $30
    ld a, [c]
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    jr nc, jr_041_78cb

    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, d

jr_041_7874:
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    inc l
    ld c, e
    ld d, c
    ld h, c
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    jr nc, jr_041_78f1

    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    rst $30
    ld a, [c]
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e

jr_041_789e:
    ld h, l
    pop af
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld b, h
    ld a, $3f
    pop af
    ld sp, hl
    db $10
    rst $30
    ld a, [c]
    ld sp, hl
    jr nz, jr_041_7915

    pop af
    rst $30
    ldh a, [$f9]
    db $10
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, l
    rst $30
    ld a, [c]

jr_041_78cb:
    ld sp, hl
    db $10
    ld h, h
    ld b, l
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    pop af
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $4b
    ld h, h
    or $65
    rst $30
    ldh a, [$f9]
    db $10
    ld h, h
    ld b, [hl]
    ld e, [hl]
    ld d, c
    pop af
    ld b, h
    ld a, $4b
    ld d, a
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld d, b

jr_041_78f1:
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    rst $30
    ld a, [c]
    ld sp, hl
    db $10
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, c

jr_041_7915:
    rst $30
    ld a, [c]
    ld sp, hl
    db $10
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld d, c
    ld h, c
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_041_799f

    rst $30
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    pop af
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld a, $3f
    ld h, c
    rst $30
    ldh a, [$39]
    ld a, $48
    ld d, d
    ld d, d
    ld c, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    pop af
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, c
    rst $30
    ldh a, [$30]
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld e, h
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld sp, $3f42
    ld b, d
    ld c, c
    pop af
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$2f]
    ld a, $53
    ld a, $64
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld e, [hl]
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h

jr_041_799f:
    jr z, jr_041_79f0

    ld b, c
    ld b, d
    ld h, c
    rst $30
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld d, d
    ld c, a
    ld c, d
    pop af
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, c
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, e
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_041_7a2c

    ld b, l
    ld c, h
    ld b, b
    ld b, l
    ld h, l
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af

jr_041_79da:
    ld sp, hl
    jr nz, jr_041_7a42

    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld sp, hl
    jr nz, jr_041_79da

    ld sp, hl
    db $10
    rst $30
    ld a, [c]
    ld d, e
    ld c, h
    ld c, a

jr_041_79f0:
    ld b, h
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, l
    pop af
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld c, l
    ld a, $4b
    ld c, e
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    pop af
    ld [hl], $51
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld sp, hl
    db $10
    rst $30
    ld a, [c]
    ld b, d
    ld c, a
    ld c, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, l
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld c, a
    ld d, d
    ld d, b
    ld b, d
    ld c, c

jr_041_7a2c:
    ld b, [hl]
    ld b, h
    ld b, d
    pop af
    ld [hl], $51
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, h
    ld b, l
    ld a, $51
    rst $30
    ld a, [c]
    ld sp, hl
    db $10
    pop af
    ccf
    ld b, d
    ld e, e
    ld c, e

jr_041_7a42:
    ld b, h
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, l
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, l
    ld a, $40
    ld c, b
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld [hl], $51
    ld c, h
    ld c, a
    ld d, [hl]
    pop af
    ld b, l
    ld a, $51
    ld h, h
    ld sp, hl
    db $10
    rst $30
    ld a, [c]
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    pop af
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    pop af
    ld sp, hl
    db $10
    ld h, h
    rst $30
    ld a, [c]
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    ld b, [hl]
    ld b, h
    pop af
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    inc l
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
    pop af
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld sp, hl
    db $10
    rst $30
    ld a, [c]
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $52
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    pop af
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld d, c
    ld d, a
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    pop af
    ld sp, hl
    db $10
    ld h, h
    ld c, e
    ld a, $46
    ld d, e
    rst $30
    ld a, [c]
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    rst $30
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $3f
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld e, [hl]
    ld d, c
    pop af
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$f9]
    jr nc, jr_041_7b69

    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    jr nc, jr_041_7b82

    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ld a, [c]
    ld sp, hl
    ld b, b
    ld d, b
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    jr nc, jr_041_7bb4

    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c

jr_041_7b69:
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ld a, [c]
    ld sp, hl
    ld b, b
    ld d, b
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c

jr_041_7b82:
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    ld d, b
    ld d, b
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    jr nz, jr_041_7c13

    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c

jr_041_7bb4:
    pop af
    ld sp, hl
    jr nc, jr_041_7c1c

    ld a, $4b
    ld h, c
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    pop af
    ld d, e
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
    ld h, c
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld d, b
    ld c, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_041_7c4e

    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    jr c, jr_041_7c3b

    ld b, h
    ld b, d
    ccf
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ld c, b
    ld a, $4f
    ld d, c
    ld b, d
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld e, e
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, c
    rst $30
    ldh a, [$27]

jr_041_7c13:
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $4d
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, b

jr_041_7c1c:
    ld d, c
    ld a, $4b
    ld b, c
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, [hl]
    and $f0
    daa
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $4d
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    pop af
    ld d, h

jr_041_7c3b:
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    rst $30
    ldh a, [$f9]
    nop

jr_041_7c4e:
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_041_7cbf

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
    ld h, l
    rst $30
    ldh a, [rNR50]
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_041_7cae

    ld h, l
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$f9]
    db $10
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, l
    rst $30

jr_041_7cae:
    ldh a, [$f9]
    db $10
    ld h, h
    ld c, b
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    pop af
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $30

jr_041_7cbf:
    ld a, [c]
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld d, c
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$f9]
    db $10
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, l
    rst $30
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    pop af
    ld sp, hl
    db $10
    rst $30
    ld a, [c]
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, l
    pop af
    rst $30
    ldh a, [$3a]
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    ld c, d
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld l, $4f
    ld a, $43
    ld d, c
    rst $30
    ld a, [c]
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    ld c, c
    ld e, h
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    pop af
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld c, l
    ld b, e
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, l
    rst $30
    ldh a, [$2e]
    ld a, $4b
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    pop af
    ld d, c
    ld c, h
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld h, $45
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    rst $30
    ld a, [c]
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
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
