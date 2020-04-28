; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

    ld c, [hl]
    pop bc
    ld b, b
    ld [$1340], a
    ld b, c
    add hl, bc
    ld b, b
    inc a
    ld b, c
    or [hl]
    ld b, c
    add b
    ld b, d
    sbc $42
    cp b
    ld b, e
    sub l
    ld b, h
    call $8544
    ld b, l
    rst $30
    ld b, [hl]
    inc de
    ld b, a
    dec hl
    ld b, a
    dec c
    ld c, b
    ld sp, hl
    ld c, b
    db $eb
    ld c, c
    ld bc, $454a
    ld c, d
    sbc $4b
    add hl, de
    ld c, h
    ld [hl], $4d
    ld a, [hl-]
    ld c, [hl]
    ld e, a
    ld c, a
    and b
    ld c, a
    xor a
    ld d, b
    jp hl


    ld d, b
    xor $51
    jr nc, jr_04e_408f

    rst $10
    ld d, d
    reti


    ld d, e
    dec de
    ld d, h
    adc h
    ld d, l
    bit 2, l
    or $56
    ld h, a
    ld e, b
    ldh a, [$58]
    inc d
    ld e, d
    ret nc

    ld e, d
    sbc b
    ld e, e
    sbc $5b
    dec a
    ld e, l
    ld a, h
    ld e, l
    ld a, a
    ld e, [hl]
    ret


    ld e, [hl]
    xor [hl]
    ld e, a
    db $ed
    ld e, a
    jr nz, jr_04e_40c4

    rst $10
    ld h, c
    rst $38
    ld h, d
    ld [hl], h
    ld h, h
    and $64
    dec sp
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [de], a
    ld h, a
    ld d, h
    ld h, a
    ld [hl], d
    ld l, b
    or h
    ld l, b
    cp h
    ld l, c
    add hl, bc
    ld l, d
    inc b
    ld l, e
    jr c, jr_04e_40ea

    ld [hl], l
    ld l, e
    xor d
    ld l, h
    sbc $6c
    db $76
    ld l, l
    add hl, de
    ld l, [hl]
    add d
    ld l, [hl]
    ld a, [$2a6e]
    ld l, a

jr_04e_408f:
    push bc
    ld l, a
    inc hl
    ld [hl], b
    ld d, b
    ld [hl], b
    rst $00
    ld [hl], b
    ld sp, $5e71
    ld [hl], c
    push hl
    ld [hl], c
    ld c, d
    ld [hl], d
    ld a, b
    ld [hl], d
    db $fc
    ld [hl], d
    ld e, l
    ld [hl], e
    sub b
    ld [hl], e
    inc de
    ld [hl], h
    ld [hl], l
    ld [hl], h
    xor c
    ld [hl], h
    ld c, [hl]
    ld [hl], l
    ld h, $76
    sub a
    db $76
    ld [bc], a
    ld [hl], a
    ld [hl], e
    ld [hl], a
    ldh a, [$78]
    ld l, a
    ld a, c
    add sp, $79
    ld h, [hl]
    ld a, d
    db $eb
    ld a, d

Call_04e_40c1:
    ld a, [$c822]

jr_04e_40c4:
    cp $01
    jr nz, jr_04e_40cd

    ld hl, $2200
    rst $10
    ret


jr_04e_40cd:
    ld a, [$c823]
    cp $5c
    jr c, jr_04e_40e3

    sub $5c
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $2200
    rst $10
    ret


jr_04e_40e3:
    ld de, $4007
    call $05b6
    ret


jr_04e_40ea:
    ld a, [$c822]
    cp $01
    jr nz, jr_04e_40f6

    ld hl, $2201
    rst $10
    ret


jr_04e_40f6:
    ld a, [$c823]
    cp $5c
    jr c, jr_04e_410c

    sub $5c
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $2201
    rst $10
    ret


jr_04e_410c:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_04e_411f

    ld hl, $2202
    rst $10
    ret


jr_04e_411f:
    ld a, [$c823]
    cp $5c
    jr c, jr_04e_4135

    sub $5c
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $2202
    rst $10
    ret


jr_04e_4135:
    call Call_04e_40c1
    call $0609
    ret


    db $eb
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld d, b
    ld h, h
    daa
    ld a, $4b
    ld c, b
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    rst $28
    xor $5c
    ld b, e
    ld b, e
    ld c, e
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
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld c, h
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
    ld b, [hl]
    ld c, e
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
    ld d, e
    ld c, h
    ld c, a
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $2e
    ld c, h
    ld c, d
    ld c, d
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    ld h, h
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, h
    ld a, [$eff7]
    xor $36
    ld a, $4a
    ld c, d
    ld b, d
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
    ld h, h
    jr nc, jr_04e_425a

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
    daa
    ld a, $5e
    ld h, h
    ld c, d
    ld a, $4b
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
    ld h, h
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
    ld a, $51
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
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
    ld b, d
    ld c, a

jr_04e_425a:
    ld h, h
    rst $28
    xor $25
    ld b, d
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $54
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04e_42b2

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec l
    ld a, $a4
    ld b, a
    ld a, $60
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld a, $52
    ld h, c
    ld h, h
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $41
    ld a, $57
    ld d, d
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, l

jr_04e_42b2:
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
    ld c, a
    ld a, $44
    ld l, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $47
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld a, $64
    ld b, c
    ld c, a
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04e_432e

    ld h, h
    ld d, a
    ld d, d
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
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04e_4349

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld d, c
    ld h, h
    ld d, c
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
    ld [hl-], a
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, e

