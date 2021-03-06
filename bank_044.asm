; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $044", ROMX[$4000], BANK[$44]

    ld b, h
    reti


    ld b, b
    pop af
    ld b, b
    add hl, bc
    ld b, c
    add hl, bc
    ld b, b
    ld hl, $8841
    ld b, c
    jp hl


    ld b, d
    ld b, h
    ld b, h
    nop
    ld b, l
    ld b, e
    ld b, l
    adc [hl]
    ld b, l
    dec hl
    ld b, [hl]
    sbc l
    ld b, [hl]
    sbc $46
    ld b, l
    ld b, a
    call nz, $1347
    ld c, b
    inc b
    ld c, c
    ld [hl], $49
    rst $10
    ld c, c
    ld b, $4a
    and d
    ld c, d
    rst $18
    ld c, d
    add a
    ld c, e
    ld [hl+], a
    ld c, h
    inc a
    ld c, l
    inc b
    ld c, [hl]
    xor l
    ld c, [hl]
    ld [hl+], a
    ld c, a
    ld sp, hl
    ld c, a
    ld h, h
    ld d, b
    jp $2650


    ld d, c
    rla
    ld d, d
    sub h
    ld d, d
    ld h, $53
    push bc
    ld d, e
    ld e, $54
    xor a
    ld d, h
    ret nc

    ld d, l
    db $10
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld b, e
    ld d, a
    xor $58
    and h
    ld e, d
    ld de, $555c
    ld e, h
    or a
    ld e, l
    ld sp, $be5e
    ld e, [hl]
    inc [hl]
    ld e, a
    ldh a, [$5f]
    jp c, Jump_044_5f60

    ld h, d
    dec bc
    ld h, e
    rst $20
    ld h, e
    ld de, $3f65
    ld h, l
    pop bc
    ld h, l
    ld [bc], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    adc $66
    jp hl


    ld h, [hl]
    jr nz, jr_044_40e8

    dec sp
    ld h, a
    bit 4, a
    dec sp
    ld l, b
    add c
    ld l, b
    ld c, l
    ld l, c
    pop de
    ld l, c
    ld c, l
    ld l, d
    sub d
    ld l, d
    ret nc

    ld l, d
    rst $08
    ld l, e
    pop bc
    ld l, h
    or h
    ld l, l
    db $e3
    ld l, l
    ld a, b
    ld l, [hl]
    and $6e
    sbc [hl]
    ld l, a
    sub $6f
    ld a, [$2f6f]
    ld [hl], b
    rla
    ld [hl], c
    ld c, h
    ld [hl], c
    sub e
    ld [hl], c
    or c
    ld [hl], d
    ld de, $a473
    ld [hl], e
    pop de
    ld [hl], e
    ld l, $74
    ld e, c
    ld [hl], h
    jr nz, jr_044_4130

    ld d, a
    ld [hl], l
    rst $18
    ld [hl], l
    add l
    ld [hl], a
    jp Jump_044_6a77


    ld a, b
    cp b
    ld a, c
    ld c, h
    ld a, d
    or b
    ld a, d
    dec de
    ld a, e
    ld [hl], h
    ld a, e
    pop de
    ld a, e
    ei
    ld a, e
    ld a, [de]
    ld a, h
    add [hl]
    ld a, h
    pop bc
    ld a, h

Call_044_40d9:
    ld a, [$c822]
    cp $01
    jr nz, jr_044_40ea

    ld a, $00
    ld [$c822], a
    ld hl, $1b00

jr_044_40e8:
    rst $10
    ret


jr_044_40ea:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_044_4102

    ld a, $00
    ld [$c822], a
    ld hl, $1b01
    rst $10
    ret


jr_044_4102:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_044_411a

    ld a, $00
    ld [$c822], a
    ld hl, $1b02
    rst $10
    ret


jr_044_411a:
    call Call_044_40d9
    call $0609
    ret


    db $eb
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    inc h
    ccf
    ld b, d
    ld c, e
    ld b, c

jr_044_4130:
    and h
    rst $28
    xor $a4
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $30
    ld b, [hl]
    ld d, c
    ld d, c
    ld a, $44
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
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
    and h
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
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
    jr nc, jr_044_41e3

    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $38
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, d
    ld c, e
    ld b, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $67
    dec l
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    inc h
    ld c, a
    ld d, c
    rst $28
    xor $44
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
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
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld b, d

jr_044_41e3:
    rst $28
    xor $28
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ld b, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    and h
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, $4f
    ld d, c
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, h
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
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $24
    ld c, c
    ld c, c
    sbc h
    cpl
    ld a, $45
    ld c, d
    ld h, b
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld d, d
    ld d, b
    ld d, h
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
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $29
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    inc l
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
    ld a, $49
    ld c, c
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    jr z, jr_044_431d

    ld b, h
    ld b, d
    ld c, e
    sbc h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld d, c
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, d
    ld c, e
    ld b, [hl]
    ld d, b
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $67
    scf

