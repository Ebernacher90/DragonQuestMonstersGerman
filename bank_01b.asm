; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    dec de
    inc de
    ld b, c
    ld a, [de]
    ld b, c
    ld hl, $0b41
    ld b, b
    sub e
    ld b, b
    jr z, jr_01b_404e

    ld h, d
    ld b, c
    or a
    ld b, c
    ld b, h
    ld b, d
    db $76
    ld b, d
    xor [hl]
    ld b, d
    bit 0, d
    ld a, [bc]
    ld b, e
    sub c
    ld b, e
    nop
    ld b, h
    ld l, [hl]
    ld b, h
    bit 0, h
    dec h
    ld b, l
    cp d
    ld b, l
    di
    ld b, l
    sub d
    ld b, [hl]
    jp z, $f846

    ld b, [hl]
    sub $47
    db $eb
    ld b, a
    rst $38
    ld b, a
    dec de
    ld c, b
    ld h, a
    ld c, b
    add d
    ld c, b
    ld a, [bc]
    ld c, c
    sbc h
    ld c, c
    push de
    ld c, c
    ld l, h
    ld c, d
    sbc [hl]
    ld c, d
    bit 1, d
    inc hl
    ld c, e
    sub l
    ld c, e
    ld l, b
    ld c, h
    xor a

jr_01b_404e:
    ld c, h
    cp a
    ld c, h
    rst $18
    ld c, h
    rst $28
    ld c, h
    ld c, $4d
    ld d, d
    ld c, l
    sub l
    ld c, l
    jr jr_01b_40ab

    ld a, [hl-]
    ld c, [hl]
    ld [hl], c
    ld c, [hl]
    ld [de], a
    ld c, a
    add b
    ld c, a
    ld b, a
    ld d, b
    add [hl]
    ld d, b
    ld d, $51
    pop bc
    ld d, c
    sbc l
    ld d, d
    inc b
    ld d, e
    ld a, l
    ld d, e
    ld a, e
    ld d, h
    cp b
    ld d, h
    rst $38
    ld d, h
    bit 2, l
    inc b
    ld d, [hl]
    ld a, [hl-]
    ld d, [hl]
    xor a
    ld d, [hl]
    inc de
    ld d, a
    ld b, b
    ld e, b
    ld l, [hl]
    ld e, b
    xor a
    ld e, b
    push bc
    ld e, b
    db $e4
    ld e, b
    ld h, c
    ld e, c
    sub c
    ld e, c
    and c
    ld e, c
    reti


    ld e, c
    ld c, $5a
    inc l
    ld e, d
    ld h, a
    ld e, d
    and d
    ld e, d
    inc e
    ld e, e
    scf
    ld e, e
    ld h, l
    ld e, e
    sub a
    ld e, e
    dec e
    ld e, h
    ld b, a
    ld e, h
    ld d, [hl]
    ld e, [hl]

jr_01b_40ab:
    sbc d
    ld e, [hl]
    dec c
    ld e, a
    ld c, e
    ld e, a
    adc e
    ld e, a
    cp l
    ld e, a
    inc a
    ld h, b
    and h
    ld h, b
    inc hl
    ld h, c
    ld b, e
    ld h, c
    and [hl]
    ld h, c
    ei
    ld h, c
    rla
    ld h, d
    ld c, d
    ld h, d
    adc d
    ld h, d
    call Call_01b_6362
    ld h, e
    adc e
    ld h, e
    jp z, $0163

    ld h, h
    inc a
    ld h, h
    or [hl]
    ld h, h
    ldh a, [$65]
    add a
    ld h, [hl]
    add c
    ld l, b
    add sp, $68
    ld e, l
    ld l, c
    ld a, e
    ld l, c
    sbc e
    ld l, c
    db $db
    ld l, c
    ld b, a
    ld l, d
    add $6a
    rst $30
    ld l, d
    sbc a
    ld l, e
    or b
    ld l, e
    rst $30
    ld l, e
    ret nc

    ld l, h
    or [hl]
    ld l, l
    inc e
    ld l, [hl]
    ld d, h
    ld l, [hl]
    add [hl]
    ld l, [hl]
    ld e, h
    ld l, a
    push de
    ld l, a
    ld [hl], e
    ld [hl], b
    ld h, b
    ld [hl], c
    sbc c
    ld [hl], c
    sub d
    ld [hl], d
    and b
    ld [hl], d
    jp Jump_01b_6772


    ld [hl], e
    ld hl, sp+$73
    ld h, [hl]
    ld [hl], h
    or a
    ld [hl], h