jr_04e_432e:
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
    ld d, b
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

jr_04e_4349:
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
    daa
    ld a, $64
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld [hl], $51
    ld a, $4f
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    ld h, h
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
    ld d, b
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
    xor $41
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld e, h
    ld b, e
    ld d, c
    ld b, d
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
    ld d, e
    ld b, d
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
    scf
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
    ld a, [$eff7]
    xor $57
    ld d, d
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
    ld h, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    rst $28
    xor $50
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld a, [$eff7]
    xor $2a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld c, h
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
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04e_447f

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
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
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
    scf
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
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
    ld d, e
    ld b, [hl]

jr_04e_447f:
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld b, [hl]
    ld d, e
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
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_04e_44ec

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_4519

    ld c, e
    ld h, h
    jr z, jr_04e_451d

    ld h, h
    ccf
    ld c, a
    ld e, l
    ld d, c
    ld b, d
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
    ld h, h
    ld c, e
    ld b, [hl]

jr_04e_44ec:
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
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
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld [hl-], a
    ld c, a
    ld d, c
    rst $28

jr_04e_4519:
    xor $48
    ld a, $4b

jr_04e_451d:
    ld c, e
    ld d, b
    ld d, c
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
    ld c, c
    ld e, l
    ld c, l
    ld b, e
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
    dec h
    ld b, [hl]
    ld d, b
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ccf
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    jr z, jr_04e_45ae

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
    ld h, b
    ld h, h
    ld d, e
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
    rst $30
    ldh a, [$67]
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    cpl
    ld [hl-], a
    ld [hl], $65
    rst $28
    xor $3e
    ld d, d
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
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04e_45fa

jr_04e_45ae:
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, b
    ld h, h
    ld d, h
    ld a, $44
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, h
    ld b, e
    ld d, c
    ld h, h
    ld b, d
    ld d, l
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    rst $28
    xor $24
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e

jr_04e_45fa:
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    dec h
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    add hl, sp
    jr z, jr_04e_463f

    ld [hl], $38
    ld h, $2b
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04e_4665

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld b, c
    ld b, d
    ld c, e
    ld c, b
    sbc h
    rst $28
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    ld a, [hl-]
    ld b, d

jr_04e_463f:
    ld c, e
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    sbc h
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, c
    ld b, d

jr_04e_4665:
    ld c, a
    ld d, b
    ld d, c
    ld e, l
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    dec h
    ld b, d
    ld b, [hl]
    ld h, h
    inc sp
    inc h
    ld [hl], $36
    inc l
    add hl, sp
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $4f
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    sbc h
    rst $28
    xor $53
    ld c, h
    ld c, c
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $45
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
    ld h, b
    ld a, [$eff7]
    xor $4c
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04e_4716

    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    rst $28
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
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h

jr_04e_4716:
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld c, b
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld a, [hl+]
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld c, h
    ld c, c
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, c
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
    ld d, h
    ld a, $4f
    rst $28
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld a, $4b
    ld b, h
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $25
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    ld h, l
    ld a, [$eff7]
    xor $36
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    rst $28
    xor $28
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld d, d
    ld c, e
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
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    add hl, hl
    ld h, h
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
    ld h, [hl]
    ld a, [$eff7]
    xor $30
    ld b, d
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
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $46
    ld c, d
    ld h, h
    jr nc, jr_04e_48a0

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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $61
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, h
    ld c, e
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

jr_04e_48a0:
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $33
    ld a, $4f
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
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
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, e
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
    daa
    ld a, $64
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld [hl], $4c
    ld c, c
    ld b, c
    ld a, $51
    ld h, b
    ld a, [$eff7]
    xor $3d
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld a, $4f
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $30
    ld a, $41
    ld b, l
    ld a, $4b
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld b, c
    ld a, $51
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
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
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
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, c
    ld h, h
    inc sp
    ld a, $5e
    ld h, h
    ld a, $52
    ld b, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld l, $4f
    ld e, e
    ld b, e
    ld d, c
    ld b, d
    rst $28
    xor $50
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
    jr z, jr_04e_4a0e

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $4b
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $43
    sbc h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $61
    ld h, h
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
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d

jr_04e_4a0e:
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
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
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
    ld l, $4c
    ld c, d
    ld a, $41
    ld c, h
    ld c, a
    ld a, $60
    rst $28
    xor $30
    ld b, d
    ld b, h
    ld a, $45
    ld a, $45
    ld c, e
    ld h, b
    ld h, h
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld c, b
    ld b, [hl]
    ld b, c
    ld h, b
    rst $28
    xor $25
    ld e, h
    ld d, b
    ld d, b
    ld a, $4a
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld a, $3f
    ld d, [hl]
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, b
    rst $28
    xor $33
    ld d, d
    ld c, e
    ld c, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    rst $28
    xor $54
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld a, $61
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld e, h
    ld d, b
    ld d, b
    ld a, $4a
    ld b, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $47
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld d, c
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
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, l
    ld h, h
    inc h
    ld c, c
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld e, e
    ld b, l
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
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $24
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld a, $52
    ld c, d
    ld h, c
    ld h, h
    jr z, jr_04e_4ba4

    ld a, [$eff7]
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
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
    daa
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, b
    ld b, l
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
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, d
    ld b, [hl]