jr_044_431d:
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $2f
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    rst $28
    xor $25
    ld a, $52
    ld c, d
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_044_43ac

    ld c, e
    ld h, h
    dec h
    ld a, $52
    ld c, d
    ld h, h
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld c, b
    ld d, c
    ld h, c
    ld h, h
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, h
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld a, $50
    ld h, h

jr_044_43ac:
    cpl
    ld a, $4b
    ld b, c
    ld h, h
    ld a, [hl-]
    jr z, jr_044_43e3

    ld l, $ef
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ccf
    ld a, $49
    ld b, c
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld c, c
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, h
    ld a, $40
    ld b, l
    sbc h

jr_044_43e3:
    rst $28
    xor $50
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    dec h
    ld e, e
    ld d, d
    ld c, d
    ld b, d
    ld h, c
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
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $2a
    ld c, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    dec h
    ld e, e
    ld d, d
    ld c, d
    ld b, d
    ld h, h
    ld a, $4a
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
    jr nc, jr_044_44a9

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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    jr z, jr_044_44c1

    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4d
    ld a, $3e
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld a, [$eff7]
    xor $24
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $49
    ld a, $50
    ld d, b

jr_044_44a9:
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $41

jr_044_44c1:
    ld a, $50
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, d
    ld c, e
    ld b, [hl]
    ld d, b
    rst $28
    xor $4a
    ld d, d
    ld e, [hl]
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
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    and h
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
    ld a, $64
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2a
    ld b, d
    ccf
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $29
    ld c, a
    ld a, $52
    ld h, l
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
    xor $2c
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $50
    ld h, h
    rst $28
    xor $52
    ld c, e
    ccf
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld c, b
    ld c, h
    ld b, b
    ld b, l
    ld d, c
    ld h, l
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
    jr nc, @+$40

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
    or $65
    ld h, h
    daa
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld c, h
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld a, [$eff7]
    xor $54
    ld a, $4f
    ld h, h
    ld b, h
    ld c, a
    ld a, $4b
    ld b, c
    ld b, [hl]
    ld c, h
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, @+$48

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
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $47
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, c
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
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld d, d
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
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    ld c, h
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
    xor $3d
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    sbc h
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
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3d
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3a
    ld a, $40
    ld b, l
    ld d, c
    ld c, h
    ld c, a
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
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $25
    ld c, a
    ld d, d
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
    inc h
    ld d, d
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    sbc h
    ld a, [$eff7]
    xor $48
    ld c, c
    ld a, $50
    ld d, b
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
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
    jr z, jr_044_4810

    ld c, e
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
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld b, e
    ld c, h
    ld c, a
    ld d, b
    ld b, b
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
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, l

jr_044_4810:
    ld h, a
    rst $30
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
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    add hl, hl
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
    jr nc, jr_044_488c

    ld c, d
    ld c, h
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h

jr_044_488c:
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
    ld c, l
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $4c
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_044_48f5

    ld h, h
    ld a, $52
    ld d, b
    sbc h
    rst $28
    xor $3f
    ld c, a
    ld e, l
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, h
    ld b, d
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    rst $28
    xor $36
    ld b, b
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
    ld h, c
    ld h, h
    daa
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28

jr_044_48f5:
    xor $44
    ld a, $4b
    ld d, a
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
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
    ld a, [$eff7]
    xor $41
    ld a, $50
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
    ld sp, $403e
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    rst $28
    xor $33
    ld b, [hl]
    ld c, c
    ld d, a
    ld b, d
    ld h, b
    ld h, h
    add hl, hl
    ld b, d
    ld c, c
    ld d, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4c
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld e, e
    ld d, d
    ld c, d
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $2a
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
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
    cpl
    ld a, $52
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $25
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld c, e
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
    ld d, b
    sbc h
    rst $28
    xor $41
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    ld c, h
    ld c, a
    ld d, b
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
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    jr nc, jr_044_4a3d

    ld c, d
    ld c, h
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
    scf
    ld b, [hl]
    ld b, d
    ld b, e
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2b
    ld e, h
    ld b, l
    ld c, c
    ld b, d
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld d, c
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
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$52

jr_044_4a3d:
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $4c
    ccf
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld d, d
    ld b, b
    ld b, l
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
    cpl
    ld a, $52
    ld d, c
    ld h, h
    daa
    ld c, h
    ld c, b
    ld d, d
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld e, e
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    jr nc, jr_044_4adb

    ld c, a
    ld c, a
    ld d, [hl]
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
    inc l
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $42
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    ld [hl], $51
    ld e, h
    ld c, a
    ld d, c
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld a, $50