Call_01b_4113:
    ld de, $4007
    call $05b6
    ret


    ld de, $4007
    call $05f6
    ret


    call Call_01b_4113
    call $0609
    ret


    ld [$649f], a
    ld h, a
    dec hl
    ld a, $52
    ld h, h
    ld a, $3f
    ld h, l
    rst $28
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld c, d
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld d, [hl]
    ld c, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01b_41d8

    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    cpl
    ld a, $41
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4a
    ld a, $40
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld a, $50
    ld a, [$eff7]

jr_01b_41d8:
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
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld b, d
    ld c, a
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    dec a
    ld c, h
    ld c, a
    ld c, e
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $54
    ld c, h
    ld b, l
    ld c, c
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, c
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
    daa
    ld b, d
    ld c, a
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $30
    ld d, d
    ld d, c
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
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, c
    ld h, h
    ld sp, $4046
    ld b, l
    ld d, c
    rst $28
    xor $3e
    ld c, e
    ld d, h
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    and h
    jr c, jr_01b_42e0

    ld d, c
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $45
    ld a, $49
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$33]
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld h, l
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld a, $4f
    ld d, c
    ld b, d
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01b_4321

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    sbc h
    rst $28
    xor $4b

jr_01b_42e0:
    ld b, c
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_01b_4335

    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01b_4356

    ld c, e
    ld b, d
    ld h, h
    dec [hl]
    ld a, $51
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b

jr_01b_4321:
    ld b, l
    ld d, c
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $53
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a

jr_01b_4335:
    ld b, c
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld d, c
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
    add hl, hl
    ld c, c
    ld b, d

jr_01b_4356:
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld h, c
    ld h, h
    daa
    ld a, $50
    ld a, [$eff7]
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
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
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01b_43e7

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $25
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, h
    ld a, $4f
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4a
    ld e, h
    ld b, h
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
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    rst $28
    xor $4a
    ld d, d
    ld e, [hl]
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $26

jr_01b_43e7:
    ld b, l
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld c, l
    ld c, a
    ld b, d
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
    jr z, jr_01b_4456

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $30
    ld d, d
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
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
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $27
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h

jr_01b_4456:
    ld a, [$eff7]
    xor $52
    ld c, e
    ld c, d
    ld e, h
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, l
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
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_01b_44d7

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
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
    ld h, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $2c
    ld c, e
    ld b, e
    ld c, h
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld h, b
    ld h, h
    jr nc, jr_01b_4513

    ld d, b
    ld d, c

jr_01b_44d7:
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $2b
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
    ld a, [$eff7]
    xor $44
    ld d, d
    ld d, c
    ld h, h
    ld a, $4b
    ld b, h
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
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h

jr_01b_4513:
    add hl, hl
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, c
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
    ld h, c
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld b, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $49
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
    daa
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
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
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld a, $3f
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
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
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, h
    jr nc, jr_01b_463b

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $2e
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $41
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
    rst $28
    xor $30
    ld b, d
    ld d, c
    ld a, $48
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld c, c
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d

jr_01b_463b:
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $45
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_01b_4699

    ld c, e
    ld d, b
    ld d, c
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld e, e
    ld c, a
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld a, [$eff7]
    xor $42
    ld c, a
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
    inc l
    ld b, b
    ld b, l

jr_01b_4699:
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, d
    ld e, l
    ld b, c
    ld b, d
    ld h, l
    rst $28
    xor $2f
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
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
    dec h
    ld b, [hl]
    ld b, h
    ld h, h
    jr z, @+$58

    ld b, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    jr z, jr_01b_472c

    ld d, b
    ld a, [$eff7]
    xor $52
    ld c, d
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3d
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_01b_472c:
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    and h
    ld a, [$eff7]
    xor $57
    ld h, c
    dec h
    ld h, c
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
    jr nc, jr_01b_47b2

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $45
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    ld h, a
    and d
    ld h, a
    sbc h
    dec a
    ld a, $45
    ld c, c
    ld a, [$eff7]
    xor $45
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $55
    ld b, [hl]
    ld c, d
    ld a, $49
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
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

jr_01b_47b2:
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $52
    ld c, e
    ccf
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
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
    dec hl
    ld a, $4a
    rst $28
    xor $45
    ld a, $4a
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    jr nc, jr_01b_4834

    ld c, d
    ld c, l
    ld b, e
    and h
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
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$f6]
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld a, $4a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    dec [hl]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h