jr_04e_4ba4:
    ld d, c
    ld b, [hl]
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
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld a, $52
    ld c, d
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld a, $4b
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
    ld h, h
    add hl, hl
    ld b, d
    ld d, d
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
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    ld b, c
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
    jr nc, jr_04e_4c46

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    jr nc, jr_04e_4c4a

    ld c, d
    ld c, h
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
    daa
    ld a, $64
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $30
    ld a, $41
    ld b, l
    ld a, $4b
    ld b, c
    ld h, b
    ld a, [$eff7]
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
    xor $27
    ld c, a
    ld a, $44
    ld c, h
    ld c, e

jr_04e_4c46:
    ld c, b
    ld b, [hl]
    ld b, c
    and h

jr_04e_4c4a:
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc sp
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    rst $28
    xor $33
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $29
    ld b, d
    ld b, d
    ld c, a
    ld a, $51
    ld d, c
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
    jr c, @+$4d

    ld b, c
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $33
    ld d, d
    ld c, e
    ld c, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $5c
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2e
    ld a, $4a
    ld b, d
    ld c, a
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld c, h
    ld c, c
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
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    inc sp
    ld a, $4b
    ld d, c
    ld b, l
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
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $01
    ld h, c
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $44
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $42
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld h, h
    ld a, $49
    ld d, b
    ld c, h
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
    inc h
    ld c, e
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $29
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld e, e
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    jr z, jr_04e_4daa

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
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04e_4dc2

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
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    sbc h
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_04e_4ddd

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
    ld a, [$eff7]

jr_04e_4daa:
    xor $67
    jr z, jr_04e_4df4

    ld c, e
    ld h, h
    jr z, jr_04e_4e01

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld d, a
    ld h, c
    dec h

jr_04e_4dc2:
    ld h, c
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld c, a
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c

jr_04e_4ddd:
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_04e_4e35

    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $28

jr_04e_4df4:
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]

jr_04e_4e01:
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ccf
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]

jr_04e_4e35:
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $28
    ld c, a
    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $28
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    ld h, b
    ld h, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
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
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld c, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ld b, d
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_04e_4f03

    ld b, c
    ld h, h
    ld b, a
    ld b, d
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    dec a
    ld a, $45
    ld c, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $67
    and d
    ld h, a
    ld h, b
    ld h, h
    ld b, c
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
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $5152
    ld d, a
    ld b, d

jr_04e_4f03:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
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
    daa
    ld a, $4b
    ld c, e
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
    jr nc, jr_04e_4f8d

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $4c
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld e, e
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

jr_04e_4f8d:
    rst $28
    xor $35
    ld d, d
    ld b, l
    ld b, d
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
    jr nc, jr_04e_4fe8

    ld b, h
    ld a, $45
    ld a, $45
    ld c, e
    ld h, b
    rst $28
    xor $33
    ld d, d
    ld c, e
    ld c, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $36
    ld b, b
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $2e

jr_04e_4fe8:
    ld c, e
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld c, a
    ld c, e
    ld b, l
    ld a, $50
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
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
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
    ld d, h
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $41
    ld a, $61
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $2a
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
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
    daa
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $29
    ld a, $4b
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, c
    ld a, [$eff7]
    xor $33
    ld a, $5e
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2b
    inc sp
    ld h, h
    ld a, $52
    ld b, e
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
    ld c, a
    ld h, h
    ld l, $4f
    ld e, e
    ld b, e
    ld d, c
    ld b, d
    rst $28
    xor $50
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, l
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
    ld b, c
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
    jr nc, jr_04e_5117

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    jr nc, @+$54

    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $45
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
    ld a, $64
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $25
    ld a, $3f
    ld d, [hl]
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, b
    ld a, [$eff7]
    xor $25
    ld c, h
    ld b, l
    ld c, e
    ld b, [hl]
    ld h, b
    rst $28
    xor $38
    ld c, e
    ld b, [hl]
    ld b, b
    ld c, c
    ld c, h
    ld d, h
    ld c, e
    ld h, c
    ld h, a

jr_04e_5117:
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld c, a
    ld a, $40
    ld d, d
    ld c, c
    ld d, d
    ld c, d
    ld h, b
    rst $28
    xor $30
    ld a, $52
    ld c, c
    ld d, b
    ld e, e
    ccf
    ld b, d
    ld c, c
    ld h, b
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, h
    ld a, $54
    ld d, d
    ld c, a
    ld c, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, e
    ld a, $3f
    ld c, c
    ld b, d
    ld c, a
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
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $25
    ld b, [hl]
    ld b, h
    ld h, h
    jr z, jr_04e_51c1

    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_51c6

    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    jr z, jr_04e_51d3

    ld d, b
    ld a, $51
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ld a, $42
    ld b, [hl]
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
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h

jr_04e_51c1:
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec [hl]

jr_04e_51c6:
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, e
    ld e, e
    ld c, c

jr_04e_51d3:
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $30
    ld a, $44
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    inc h
    ld d, c
    ld b, d
    ld c, d
    ld h, l
    ld h, a
    rst $30

jr_04e_51ed:
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    jr z, jr_04e_51ed

    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_527c

    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
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
    add hl, sp
    ld b, d
    ld c, a
    ld d, h
    ld a, $4b
    ld b, c
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $27
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $2f
    ld a, $53
    ld a, $41
    ld e, e
    ld c, d
    ld c, h
    ld c, e
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
    ld b, d