jr_044_4adb:
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    rst $28
    xor $49
    ld b, d
    ccf
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $57
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld d, c
    ld a, $41
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $49
    ld d, b
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $41
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, l
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
    xor $49
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld d, c
    ld a, $41
    ld d, c
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
    or $61
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $45
    ld a, $3f
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    inc sp
    ld a, $4b
    ld d, c
    ld b, l
    ld b, d
    ld c, a
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
    jr z, jr_044_4c12

    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
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
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
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
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    rst $28
    xor $2c
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
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d

jr_044_4c12:
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $61
    rst $28
    xor $3a
    ld a, $4f
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
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
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
    dec h
    ld b, d
    ld b, l
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, l
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
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
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
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
    ccf
    ld b, [hl]
    ld c, e
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
    inc l
    ld c, d
    ld h, h
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
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $2f
    ld a, $4b
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    cpl
    ld a, $4b
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
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    ld h, h
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    cpl
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, b
    ld h, h
    dec h
    ld a, $52
    ld c, d
    ld h, b
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld c, b
    ld h, h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_044_4df4

    ld c, c
    ld d, c
    ld a, $61
    rst $28
    xor $3a
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld a, [$eff7]
    xor $41
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    cpl
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $46
    ld b, d

jr_044_4df4:
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $46
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
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $45
    ld a, $3f
    ld d, c
    ld h, h
    inc h
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld a, $52
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
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld a, $52
    ld c, d
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
    xor $53
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
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
    jr nc, jr_044_4ed5

    ld b, h
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
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    jr nc, jr_044_4ed8

    ld c, c
    ld d, c
    ld a, $ef
    xor $53
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld d, d
    ld b, b
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
    ld a, $50
    ld h, h
    jr nc, jr_044_4f12

    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
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
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld b, h
    ld h, h
    ld d, h
    ld b, [hl]

jr_044_4ed5:
    ld b, d
    ld b, c
    ld b, d

jr_044_4ed8:
    ld c, a
    rst $28
    xor $43
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
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
    ld b, l
    ld a, $51
    ld h, h
    daa
    ld b, [hl]
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

jr_044_4f12:
    rst $28
    xor $57
    ld d, d
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $52
    ld d, c
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
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld b, d
    ld c, e
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld c, c
    ld a, $4b
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    rst $28
    xor $54
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
    inc h
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
    ld c, e
    rst $28
    xor $3a
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $37
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, [hl]
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
    ld h, [hl]
    ld a, [$eff7]
    xor $28
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $52
    ld c, e
    ld d, c
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
    ld a, $3f
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
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
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, [hl]
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
    daa
    ld d, d
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, b
    ld d, c
    ld h, c
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
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc sp
    ld b, e
    ld d, d
    ld h, l
    ld h, h
    jr z, @+$4d

    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
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
    jr c, jr_044_50d9

    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld c, a
    ld b, d
    ld c, l
    ld c, l
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
    ld [hl], $40
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
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
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $3e
    ld c, c
    ld d, c
    ld b, d
    ld c, e

jr_044_50d9:
    ld h, h
    jr nc, jr_044_511a

    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, d
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
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld a, $40
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a

jr_044_511a:
    ld e, e
    ld c, e
    ld b, c
    ld b, d
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_044_5213

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

jr_044_5213:
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_044_526e

    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld c, a
    ld e, l
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $24
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $65
    ld h, h
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld l, b
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    sbc h
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    sbc h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36

jr_044_526e:
    ld d, c
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, l
    ld h, l
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, l
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
    xor $28
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
    jr nc, jr_044_5332

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

jr_044_5332:
    dec [hl]
    ld a, $4b
    ld b, h
    rst $28
    xor $28
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
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_044_53aa

    ld d, c
    sbc h
    rst $28
    xor $4f
    ld a, $52
    ld c, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $57
    ld d, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_044_53b7

    ld c, d
    ld c, h
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
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
    ld h, a
    ld a, [$eff7]
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

jr_044_53aa:
    ld h, l
    ld a, [$eff7]
    xor $27
    ld a, $64
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h

jr_044_53b7:
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

jr_044_53c2:
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    jr z, jr_044_53c2

    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_044_5429

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld b, d
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
    ld b, [hl]
    ld c, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $3a
    ld a, $4f
    ld d, c
    ld b, d
    ld c, a
    ld a, $52
    ld c, d
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
    dec hl
    ld a, $60
    ld h, h
    ld b, l
    ld a, $65

jr_044_5429:
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    jr z, jr_044_5496

    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld a, [$eff7]
    xor $28
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
    ld c, e
    ld c, h
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
    add hl, hl
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
    ld c, e
    ld b, d
    ld c, e
    ld c, e
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
    ld a, $3f
    ld h, h
    ld b, a
    ld b, d

