; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $047", ROMX[$4000], BANK[$47]

    ld b, a
    ei
    ld b, b
    rra
    ld b, c
    ld b, e
    ld b, c
    dec bc
    ld b, b
    ld a, e
    ld b, b
    ld h, a
    ld b, c
    push bc
    ld b, c
    cpl
    ld b, d
    or d
    ld b, d
    rst $28
    ld b, d
    ld [hl+], a
    ld b, e
    xor c
    ld b, e
    call c, Call_047_6b43
    ld b, h
    sbc d
    ld b, h
    adc e
    ld b, l
    cp e
    ld b, l
    sbc b
    ld b, [hl]
    ret


    ld b, [hl]
    ld hl, sp+$46
    cpl
    ld b, a
    ld l, e
    ld b, a
    ld [$3e47], a
    ld c, b
    ld l, l
    ld c, b
    jp c, $1448

    ld c, c
    ld a, l
    ld c, c
    db $e4
    ld c, c
    add hl, hl
    ld c, d
    ld d, a
    ld c, d
    dec c
    ld c, e
    ld b, b
    ld c, e
    cpl
    ld c, h
    pop af
    ld c, h
    adc [hl]
    ld c, l
    ld l, $4e
    ld e, [hl]
    ld c, [hl]
    add b
    ld c, [hl]
    xor h
    ld c, [hl]
    jr nz, jr_047_40a2

    db $d3
    ld c, a
    ld [hl], h
    ld d, b
    push de
    ld d, b
    or $51
    and b
    ld d, d
    ldh [rHDMA2], a
    ld b, e
    ld d, e
    or d
    ld d, e
    ld [bc], a
    ld d, h
    ld a, a
    ld d, h
    sbc a
    ld d, h
    db $fd
    ld d, h
    or e
    ld d, l
    ld c, b
    ld d, [hl]
    ld h, b
    ld d, [hl]
    sbc h
    ld d, [hl]
    ld b, l
    ld d, a
    adc b
    ld d, a
    ld l, b
    ld e, b
    and h
    ld e, b
    sub a
    ld e, c
    ld c, l
    ld e, d
    db $76
    ld e, d
    ld [$585b], sp
    ld e, e
    cp a
    ld e, e
    inc b
    ld e, h
    sub c
    ld e, h
    jp $2e5c


    ld e, l
    or $5d
    cp a
    ld e, [hl]
    add a
    ld e, a
    cp c
    ld e, a
    db $f4
    ld e, a
    ld d, h
    ld h, b
    jp $6e60


    ld h, c
    db $dd
    ld h, c
    ld d, e

jr_047_40a2:
    ld h, d
    ld [hl], l
    ld h, e
    and $63
    dec [hl]
    ld h, l
    ld l, h
    ld h, l
    rst $08
    ld h, l
    ld l, d
    ld h, [hl]
    and b
    ld h, [hl]
    cp l
    ld h, [hl]
    ld a, b
    ld h, a
    rst $08
    ld h, a
    inc c
    ld l, b
    ret


    ld l, b
    ld b, l
    ld l, c
    xor a
    ld l, c
    ld [hl], c
    ld l, d
    or d
    ld l, d
    inc hl
    ld l, e
    ld c, b
    ld l, e
    jp z, $316b

    ld l, h
    sbc e
    ld l, h
    db $db
    ld l, h
    ld c, l
    ld l, l
    adc l
    ld l, l
    db $e3
    ld l, l
    ld b, $6e
    ld [hl], b
    ld l, [hl]
    ld a, [de]
    ld l, a
    ret


    ld l, a
    jr c, jr_047_414f

    ld a, c
    ld [hl], b
    ld b, d
    ld [hl], c
    ld sp, hl
    ld [hl], c
    ld d, c
    ld [hl], d
    dec l
    ld [hl], e
    sub h
    ld [hl], e
    rst $00
    ld [hl], e
    pop hl
    ld [hl], e
    ret


    ld [hl], h
    ld d, [hl]
    ld [hl], l
    ld hl, sp+$75
    sub c
    db $76
    ccf
    ld [hl], a
    bit 6, a

Call_047_40fb:
    ld a, [$c822]
    cp $01
    jr nz, jr_047_4118

    ld a, [$c823]
    cp $40
    jr c, jr_047_4118

    sub $40
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1f00
    rst $10
    ret


jr_047_4118:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_047_413c

    ld a, [$c823]
    cp $40
    jr c, jr_047_413c

    sub $40
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1f00
    rst $10
    ret


jr_047_413c:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_047_4118

    ld a, [$c823]
    cp $40

jr_047_414f:
    jr c, jr_047_4160

    sub $40
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1f00
    rst $10
    ret


