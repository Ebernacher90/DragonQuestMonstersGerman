; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    rra
    inc bc
    ld b, c
    ld a, [bc]
    ld b, c
    ld de, $0b41
    ld b, b
    sbc e
    ld b, b
    jr jr_01f_404e

    add a
    ld b, c
    rlca
    ld b, d
    cp c
    ld b, d
    dec hl
    ld b, h
    and c
    ld b, h
    nop
    ld b, l
    ld [hl], c
    ld b, l
    reti


    ld b, l
    ld sp, hl
    ld b, [hl]
    sub d
    ld b, a
    sbc a
    ld b, a
    ld [hl], $48
    and h
    ld c, b
    ldh [rOBP0], a
    inc bc
    ld c, c
    ld h, a
    ld c, c
    sbc c
    ld c, c
    db $f4
    ld c, c
    inc l
    ld c, d
    ld b, b
    ld c, d
    ld d, l
    ld c, d
    add l
    ld c, d
    push de
    ld c, d
    db $eb
    ld c, d
    inc hl
    ld c, e
    ld [hl], c
    ld c, e
    sub h
    ld c, e
    rst $08
    ld c, e
    inc b
    ld c, h
    add hl, de
    ld c, h
    ld h, a
    ld c, h
    db $fc
    ld c, h
    ld a, [de]

jr_01f_404e:
    ld c, [hl]
    add $4e
    nop
    ld c, a
    and a
    ld c, a
    call nz, $e34f
    ld c, a
    xor b
    ld d, b
    adc d
    ld d, c
    rst $38
    ld d, c
    ld a, h
    ld d, d
    ret nz

    ld d, d
    or b
    ld d, e
    ld c, $54
    dec a
    ld d, h
    ld [hl], e
    ld d, h
    xor d
    ld d, h
    sub b
    ld d, l
    jr z, jr_01f_40c7

    ld d, l
    ld d, [hl]
    ld [$8357], sp
    ld d, a
    sbc $57
    db $76
    ld e, b
    dec d
    ld e, c
    sub [hl]
    ld e, c
    ld hl, $405a
    ld e, d
    sbc h
    ld e, d
    db $fc
    ld e, d
    ld e, c
    ld e, e
    or d
    ld e, e
    inc de
    ld e, h
    ld [hl], b
    ld e, h
    ret nc

    ld e, h
    cpl
    ld e, l
    adc a
    ld e, l
    rst $28
    ld e, l
    ld c, b
    ld e, [hl]
    and l
    ld e, [hl]
    dec b
    ld e, a
    add h
    ld e, a
    db $ed
    ld e, a
    dec de
    ld h, b
    ld b, c
    ld h, b
    xor b
    ld h, b
    ld [$4360], a
    ld h, d
    ld [hl], a
    ld h, d
    or [hl]
    ld h, d
    rrca
    ld h, e
    ld [hl-], a
    ld h, h
    sbc e
    ld h, h
    rst $08
    ld h, h
    inc a
    ld h, l
    rst $28
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld a, [c]
    ld h, [hl]
    ld c, l
    ld h, a
    and l
    ld h, a
    jp hl


    ld h, a
    ld d, e
    ld l, b

jr_01f_40c7:
    ei
    ld l, b
    cp [hl]
    ld l, c
    rrca
    ld l, d
    ld c, a
    ld l, d
    adc a
    ld l, d
    call z, $ef6a
    ld l, d
    ld a, [$3e6b]
    ld l, h
    ld a, d
    ld l, h
    bit 5, h
    dec hl
    ld l, l
    ret z

    ld l, l
    or $6d
    ld [$186e], a
    ld l, a
    and h
    ld l, a
    add l
    ld [hl], b
    cp c
    ld [hl], b
    sbc b
    ld [hl], c
    ld b, a
    ld [hl], d
    pop bc
    ld [hl], d
    ldh [$73], a
    inc h
    ld [hl], h
    ld e, l
    ld [hl], l
    add a
    ld [hl], l
    db $e3
    ld [hl], l
    dec c
    db $76
    ld a, [hl-]
    ld [hl], a
    db $e4
    ld [hl], a

Call_01f_4103:
    ld de, $4007
    call $05b6
    ret


    ld de, $4007
    call $05f6
    ret


    call Call_01f_4103
    call $0609
    ret


    ld [$649f], a
    ld h, a
    jr nc, jr_01f_415c

    ld c, e
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, h
    ld c, c
    ld a, $52
    ccf
    sbc h
    ld a, [$eff7]
    xor $49
    ld b, [hl]
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
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c