jr_044_5496:
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    scf
    ld b, d
    ld d, c
    ld h, l
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
    inc sp
    ld a, $51
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, [hl]
    ld b, d
    ld b, c
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
    jr nc, jr_044_5539

    ld c, d
    ld b, [hl]
    ld c, b
    ld h, b
    rst $28
    xor $27
    ld a, $4f
    ld c, b
    ld b, b
    ld c, a
    ld a, $3f
    ld h, b
    ld h, h
    daa
    ld c, h
    ld c, a
    ld c, h
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $29
    ld c, c
    ld d, d
    ld b, h
    ccf
    ld a, $52
    ld c, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $30
    ld b, d
    ld b, h
    ld a, $54
    ld d, d
    ld c, a
    ld c, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $3e
    ld c, a
    ld d, c
    ld b, d
    ld h, h
    dec h
    ld c, h
    ld b, l
    ld c, e
    ld b, [hl]
    ld h, b
    rst $28

jr_044_5539:
    xor $2a
    ld c, c
    ld a, $50
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $32
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
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
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld c, b
    ld h, b
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, b
    ld a, [$eff7]
    xor $38
    ld c, e
    ld b, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld c, e
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    rst $28
    xor $2b
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $2f
    ld e, h
    ld d, h
    ld b, d
    ld c, e
    ld b, l
    ld a, $49
    ld d, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $37
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld a, $41
    ld b, d
    ld c, c
    ld h, l
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
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld d, b
    ld c, b
    ld d, [hl]
    ld c, d
    ld b, [hl]
    ld d, l
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld b, [hl]
    ld d, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld d, b
    ld c, b
    ld d, [hl]
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $3a
    ld b, l
    ld b, [hl]
    ld d, b
    ld c, b
    ld d, [hl]
    ld c, d
    ld b, [hl]
    ld d, l
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $30
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
    jr z, @-$0f

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
    jr z, jr_044_56ab

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
    ld a, [$eff7]
    xor $37
    ld b, d
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $3a
    ld a, $4f
    ld d, c
    ld b, d
    ld c, d
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c

jr_044_56ab:
    ld h, h
    ld l, $46
    ld c, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ld h, h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    rst $28
    xor $2b
    ld a, $52
    ld d, b
    ld d, b
    ld c, c
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
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $35
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $2a
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld d, b
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
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $2a
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld a, $4b
    ld h, c
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld c, d
    ld c, d
    ld h, h
    ld a, $49
    ld d, b
    ld c, h
    rst $28
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
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
    cpl
    ld a, $4b
    ld b, h
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, h
    ld l, $42
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
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
    ld b, l
    ld a, $3f
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld b, h
    ld b, d
    ld c, e
    ld c, h
    ld c, d
    ld c, d
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
    ld a, [$eff7]
    xor $38
    ld c, e
    ld b, c
    ld h, h
    ld b, l
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
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
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
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, c
    ld h, h
    ld [hl-], a
    ld c, a
    ld d, c
    ld h, h
    ld b, c
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
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    dec h
    ld c, a
    ld e, l
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld h, c
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
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld c, e
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
    jr c, jr_044_58bd

    ld b, c
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $52
    ld d, b
    rst $28
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
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_044_58e6

    ld b, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    jr z, jr_044_58e9

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
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    ccf
    ld c, a

jr_044_58bd:
    ld e, l
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $49
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
    ld [hl], $4c
    ld h, c
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, d

jr_044_58e6:
    ld a, $40
    ld b, l

jr_044_58e9:
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
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
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, l
    ld h, h
    daa
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, c
    ccf
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
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    inc h
    ld d, d
    ld d, b
    ld b, h
    ld a, $4b
    ld b, h
    ld d, b
    ld c, d
    ld c, h
    ld c, e
    sbc h
    rst $28
    xor $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
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
    jr z, @+$48

    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld a, $44
    ld d, c
    and e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, $4f
    ld d, c
    rst $28
    xor $57
    ld b, d
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $36
    ld d, c
    ld a, $4a
    ld c, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, $4f
    ld d, c
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld d, h
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
    jr c, jr_044_5a3a

    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld a, $4f
    ld d, c
    ld a, [$eff7]
    xor $57
    ld b, d
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d

jr_044_5a3a:
    ld c, e
    ld a, $4f
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld [hl], $51
    ld a, $4a
    ld c, d
    ld h, h
    ld a, $52
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
    inc h
    ld c, c
    ld d, b
    ld c, h
    and h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $45
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $36
    ld d, c
    ld a, $4a
    ld c, d
    ld b, d
    ld d, b
    ld h, h
    ld a, $3f
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld sp, $403e
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    rst $28
    xor $49
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld c, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr z, jr_044_5b55

    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    rst $28
    xor $3d
    ld h, c
    dec h
    ld h, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, a
    ld a, [$eff7]
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
    ld c, d
    ld b, [hl]
    ld d, c
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
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    sbc h
    ld a, [$eff7]
    xor $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    rst $28
    xor $3e