jr_04e_527c:
    ld c, e
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
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
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    scf
    ld c, h
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
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, b
    ld c, c
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld a, [hl-]
    inc l
    cpl
    daa
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld b, l
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    and h
    ld h, a
    ld h, h
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld c, e
    ld h, b
    rst $28
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
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, d
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
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
    ld b, [hl]
    ccf
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    inc l
    cpl
    daa
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, c
    ld h, h
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
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_04e_53cc

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, e
    ld b, [hl]
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
    ld a, [hl-]
    inc l
    cpl
    daa
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $44
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $41
    ld b, d
    ld c, d

jr_04e_53cc:
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, h
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
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
    xor $3a
    ld d, d
    ld d, c
    sbc h
    scf
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
    jr nc, jr_04e_5463

    ld b, h
    ld a, $54
    ld d, d
    ld c, a
    ld c, d
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
    xor $26
    ld a, $51
    ld b, e
    ld c, c
    ld d, [hl]
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ld h, b
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b

jr_04e_5463:
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld a, $61
    ld h, a
    ld a, [$eff7]
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
    ld d, b
    rst $28
    xor $29
    ld c, c
    ld a, $4a
    ld c, d
    ld a, $51
    ld b, d
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, e
    ld e, e
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    rst $28
    xor $24
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $60
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $64
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    jr nc, jr_04e_552e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, a
    ld a, $64
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c
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
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld c, a
    ld b, d
    ld d, l
    ld h, c
    ld h, a
    ld a, [$eff7]

jr_04e_552e:
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld e, e
    ld b, h
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld a, $45
    ld c, e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld c, d
    ld c, h
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
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld b, d
    ld d, d
    ld b, d
    ld c, a
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
    jr nc, jr_04e_55f8

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
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
    xor $45
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
    ld a, $64
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld a, $4b
    ld b, c
    ld c, d
    ld a, $4b
    ld c, e
    ld h, b
    ld h, h
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
    rst $28
    xor $29
    ld c, c
    ld d, d
    ld b, h
    ccf

jr_04e_55f8:
    ld a, $52
    ld c, d
    and h
    ld h, a
    ld a, [$eff7]
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
    ld c, b
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
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
    daa
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ccf
    ld a, $52
    ld c, d
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $49
    ld e, e
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
    add hl, sp
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    inc h
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, d
    ld c, e
    ld b, d
    ld b, l
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
    daa
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld [hl], $51
    ld a, $51
    ld d, d
    ld b, d
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
    jr nc, @+$40

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    sbc h
    rst $28
    xor $4a
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
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld l, $5b
    ld c, c
    ld d, c
    ld b, d
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
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
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
    ld h, h
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, b
    ld h, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, d
    ld d, b
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
    ld h, h
    jr nc, jr_04e_57a2

    ld c, e
    sbc h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $24
    ld c, a
    ld d, c
    ld h, h
    ld c, l
    ld a, $3e
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
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $41
    ld a, $50
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld h, h
    jr nc, jr_04e_57e1

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, a
    ld b, d

jr_04e_57a2:
    ld d, d
    ld b, h
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
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    jr z, jr_04e_5805

    rst $28
    xor $41
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
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
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, b

jr_04e_57e1:
    ld h, h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, d
    ld c, a
    ld b, e
    ld e, e
    ld b, l
    ld c, a
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c

jr_04e_5805:
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $41
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
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_04e_5871

    ld b, c
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    dec h
    ld b, d
    ld b, c
    ld a, $4f
    ld b, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
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
    ld d, d
    ld c, d
    sbc h
    rst $28
    xor $54
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld c, c
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
    jr nc, jr_04e_58ab

    ld c, e
    ld b, b
    ld b, l
    ld b, d

jr_04e_5871:
    ld h, h
    jr nc, jr_04e_58b2

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
    jr nc, jr_04e_58ce

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    jr nc, @+$40

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
    ld c, d
    ld e, h
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a

jr_04e_58ab:
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_04e_58b2:
    ld [hl], $46
    ld b, d
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, b
    ld h, h

jr_04e_58ce:
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld b, l
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld b, d
    ld d, l
    ld d, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $43
    ld b, d
    ld c, c
    ld h, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, e
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $29
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    jr z, jr_04e_5989

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
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04e_59a1

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
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    sbc h
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_04e_59bc

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
    ld a, [$eff7]

jr_04e_5989:
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_59d5

    ld c, e
    ld h, h
    jr z, @+$51

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld d, a
    ld h, c

jr_04e_59a1:
    dec h
    ld h, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $4f
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e

jr_04e_59bc:
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_04e_5a13

    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $28
    ld b, [hl]
    ld b, h
    ld b, d

jr_04e_59d5:
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ccf
    ld d, c
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

jr_04e_5a13:
    ldh a, [$9f]
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $28
    ld c, a
    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $28
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
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
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld c, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ld b, d
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, a
    ld b, d
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    dec a
    ld a, $45
    ld c, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $67
    and d
    ld h, a
    ld h, b
    ld h, h
    ld b, c
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
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
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
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $2f
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, c
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
    sbc h
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ld h, h
    add hl, sp
    ld a, $4a
    ld c, l
    ld d, [hl]
    ld h, b
    rst $28
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld b, h
    ld a, [$eff7]
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
    ld b, b
    ld b, l
    ld a, $4c
    ld d, b
    ld h, h
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
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $2e
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
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
    rst $28
    xor $29
    ld c, c
    ld d, d
    ld b, h
    ccf
    ld a, $52
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $2e
    ld a, $4f
    ld d, c
    ld b, d
    ld h, h
    ld [hl-], a
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ld h, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
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
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    jr z, jr_04e_5c06

    ld c, c
    ld b, d
    ccf
    sbc h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld c, h
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
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $52
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    rst $28
    xor $30
    ld b, [hl]
    ld c, e
    ld c, e
    ld c, h
    ld h, b
    ld h, h
    jr nc, jr_04e_5c39

    ld b, h
    ld a, $3e
    ld d, d
    ld b, h
    ld b, d
    ld h, b
    ld h, h
    ld a, [$eff7]
    xor $37
    ld c, h
    ld b, c