jr_01f_415c:
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
    ld a, [$eff7]
    xor $2c
    ld c, e
    ld b, e
    ld c, h
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    rst $28
    xor $36
    ld d, c
    ld a, $49
    ld c, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01f_41dd

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, b
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld h, $45
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
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
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
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
    ld b, d
    ld c, c

jr_01f_41dd:
    ccf
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $f7
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
    ld a, $49
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_01f_428e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld a, $3e
    ld a, $3e
    ld c, d
    ld h, h
    ld d, a
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld c, d
    rst $28
    xor $36
    ld d, c
    ld a, $3e
    ld a, $49
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
    jr nc, jr_01f_42c8

    ld c, e
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54

jr_01f_428e:
    ld b, d
    ld b, d
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, b
    ld h, h
    ld d, h
    ld c, h
    ld c, h
    ld c, h
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld h, h
    jr nc, jr_01f_42f2

    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $49
    ld b, d
    ld b, d
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01f_4305

    ld c, e
    ld h, h
    dec [hl]
    ld c, h
    ld c, d
    ld a, $4b
    ld h, h
    ld c, d

jr_01f_42c8:
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_01f_4320

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld d, d
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
    jr z, jr_01f_4335

    ld c, e
    ld h, h
    ld a, [hl+]

jr_01f_42f2:
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]

jr_01f_4305:
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
    ld e, e
    ld c, e
    ld b, h
    ld d, b
    ld d, c
    sbc h
    rst $28
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a

jr_01f_4320:
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$48

    ld c, e
    ld h, h
    jr nc, jr_01f_4388

    ld c, a
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $4a

jr_01f_4335:
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $43
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld c, c
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
    jr z, jr_01f_439c

    ld c, e
    ld h, h
    scf
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ccf
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $45
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
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01f_43ce

jr_01f_4388:
    ld c, e
    ld b, d
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b

jr_01f_439c:
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld b, c
    ld b, d
    ld c, e
    ld c, b
    ld c, c
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
    jr z, jr_01f_43ff

    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld d, c
    ld d, a
    ccf
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e

jr_01f_43ce:
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, c
    ld d, d
    ld c, d
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
    ld a, $50
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b

jr_01f_43ff:
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $44
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $01
    ld h, c
    ld h, h
    jr nc, jr_01f_445e

    ld c, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, b
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01f_4473

    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_01f_4480

    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a

jr_01f_445e:
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld b, l

jr_01f_4473:
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d

jr_01f_4480:
    ld h, h
    ld b, h
    ld c, a
    ld e, h
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $2f
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld d, b
    ld b, d
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
    xor $f7
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
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld h, h
    ld c, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    ld [hl], $52
    ld b, b
    ld b, l
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ld h, h
    rst $28
    xor $49
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_01f_4569

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld a, $4a
    ld b, d
    ld c, e
    ld d, b
    rst $28
    xor $27
    ld a, $4f
    ld c, b
    ld h, h
    jr z, @+$58

    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$52

    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, h
    inc h
    ld c, c
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_01f_45a7

    ld d, c
    ld a, $48
    ld b, [hl]

jr_01f_4569:
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld l, $4b
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $46
    ld c, d
    ld b, [hl]
    ld d, c
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

jr_01f_45a7:
    ld h, a
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, b
    rst $28
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    and h
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_01f_4618

    ld c, l
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
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
    scf
    ld a, $44
    ld h, l
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, l
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_01f_4650

    sbc h
    jr nc, jr_01f_463c

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $51
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h

jr_01f_4618:
    ld h, a
    ld b, d
    ld d, l
    ld d, c
    ld c, a
    ld a, $64
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2f
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, a
    ld c, h
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $4a

jr_01f_463c:
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $29
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l

jr_01f_4650:
    ld d, b
    ld d, c
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, b
    rst $28
    xor $52
    ld c, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ld d, d
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
    rst $28
    xor $3f
    ld b, d
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
    dec hl
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld a, $45
    ld c, d
    ld h, h
    ld b, d
    ld c, a
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
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
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
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc bc
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld c, h
    ccf
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $01
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld c, c
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $a4
    ld d, a
    ld d, a
    ld d, a
    and h
    ld d, a
    ld d, a
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
    ld [bc], a
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $41
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld c, c
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $a4
    ld d, a
    ld d, a
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
    ld sp, $5152
    ld d, a
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    and h
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld e, e
    ld d, d
    ld b, e
    ld d, b
    ld d, c
    and h
    ld d, a
    ld d, a
    ld d, a
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec a
    ld d, a
    ld d, a
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $50
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    rst $28
    xor $30
    ld b, d
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
    daa
    ld a, $64
    ld b, h
    ld a, $3f
    ld d, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01f_4848

    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld d, b
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
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $27
    ld d, d
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
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, l
    ld e, l
    ld c, a
    ld b, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c