jr_044_5b55:
    ld c, c
    ld d, b
    ld h, h
    ld [hl], $51
    ld a, $4a
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
    ld l, $46
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld c, b
    ld b, [hl]
    ld b, c
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, h
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $49
    ld b, d
    ld c, a
    ld c, e
    ld b, d
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
    jr c, jr_044_5bf5

    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $46
    ld b, l
    ld c, e
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
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld c, l
    ld a, $3e
    ld c, a
    ld d, c
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
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld h, h
    ld [hl], $4c
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    sbc h
    rst $28
    xor $50
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h

jr_044_5bf5:
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
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
    ld h, l
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
    jr nc, @+$4e

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
    and h
    rst $28
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    rst $28
    xor $ff
    ldh a, [$67]
    jr z, jr_044_5c9e

    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
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
    dec hl
    ld b, d
    ld b, [hl]
    ld c, a
    ld a, $51
    ld a, [$eff7]
    xor $57
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_044_5ccb

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
    xor $67
    ld sp, $403e
    ld b, l
    ld h, h
    ld b, c
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

jr_044_5c9e:
    xor $45
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $28
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_044_5d06

    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld b, b

jr_044_5ccb:
    ld b, l
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld a, $50
    ld h, h
    jr z, jr_044_5d25

    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
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
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $28
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e

jr_044_5d06:
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    add hl, sp
    ld c, h
    ld c, a
    ld h, h
    ld b, c
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
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h

jr_044_5d25:
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $4d
    ld b, [hl]
    ld b, d
    ld c, c
    sbc h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4b
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
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    jr nc, jr_044_5d8b

    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld a, $49
    ld d, b
    ld c, h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $4f
    ld e, l
    ld b, b
    ld c, b
    ld b, h
    ld e, e
    ld c, e
    ld b, h
    ld b, [hl]
    ld b, h
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    dec h
    ld c, a
    ld e, l

jr_044_5d8b:
    ld d, c
    ld b, d
    ld c, e
    rst $28
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
    xor $41
    ld b, d
    ld c, d
    ld h, h
    jr z, jr_044_5df9

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
    ld [hl], $4d
    ld c, a
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    scf
    ld a, $44
    ld b, d
    ld d, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    dec l
    ld b, d
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
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

jr_044_5df9:
    ld c, e
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
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
    jr z, jr_044_5ebd

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
    jr z, jr_044_5ed9

    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $52
    ld c, d
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
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
    ld h, a
    rst $30

jr_044_5ebd:
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_044_5f10

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
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c

jr_044_5ed9:
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
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
    ld l, $49
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld c, b
    ld b, d

jr_044_5f10:
    ld a, [$eff7]
    xor $45
    ld c, h
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, d
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_044_5f80

    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, h
    ld b, d
    ccf
    ld c, h
    sbc h
    rst $28
    xor $4f
    ld b, d
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_044_5f9a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld a, $51
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a

Jump_044_5f60:
    ld h, h
    rst $28
    xor $2f
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ld bc, $6761
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_044_5fc5

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld e, e
    ld b, l
    ld c, a

jr_044_5f80:
    sbc h
    rst $28
    xor $49
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
    ld a, $49
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b

jr_044_5f9a:
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $01
    ld h, c
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
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
    jr nc, jr_044_5ff8

    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld c, e

jr_044_5fc5:
    ld d, d
    ld c, a
    rst $28
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
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    dec a
    ld b, d
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
    add hl, hl
    ld e, l
    ld c, a
    ld h, h

jr_044_5ff8:
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld e, h
    ld d, c
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld b, [hl]
    ccf
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld e, e
    ld c, e
    ld c, e
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $48
    ld c, c
    ld a, $4d
    ld c, l
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $4b
    ld a, $51
    ld e, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4b
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
    inc l
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld c, h
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld d, d
    ld d, c
    sbc h
    ld a, [$eff7]
    xor $3e
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    and h
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
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2a
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
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    ld d, d
    ld c, d
    ld d, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
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
    inc h
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld e, l
    ld e, [hl]
    ld b, d
    ld d, b
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $f6
    ld h, [hl]
    rst $28
    xor $f6
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2a
    ld d, d
    ld d, c
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
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
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $28
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $50
    ld d, d
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
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $52
    ld d, b
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, l
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
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, @+$48

    ld a, [$eff7]
    xor $67
    ld d, b
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, e
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
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2a
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
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    ld d, d
    ld c, d
    ld b, h
    ld b, d
    sbc h
    rst $28
    xor $54
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    rst $28
    xor $36
    ld c, h
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
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
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    or $64
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
    ld h, c
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
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_044_62d7

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_044_62e8

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    jr nc, jr_044_630d

    ld c, e
    ld c, e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $3f
    ld d, a
    ld d, h
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ccf
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld b, d