jr_047_4160:
    call Call_047_40fb
    call $0609
    ret


    or $64
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
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ccf
    ld c, c
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
    xor $2a
    ld b, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_047_421a

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld c, a
    ld d, d
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld d, b
    ld c, h
    ld c, e
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
    ld b, d
    ld b, [hl]
    ld c, c
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
    ld h, h

jr_047_421a:
    ccf
    ld a, $49
    ld b, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $30
    ld c, h
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
    ld h, l
    ld a, [$eff7]
    xor $24
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_047_429a

    ld c, e
    ld c, e
    ld h, b
    rst $28
    xor $24
    ld b, b
    ld b, l
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    ld c, c
    ld b, d

jr_047_429a:
    ccf
    ld b, d
    ld c, e
    ld d, b
    sbc h
    rst $28
    xor $4f
    ld a, $52
    ld c, d
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
    ld h, a
    rst $38
    ldh a, [$ea]
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_047_4346

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, d
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
    ld h, h
    ld a, [$eff7]
    xor $3a
    ld a, $40
    ld b, l
    ld c, a
    ld a, $52
    ld c, d
    ld h, [hl]
    ld h, a
    ld h, h
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    dec a
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
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
    dec hl
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

jr_047_4346:
    xor $25
    ld a, $52
    ld c, d
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, b
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
    dec a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld e, e
    ld c, a
    rst $28
    xor $2a
    ld c, a
    ld b, d
    ld c, d
    ld c, c
    ld b, [hl]
    ld c, e
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
    jr c, jr_047_43c7

    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld a, [hl-]
    ld a, $40
    ld b, l
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
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $4c
    ld c, c
    ld b, c
    ld a, $51
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_047_4400

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, d
    ld h, h
    jr nc, jr_047_4402

    ld c, d
    ld c, h
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c

jr_047_43c7:
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
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    jr nc, jr_047_4427

    ld c, d
    ld c, h
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
    jr nc, jr_047_4432

    ld b, c
    ld b, l
    ld a, $4b
    ld b, c
    ld h, b
    ld a, [$eff7]
    xor $3a
    ld c, h

jr_047_4400:
    ld c, c
    ld c, c

jr_047_4402:
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
    rst $28
    xor $29
    ld b, d
    ld b, d

jr_047_4427:
    ld c, a
    ld a, $51
    ld d, c
    ld b, d
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld h, a

jr_047_4432:
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
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld l, $4c
    ld c, d
    ld a, $41
    ld c, h
    ld c, a
    ld a, $fa
    rst $30
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec h
    ld e, h
    ld d, b
    ld d, b
    ld a, $4a
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_047_44c2

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, d
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
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
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
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_047_44f4

    ld b, h
    ld a, $45
    ld a, $45
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $33
    ld d, d
    ld c, e
    ld c, b
    ld d, b

jr_047_44c2:
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
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
    ld c, a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $27
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld c, b
    ld b, [hl]
    ld b, c
    ld h, b
    ld a, [$eff7]
    xor $2b
    ld a, $45
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a

jr_047_44f4:
    ld h, b
    rst $28
    xor $2e
    ld c, e
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, b
    ld h, h
    rst $28
    xor $2b
    ld c, h
    ld c, a
    ld c, e
    ld b, l
    ld a, $50
    ld b, d
    ld h, b
    ld a, [$eff7]
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
    jr nc, jr_047_458c

    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
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
    jr nc, jr_047_45b1

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
    ld b, d
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]

jr_047_458c:
    sbc a
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_047_45e2

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, d
    ld h, h
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
    ld a, [$eff7]
    xor $3a
    ld d, d
    ld d, c

jr_047_45b1:
    ld c, a
    ld a, $52
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
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
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $3e
    ld c, e
    ld b, c
    ld c, d
    ld a, $4b
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $36
    ld c, b
    ld b, d

jr_047_45e2:
    ld c, c
    ld b, d
    ld d, c
    ld d, c
    ld c, h
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
    add hl, hl
    ld b, d
    ld b, d
    ld b, c
    ld c, a
    ld a, $48
    ld h, b
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ccf
    ld a, $52
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
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
    ld d, d
    ld b, h
    ccf
    ld a, $52
    ld c, d
    rst $28
    xor $52
    ld d, b
    ld d, h
    and h
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
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_047_468b

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

jr_047_468b:
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
    ld d, c
    ld h, c
    ld h, h
    daa
    ld a, $50
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
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
    ld h, b
    ld h, h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    and h
    ld e, e
    ld c, a
    ld b, h
    ld b, d
    ld c, a
    ld d, c
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
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
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
    dec hl
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
    xor $2a
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    ld b, d
    ld d, b
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $5b
    ld c, e
    ld b, h
    ld d, b
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
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
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, h
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
    ld a, $50
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_047_47c0

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
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_047_4806