jr_01b_4834:
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
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld b, l
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $4b
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, l
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01b_48ca

    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $47
    ld b, d
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_01b_48f8

    ld c, e
    ld d, b
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
    dec h
    ld b, d
    ld d, b
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $44
    ld b, d
    ld b, h

jr_01b_48ca:
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld b, d
    ld c, a
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
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld c, a
    ld a, $40

jr_01b_48f8:
    ld b, l
    ld b, d
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $25
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
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
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $49
    ld c, c
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
    ld a, $49
    ld d, c
    ld b, d
    rst $28
    xor $3a
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    rst $28
    xor $3d
    ld d, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    and h
    dec a
    ld d, a
    ld d, a
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_01b_49ce

    ld b, e
    ld a, $45
    sbc h
    ld a, [$eff7]
    xor $4f
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
    ld h, c
    rst $28
    xor $3d
    ld d, a
    ld d, a
    and h
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
    xor $27
    ld a, $64
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, c
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $29
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld d, b
    ld d, c

jr_01b_49ce:
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld h, c
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $45
    ld a, $3f
    ld d, c
    ld h, h
    jr nc, jr_01b_4a2a

    ld b, c
    ld c, b
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
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
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    scf
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, e
    ld d, d

jr_01b_4a2a:
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
    xor $47
    ld a, $64
    ld c, a
    ld a, $43
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$e9]
    ld h, b
    or $64
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
    ld [hl], $40
    ld b, l
    ld c, a
    ld a, $4b
    ld c, b
    ld h, c
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld e, l
    ld e, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $2a
    ld b, d
    ld c, a
    ld d, d
    ld b, b
    ld b, l
    and h
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
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
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    daa
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
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $61
    ld h, h
    jr nc, jr_01b_4b16

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

jr_01b_4b16:
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
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $29
    ld b, [hl]
    ld c, e
    ld a, $49
    ld c, a
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_01b_4b8e

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld d, a
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, l
    rst $28
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
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld sp, $4046
    ld b, [hl]

jr_01b_4b8e:
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld e, b
    ld b, l
    ld c, d
    ld h, b
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, c
    ld d, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $49
    ld b, d
    ld b, [hl]
    ld b, c
    and h
    ld d, h
    ld a, $50
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld a, $44
    ld d, c
    rst $28
    xor $45
    ld a, $3f
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
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $42
    ld c, a
    ld c, e
    ld d, b
    ld d, c
    ld b, l
    ld a, $43
    ld d, c
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
    or $61
    rst $28
    xor $39
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
    ld a, $4b
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $46
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01b_4c87

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
    xor $28
    ld b, [hl]
    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    rst $28
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    inc sp
    ld c, a
    ld b, [hl]
    ld c, e
    ld d, a
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46

jr_01b_4c87:
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
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
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
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
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    ld h, a
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $51
    ld e, h
    ld b, l
    ld c, e
    ld h, h
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
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, c
    rst $28
    xor $27
    ld a, $4b
    ld c, b
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    scf
    ld c, a
    ld a, $44
    ld b, d
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
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    inc sp
    ld c, a
    ld b, [hl]
    ld c, e
    ld d, a
    ld b, d
    ld d, b
    ld d, b
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $51
    ld c, a
    ld a, $44
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld h, l
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, c
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $48
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    daa
    ld a, $45
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
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $51
    ld c, a
    ld a, $44
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
    ld [hl], $3e
    ld b, h
    ld l, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $3e
    ld b, h
    ld l, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $44
    ld c, a
    ld e, h
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, e
    ld d, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01b_4ebd

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
    xor $28
    ld b, [hl]
    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$52

    ld h, h
    ld d, h
    ld e, e
    ld c, a
    ld b, d
    ld h, h
    ld d, b
    ld d, d
    ld c, l
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $54

jr_01b_4ebd:
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
    ld a, [$eff7]
    xor $2f
    ld a, $53
    ld a, $41
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    rst $28
    xor $45
    ld e, e
    ld d, c
    ld d, c
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
    inc h
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $46
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
    rst $28
    xor $f0
    ld [$649f], a
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
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    rst $28
    xor $51
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $61
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, e
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
    ld c, a
    ld h, h
    jr nc, jr_01b_4fd6

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $41
    ld c, a
    ld b, d
    ld b, [hl]
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
    rst $28
    xor $42
    ld c, a
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, b
    rst $28
    xor $54
    ld b, d