jr_01f_4848:
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
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $25
    ld b, [hl]
    ccf
    ld c, c
    ld b, [hl]
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, b
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_01f_48b2

    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $ef
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
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld a, $49
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    sbc h
    rst $28
    xor $50
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
    ld a, [hl+]
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld a, $40

jr_01f_48b2:
    ld b, l
    rst $28
    xor $4f
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld a, $65
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
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $52
    ld b, b
    ld b, l
    ld d, c
    ld d, c
    ld c, h
    ld c, a
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
    rst $28
    xor $37
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
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
    ld c, d
    ld a, $4b
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    rst $28
    xor $51
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld d, c
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld b, [hl]
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $2c
    ld c, a
    ld c, a
    ld d, c
    ld c, h
    ld c, a
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
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    rst $28
    xor $4f
    ld b, d
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    and h
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
    ld b, c
    ld a, $50
    ld h, h
    ld b, l
    ld a, $51
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
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    jr c, jr_01f_4a4c

    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
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
    ldh a, [$ea]
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld h, a
    jr nc, @+$40

    ld c, d
    ld c, l
    ld b, e
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld a, $4a

jr_01f_4a4c:
    rst $28
    xor $45
    ld a, $4a
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld e, e
    ld h, [hl]
    rst $28
    xor $3a
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $43
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$f6]
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $28
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld d, b
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $24
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, h
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $47
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
    ld e, h
    ld d, b
    ld b, d
    ld h, c
    rst $30
    ldh a, [$ea]
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $45
    ld a, $65
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld c, d
    ld h, [hl]
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
    ld a, [$eff7]
    xor $3a
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
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
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
    xor $28
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld d, b
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $24
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, h
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $47
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
    ld e, h
    ld d, b
    ld b, d
    ld h, c
    rst $30
    ldh a, [$ea]
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $65
    ld h, h
    daa
    ld a, $50
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, c
    ld a, $53
    ld c, h
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01f_4be0

    ld c, e
    ld h, h
    dec [hl]
    ld c, h
    ld b, b
    ld c, b
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, c
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

jr_01f_4be0:
    ld c, e
    ld b, d
    ld h, c
    ld a, [$eff7]
    xor $28
    ld c, b
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld h, h
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    rst $28
    xor $49
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld a, $61
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
    xor $37
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld c, h
    ld c, a
    ld d, c
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
    rst $28
    xor $46
    ld b, l
    ld c, e
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
    ld h, c
    rst $28
    xor $f7
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
    xor $24
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
    inc l
    ld c, a
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    jr c, @+$51

    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
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
    xor $24
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
    inc l
    ld c, a
    ld c, a
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    rst $28
    xor $38
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    sbc h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $36
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $57
    ld d, d
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
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
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
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
    ld c, e
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
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
    xor $2a
    ld b, d
    ld b, h
    ld c, e
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$52

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
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
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld [bc], a
    ld h, h
    dec [hl]
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $50
    ld c, l
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
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
    xor $24
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
    inc l
    ld c, a
    ld c, a
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $38
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $57
    ld d, d
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $64
    ld [hl], $52
    ld b, b
    ld b, l
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, h
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
    daa
    ld b, [hl]
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
    ld a, [$eff7]
    xor $27
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, c
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    rst $28
    xor $2e
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, $52
    ld d, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    inc h
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    rst $28
    xor $30
    ld a, $51
    ld b, [hl]
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, [hl]
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
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
    ld b, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_01f_4f9c

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld a, [$eff7]
    xor $25
    ld b, d
    ld b, [hl]
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    inc h
    ld d, d

jr_01f_4f9c:
    ld d, b
    ld c, e
    ld a, $45
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld d, d
    ld a, $a4
    and h
    and h
    rst $28
    xor $2f
    ld b, d
    ccf
    ld b, d
    ld c, e
    and h
    and h
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    scf
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld c, a
    ld a, $3f
    ld b, d
    ld h, c
    rst $28
    xor $37
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld d, b
    ld b, h
    ld a, $3f
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01f_502f

    ld c, e
    ld h, h
    jr nc, jr_01f_5039

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld b, [hl]
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
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $26
    ld b, l
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    rst $28
    xor $46
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01f_5070

    ld c, e
    ld h, h
    jr nc, jr_01f_507a

    ld c, e

jr_01f_502f:
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h