jr_047_47c0:
    ld c, e
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, b
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $25
    ld c, c
    ld d, d
    ld c, d
    ld b, d
    ld h, h
    ld e, e
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_047_4836

    ld c, e
    ld h, h
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, c
    ld d, d
    ld d, b
    ld d, c

jr_047_4806:
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    ld c, e
    ld c, e

jr_047_4836:
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
    inc h
    ld b, h
    ld b, [hl]
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
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ccf
    ld a, $4f
    ld b, d
    rst $28
    xor $30
    ld a, $50
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
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, b
    ld c, c
    ld a, $4b
    ld b, c
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld b, e
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, c
    ld c, c
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
    ld b, [hl]
    ld b, b
    ld h, c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    and h
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld e, h
    ld c, a
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, e
    ld c, b
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
    xor $2a
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
    xor $36
    ld d, d
    ld b, b
    ld b, l
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
    dec [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $36
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld d, c
    ld c, h
    ld c, a
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
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    ld d, c
    ld c, h
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
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    inc h
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    ld h, h
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $3d
    ld b, d
    ld b, [hl]
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
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
    ld sp, $663e
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    ld h, h
    ld a, $52
    ld d, b
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $4f
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
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
    inc l
    ld c, a
    ld c, a
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
    jr z, jr_047_4aa3

    ld c, e
    ld b, d
    ld h, h
    ld c, d
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld e, h
    ld d, b
    ld b, d
    rst $28
    xor $2b
    ld e, h
    ld b, l
    ld c, c
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, d
    ld c, e
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_047_4ae3

    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld a, $52
    ld c, a
    ld d, d

jr_047_4aa3:
    ld d, b
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $30
    ld e, h
    ld b, h
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
    cpl
    ld a, $52
    ld d, c
    ld h, h
    daa
    ld c, h
    ld c, b
    ld d, d
    ld c, d

jr_047_4ae3:
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
    jr nc, jr_047_4b46

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
    ld a, [hl-]
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
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
    jr c, jr_047_4b81

    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
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
    jr z, jr_047_4b8c

jr_047_4b46:
    ld c, e
    ld h, h
    jr nc, jr_047_4b88

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $49
    ld e, e
    ld e, [hl]
    ld d, c
    ld h, h
    jr nc, jr_047_4ba4

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $48
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
    ld a, [hl+]
    ld c, c
    ld a, $52
    ccf
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, $4b
    rst $28

jr_047_4b81:
    xor $41
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h

jr_047_4b88:
    jr nc, jr_047_4bd6

    ld c, e
    ld d, b

jr_047_4b8c:
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld a, [$eff7]
    xor $2f
    ld b, [hl]
    ld b, d
    ccf
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28

jr_047_4ba4:
    xor $30
    ld c, h
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
    ld [hl-], a
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld a, $52
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld a, [$eff7]

jr_047_4bd6:
    xor $36
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    rst $28
    xor $42
    ld c, a
    ld c, a
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
    daa
    ld a, $50
    ld h, h
    ld a, [hl-]
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $2a
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    ld a, $52
    ld d, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld b, d
    ld c, a
    ld d, b
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
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
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
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld b, h
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
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $4b
    ld a, $4a
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    dec l
    ld b, [hl]
    ld c, l
    ld a, $4b
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
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, $40
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $2e
    ld e, h
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
    xor $45
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    inc a
    ld a, $4a
    ld a, $51
    ld a, $65
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    xor $37
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $49
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld e, e
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $2b
    ld b, d
    ld c, c
    ld b, c
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
    xor $37
    ld a, $52
    ld c, a
    ld d, d
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
    ld c, b
    ld a, $4a
    ld d, c
    rst $28
    xor $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
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
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld c, d
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
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
    rst $28
    xor $45
    ld a, $3f
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
    inc h
    ld b, b
    ld d, d
    ccf
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
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, c
    ld b, c
    ld b, [hl]
    ld b, h
    ld h, l
    ld a, [$eff7]
    xor $30
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    jr z, jr_047_4e3a

    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2a
    ld b, d
    ld b, c
    ld a, $4b
    ld c, b
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
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $28
    ld d, d
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $42
    ld b, [hl]
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
    ld [hl], $51
    ld c, a
    ld b, d
    ccf
    ld d, b
    ld d, c
    ld h, h

jr_047_4e3a:
    daa
    ld d, d
    ld h, h
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
    ld c, e
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $64
    ld a, $4b
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld b, a
    ld a, $64
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    rst $28
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    dec hl
    ld a, $52
    ld d, b
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    cpl
    ld e, l
    ld b, h
    ld c, e
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
    ld h, h
    cpl
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
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
    and h
    ld h, a
    ld a, [$eff7]
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
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2a
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
    xor $36
    ld d, d
    ld b, b
    ld b, l
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
    inc l
    ld c, d
    ld h, h
    inc l
    ld c, a
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
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
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld c, h
    ld h, h
    ld a, [$eff7]
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
    rst $28
    xor $50
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
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
    jr nc, jr_047_4fe7

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, d
    ld h, h
    ld [hl], $51
    ld a, $49
    ld c, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
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
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $31
    ld e, l
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld c, a
    ld a, $48
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]