jr_01b_4fd6:
    ld c, e
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_01b_5026

    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_01b_504d

    ld c, e
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    rst $28
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

jr_01b_5026:
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d

jr_01b_504d:
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, [hl-]
    ld a, $40
    ld b, l
    ld d, b
    sbc h
    rst $28
    xor $4a
    ld a, $50
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld a, $44
    ld d, b
    ld d, c
    and e
    ld a, [$eff7]
    xor $30
    ld a, $55
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $3a
    ld a, $40
    ld b, l
    ld d, b
    ld c, d
    ld a, $50
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, a
    ld d, h
    ld a, $4f
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ld d, c
    ld d, b
    ld a, $4a
    ld h, b
    ld a, [$eff7]
    xor $3e
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
    jr nc, jr_01b_5102

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
    ld [hl], $51
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, l
    rst $28
    xor $28
    ld c, a
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $33
    ld a, $4f
    ld d, c
    ld c, e
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
    ld b, e
    ld e, l
    ld c, a
    ld h, h

jr_01b_5102:
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $28
    ld b, b
    ld b, l
    ld d, b
    ld c, d
    ld a, $4b
    ld c, e
    ld h, c
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
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4d
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, b
    rst $28
    xor $42
    ld b, l
    ld b, d
    ld h, h
    daa
    ld d, d
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $24
    ccf
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, b
    ld d, c
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
    ld b, c
    ld a, $50
    rst $28
    xor $4a
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $54
    ld a, $50
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01b_520d

    ld c, e
    ld h, h
    jr nc, jr_01b_5217

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $42
    ld c, a
    ld d, a
    ld c, h
    ld b, h
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
    ld a, [$eff7]
    xor $28
    ld d, b
    ld h, h
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, [hl]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, h

jr_01b_520d:
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e

jr_01b_5217:
    ld b, d
    ld c, e
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld b, c
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ld b, l
    ld a, $51
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
    ccf
    ld a, $49
    ld b, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $5b
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
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
    ld d, b
    ld c, h
    rst $28
    xor $49
    ld b, d
    ld b, [hl]
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
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld a, [$eff7]
    xor $30
    ld b, d
    ld c, e
    ld d, b
    ld b, b
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
    xor $2a
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
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
    jr nc, jr_01b_532b

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $25
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01b_534c

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

jr_01b_532b:
    ld c, d
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld c, h
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
    ld c, d
    ld b, [hl]
    ld d, c

jr_01b_534c:
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $2e
    ld c, e
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $46
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
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
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
    jr nc, jr_01b_53c1

    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    rst $28
    xor $4b
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $36
    ld b, d
    ld b, l
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
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
    ld b, d
    ld c, e
    rst $28
    xor $2f
    ld d, d
    ld c, a
    ld a, $50
    ld d, c

jr_01b_53c1:
    ld a, $3f
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
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
    jr nc, jr_01b_5424

    ld d, c
    ld h, h
    ld [hl], $42
    ld b, l
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld b, l
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
    xor $53
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
    ld b, d
    rst $28
    xor $2e
    ld a, $4f
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld d, d
    ld c, a
    ld a, $50
    ld d, c
    ld a, $3f
    rst $28
    xor $3f
    ld c, a
    ld b, [hl]

jr_01b_5424:
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $31
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
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
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $29
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, h
    ld c, d
    ccf
    ld b, d
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld c, l
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_01b_54c4

    ld h, l
    ld h, h
    dec hl
    ld d, d
    ld a, $65
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
    ld b, d
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    rst $28
    xor $4a
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $49
    ld a, $52
    ld b, e
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
    ld sp, $663e
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c

jr_01b_54c4:
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
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
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
    jr z, jr_01b_5585

    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $2c
    ld c, a
    ld c, a
    ld c, l
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    inc sp
    ld a, $4b
    ld d, c
    ld b, l
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
    daa
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld a, $4b
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    daa
    ld b, [hl]

jr_01b_5585:
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld bc, $3661
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
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
    xor $26
    ld b, l
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld c, b
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
    ld h, h
    ld h, $45
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld c, b
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
    xor $36
    scf
    ld e, b
    dec h
    ld h, $2b
    jr z, jr_01b_5665

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
    ld c, c
    ld e, e
    ld e, [hl]
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
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b