jr_01f_5039:
    ld b, h
    ld d, d
    ld d, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $26
    ld b, l
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
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
    jr z, jr_01f_50b9

    ld h, h
    ld d, h
    ld e, e
    ld c, a
    ld b, d
    ld h, h
    ld c, e

jr_01f_5070:
    ld e, l
    ld d, c
    ld d, a
    sbc h
    rst $28
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l

jr_01f_507a:
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
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld h, $45
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $5b
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01f_50f4

    ld c, e
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
    ld d, c
    ld b, d
    ld c, a

jr_01f_50b9:
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    sbc h
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
    inc h
    ld h, b
    ld h, h
    inc h
    ld h, b

jr_01f_50f4:
    ld h, h
    inc h
    ld c, c
    ld c, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    rst $28
    xor $45
    ld a, $51
    ld h, h
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
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2f
    ld e, h
    ld d, h
    ld b, d
    ld c, e
    ld b, l
    ld a, $49
    ld d, b
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld b, d
    ld h, b
    ld h, h
    cpl
    ld b, d
    ld h, b
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $32
    ld c, a
    ld c, b
    ld h, b
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $38
    ld c, e
    ld b, [hl]
    ld b, l
    ld c, h
    ld c, a
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
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    daa
    ld c, h
    ld c, a
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld l, $3e
    ld c, a
    ld d, c
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $25
    ld e, h
    ld d, b
    ld d, b
    ld d, c
    ld a, $3f
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
    scf
    ld d, [hl]
    ld c, l
    ld h, h
    ld a, $4a
    ld h, h
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01f_5217

    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
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
    ld b, h
    ld a, $64
    dec sp
    ld h, h
    ld b, l
    ld a, $51
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01f_5247

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
    ld c, h
    ccf
    ld a, $40
    ld b, l

jr_01f_5217:
    ld d, c
    ld b, d
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

jr_01f_5247:
    ld d, b
    ld c, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld c, b
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, b
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
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
    inc h
    rst $28
    xor $3e
    ld c, e
    ld d, c
    ld c, a
    ld b, d
    ld d, c
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
    xor $30
    ld a, $51
    ld b, [hl]
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2e
    ld e, l
    ld e, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
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
    inc sp
    ld b, [hl]
    ld c, c
    ld d, a
    ld c, d
    ld a, $4b
    ld c, e
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $60
    ld h, h
    ld c, l
    ld a, $5e
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld d, a
    ld d, a
    ld c, c
    ld d, [hl]
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h
    ld a, $52
    ld b, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01f_53c7

    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, d
    ld c, a
    ld d, b
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, h
    ld b, l
    ld b, d
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, b
    ld b, l
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
    daa
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d

jr_01f_53c7:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
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
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld b, l
    ld c, e
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, e
    ld d, c
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ld h, c
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
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
    jr z, jr_01f_5489

    ld c, e
    ld h, h
    ld [hl], $52
    ld c, e
    ld c, e
    ld d, [hl]
    sbc h
    rst $28
    xor $36
    ld b, [hl]
    ld b, c
    ld b, d
    sbc h
    jr z, @+$46

    ld b, h
    ld h, l
    ld a, [$eff7]
    xor $36
    ld c, l
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
    ld h, h
    dec h
    ld b, d
    ccf
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $52
    ld c, e
    ld c, e
    ld d, [hl]
    sbc h
    ld [hl], $46
    ld b, c
    ld b, d
    sbc h
    jr z, jr_01f_54c8

    ld b, h
    ld h, [hl]
    rst $28
    xor $36

jr_01f_5489:
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
    inc sp
    inc l
    jr z, jr_01f_54ca

    jr z, jr_01f_54d1

    jr z, @+$2e

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
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld h, h
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]

jr_01f_54c8:
    ld c, e
    ld b, h

jr_01f_54ca:
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]

jr_01f_54d1:
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, [hl]
    ld h, h
    ld c, d
    ld a, $4b
    ld b, b
    ld b, l
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
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $a2
    ld h, h
    ld bc, $6460
    ld c, h
    ld b, c
    ld b, d
    ld c, a
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
    dec a
    ld a, $45
    ld c, c
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    and d
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld a, $44
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, c
    rst $28
    xor $2d
    ld b, d
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $3d
    ld a, $45
    ld c, c
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    rst $28
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc sp
    ld a, $51
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, a
    ld a, $51
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $54
    ld a, $50
    ld h, l
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $24
    ld c, a
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld a, [$eff7]
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld d, c
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $4d
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $50
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
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
    ld b, l
    ld a, $3f
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    rst $28
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
    ld c, d
    ld a, $4b
    ld h, h
    ld d, a
    ld h, c
    dec h
    ld h, c
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld c, l
    ld a, $3e
    ld c, a
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
    ld b, d
    ld c, e
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
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_01f_5712

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $47
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, b
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld [hl], $51
    ld a, $4a
    ld c, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $5152
    ld d, a
    ld b, d
    ld c, e