jr_047_4fe7:
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld c, a
    ld d, e
    ld b, [hl]
    ld b, h
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
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_047_5059

    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    rst $28
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
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $27
    ld d, d
    ld h, h

jr_047_5059:
    ld b, d
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    jr c, jr_047_50d9

    ld b, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld c, e
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
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ld a, $45
    ld b, d
    ld b, [hl]
    ld c, c
    and h
    rst $28
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    and h
    ld a, [$eff7]
    xor $2f
    ld b, d
    ccf
    ld b, d
    ld c, e
    and h
    rst $28
    xor $4d
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a

jr_047_50d9:
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
    jr z, jr_047_514c

    sbc h
    jr nc, jr_047_5138

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

jr_047_5138:
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

jr_047_514c:
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
    ld c, e
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
    ld b, h
    ld b, d
    ld c, b
    ld c, h
    ld c, d
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
    ld b, d
    ld c, a
    ld h, h
    scf
    ld d, [hl]
    ld c, l
    ld h, h
    ld b, c
    ld a, $64
    ld b, l
    ld a, $51
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ccf
    ld a, $4f
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
    sbc h
    rst $28
    xor $49
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld a, $9c
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld d, b
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
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, l
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $30
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, b
    ld h, h
    ld a, $4b
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, [hl]
    rst $28
    xor $2b
    ld e, e
    ld b, l
    ld e, e
    ld b, l
    ld e, e
    ld b, l
    ld e, e
    ld b, l
    ld e, e
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld c, e
    ld b, [hl]
    ld a, $49
    ld h, l
    ld h, h
    dec [hl]
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
    ld a, $50
    ld a, [$eff7]
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
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $30
    ld b, d
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
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, a
    rst $28
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
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld c, h
    ld c, d
    ld c, d
    ld h, h
    ccf
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
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld b, d
    ld d, b
    ld h, h
    ld [hl], $64
    ld b, [hl]
    ld d, b
    ld d, c
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
    jr nc, jr_047_5437

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $f7
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

jr_047_5437:
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
    jr z, jr_047_5499

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
    ld [hl], $40
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    and h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b

jr_047_5499:
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    jr nc, @+$54

    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    ld h, b
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
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
    rst $28
    xor $4d
    ld c, a
    ld e, l
    ld b, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, h
    ccf
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    jr nc, jr_047_5543

    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_047_5549

    ld c, e
    ld h, h
    jr nc, jr_047_5553

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld a, [$eff7]
    xor $37
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
    ld c, e
    ld d, c
    ld d, h
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, c
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, h

jr_047_5543:
    ld b, d
    ld b, [hl]
    rst $28
    xor $3f
    ld b, d

jr_047_5549:
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld b, d
    ld h, h
    ld c, b
    ld c, h

jr_047_5553:
    ld c, d
    ccf
    ld b, [hl]
    sbc h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, d
    ld c, a
    ccf
    ld a, $4f
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    sbc h
    rst $28
    xor $4b
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $4f52
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $61
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $50
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
    jr z, jr_047_5608

    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld a, $4b
    ld c, e
    ld c, c
    ld a, $4a
    ld c, l
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]

jr_047_5608:
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_047_5654

    ld c, e
    ld b, d
    ld h, h
    cpl
    ld a, $4a
    ld c, l
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $53
    ld c, h
    ld c, d
    ld h, h
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $25
    ld a, $52
    ld c, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
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
    ld [hl], $40
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld b, d

jr_047_5654:
    ld c, a
    ld h, b
    rst $28
    xor $3c
    ld b, d
    ld d, c
    ld b, [hl]
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
    rst $28
    xor $33
    ld c, a
    ld c, h
    ccf
    ld c, c
    ld b, d
    ld c, d
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld h, $45
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_047_56df

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld a, $50
    ld a, $4f
    rst $28
    xor $54
    ld a, $4f
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld d, [hl]
    ld c, l
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f