jr_01b_5665:
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4d
    ld a, $3e
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld a, $3f
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld d, b
    sbc h
    rst $28
    xor $50
    ld b, d
    ld c, e
    ld b, d
    ld h, h
    dec [hl]
    ld a, $52
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, c
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01b_5704

    ld h, h
    ld d, c
    ld a, $4d
    ld c, l
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01b_5728

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, c
    ld c, a
    ld a, $52
    ld c, a
    ld b, [hl]
    ld b, h
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld c, a
    ld a, $52
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, a

jr_01b_5704:
    ld e, l
    ld b, b
    ld c, b
    sbc h
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
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
    ld a, $48
    ld d, a
    ld b, d
    ld c, l
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $27

jr_01b_5728:
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $49
    ld d, b
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, e
    ld b, [hl]
    ld a, $49
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_01b_577c

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
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_01b_579a

    ld b, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30

jr_01b_577c:
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
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $29
    ld c, h
    ld c, a
    ld d, b
    ld b, b

jr_01b_579a:
    ld b, l
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, h
    jr z, jr_01b_57f2

    ld a, [$eff7]
    xor $4a
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    sbc h
    rst $28
    xor $51
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
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
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $25
    ld c, c

jr_01b_57f2:
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld h, [hl]
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
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld c, b
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
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $24
    ld d, b
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c
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
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, c
    rst $28
    xor $25
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld h, h
    ld c, d
    ld b, [hl]
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
    ld h, c
    ld h, h
    scf
    ld d, d
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $24
    ld d, b
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, $4b
    ld b, c
    ld b, [hl]
    ld c, h
    ld d, b
    ld h, l
    rst $28
    xor $38
    ld c, e
    ld b, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld sp, hl
    nop
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
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
    dec l
    ld b, d
    ld d, c
    ld d, a
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
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, e
    ld c, h
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $39
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld a, $4b
    ld c, b
    ld h, b
    rst $28
    xor $f6
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
    ld b, d
    ld d, b
    ld h, h
    ld c, b
    ld c, c
    ld a, $4d
    ld c, l
    ld d, c
    ld h, b
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $24
    ld d, b
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, e
    rst $28
    xor $4a
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
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, c
    rst $28
    xor $39
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    jr nc, jr_01b_59c8

    ld c, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_01b_59e2

    ld b, c
    ld h, h
    ld sp, hl
    nop
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
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
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_01b_5a06

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $25

jr_01b_59c8:
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld b, l

jr_01b_59e2:
    ld a, $51
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $25
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $50
    ld a, $40
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, c

jr_01b_5a06:
    ld d, h
    ld a, $66
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
    ld [hl], $40
    ld b, l
    ld a, $52
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $53
    ld c, h
    ld c, a
    ld c, e
    ld b, d
    ld h, l
    ld h, a
    rst $30
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
    dec h
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
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
    xor $25
    ld a, $50
    ld a, $4f
    ld h, l
    ld h, h
    jr z, jr_01b_5ad3

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    rst $28
    xor $2f
    ld e, e
    ld b, c
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
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    rst $28
    xor $29
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld a, $52

jr_01b_5ad3:
    ld c, d
    rst $28
    xor $42
    ld c, a
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $2f
    ld e, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld c, h
    ld a, $45
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
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
    ld h, h
    jr nc, jr_01b_5bbb

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld e, l
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
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
    jr c, jr_01b_5bf1

    ld a, $4c
    ld h, l
    ld h, h
    daa
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld a, $50
    ld a, $4f
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50

jr_01b_5bbb:
    ld a, [$eff7]
    xor $25
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld e, h
    ld e, [hl]
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $24
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $a4
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
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b

jr_01b_5bf1:
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld b, d
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
    daa
    ld d, d
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    rst $28
    xor $28
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $45
    ld a, $3f
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
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, a
    ld c, h
    ld c, l
    ld b, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $2b
    inc sp
    sbc h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2b
    inc sp
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
    dec h
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    rst $28
    xor $45
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld a, $4a
    ld d, c
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
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
    ld b, d
    ld c, e
    ld h, h
    dec hl
    inc sp
    sbc h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld a, $4d
    ld d, d
    ld d, c
    ld d, c
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$35

    sbc h
    ld l, $4f
    ld a, $52
    ld d, c
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, b
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, b
    ld a, $44
    ld d, c
    ld h, b
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_01b_5d5f

    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld b, d
    ccf
    ccf
    ld c, c
    ld a, $51
    ld d, c
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, c
    ld c, h
    ld d, c
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
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a