jr_04e_5c06:
    ld c, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $25
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld a, $4d
    ld b, e
    ld b, d
    ld c, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld d, d
    ccf
    ccf
    ld c, c
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $30
    ld d, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h

jr_04e_5c39:
    ld b, c
    ld a, $61
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
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $49
    ld e, e
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
    ld sp, $4a46
    ld c, d
    ld l, b
    ld h, h
    ld b, c
    ld a, $45
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
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
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
    scf
    ld a, $4b
    ld d, a
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_5d26

    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld h, h
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04e_5d37

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld l, $4c
    ld c, e
    ld b, e
    ld d, d
    ld d, c
    ld a, $4b
    ld d, a
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
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, d
    ld c, e
    ld b, h

jr_04e_5d26:
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, $4c
    ld d, b

jr_04e_5d37:
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
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $45
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
    ld a, $64
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $37
    ld c, h
    ld d, c
    ld b, d
    ld c, d
    ld h, b
    ld h, h
    dec a
    ld e, l
    ld c, e
    ld b, h
    ld c, c
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $29
    ld c, c
    ld c, h
    ld c, a
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, b
    rst $28
    xor $33
    ld d, c
    ld b, d
    ld c, a
    ld a, $4b
    ld c, h
    ld b, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $2e
    ld b, [hl]
    ld c, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $25
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld e, h
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
    ld [hl], $48
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
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
    jr nc, jr_04e_5e67

    ld b, h
    ld a, $9c
    rst $28
    xor $43
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $51
    ld e, h
    ld b, c
    ld c, c
    ld b, [hl]
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
    ld sp, $4a46
    ld c, d
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $30
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    sbc h
    ld h, h
    ccf
    ld d, a
    ld d, h
    ld h, c
    ld a, [$eff7]

jr_04e_5e67:
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, c
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
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr z, jr_04e_5eed

    ld c, c
    ld b, d
    ccf
    sbc h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    sbc h
    rst $28
    xor $51
    ld c, h
    ld c, a
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
    dec a
    ld d, h
    ld b, [hl]
    ld b, d
    ccf
    ld c, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $2a
    ld c, a
    ld e, e
    ccf
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld d, [hl]
    ld h, b
    rst $28
    xor $29

jr_04e_5eed:
    ld c, c
    ld d, d
    ld b, h
    ld b, c
    ld c, a
    ld a, $48
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $4b
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $31
    ld b, d
    ld c, a
    ld d, e
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $36
    ld c, l
    ld b, [hl]
    ld c, b
    ld d, [hl]
    ld h, h
    rst $28
    xor $54
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld a, $61
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld e, e
    ccf
    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    scf
    ld c, h
    ld b, c
    ld h, l
    ld a, [$eff7]
    xor $25
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, b
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, d
    ld d, c
    ld d, a
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
    dec l
    ld a, $4a
    ld b, [hl]
    ld c, a
    ld d, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$51

    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    rst $28
    xor $39
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld a, $4b
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
    ld b, c
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
    jr nc, jr_04e_601a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    ld [hl], $52
    ld b, b
    ld b, l
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $45
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
    ld a, $64
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld c, l
    ld b, [hl]
    ld c, b
    ld d, [hl]
    ld h, b
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    ld c, b
    ld c, h
    ccf
    ld c, a
    ld a, $60
    rst $28
    xor $30
    ld c, h
    ld c, d
    ld c, d
    ld c, h
    ld c, e
    ld b, a
    ld a, $61

jr_04e_601a:
    ld h, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld b, d
    ld c, e
    ld d, c
    ld a, $52
    ld c, a
    ld h, c
    ld h, c
    ld h, c
    rst $28
    xor $3d
    ld a, $45
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $29
    ld b, [hl]
    ld c, a
    ld b, d
    ccf
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $27
    ld a, $4f
    ld c, b
    ld b, d
    ld d, [hl]
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $27
    ld a, $4f
    ld c, b
    ld b, d
    ld d, [hl]
    ld b, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld h, $45
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $49
    ld e, e
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
    ld sp, $4a46
    ld c, d
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04e_60f8

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
    xor $24
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld h, h
    ld c, d
    ld b, [hl]
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
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_6141

    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, [hl]

jr_04e_60f8:
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $4b
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $28
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    rst $28
    xor $50
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
    daa
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld e, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld a, [$eff7]

jr_04e_6141:
    xor $44
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $49
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
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $42
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $3a
    ld a, $4f
    ld d, d
    ld c, d
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
    xor $37
    ld b, l
    ld b, d
    ld c, d
    ld a, $64
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    sbc h
    ld a, [$eff7]
    xor $51
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    add hl, sp
    ld c, h
    ld c, a
    ld c, c
    ld b, d
    ld d, b
    ld d, d
    ld c, e
    ld b, h
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
    jr z, jr_04e_6223

    ld c, e
    ld h, h
    jr nc, jr_04e_622d

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