jr_047_56df:
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, b
    ld a, $52
    ld b, e
    ld d, c
    rst $28
    xor $54
    ld a, $45
    ld c, e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $4b
    ld h, h
    ld d, b
    ld c, h
    rst $28
    xor $51
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $50
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
    xor $50
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, d
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
    ld c, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $ef
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
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_047_57e4

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
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
    ld b, d
    ld h, h
    jr nc, jr_047_5815

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    and e
    ld h, h
    daa
    ld c, a
    ld a, $48
    ccf
    ld c, h
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $2e

jr_047_57e4:
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ccf
    ld c, h
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $2f
    ld a, $53
    ld a, $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
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
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    rst $28
    xor $4f
    ld b, d

jr_047_5815:
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
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld d, b
    ld d, a
    ld a, $52
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
    xor $41
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d
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
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, a
    ld a, $fa
    rst $30
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    rst $28
    xor $35
    ld a, $51
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, h
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
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
    ld b, a
    ld a, $ef
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
    and h
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_047_590f

    ld d, c
    ld b, [hl]
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
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ccf
    ld a, $4f
    ld b, d
    rst $28
    xor $30
    ld a, $50
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
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, b
    ld c, c
    ld a, $4b
    ld b, c
    ld h, a

jr_047_590f:
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ccf
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
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
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $43
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ccf
    ld a, $4f
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    sbc h
    rst $28
    xor $4b
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $52
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_047_59c0

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld b, e
    ld c, a
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
    daa
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ccf
    ld a, $4f
    ld b, d
    rst $28
    xor $30
    ld a, $50
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
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, b

jr_047_59c0:
    ld c, c
    ld a, $4b
    ld b, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ccf
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
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
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $43
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ccf
    ld a, $4f
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    sbc h
    rst $28
    xor $4b
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $52
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld b, e
    ld c, a
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
    ld d, c
    ld c, a
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, d
    ld h, h
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
    xor $2b
    ld b, [hl]
    ld b, b
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    and h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ccf
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
    ld a, [$eff7]
    xor $4a
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_047_5b15

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
    jr z, jr_047_5b1f

    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $51
    ld d, d
    ld b, d
    ld h, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, b
    rst $28
    xor $4c
    ld b, c
    ld b, d
    ld c, a
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d

jr_047_5b15:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $51

jr_047_5b1f:
    ld d, d
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
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
    inc h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld a, $4f
    ld a, $52
    ld b, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
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
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
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
    ld h, h
    ld d, b
    ld c, h
    ld h, b
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
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
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_047_5c4c

    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $51
    ld d, d
    ld b, d
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $50
    ld d, b
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
    ld [hl], $46
    ld b, d
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
    ld a, [$eff7]
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

jr_047_5c4c:
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $64
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
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
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    rst $28
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
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_047_5cdd

    ld c, e
    ld b, d
    ld h, h
    dec hl
    inc sp
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
    xor $2c
    ld c, a
    ld c, a
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c

jr_047_5cdd:
    ld a, [$eff7]
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
    rst $28
    xor $41
    ld a, $50
    ld h, h
    jr c, jr_047_5d58

    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld c, c
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2c
    ld c, a
    ld c, a
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
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, h
    ld b, c
    ld e, l
    ld c, a
    ld b, e
    ld d, c
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $4b
    ld d, d
    ld c, a
    ld h, h

jr_047_5d58:
    ld a, $52
    ld b, e
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $43
    ld e, l
    ld c, e
    ld b, e
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    cpl
    ld c, h
    ld d, c
    ld d, c
    ld c, h
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld h, b
    ld a, [$eff7]
    xor $4c
    ccf
    ld d, h
    ld c, h
    ld b, l
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    jr z, jr_047_5e32

    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, d
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
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c

jr_047_5e32:
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    cpl
    ld c, h
    ld d, c
    ld d, c
    ld c, h
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld h, b
    ld a, [$eff7]
    xor $4c
    ccf
    ld d, h
    ld c, h
    ld b, l
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    jr z, jr_047_5efb

    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld h, c
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
    inc h
    ld c, c
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld c, b

jr_047_5efb:
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, a
    ld a, $51
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
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
    xor $25
    ld a, $3f
    ld d, [hl]
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $3a
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $54
    ld a, $45
    ld c, a
    ld b, l
    ld a, $43
    ld d, c
    ld b, [hl]
    ld b, h
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
    jr nc, jr_047_5fed

    ld d, b
    ld d, c
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    rst $28
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, l
    ld a, [$eff7]
    xor $3a
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
    rst $28
    xor $29
    ld c, a
    ld b, d