jr_01b_5d5f:
    sbc h
    rst $28
    xor $3f
    ld b, d
    ld c, c
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
    ld sp, $4452
    ld b, h
    ld b, d
    ld d, c
    ld d, b
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, d
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld [hl], $40
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
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
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    ld d, b
    ld d, c
    ld a, $3f
    rst $28
    xor $3f
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $3d
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$48

    ld d, c
    ld h, h
    ld [hl], $42
    ld b, l
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld b, l
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
    xor $38
    ld c, d
    ld b, h
    ld b, d
    ccf
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_01b_5e63

    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $37
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $50
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $37
    ld c, h
    ld c, a
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
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld b, d

jr_01b_5e63:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld b, d
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
    ld [hl], $46
    ld b, d
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $41
    ld a, $50
    ld h, h
    dec h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, d
    sbc h
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
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
    ld b, d
    ld c, a
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld c, b
    ld e, e
    ld d, d
    ld b, e
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $51
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld a, $3f
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld d, c
    ld h, l
    rst $28
    xor $2b
    ld a, $60
    ld h, h
    ld b, l
    ld a, $60
    ld h, h
    ld b, l
    ld a, $65
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    add hl, hl
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
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
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld c, c
    ld b, d
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
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
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2f
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, e
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $3e
    ld b, h
    ld h, h
    ld d, b
    ld c, h
    ld d, h
    ld a, $50
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
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
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $4b
    ld a, $45
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    rst $28
    xor $2f
    ld a, $4b
    ld b, c
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $50
    ld d, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld b, d
    ld h, h
    scf
    ld c, h
    ld c, a
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
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld d, a
    ld d, h
    ld a, $4f
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, h
    ld c, h
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld b, e
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
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld d, c
    ld c, c
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
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
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
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
    ld c, a
    ld b, d
    ld b, b
    ld b, l
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
    dec [hl]
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
    ld h, c
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
    xor $3d
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $3a
    ld a, $40
    ld b, l
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
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_01b_614a

    ld c, d
    ld c, h
    sbc h
    ld d, d
    ld c, e
    ld b, c
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
    rst $28
    xor $f7
    ldh a, [$29]
    ld c, c
    ld a, $51
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld h, l
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld b, e

jr_01b_614a:
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
    ld h, h
    jr nc, @+$4e

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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld a, $4f
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld h, b
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
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01b_61ee

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
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
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
    ld h, b
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]

jr_01b_61ee:
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, h
    ld [hl], $40
    ld b, l
    ld a, $51
    ld d, a
    ld h, l
    ld h, l
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, d
    ld a, $51
    ld d, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    scf
    ld a, $3e
    ld a, $3e
    ld a, $40
    ld b, l
    ld h, c
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
    ld b, d
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld a, $3e
    ld a, $3e
    ld c, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ccf
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, $4b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld d, b
    ld d, c
    ld e, e
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $3e
    ld c, e
    ld b, h
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
    ld [hl], $4c
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
    xor $50
    ld a, $44
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld a, [$eff7]
    xor $41
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_01b_6303

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
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
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    rst $28
    xor $49
    ld a, $4b
    ld b, h
    ld b, d
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $42
    ld c, a
    ld d, h
    ld a, $4f
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

jr_01b_6303:
    ld h, a
    ld a, [hl-]
    ld b, d
    ld b, [hl]
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
    xor $31
    ld a, $40
    ld b, l
    ld c, e
    ld a, $4a
    ld b, d
    ld h, h
    and d
    dec b
    ld h, h
    ld a, [$eff7]
    xor $45
    ld b, d
    ld b, [hl]
    ld e, [hl]
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, c
    ld h, a
    rst $30

Call_01b_6362:
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
    ld b, [hl]
    ld c, d
    rst $28
    xor $35
    ld d, d
    ld b, l
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
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
    dec hl
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, e
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld c, d
    ld b, d
    ld c, a
    ld c, b
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $4b
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, d
    ld c, e
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld l, $5d
    ld e, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $4f
    ld e, l
    ccf
    ld b, d
    ld c, a
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
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $36
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, l
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld a, $50
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01b_6480

    ld b, c
    ld b, l
    ld a, $4b
    ld b, c
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $33
    ld a, $4d
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, c
    ld b, [hl]
    ld b, b