jr_01f_5712:
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $25
    ld b, [hl]
    ccf
    ld c, c
    ld b, [hl]
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, b
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld c, h
    ld c, a
    ld d, c
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
    xor $36
    ld b, [hl]
    ld b, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, e
    ld b, e
    ld c, h
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld b, c
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
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld c, l
    ld a, $3e
    ld c, a
    ld d, c
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_01f_57d4

    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld sp, $403e
    ld b, l
    ccf
    ld a, $4f
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ld c, h
    ld b, e
    ld d, c
    and h
    ld a, [$eff7]
    xor $2a
    ld c, a
    ld a, $52
    ld b, d
    ld c, e
    ld b, l
    ld a, $43
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
    jr z, jr_01f_580a

    ld h, h
    ld c, b
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e

jr_01f_57d4:
    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    ld a, [$eff7]
    xor $2a
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    ld b, d
    ld d, b
    ld d, b
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

jr_01f_580a:
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
    ld b, l
    ld a, $3f
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
    ld a, [$eff7]
    xor $2a
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    ld b, d
    ld d, b
    ld d, b
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $48
    ld c, a
    ld e, e
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, b
    ld h, a
    ld a, [$eff7]
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
    rst $28
    xor $42
    ld d, l
    ld d, c
    ld c, a
    ld b, d
    ld c, d
    ld h, h
    ccf
    ld c, c
    ld e, h
    ld b, c
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
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
    ld h, b
    rst $28
    xor $41
    ld a, $5e
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
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, b
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
    inc bc
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld sp, $4046
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    rst $28
    xor $43
    ld e, l
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    and h
    ld a, [$eff7]
    xor $24
    ccf
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, $4b
    ld h, h
    rst $28
    xor $3f
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    and h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $67
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, e
    ld a, $49
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $25
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
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
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld bc, $0000
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
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
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $49
    ld a, $50
    ld d, b
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld c, d
    ld a, $51
    ld d, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    add hl, hl
    ld e, l
    ld b, l
    ld c, c
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    dec hl
    ld a, $52
    ld d, b
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, h
    ld b, c
    ld c, a
    ld a, $48
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld a, $41
    ld b, c
    ld c, a
    ld a, $48
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld l, $4f
    ld a, $3f
    ccf
    ld b, d
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $27
    ld b, d
    ld c, e
    ld d, a
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $35
    ld e, l
    ld d, b
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ld a, [$eff7]
    xor $42
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
    ld b, d
    ld h, h
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld c, a
    ld e, h
    ld d, c
    ld b, d
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld c, e
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
    scf
    ld e, e
    ld c, e
    ld d, a
    ld b, d
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, e
    ld a, $3f
    ld c, c
    ld b, d
    ld c, a
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, c
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld b, d
    ld d, d
    ld c, c
    ld b, d
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    daa
    ld c, h
    ld c, a
    ld c, h
    ld c, c
    ld c, c
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2e
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, h
    ld a, $4b
    ld d, b
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    inc sp
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld d, [hl]
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $25
    ld a, $52
    ld c, d
    ld d, a
    ld d, h
    ld b, d
    ld c, a
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl+]
    ld c, a
    ld e, e
    ccf
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3d
    ld d, h
    ld b, [hl]
    ld b, d
    ccf
    ld c, c
    ld b, d
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_01f_5db2

    ld c, e
    ld c, e
    ld c, h
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $30
    ld b, d
    ld b, h
    ld a, $4a
    ld c, h
    ld d, c
    ld d, c
    ld b, d
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_01f_5db2:
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    daa
    ld a, $4f
    ld c, b
    ld b, b
    ld c, a
    ld a, $3f
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2e
    ld c, a
    ld a, $3f
    ccf
    ld b, d
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec hl
    ld a, $4a
    ld c, d
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld b, h
    ld b, d
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    scf
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2b
    ld c, h
    ld c, a
    ld c, e
    ld c, d
    ld a, $4b
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ld d, d
    ld d, b
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, e
    ld b, d
    ld b, b
    ld c, b
    ld b, d
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    ld [hl], $49
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld sp, $643e
    ld b, a
    ld a, $60
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld a, [$eff7]
    xor $54
    ld c, h
    ld d, a
    ld d, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $3e
    ld b, h
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
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
    ld b, d
    ld d, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    ld [hl], $49
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    or $a4
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_01f_5ff1

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
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
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
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld c, c
    ld a, $51
    ld d, a
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    ld [hl], $49
    ld b, [hl]