jr_047_5fed:
    ld d, d
    ld b, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $25
    ld a, $3f
    ld d, [hl]
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld d, b
    ld a, [$eff7]
    xor $57
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $44
    ld a, $4b
    ld d, a
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
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
    xor $64
    ld h, h
    ld b, l
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
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    jr z, jr_047_60a9

    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld a, $46
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    jr z, jr_047_60c7

    ld c, e
    ld d, b
    ld a, $51
    ld d, a
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
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, d
    ld e, l
    ld d, b
    ld d, b
    ld b, d
    ld c, e
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

jr_047_60a9:
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, e
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
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld l, $5c
    ld c, e

jr_047_60c7:
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    ld h, l
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    jr z, jr_047_612d

    ld b, b
    ld b, l
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
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
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

jr_047_612d:
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
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec a
    ld d, d
    ld b, h
    ld a, $4b
    ld b, h
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
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
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    jr nc, jr_047_61af

    ld c, c
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, b
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
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld a, $49
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h

jr_047_61af:
    ld h, a
    dec hl
    ld a, $51
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
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
    add hl, sp
    ld b, d
    ld c, a
    ld a, $4f
    ld d, b
    ld b, b
    ld b, l
    ld d, c
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
    ld a, [$eff7]
    xor $2b
    ld e, e
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $2c
    ld b, c
    ld b, [hl]
    ld c, h
    ld d, c
    ld h, l
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
    jr nc, jr_047_6261

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld c, a
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
    ccf
    ld b, d
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
    rst $30
    ldh a, [$ea]
    jr nc, jr_047_6294

    ld c, c
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld [hl-], a

jr_047_6261:
    ld b, l
    ld h, l
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld b, d
    ld c, a
    ld c, b
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld a, $49
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h

jr_047_6294:
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld d, d
    ld d, c
    ld d, a
    ld b, c
    ld b, [hl]
    ld b, d
    ld c, e
    ld d, b
    ld d, c
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $30
    ld a, $49
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    jr c, jr_047_631f

    ld b, c
    ld h, [hl]
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $30
    ld a, $49
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a

jr_047_631f:
    ld h, h
    ld b, [hl]
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
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $30
    ld a, $49
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, l
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
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
    ld h, a
    rst $30
    ldh a, [$ea]
    jr nc, jr_047_63b6

    ld c, c
    ld d, c
    ld a, $48
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    dec hl
    ld a, $65
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $30
    ld a, $49
    ld d, c
    ld a, $48

jr_047_63b6:
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    rst $28
    xor $41
    ld a, $4b
    ld c, e
    ld h, l
    ld h, h
    dec hl
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $fa
    rst $30
    rst $28
    xor $45
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $65
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
    dec [hl]
    ld b, d
    ld b, c
    ld b, d
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    rst $28
    xor $f6
    ld h, h
    ld b, [hl]
    ld d, b
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $60
    rst $28
    xor $f6
    ld h, c
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $54
    ld e, e
    ld c, a
    ld l, b
    ld d, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld d, a
    ld d, d
    ld c, d
    rst $28
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
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld d, c
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
    daa
    ld a, $64
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld a, $50
    rst $28
    xor $4d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
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
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, h
    ccf
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    ld [hl-], a
    ld b, c
    ld b, d
    ld c, a
    and h
    rst $28
    xor $4b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $37
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, h
    and h
    rst $28
    xor $51
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, h
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, h
    or $65
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld d, b
    ld h, h
    dec h
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
    daa
    ld a, $50
    ld h, h
    dec h
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $4b
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $42
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, l
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_047_6607

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
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
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
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

jr_047_6607:
    ld b, e
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $36
    ld c, h
    ld c, a
    ld b, h
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
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
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld a, $52
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $3d
    ld d, d
    ld c, b
    ld d, d
    ld c, e
    ld b, e
    ld d, c
    ld h, h
    ld a, $4b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld h, h
    ld a, $4b
    rst $28
    xor $41
    ld b, d
    ld c, a
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
    ld d, b
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $42
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
    rst $30
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
    ld c, d
    ld h, h
    rst $28
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
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld [hl], $42
    ld c, c
    ccf
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld d, d
    ld c, b
    ld d, d
    ld c, e
    ld b, e
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, a
    ld b, h
    ld b, d
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
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
    jr nc, jr_047_67b1

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
    daa
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
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld c, e
    ld d, b
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    rst $28
    xor $2f
    ld b, d