jr_04e_6223:
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    add hl, hl

jr_04e_622d:
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
    and h
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
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld a, $4b
    ld b, l
    ld a, $4b
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $42
    ld c, a
    ld c, b
    ld c, c
    ld e, e
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
    ld b, [hl]
    ld b, d
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
    xor $45
    ld a, $51
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2f
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $28
    ld c, c
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
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    rst $28
    xor $42
    ld c, a
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld h, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
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
    cpl
    ld b, d
    ccf
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
    ld h, h
    ld c, b
    ld c, h
    ld c, e
    ld c, e
    ld d, c
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
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld a, $53
    ld c, h
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $403e
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
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
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
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
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $49
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
    ld sp, $4f52
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld c, c
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
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $49
    ld b, d
    ld c, a
    ld c, e
    ld d, c
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
    ld b, d
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
    ld a, [$eff7]
    xor $4a
    ld a, $4b
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_04e_6502

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $52
    ld c, d
    ld d, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld d, c
    ld h, c
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
    ld a, $50
    ld h, h
    dec hl
    ld b, d
    ld b, e
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d

jr_04e_6502:
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
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
    ld h, h
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, d
    ld d, b
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
    ld h, h
    jr nc, jr_04e_65a6

    ld c, e
    sbc h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $24
    ld c, a
    ld d, c
    ld h, h
    ld c, l
    ld a, $3e
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
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $41
    ld a, $50
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld h, h
    jr nc, jr_04e_65e5

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, a
    ld b, d

jr_04e_65a6:
    ld d, d
    ld b, h
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
    dec h
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    ld a, [hl+]
    ld d, d
    ld d, c
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, e
    ld b, l
    ld c, a
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
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

jr_04e_65e5:
    rst $28
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_04e_6645

    ld b, c
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    dec h
    ld b, d
    ld b, c
    ld a, $4f
    ld b, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
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
    ld d, d
    ld c, d
    sbc h
    rst $28
    xor $54
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld c, c
    ld a, $50
    ld d, b
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
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, b

jr_04e_6645:
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $3e
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
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    ld h, c
    rst $28
    xor $2f
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld h, h
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
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
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
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
    xor $30
    ld c, h
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
    dec a
    ld h, c
    dec h
    ld h, c
    ld h, h
    cpl
    ld a, $53
    ld a, $41
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, b
    rst $28
    xor $28
    ld b, [hl]
    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, b
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
    jr z, jr_04e_6738

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    rst $28
    xor $35
    ld e, l
    ld d, b
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, b
    ld b, [hl]
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
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    jr z, jr_04e_6780

    ld c, c
    ld b, d
    ccf
    sbc h
    ld a, [$eff7]

jr_04e_6738:
    xor $4b
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    inc l
    ld c, a
    ld c, a
    ld d, c
    ld c, h
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
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    add hl, hl
    ld b, d
    ld c, c
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    rst $28
    xor $26
    ld b, l
    ld a, $4a
    ld e, e
    ld c, c
    ld b, d
    ld c, h
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $2e
    ld a, $48
    ld d, c
    ld b, d
    ld b, d
    ld h, b
    rst $28
    xor $36
    ld a, $52
    ld b, h
    ld d, h

jr_04e_6780:
    ld d, d
    ld c, a
    ld c, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld c, a
    ld a, $48
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld h, b
    rst $28
    xor $24
    ld d, d
    ld c, a
    ld d, d
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
    ld a, [hl+]
    ld b, d
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    ld d, b
    ld d, c
    rst $28
    xor $54
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld a, $61
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $3e
    ld d, d
    ld b, h
    ld d, h
    ld d, d
    ld c, a
    ld c, d
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
    ld h, b
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
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
    ld l, $3e
    ld c, b
    ld d, c
    ld b, d
    ld b, d
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $49
    ld e, e
    ld b, l
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
    scf
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_6897

    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld d, c
    rst $28
    xor $3d
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
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
    jr nc, jr_04e_68de

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a

jr_04e_6897:
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    jr c, jr_04e_68ef

    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, b
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
    daa
    ld a, $64
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $33
    ld b, [hl]
    ld c, c
    ld d, a
    ccf
    ld d, d
    ld b, h
    ld h, b
    ld a, [$eff7]
    xor $2b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $2e
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, h
    ld a, $4b

jr_04e_68de:
    ld d, b
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld a, $52
    ld c, d
    ld d, a
    ld d, h
    ld b, d

jr_04e_68ef:
    ld c, a
    ld b, h
    ld h, b
    rst $28
    xor $33
    ld d, d
    ld c, e
    ld c, b
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, b
    ld a, [$eff7]
    xor $27
    ld c, h
    ld c, a
    ld c, h
    ld c, c
    ld c, c
    ld h, b
    rst $28
    xor $29
    ld c, c
    ld d, d
    ld b, h
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld b, d
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
    jr nc, jr_04e_6964

    ld b, h
    ld a, $4a
    ld c, h
    ld d, c
    ld d, c
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
    add hl, sp
    ld c, h
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, l
    ld b, [hl]
    ld b, d
    ccf
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    dec hl
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28

jr_04e_6964:
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
    inc h
    ld b, b
    ld d, d
    ccf
    ld a, $61
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$51

    ld h, h
    ld c, b
    ld c, h
    ld c, e
    ld d, a
    ld b, d
    ld c, e
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, a
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
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, h
    ld a, $42
    ld d, l
    ld c, l
    ld c, c
    ld c, h
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
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
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $46
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
    ld a, [$eff7]
    xor $42
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_6a55

    ld b, h
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld b, c
    ld a, $4f
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld d, b
    ld a, $44
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
    and h
    dec hl
    ld e, h
    ld c, c
    ld c, c
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    rst $28
    xor $36
    ld b, b