jr_01f_5ff1:
    ld c, h
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, b
    ld b, d
    rst $28
    xor $f6
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $54
    ld a, $4f
    ld d, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    ld [hl], $49
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $31
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, h
    daa
    ld b, [hl]
    ld b, d
    ld h, h
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
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, l
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
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, b
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
    ld a, [hl-]
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    ld [hl], $4c
    ld d, h
    ld a, $50
    ld h, h
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_01f_6113

    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
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
    xor $3f
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld bc, $6409
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a

jr_01f_6113:
    rst $28
    xor $3e
    ccf
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
    daa
    ld a, $57
    ld d, d
    ld h, h
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_01f_6183

    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $33
    ld a, $5e
    ld h, h
    ld a, $49
    ld d, b
    ld c, h
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
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
    jr nc, jr_01f_61b0

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
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
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, e

jr_01f_6183:
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    jr z, jr_01f_61d9

    sbc h
    rst $28
    xor $43
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, @+$4d

    ld b, c
    ld h, h
    ld b, a
    ld b, d
    ld h, h
    ld c, c
    ld e, e
    ld c, e
    ld b, h
    ld b, d

jr_01f_61b0:
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld c, h

jr_01f_61d9:
    ld c, a
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, c
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
    ld a, $60
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
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
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $4d
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, l
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
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
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
    jr z, jr_01f_62c3

    ld c, e
    ld h, h
    jr nc, jr_01f_62cd

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld a, $4a
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    daa
    ld d, d
    ld c, a
    ld a, $4b
    ld a, [$eff7]
    xor $45
    ld a, $51
    ld h, h
    ld b, c
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
    xor $39
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld c, b
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h

jr_01f_62c3:
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $25
    ld a, $4f

jr_01f_62cd:
    ld d, a
    ld a, $48
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $3e
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
    jr nc, jr_01f_632e

    ld b, h
    ld a, $42
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    and h
    rst $28
    xor $3b
    sbc h
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    and h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    and h
    rst $28
    xor $66
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    scf
    ld a, $44
    ld h, l
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, l
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e

jr_01f_632e:
    ld h, h
    jr z, jr_01f_6386

    sbc h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $51
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, d
    ld d, l
    ld d, c
    ld c, a
    ld a, $64
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2f
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, a
    ld c, h
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $29
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b

jr_01f_6386:
    ld b, l
    ld d, b
    ld d, c
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, b
    rst $28
    xor $52
    ld c, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ld d, d
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
    rst $28
    xor $3f
    ld b, d
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
    dec hl
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld a, $45
    ld c, d
    ld h, h
    ld b, d
    ld c, a
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
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
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
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld h, h
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
    and h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld a, [$eff7]
    xor $37
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
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
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
    xor $48
    ld a, $4b
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld l, $42
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    rst $28
    xor $2a
    ld b, [hl]
    ld b, h
    ld a, $50
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld h, [hl]
    ld a, [$eff7]
    xor $36
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $4a
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld l, $4c
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
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
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, b
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    ccf
    ld a, $52
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld c, d
    ld e, l
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $36
    ld c, l
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld d, c
    ld c, h
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
    inc l
    ld c, d
    ld h, h
    ld [hl], $4d
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld b, d
    ld h, h
    dec a
    ld d, d
    ld c, b
    ld d, d
    ld c, e
    ld b, e
    ld d, c
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
    jr z, jr_01f_6600

    ld h, h
    ld b, h
    ld a, $3f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, b
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld c, b
    ld a, $4a
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $3e
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    add hl, sp
    ld c, h
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    ld [hl], $4d
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld d, c
    ld c, h
    ld c, a

jr_01f_6600:
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld b, d
    ld h, h
    dec a
    ld d, d
    ld c, b
    ld d, d
    ld c, e
    ld b, e
    ld d, c
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
    jr z, jr_01f_6685

    ld h, h
    ld b, h
    ld a, $3f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, b
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld c, b
    ld a, $4a
    ld b, d
    ld c, e
    and h
    rst $28
    xor $33
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $a4
    rst $28
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l

jr_01f_6685:
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $61
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, l
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
    jr z, jr_01f_670c

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
    ld h, h
    inc a
    ld b, d
    ld d, c
    ld b, [hl]
    ld a, [$eff7]
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
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld [hl], $51
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
    and h
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld c, b
    ld c, c
    ld b, [hl]