jr_047_67b1:
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    inc h
    ld c, c
    ld d, c
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
    dec h
    ld a, $49
    ld b, c
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
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    and h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
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
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    ld h, [hl]
    ld a, [$eff7]
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
    rst $28
    xor $2f
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, [hl]
    ld c, c
    ld c, e
    ld a, $45
    ld c, d
    ld b, d
    ld h, h
    rst $28
    xor $3e
    ld c, d
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, c
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld c, [hl]
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
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld d, d
    ld b, h
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
    ld h, h
    scf
    ld b, d
    ld b, [hl]
    ld c, c
    ld c, e
    ld a, $45
    ld c, d
    ld b, d
    ld h, h
    rst $28
    xor $3e
    ld c, d
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, c
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld c, [hl]
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
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld d, d
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $45
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
    ld b, e
    ld c, a
    ld a, $44
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    rst $28
    xor $54
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
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    and h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $45
    ld a, $3f
    ld b, d
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
    xor $50
    ld c, h
    ld l, b
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, e
    ld e, l
    ld b, l
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
    ld a, $3f
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
    ld b, c
    ld a, $4b
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $3a
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
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
    ld d, h
    ld e, e
    ld c, a
    ld b, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
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
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
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
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    cpl
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
    daa
    ld d, d
    ld h, [hl]
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    rst $28
    xor $2f
    ld e, l
    ld b, h
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $49
    ld d, b
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    scf
    ld c, a
    ld e, e
    ld d, d
    ld c, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $27
    ld d, d
    ld h, h
    cpl
    ld e, l
    ld b, h
    ld b, d
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $4a
    ld a, $50
    ld d, c
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
    or $65
    ld h, l
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
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $25
    ld a, $50
    ld a, $4f
    ld h, l

Call_047_6b43:
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
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ccf
    ld a, $49
    ld b, c
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld l, b
    ld d, b
    ld h, h
    ld c, b
    ld a, $52
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
    ld b, d
    ld c, a
    ld h, h
    ld c, c
    ld e, e
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld c, b
    ld e, e
    ld d, d
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_047_6bf7

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
    ld h, h
    ld b, h
    ld b, d
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld h, l
    ld h, a
    rst $28
    xor $fa

jr_047_6bf7:
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld a, $64
    ld c, c
    ld a, $64
    ld c, c
    ld a, $ef
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld b, h
    ld h, l
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
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
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld b, a
    ld d, d
    ccf
    ld b, d
    ld c, c
    ld c, e
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
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
    rst $28
    xor $4b
    ld e, e
    ld b, l
    ld b, d
    ld c, a
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
    and h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $2b
    ld d, d
    ld c, a
    ld c, a
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld h, l
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $65
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
    ld h, h
    jr nc, jr_047_6d05

    ld d, b
    ld d, c
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
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    add hl, hl
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld h, l
    rst $28
    xor $24
    ld b, b

jr_047_6d05:
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
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
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
    ld a, [hl-]
    ld a, $4f
    ld h, h
    ld b, a
    ld a, $64
    ld c, b
    ld c, c
    ld a, $4f
    ld h, l
    rst $28
    xor $25
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $64
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
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    jr nc, jr_047_6dc3

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
    dec hl
    ld b, [hl]
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
    dec h
    ld d, d
    ld c, e
    ld c, e
    ld d, [hl]
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
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
    ld h, [hl]

jr_047_6dc3:
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
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld a, $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld d, d
    ld d, d
    ld d, d
    ld d, c
    ld h, c
    rst $28
    xor $39
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld e, l
    ld e, l
    ld b, b
    ld c, b
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
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    ld b, c
    ld a, $a4
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld c, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    and h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ccf
    and h
    rst $28
    xor $4d
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    and h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld a, [$eff7]
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
    ld b, h
    ld b, d
    ld c, b
    ld c, h
    ld c, d
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
    ld b, d
    ld c, a
    ld h, h
    scf
    ld d, [hl]
    ld c, l
    ld h, h
    ld b, c
    ld a, $64
    ld b, l
    ld a, $51
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ccf
    ld a, $4f
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
    sbc h
    rst $28
    xor $49
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld a, $9c
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld d, b
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
    ld h, a
    rst $38
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
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, c
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
    ld a, $4f
    ld h, h
    ld d, b
    ld c, h
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld a, $4a
    and h
    ld a, $3f
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, b
    ld a, $52
    ld b, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld h, h
    ld b, a
    ld b, d
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
    ld [hl], $4c
    ld h, l
    rst $28
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
    ld a, [$eff7]
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
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
    ld c, a
    ld h, h
    inc [hl]
    ld d, d
    ld a, $49
    ld b, [hl]
    sbc h
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld c, b
    ld a, $51
    ld b, [hl]
    ld c, h
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
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    rst $28
    xor $2f
    ld a, $41
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    ld d, h
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
    daa
    ld a, $64
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $4b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $54
    ld a, $45
    ld c, a
    ld b, l
    ld a, $43
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld b, d
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
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl+]
    ld c, a
    ld d, d
    ld d, b
    ld b, d
    ld c, c
    sbc h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
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
    ld c, d
    ld h, h
    inc h
    ld d, d
    ld d, b
    ld c, c
    ld a, $4b
    ld b, c
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_047_710d

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    inc a
    ld a, $4a
    ld a, $51
    ld a, $ef
    xor $3e
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld l, $5c
    ld c, l
    ld b, e
    ld b, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $3e
    ld c, a
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_047_714e

    ld b, c