jr_04e_6a55:
    ld b, l
    ld a, $51
    ld d, c
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $25
    ld e, h
    ld d, b
    ld d, b
    ld d, c
    ld a, $3f
    ld h, b
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_6abe

    ld b, l
    ld d, b
    ld c, d
    ld a, $4b
    ld c, e
    ld h, b
    ld h, h
    rst $28
    xor $2a
    ld c, a
    ld b, [hl]
    ld d, a
    ld d, a
    ld c, c
    ld d, [hl]
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $31
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, c
    rst $28
    xor $54
    ld a, $4f
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld a, $61
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_6af8

    ld c, e
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
    ld b, d

jr_04e_6abe:
    ld c, e
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    cpl
    ld a, $44
    ld b, d
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld c, c
    ld e, e
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
    xor $45
    ld b, [hl]

jr_04e_6af8:
    ld b, d
    ld e, [hl]
    ld h, h
    daa
    ld d, d
    ld c, a
    ld a, $4b
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
    ld b, c
    ld a, $50
    ld h, h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld b, c
    ld b, d
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
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
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
    ld a, [$eff7]
    xor $41
    ld a, $50
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
    ld [hl-], a
    ld l, $a4
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
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
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld a, $52
    ld h, b
    ld a, [$eff7]
    xor $3e
    ccf
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
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $26
    ld b, l
    ld b, [hl]
    ld c, d
    ld e, e
    ld c, a
    ld a, $60
    ld a, [$eff7]
    xor $2f
    ld e, h
    ld d, h
    ld b, d
    ld c, e
    ld b, l
    ld a, $49
    ld d, b
    ld h, b
    rst $28
    xor $2b
    ld e, h
    ld c, c
    ld c, c
    ccf
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04e_6c31

    ld b, c
    ld b, d
    ld c, a
    ld c, a
    ld a, $3f
    ld b, d
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    scf
    ld a, $4b
    ld d, a
    ld b, a
    ld d, d
    ld d, h
    ld b, d
    ld c, c
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
    dec hl
    ld e, h
    ld c, c
    ld c, c
    ccf
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, d
    rst $28
    xor $48
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
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
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, d

jr_04e_6c31:
    ld c, e
    ld b, c
    rst $28
    xor $49
    ld e, e
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    and h
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
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld d, h
    ld a, $4f
    and h
    rst $28
    xor $4b
    ld b, d
    ld b, [hl]
    ld c, e
    and h
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld h, h
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
    xor $46
    ld c, e
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    rst $28
    xor $2e
    ld c, h
    ld c, l
    ld b, e
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ld d, a
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
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    and h
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
    ld c, b
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $41
    ld a, $4f
    ld a, $4b
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
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
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
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
    ld h, h
    ld b, h
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
    daa
    ld b, [hl]
    ld c, a
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
    ld d, b
    rst $28
    xor $4d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    add hl, sp
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    and h
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
    ld a, [$eff7]
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
    ld a, [hl-]
    ld a, $4f
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
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
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld a, $4f
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
    ld c, h
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, h
    jr c, jr_04e_6e12

    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_04e_6e38

    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    and h
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
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d

jr_04e_6e12:
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_6e6e

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

jr_04e_6e38:
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
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    cpl
    ld b, d
    ld c, h
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, e
    ld h, h

jr_04e_6e6e:
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
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
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $2f
    ld b, d
    ld c, h
    ld h, l
    ld h, h
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
    ld a, [$eff7]
    xor $54
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $2a
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
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
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
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
    jr z, jr_04e_6f46

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
    ld h, c
    rst $28
    xor $33
    ld a, $5e
    ld d, c
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_6f7f

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

jr_04e_6f46:
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
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $25
    ld d, d
    ld c, e
    ld d, c
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, l
    ld a, [$eff7]
    xor $28
    ld c, a
    ld h, h
    ld b, d
    ld c, e
    ld d, c

jr_04e_6f7f:
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    jr z, jr_04e_6fd8

    ld d, b
    and h
    ld h, a
    ld a, [$eff7]
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
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld c, h
    ld c, c
    ld d, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_7011

    ld c, e
    ld h, h
    dec h
    ld d, d
    ld c, e
    ld d, c
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, l
    rst $28

jr_04e_6fd8:
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld a, [$eff7]
    xor $42
    ld c, a
    ld h, h
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

jr_04e_7011:
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
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
    jr z, jr_04e_706f

    ld c, e
    ld h, h
    jr nc, jr_04e_7088

    ld c, a
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $33
    ld a, $5e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_70a5

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
    ld h, h
    ld a, [hl-]
    ld d, d

jr_04e_706f:
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
    ld b, c

jr_04e_7088:
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld c, b
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, l
    ld h, l
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
    ld e, e

jr_04e_70a5:
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
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $24
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
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    ld [hl], $48
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
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
    ld b, e
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    sbc h
    ld a, [$eff7]
    xor $42
    ld c, a
    ld c, a
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld d, b
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
    jr z, jr_04e_717d

    ld c, e
    ld h, h
    dec [hl]
    ld c, h
    ld c, d
    ld a, $4b
    ld h, c
    rst $28
    xor $33
    ld a, $5e
    ld d, c
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_71b3

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