jr_01f_670c:
    ld c, e
    ld b, h
    ld d, c
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, a
    ld d, e
    ld c, h
    ld c, a
    ld c, a
    ld a, $44
    ld b, d
    ld c, e
    ld b, c
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
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $f6
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01f_67a2

    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
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
    xor $3a
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
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, a
    ld b, c
    ld a, $43
    ld b, e
    ld b, d
    ld h, l
    ld h, a
    rst $28

jr_01f_67a2:
    xor $f7
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
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld h, h
    add hl, hl
    ld b, [hl]
    ld b, b
    ld b, l
    sbc h
    rst $28
    xor $51
    ld b, d
    ld c, e
    ld h, h
    ld d, h
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
    ld h, h
    rst $28
    xor $35
    ld b, [hl]
    ld d, e
    ld a, $49
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    rst $28
    xor $57
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, @+$44

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
    ld h, b
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
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, b
    ld a, $4d
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    and h
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
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $4d
    ld a, $3e
    ld c, a
    ld d, c
    ld h, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    and h
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
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $29
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, h
    ld c, d
    ccf
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    sbc h
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
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
    ld b, e
    ld c, c
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
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
    ld a, [$eff7]
    xor $51
    ld c, h
    ld d, c
    ld a, $49
    ld h, h
    ld b, e
    ld a, $52
    ld c, c
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld b, d
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, d
    ld h, h
    add hl, hl
    ld c, c
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $43
    ld a, $52
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
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
    ld b, d
    ld d, [hl]
    ld h, h
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, h
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $2b
    ld b, d
    ld d, [hl]
    ld h, h
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, h
    ld b, l
    ld b, d
    ld d, [hl]
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
    ld h, h
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
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $643e
    ld b, a
    ld a, $61
    ld h, h
    jr c, jr_01f_6aa6

    rst $28
    xor $42
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
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
    ld [hl], $4c
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h

jr_01f_6aa6:
    jr nc, jr_01f_6afa

    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld a, [$eff7]
    xor $36
    ld c, l
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
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
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, @+$54

    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld d, e
    ld b, d

jr_01f_6afa:
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $42
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld h, h
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $34
    ld d, d
    ld a, $49
    ld b, [hl]
    ld b, e
    ld b, [hl]
    ld c, b
    ld a, $51
    ld b, [hl]
    ld c, h
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
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, c
    ld h, h
    inc sp
    ld a, $5e
    ld h, h
    rst $28
    xor $41
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
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
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
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
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_01f_6c2c

    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld e, e
    ld d, c
    ld d, a
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, [hl]
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    and h
    ld a, $3f
    ld b, d
    ld c, a

jr_01f_6c2c:
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $64
    ld b, l
    ld a, $65
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    ld b, d
    ld d, b
    ld d, b
    ld a, [$eff7]
    xor $57
    ld a, $52
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld b, c
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
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld h, h
    ccf
    ld c, a
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    ld h, b
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
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $51
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01f_6d17

    ld c, e
    ld h, h
    jr nc, jr_01f_6d21

    ld c, a
    ld b, c
    ld a, $43
    ld b, e
    ld b, d
    ld h, l
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, a
    ld a, $64
    ld c, d
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
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
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a

jr_01f_6d17:
    ld b, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c

jr_01f_6d21:
    ld c, h
    ld b, l
    ld c, e
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
    ld b, l
    ld a, $3f
    ld h, h
    ld c, d
    ld a, $49
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
    ld d, b
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, [hl]
    ccf
    ld d, c
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
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $3f
    ld b, d
    ld b, l
    ld a, $3e
    ld c, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    inc h
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld a, $51
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
    ld a, [$eff7]
    xor $24
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
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
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, d
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
    and h
    ld a, [$eff7]
    xor $3e
    ccf
    ld h, h
    ld c, d
    ld c, h
    ld c, a
    ld b, h
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
    or $61
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, a
    ld a, $51
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    and e
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
    ld c, d
    ld a, $4b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $37
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
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
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $2b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, l
    ld a, $3e
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $643e
    ld b, a
    ld a, $61
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld h, b
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
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
    jr nc, jr_01f_6ef0

    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    sbc h
    rst $28
    xor $54
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
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
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $51

jr_01f_6ef0:
    ld e, e
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ld h, c
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
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
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_01f_6f6d

    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3a
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
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    rst $28
    xor $41
    ld a, $50
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d