jr_044_62d7:
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    daa
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]

jr_044_62e8:
    ld d, b
    ld d, c
    rst $28
    xor $67
    ld [hl], $42
    ld b, h
    ld c, e
    ld b, d
    ld c, e
    ld h, a
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld a, [$eff7]
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
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h

jr_044_630d:
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
    ld h, c
    ld a, [$eff7]
    xor $67
    ld a, [hl-]
    ld a, $40
    ld b, l
    ld d, b
    ld d, c
    ld d, d
    ld c, d
    ld d, b
    ld b, h
    ld c, a
    ld b, d
    ld c, e
    ld d, a
    ld b, d
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    dec l
    ld b, d
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2b
    ld e, h
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    daa
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld e, h
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $42
    ld c, a
    ld b, l
    ld e, h
    ld b, l
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
    xor $67
    dec l
    ld b, d
    ld h, h
    ld e, h
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $4d
    ld a, $3e
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2b
    ld e, h
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld c, c
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, l
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
    ld h, c
    ld a, [$eff7]
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
    ld h, a
    ld a, [$eff7]
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
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
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
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $27
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, a
    ld a, [$eff7]
    xor $67
    ld c, d
    ld a, $4b
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, c
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
    ld a, [$eff7]
    xor $4a
    ld a, $4b
    ld h, h
    ld c, l
    ld a, $3e
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    daa
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld [hl], $51
    ld a, $4a
    ld c, d
    ld h, h
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    sbc h
    rst $28
    xor $54
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
    ld h, a
    ld a, [$eff7]
    xor $67
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
    xor $2a
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, d
    ld c, e
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    rst $28
    xor $f7
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
    rst $28
    xor $2e
    ld b, d
    ld c, e
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
    xor $37
    ld c, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld h, b
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    sbc h
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    jr nc, jr_044_65cc

    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
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
    rst $28
    xor $41
    ld c, a
    ld a, $52
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
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
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d

jr_044_65cc:
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
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
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
    rst $28
    xor $24
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
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
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld sp, $403e
    ld b, l
    ccf
    ld a, $4f
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
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld sp, $403e
    ld b, l
    ccf
    ld a, $4f
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_044_668d

    ld c, e
    ld c, e
    ld h, [hl]
    ld h, h
    ld [hl-], a
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld c, a
    ld a, $52
    ld h, [hl]
    ld h, h
    ld [hl-], a
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $61
    ld h, c
    ld h, c
    ld h, h
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
    ld d, b
    ld h, h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a

jr_044_668d:
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, l
    ld a, [$eff7]
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
    ld c, a
    ld b, c
    ld b, d
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
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$e9]
    ld h, b
    or $64
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld a, $4b
    ld c, b
    ld h, c
    ld a, [$f0f7]
    jr z, jr_044_6731

    ld c, e
    ld b, d
    ld h, h
    jr nc, @+$44

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld h, l
    rst $28
    xor $3d
    ld d, d
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
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    rst $30
    ldh a, [$39]
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld e, e
    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld c, b
    ld c, c

jr_044_6731:
    ld a, $4a
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, c
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
    rst $30
    rst $28
    xor $67
    jr c, @+$4d

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
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld e, e
    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    ld d, c
    ld b, d
    ld c, a
    ld c, e
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
    ld h, h
    scf
    ld c, h
    ld c, l
    ld b, e
    ld h, c
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    dec l
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    ld a, [$eff7]
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $36
    ld c, l
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ccf
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld d, b
    ld b, d
    ld c, a
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec [hl]
    ld a, $52
    ld d, b
    ld h, l
    ld h, l
    rst $28
    xor $31
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    dec h
    ld b, d
    ld d, c
    ld b, l
    ld h, h
    ld d, h
    ld b, d
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
    ld [hl-], a
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $25
    ld b, d
    ld d, c
    ld b, l
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
    xor $42
    ld d, b
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, c
    ld a, $40
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld c, h
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_044_6933

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
    jr c, jr_044_6942

    ld b, c
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    rst $28
    xor $37
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
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $42
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c

jr_044_6933:
    ld b, d
    ld c, e
    ld h, c
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

jr_044_6942:
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, c
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
    inc sp
    ld c, a
    ld c, h
    ld b, e
    ld b, d
    ld d, b
    ld d, b
    ld c, h
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
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
    and h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
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
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
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
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
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
    jr nc, jr_044_6a28

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
    ld a, [$eff7]
    xor $2b
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld c, l
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $28
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, $43

jr_044_6a28:
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_044_6a81

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
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

Jump_044_6a77:
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]