jr_047_710d:
    ld d, d
    ld d, b
    ld a, $67
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
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_047_7176

    ld c, e
    ld b, c
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld a, $51
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
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, h

jr_047_714e:
    ld b, d
    ld b, l
    ld d, b
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $3d
    ld d, d
    ld c, b
    ld d, d
    ld c, e
    ld b, e
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $50
    ld b, d
    ld b, l

jr_047_7176:
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ccf
    ld a, $4f
    ld h, b
    rst $28
    xor $4b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    rst $28
    xor $41
    ld a, $57
    ld d, d
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
    ld d, b
    ld c, h
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $2f
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $3d
    ld d, d
    ld c, b
    ld d, d
    ld c, e
    ld b, e
    ld d, c
    ld h, h
    ld d, b
    ld b, d
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
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $3a
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $2f
    ld a, $4b
    ld b, c
    ld h, h
    ld b, h
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
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld d, c
    ld d, c
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
    ld a, $50
    ld h, [hl]
    ld h, h
    ld bc, $0000
    ld h, c
    nop
    nop
    nop
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    or $66
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    and h
    ccf
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
    ld a, [$eff7]
    xor $27
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
    and h
    and h
    ld h, l
    ld h, h
    ld [hl], $51
    ld c, h
    ld c, l
    ld h, l
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
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $f6
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
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, c
    ld h, h
    daa
    ld a, $4b
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
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld d, c
    ld d, c
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
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    and h
    rst $28
    xor $41
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
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld a, $4f
    ld d, b
    ld b, b
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
    ld [hl-], a
    ld c, h
    ld c, l
    ld d, b
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $47
    ld a, $64
    or $65
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld b, d
    ld b, [hl]
    ld c, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld c, c
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
    ld [hl], $4c
    ld c, a
    ld c, a
    ld d, [hl]
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
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, l
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
    jr nc, jr_047_740b

    ld c, c
    ld d, c
    ld a, $65
    rst $28
    xor $01
    nop
    nop
    xor d
    ld h, h
    jr nc, jr_047_7418

    ld c, c
    ld d, c
    ld a, $65
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
    ld [hl], $64
    ld a, $52
    ld b, b
    ld b, l
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
    ld a, [$eff7]
    xor $2d
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h

jr_047_740b:
    ld a, $49
    ld c, c
    ld b, d
    rst $28
    xor $35
    ld e, e
    ld d, d
    ld c, d
    ld b, d
    ld h, h
    ld c, h

jr_047_7418:
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld h, l
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
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
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
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
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
    jr nc, jr_047_74a0

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
    jr c, jr_047_74d0

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
    ld h, h
    jr nc, jr_047_74f1

    ld d, c

jr_047_74a0:
    sbc h
    ld a, [$eff7]
    xor $4f
    ld a, $52
    ld c, d
    ld h, c
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
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld [hl], $40
    ld b, l

jr_047_74d0:
    ld a, $41
    ld b, d
    ld h, c
    ld h, h
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
    ld d, h
    ld a, $4f
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld d, b

jr_047_74f1:
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
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
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
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
    daa
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ccf
    ld b, d
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
    ld h, h
    ld a, [hl-]
    ld a, $40
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $4f
    ld a, $52
    ld c, d
    ld h, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
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
    jr c, jr_047_75ed

    ld b, c
    ld h, h
    ld c, a
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
    jr nc, @+$44

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
    jr nc, jr_047_7635

    ld b, h
    ld b, d
    ld h, h
    rst $28
    xor $2a
    ld c, h
    ld d, c
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]

jr_047_75ed:
    xor $50
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
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    inc l
    ld c, a
    ld c, a
    sbc h
    rst $28
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

jr_047_7635:
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
    jr nc, jr_047_768d

    ld d, c
    ld d, c
    ld b, d
    ld h, h
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
    xor $36
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a

jr_047_768d:
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
    ld h, b
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld b, d
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
    cpl
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, h
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
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, @+$48

    ld d, c
    ld d, c
    ld b, d
    ld h, h
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
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
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
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $52
    ld b, b
    ld b, l
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
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
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
    ld h, h
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    or $64
    ccf
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $f6
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
    xor $2c
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
    ld b, d
    ld a, [$eff7]
    xor $25
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, l
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $f6
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld sp, $4a46
    ld c, d
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
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, a
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