jr_01b_6480:
    ld b, l
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
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
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, c
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
    ld l, b
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
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $45
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld e, e
    ld c, e
    ld b, h
    ld b, d
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
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld l, b
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $60
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $4b
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $3e
    ld c, d
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
    ld h, h
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    sbc h
    rst $28
    xor $4b
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, l
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
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $64
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, d
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
    ld [hl], $4c
    ld h, c
    ld h, h
    inc h
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, d
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    sbc h
    rst $28
    xor $4b
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
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
    xor $26
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
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    sbc h
    ld a, [$eff7]
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
    jr z, jr_01b_66dd

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

jr_01b_66dd:
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
    xor $03
    ld h, h
    jr nc, jr_01b_6734

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $4b
    sbc h
    rst $28
    xor $51
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
    ld d, b
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]

jr_01b_6734:
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
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
    jr nc, jr_01b_6790

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
    ld b, d
    ld c, e

Jump_01b_6772:
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c

jr_01b_6790:
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld b, l
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
    jr c, jr_01b_681e

    ld b, c
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    rst $28
    xor $41
    ld e, l
    ld c, a
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
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
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld a, [hl-]
    jr z, jr_01b_6842

    rst $28
    xor $54
    ld e, e
    ld b, l
    ld c, c

jr_01b_681e:
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

jr_01b_6842:
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
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld c, a
    ld e, l
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld a, $4a
    ld a, [$eff7]
    xor $28
    ld c, d
    ld c, l
    ld b, e
    ld a, $4b
    ld b, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    sbc h
    rst $28
    xor $51
    ld c, a
    ld a, $44
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    jr z, @+$4d

    ld b, c
    ld c, b
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld h, $64
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, @+$40

    ld c, e
    ld c, e
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld a, [hl-]
    ld a, $4f
    ld d, c
    ld b, d
    sbc h
    ld a, [$eff7]
    xor $57
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    scf
    ld b, d
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld h, l
    ld h, h
    or $65
    rst $28
    xor $2b
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld d, e
    ld c, h
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4a
    ld b, d
    ld c, a
    ld c, b
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    rst $28
    xor $26
    ld h, h
    ld b, d
    ld c, a
    ld c, a
    ld b, d
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $44
    ld b, d
    ccf
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $44
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    rst $28
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
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $25
    ld c, a
    ld d, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld c, h
    ld b, l
    ld c, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, h
    jr z, jr_01b_6a14

    ld h, h
    ld d, h
    ld c, h
    ld b, l
    ld c, e
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld a, $50
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01b_6a49

    ld h, h
    ld c, l
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    rst $28
    xor $54
    ld a, $50
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, a
    ld a, [$eff7]

jr_01b_6a14:
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $54
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
    ld a, [$eff7]
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld b, d
    ld d, b
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a

jr_01b_6a49:
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld d, c
    ld c, a
    ld e, e
    ld d, d
    ld c, d
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $643e
    ld b, a
    ld a, $61
    ld h, h
    ld [hl], $4c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $38
    ld c, e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, e
    ld h, c
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, [hl]
    rst $28
    xor $31
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $49
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01b_6b12

    ld c, e
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
    rst $28
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $51
    ld d, d
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld d, b
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
    inc l
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]

jr_01b_6b12:
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2f
    ld a, $41
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
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld c, b
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
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
    ld h, b
    ld a, [$eff7]
    xor $44
    ld c, c
    ld a, $52
    ccf
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
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
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $29
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, h
    ld c, d
    ccf
    ld b, d
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld c, l
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_01b_6be8

    ld h, l
    ld h, h
    dec hl
    ld d, d
    ld a, $65
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
    ld h, $ef
    xor $48
    ld e, e

jr_01b_6be8:
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
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $37
    ld b, d
    ld d, c
    ld h, h
    ld c, b
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
    jr z, jr_01b_6c70

    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $29
    ld b, d
    ld c, c
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $57
    ld d, h
    ld b, d
    ld b, [hl]
    ld h, h
    dec h
    ld c, h
    ld d, l
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $45
    ld c, h
    ld b, l
    ld b, d
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a

jr_01b_6c70:
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2d
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ld h, b
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ld h, h
    ld a, $4b
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$9f]
    ld h, h
    ld h, a
    jr z, jr_01b_6d1b

    ld c, e
    ld h, h
    jr nc, jr_01b_6d25

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $29
    ld e, e
    ld b, l
    ld b, [hl]
    ld b, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $28
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $57
    ld d, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l

jr_01b_6d1b:
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    add hl, hl