jr_04e_717d:
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
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld c, a
    ld c, h
    ld d, b
    ld b, d
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]

jr_04e_71b3:
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld b, d
    rst $28
    xor $37
    ld b, d
    ld c, e
    ld d, c
    ld a, $48
    ld b, d
    ld c, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, e
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld c, a
    ld c, h
    ld d, b
    ld b, d
    ld h, l
    ld h, h
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $37
    ld b, d
    ld c, e
    ld d, c
    ld a, $48
    ld b, d
    ld c, c
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_72cd

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
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld b, h
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]

jr_04e_72cd:
    ld c, h
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, b
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, @+$40

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_04e_732f

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04e_7348

    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld b, h
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, l
    ld h, l
    rst $28
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
    ld a, [$eff7]
    xor $2a
    ld c, c
    ld a, $4b
    ld d, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h

jr_04e_732f:
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

jr_04e_7348:
    ld b, d
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
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
    jr z, jr_04e_73a9

    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04e_73aa

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
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
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, @+$51

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

jr_04e_73a9:
    ld d, c

jr_04e_73aa:
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
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
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $2a
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, e
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
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
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2a
    ld e, h
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld c, b
    ld c, a
    ld a, $43
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
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, c
    ld b, d
    ld c, c
    ld h, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld d, b
    ld b, [hl]
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
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
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
    jr z, @+$48

    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04e_74c2

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld h, l
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
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $a4
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $53

jr_04e_74c2:
    ld e, h
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, h
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_7524

    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04e_7522

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_04e_7542

    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
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
    jr z, jr_04e_7567

    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    rst $28

jr_04e_7522:
    xor $43

jr_04e_7524:
    ld e, l
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, e
    ld d, b
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ld h, h

jr_04e_7542:
    ld d, a
    ld d, d
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
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

jr_04e_7567:
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
    jr c, @+$4d

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
    jr c, @+$4d

    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
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
    ld h, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    rst $28
    xor $50
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
    jr z, @+$4d

    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld d, h
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
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    rst $28
    xor $39
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld c, l
    ld a, $3e
    ld c, a
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
    jr c, jr_04e_7677

    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
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
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c

jr_04e_7677:
    rst $28
    xor $2f
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $48
    ld e, h
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
    jr c, jr_04e_76e8

    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $29
    ld c, c
    ld c, h
    ld c, a
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
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
    jr z, jr_04e_772b

    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2f

jr_04e_76e8:
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $48
    ld e, h
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
    jr c, jr_04e_7753

    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $25

jr_04e_772b:
    ld a, $4b
    ld c, e
    ld c, c
    ld a, $4a
    ld c, l
    ld b, d
    ld h, h
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
    dec h
    ld a, $4b
    ld c, e
    ld c, c
    ld a, $4a
    ld c, l
    ld b, d
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28

jr_04e_7753:
    xor $57
    ld d, d
    ld c, a
    ld h, h
    jr nc, jr_04e_7798

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld a, $4f
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld e, h
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
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld a, $4b
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld c, e

jr_04e_7798:
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, c
    scf
    ld b, a
    ld a, $61
    rst $28
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04e_7805

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
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld b, d
    ld c, a
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
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld c, e
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld c, c

jr_04e_7805:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld b, d
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $27
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld d, c
    ld d, c
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr z, jr_04e_7898

    sbc h
    rst $28
    xor $51
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld a, $4b
    ld b, h
    ld h, h
    ld a, $4b
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, b

jr_04e_7898:
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld c, l
    ld e, e
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld h, b
    ld a, $49
    ld d, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld c, b
    ld d, h
    ld a, $40
    ld b, l
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
    ld h, c
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
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, a
    ld b, c
    ld a, $43
    ld b, e
    ld b, d
    ld h, h
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
    ld b, c
    ld a, $50
    ld h, h
    dec h
    ld c, c
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_04e_79a4

    ld c, a
    ld b, c
    ld a, $43
    ld b, e
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04e_79c0

    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d

jr_04e_79a4:
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
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c

jr_04e_79c0:
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
    ld a, [$eff7]
    xor $29
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, c
    ld c, h
    ld b, b
    ld c, b
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
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04e_7a39

    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
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
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $37
    ld c, h
    ld b, c
    ld h, h
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
    daa
    ld b, d
    ld c, a
    ld h, h
    scf
    ld c, h
    ld b, c
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, [hl]

jr_04e_7a39:
    ld b, e
    ld d, c
    ld h, b
    ld h, h
    ld a, [$eff7]
    xor $2f
    ld e, e
    ld b, l
    ld c, d
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, b
    ld b, l
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
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
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
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $33
    ld b, l
    ld e, h
    ld c, e
    ld b, [hl]
    ld d, l
    ld h, h
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
    daa
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld b, d
    rst $28
    xor $2e
    ld c, a
    ld b, d
    ld d, d
    ld d, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    inc sp
    ld b, l
    ld e, h
    ld c, e
    ld b, [hl]
    ld d, l
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld c, l
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
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
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_04e_7b74

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
    xor $30
    ld b, d
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
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $46
    ld b, l
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, c
    ld a, $41
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld b, c

jr_04e_7b74:
    ld b, d
    ld c, d
    ld h, h
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld e, e
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c
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
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld a, $49
    ld b, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld c, b
    ld b, d
    ld b, l
    ld c, a
    ld d, c
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