jr_044_6a81:
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld b, d
    ld l, b
    ld d, b
    ld h, h
    ld c, c
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $3e
    ld b, h
    ld h, h
    dec h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, l
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
    ld c, d
    ld a, $4b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $43
    ld e, l
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, b
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld c, d
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
    dec l
    ld b, d
    ld h, h
    ld d, c
    ld b, d
    ld d, d
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
    jr nc, jr_044_6bd1

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
    rst $30
    ldh a, [$ea]
    sbc a

jr_044_6bd1:
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
    ld c, a
    ld a, $52
    ld c, d
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_044_6c56

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
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld b, h
    ld b, d
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld a, [$eff7]
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
    ld b, [hl]
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    rst $28

jr_044_6c56:
    xor $24
    ld c, a
    ld d, c
    ld h, c
    ld h, c
    ld h, c
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_044_6cd9

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
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
    xor $45
    ld a, $51
    ld d, c
    ld b, d
    ld h, c
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
    jr nc, jr_044_6d0a

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $24
    ld d, d
    ld d, b
    ld c, c

jr_044_6cd9:
    ld a, $4b
    ld b, c
    ld h, h
    ld b, l
    ld a, $3f
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
    xor $26
    ld b, l
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a

jr_044_6d0a:
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld a, $4a
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $54
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
    ld c, h
    ld h, h
    ld d, c
    ld c, a
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld c, h
    ld d, b
    ld d, b
    rst $28
    xor $54
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    daa
    ld a, $64
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $2c
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    sbc h
    jr nc, jr_044_6e4a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $49
    ld b, d
    ccf
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
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $50
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
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b

jr_044_6e4a:
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld d, e
    ld c, h
    ld c, d
    ld h, h
    dec a
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    sbc h
    ld a, [$eff7]
    xor $51
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
    rst $28
    xor $ff
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
    ld b, d
    ld c, d
    ld c, h
    sbc h
    ld h, h
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
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3d
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, c
    ld d, c
    ld c, h
    ld c, a
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $30
    ld b, d
    ld c, d
    ld c, h
    ld d, c
    ld c, h
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $61
    ld h, h
    dec hl
    ld a, $3f
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
    ld b, c
    ld a, $40
    ld b, l
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_044_6f6c

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld b, d
    ld d, c
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
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
    dec hl
    ld a, $60
    ld h, h
    ld b, l
    ld a, $60
    ld h, h
    ld b, l
    ld a, $65
    ld h, h
    jr z, jr_044_6fbb

    rst $28

jr_044_6f6c:
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld c, e

jr_044_6fbb:
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld a, $4b
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
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
    ld h, c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
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
    dec h
    ld b, d
    ld b, [hl]
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
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld d, c
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $4a
    ld c, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld h, c
    dec h
    ld h, c
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
    ld h, b
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    rst $28
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld [hl], $51
    ld a, $4a
    ld c, d
    and h
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $27
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld c, b
    ld b, [hl]
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, b
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
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_044_7149

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    inc h
    ld d, d
    ld d, b
    ld c, e
    ld a, $45
    ld c, d
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
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    scf
    ld b, l
    ld b, d
    ld c, d
    ld a, $fa
    rst $30
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, l
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28

jr_044_7149:
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $4c
    sbc h
    rst $28
    xor $49
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld b, d
    ld c, e
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld h, h
    ld b, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_044_7210

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, c
    ccf
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
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4a
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
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f

jr_044_7210:
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
    ld a, $49
    ld d, b
    ld c, h
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    sbc h
    ld a, [$eff7]
    xor $50
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
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
    ld b, d
    ld d, b
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    inc h
    ld d, d
    ld d, b
    ld c, e
    ld a, $45
    ld c, d
    ld b, d
    ld c, e
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
    rst $30
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
    ld h, h
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    jr z, jr_044_733e

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
    or $65
    ld h, h
    daa
    ld d, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    jr z, jr_044_7376

    ld b, e
    ld c, h
    ld c, c
    ld b, h
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28

jr_044_733e:
    xor $9f
    ld h, h
    ld h, a
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_044_73a0

    ld d, c
    sbc h
    rst $28
    xor $4f
    ld a, $52
    ld c, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $57
    ld d, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_044_73ad

    ld c, d
    ld c, h
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $3d
    ld d, h

jr_044_7376:
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, a
    ld a, [$eff7]
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

jr_044_73a0:
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c

jr_044_73ad:
    ld h, h
    daa
    ld d, d
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
    xor $30
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
    dec hl
    ld c, h
    ld b, e
    ld b, e
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld b, [hl]
    ld d, c
    ld a, $51
    ld h, h
    ld a, $52
    ld d, b
    and e
    rst $28
    xor $36
    ld c, h
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld d, h
    ld a, $50
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $35
    ld d, d
    ld b, l
    ld b, d
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
    jr z, @+$48

    ld c, e
    rst $28
    xor $37
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld c, a
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2a
    ld b, d
    ld b, e
    ld a, $45
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $49
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $24
    ld c, e
    ld d, a
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
    inc h
    ld b, b
    ld b, l
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, h
    ld sp, $455b
    ld c, a
    ld b, d
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_044_752f

    ld c, e
    ld h, h
    dec a
    ld b, [hl]
    ld d, c
    ld a, $51
    ld h, h
    ld a, $52
    ld d, b
    and e
    rst $28
    xor $36
    ld c, h
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld b, d
    ld c, d
    rst $28
    xor $2a
    ld b, d
    ld c, c
    ld b, c
    ld h, c
    ld h, a
    rst $30
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