jr_01b_6d25:
    ld e, e
    ld b, l
    ld b, [hl]
    ld b, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$52

    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $41
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
    ld b, d
    ld c, e
    ld a, [$eff7]
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
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $28
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, [$eff7]
    xor $45
    ld a, $3f
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld d, d
    ld c, d
    ld d, h
    ld a, $4b
    ld b, c
    sbc h
    rst $28
    xor $49
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld c, h
    ld d, c
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
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld l, b
    ld d, b
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld c, c
    ld b, d
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
    ld h, l
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
    xor $30
    ld b, [hl]
    ld d, b
    ld c, h
    ld d, b
    ld c, h
    ld d, d
    ld c, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01b_6ea0

    ld d, b
    ld c, h
    ld d, b
    ld c, h
    ld d, d
    ld c, l
    ld h, [hl]
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
    xor $30
    inc l
    ld [hl], $32
    ld [hl], $38
    inc sp
    inc sp
    jr z, jr_01b_6ee5

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
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
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
    and h

jr_01b_6ea0:
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
    ld h, h
    jr c, jr_01b_6efd

    ld b, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld c, e
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ccf
    ld b, d
    ld d, b
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
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $2b
    ld b, d
    ld b, [hl]
    ld c, c
    ld c, b
    ld c, a
    ld a, $43
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]

jr_01b_6ee5:
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, h

jr_01b_6efd:
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld c, c
    ld e, e
    ld c, e
    ld b, c
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    add hl, hl
    ld a, $4b
    ld b, h
    sbc h
    rst $28
    xor $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld a, $45
    ld c, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    and h
    ld a, [$eff7]
    xor $67
    ld [hl], $4d
    ld c, a
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $37
    ld a, $44
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
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
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ccf
    ld d, d
    ld c, a
    ld d, c
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld h, l
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
    scf
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    sbc h
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
    ld h, a
    ld a, [$eff7]
    xor $67
    or $64
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, @+$51

    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    rst $28
    xor $44
    ld b, d
    ld c, a
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_01b_707d

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
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, d
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, c
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
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, l
    ld a, $51

jr_01b_707d:
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    daa
    ld a, [$eff7]
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, d
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
    inc h
    ld d, d
    ld b, e
    ld d, c
    ld c, a
    ld a, $44
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld d, b
    ld h, h
    ld c, a
    ld a, $50
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_01b_7130

    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_01b_7133

    ld b, d
    ld c, a
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, a
    ld b, d
    ld d, l
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $44
    rst $28
    xor $57
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $67
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld b, l

jr_01b_7130:
    ld a, $51
    ld h, h

jr_01b_7133:
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
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
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01b_71a8

    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    scf
    ld c, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, d
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    rst $28
    xor $32
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]

jr_01b_71a8:
    ld d, c
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $27
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, a
    ld a, $51
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$48

    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $44
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld d, d
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $4c
    ld b, e
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, d
    ld c, l
    ld b, e
    ld d, b
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $45
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $4f
    ld b, e
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, e
    ld a, $40
    ld b, l
    ld c, c
    ld e, e
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, h
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
    dec [hl]
    ld a, $52
    ld d, b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01b_72e8

    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, l
    ld a, $64
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
    ld d, b
    ld d, c
    ld d, d
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
    scf
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld bc, $ef67
    xor $fa

jr_01b_72e8:
    rst $30
    rst $28
    xor $67
    jr c, jr_01b_7339

    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    jr z, jr_01b_734d

    ld c, e
    ld a, [$eff7]
    xor $30
    ld e, e
    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $45
    ld e, l
    ccf
    ld d, b
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, h
    ld e, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c

jr_01b_7339:
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
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $28
    ld c, c

jr_01b_734d:
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, l
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
    scf
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld [bc], a
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    daa
    ld a, $50
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, b
    ld c, l
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $28
    ld d, b
    ld h, h
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
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
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld b, d
    rst $28
    xor $32
    ld c, d
    ld a, $64
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
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
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    sbc h
    rst $28
    xor $44
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld e, h
    ld c, e
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, h
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    jr z, @+$48

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, c
    sbc h
    rst $28
    xor $49
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $4a
    ld a, $4b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $27
    ld a, $4a
    ld b, d
    ld h, h
    ld d, d
    ld c, d
    ld b, h
    ld b, d
    ld b, l
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
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, b
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
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $48
    ld c, c
    ld a, $52
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$67]
    rst $28
    xor $ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