jr_01f_6f6d:
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
    jr z, @+$48

    ld c, e
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $44
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $4246
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld c, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld h, h
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
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, e
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
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
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
    rst $28
    xor $57
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, c
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
    ld a, $60
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
    ld h, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
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
    jr z, jr_01f_70cb

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, [hl]
    rst $28
    xor $25
    ld b, [hl]
    ld d, b
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
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld d, d
    ld b, h
    ld h, [hl]
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
    ld b, h
    ld b, d
    ccf
    ld b, d
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h

jr_01f_70cb:
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
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
    ld c, e
    rst $28
    xor $37
    ld b, [hl]
    ld c, l
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
    ld b, c
    ld a, $4f
    ld b, e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, c
    ld a, $52
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $50
    ld a, $44
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld a, $3f
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, $4f
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ccf
    ld c, h
    ld d, c
    and h
    and h
    rst $28
    xor $42
    ld c, a
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01f_71a5

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
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
    ld a, $50
    ld h, [hl]
    ld h, h
    ld sp, $4046
    ld b, l
    ld d, c
    ld d, b
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $50
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
    ld b, c
    ld a, $4f
    ld b, e
    ld h, h

jr_01f_71a5:
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, c
    ld a, $52
    ld d, c
    ld a, [$eff7]
    xor $50
    ld a, $44
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld a, $3f
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, $4f
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ccf
    ld c, h
    ld d, c
    and h
    and h
    rst $28
    xor $42
    ld c, a
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_01f_7254

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
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
    ld a, $50
    ld h, [hl]
    ld h, h
    ld sp, $4046
    ld b, l
    ld d, c
    ld d, b
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $50
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

jr_01f_7254:
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld c, l
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld c, a
    ld a, $52
    ld c, d
    and h
    ld a, [$eff7]
    xor $36
    ld b, d
    ld b, [hl]
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $4c
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, c
    ld h, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $42
    ld d, b
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
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld a, $4a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld a, $52
    ld d, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_01f_7345

    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld a, $52
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld b, h
    ld a, $3f
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_01f_7372

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c

jr_01f_7345:
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ld b, d
    ld c, d
    rst $28
    xor $3d
    ld d, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
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
    ld [bc], a
    ld h, h

jr_01f_7372:
    jr nc, jr_01f_73b2

    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    ld a, [$eff7]
    xor $54
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $30
    ld a, $50
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
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld c, h

jr_01f_73b2:
    rst $28
    xor $45
    ld a, $4f
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld b, d
    ld h, h
    dec a
    ld d, d
    ld c, b
    ld d, d
    ld c, e
    ld b, e
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, b
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld d, d
    ld e, [hl]
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, c
    scf
    ld d, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $49
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_01f_746c

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
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, c
    ld h, h
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c

jr_01f_746c:
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    inc h
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    daa
    ld b, d
    ld b, [hl]
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
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
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
    rst $28
    xor $50
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
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, b
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld c, e
    ld d, a
    ld d, d
    ld d, c
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    daa
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
    xor $42
    ld c, a
    ld d, b
    ld d, c
    ld c, d
    ld a, $49
    ld h, h
    ld c, l
    ld c, a
    ld e, l
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    daa
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    daa
    ld d, d
    ld c, a
    ld a, $4b
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
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $2e
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr c, jr_01f_760e

    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld a, $4b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    daa
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]

jr_01f_760e:
    daa
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    dec hl
    ld a, $65
    ld h, h
    ld a, [hl-]
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    jr z, jr_01f_768b

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
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld c, h
    ld c, c
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    rst $28
    xor $4a
    ld e, l
    ld e, [hl]

jr_01f_768b:
    ld d, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    jr z, @+$51

    ld h, h
    ld d, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld d, d
    ld c, d
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, c
    sbc h
    ld a, [$eff7]
    xor $51
    ld b, [hl]
    ld c, d
    ld a, $51
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    jr c, jr_01f_774c

    ld b, c
    ld h, h
    ld c, b
    ld a, $4a
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, d
    ld e, [hl]
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    daa
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    jr z, jr_01f_7793

    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a

jr_01f_774c:
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $42
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, b
    ld a, $52
    ld b, e
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
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
    rst $28
    xor $41
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
    ld a, [$eff7]
    xor $2e
    ld e, e
    ld c, d
    ld c, l
    ld b, e

jr_01f_7793:
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, b
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    dec a
    ld b, d
    ld b, [hl]
    ld b, h
    ld h, h
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
    ldh a, [$ea]
    daa
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $45
    ld a, $65
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
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $54
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld e, l
    ld c, a
    ld b, e
    ld d, c
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld h, b
    rst $28
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2e
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, l
    ld h, a
    rst $30
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