jr_044_752f:
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
    xor $39
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $29
    ld c, a
    ld a, $52
    ld b, d
    ld c, e
    ld c, b
    ld c, c
    ld a, $4a
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec [hl]
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    rst $28
    xor $2f
    ld a, $3f
    ld d, [hl]
    ld c, a
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld a, $45
    ld c, c
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $29
    ld a, $49
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
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_044_75fa

    ld c, e
    ld h, h
    dec a
    ld b, [hl]
    ld d, c
    ld a, $51
    ld h, h
    ld a, $52
    ld d, b
    and e
    rst $28
    xor $27
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $2f
    ld c, h
    ld c, e
    ld b, c
    ld a, $40
    ld b, [hl]
    ld a, $61
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
    dec h
    ld b, [hl]
    ld b, h
    ld h, h
    jr z, @+$58

jr_044_75fa:
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
    ld h, [hl]
    ld h, h
    dec h
    ld b, [hl]
    ld b, h
    ld h, h
    jr z, jr_044_7673

    ld b, d
    rst $28
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
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
    ld [hl], $4c
    ld d, h
    ld a, $50
    ld h, h
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, a
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
    inc h
    ld b, b

jr_044_7673:
    ld b, l
    ld h, h
    ld b, a
    ld a, $61
    rst $28
    xor $29
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
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
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $29
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, l
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
    jr c, jr_044_77b3

    ld b, c
    ld h, h
    ld d, b
    ld c, l
    ld a, $4f
    ld d, c
    rst $28
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld bc, $3064
    ld b, [hl]
    ld c, h
    ld h, c
    ld h, h
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
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
    ld a, $50
    ld h, h
    ld [hl], $51
    ld c, h
    ld b, e
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
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

jr_044_77b3:
    rst $28
    xor $3f
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
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
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld a, [$eff7]
    xor $29
    ld a, $4b
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
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
    ld d, h
    ld a, $4f
    ld d, c
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld h, $3e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, h
    ld h, [hl]
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    inc l
    ld b, l
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
    jr nc, jr_044_788d

    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld h, [hl]
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, a
    ld d, c
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
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b

jr_044_788d:
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    add hl, sp
    ld c, h
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_044_790d

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, a
    sbc h
    rst $28
    xor $4f
    ld b, d
    ld c, e
    ld h, h
    ld b, d
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
    ld a, [$eff7]
    xor $45
    ld a, $51
    ld h, c
    ld h, h
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h

jr_044_790d:
    ld h, a
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
    jr nc, jr_044_795e

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

jr_044_795e:
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
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $4c
    ccf
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld a, $4b
    ld c, e
    rst $28
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
    ld c, a
    ld a, $52
    ld d, b
    sbc h
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld d, b
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
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
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
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $28
    ccf
    ld b, d
    ld c, e
    ld b, d
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
    ld c, d
    ld a, $4b
    ld h, h
    ld a, $4a
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
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
    ld d, d
    ld c, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_044_7af4

    ld c, c
    ld d, c
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2f
    ld a, $4b
    ld b, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, [hl]
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    rst $28
    xor $49
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50

jr_044_7af4:
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
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
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $ef
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
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
    ld [hl], $4c
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
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
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
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $31
    ld a, $4a
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    jr nc, @+$40

    ld c, c
    ld d, c
    ld a, $9c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld d, b
    ld h, [hl]
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
    rst $28
    xor $3a
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $45
    ld b, d
    ld b, [hl]
    ld e, [hl]
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
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, [hl]
    ld h, h
    ld a, [hl-]
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
    ld sp, $4a3e
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $2b
    ld a, $65
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    ld [hl-], a
    ccf
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $46
    ld b, l
    ld c, a
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, @+$40

    ld c, c
    ld d, c
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $45
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
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
    ld d, b
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld a, $44
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
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $31
    ld a, $4a
    ld b, d
    ld c, e
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
    ld b, h
    ld b, d
    ld d, b
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
    jr z, jr_044_7d17

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $28
    ld c, a
    ld b, c
    ccf
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld d, h
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld a, $50
    ld a, $4f
    ld h, h

jr_044_7d17:
    ld b, a
    ld a, $fa
    rst $30
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld c, a
    ld e, h
    ld e, [hl]
    ld b, d
    ld c, a
    ld h, l
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
