; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

    ld c, e
    di
    ld b, b
    rla
    ld b, c
    dec sp
    ld b, c
    dec bc
    ld b, b
    adc e
    ld b, b
    ld e, a
    ld b, c
    ld l, b
    ld b, d
    inc b
    ld b, e
    ld l, e
    ld b, e
    and l
    ld b, e
    ld [$eb44], sp
    ld b, h
    dec h
    ld b, l
    cp $45
    ld l, $46
    ld l, h
    ld b, [hl]
    adc a
    ld b, [hl]
    and l
    ld b, [hl]
    ldh [rDMA], a
    inc h
    ld b, a
    ret c

    ld b, a
    ld b, d
    ld c, b
    inc c
    ld c, c
    ldh [rOBP1], a
    ld e, l
    ld c, d
    sbc d
    ld c, d
    or c
    ld c, d
    ld l, $4b
    db $76
    ld c, e
    ld a, d
    ld c, h
    ld l, $4d
    ld c, [hl]
    ld c, l
    add h
    ld c, l
    rst $30
    ld c, l
    ccf
    ld c, [hl]
    and a
    ld c, [hl]
    adc h
    ld c, a
    ld [hl], b
    ld d, b
    ld h, $51
    push af
    ld d, c
    jr jr_04b_40a5

    ld a, d
    ld d, d
    ret nz

    ld d, d
    jr c, jr_04b_40ac

    ld b, $54
    ld c, b
    ld d, h
    ld a, [hl]
    ld d, h
    inc b
    ld d, l
    ld c, b
    ld d, l
    sbc c
    ld d, l
    dec hl
    ld d, [hl]
    rlca
    ld d, a
    and d
    ld d, a
    ld de, $ee59
    ld e, d
    inc l
    ld e, h
    or b
    ld e, h
    ld l, h
    ld e, l
    reti


    ld e, l
    ld c, [hl]
    ld e, [hl]
    sbc a
    ld e, a
    dec de
    ld h, b
    dec b
    ld h, c
    ld l, c
    ld h, c
    inc b
    ld h, d
    ld l, a
    ld h, d
    and e
    ld h, d
    dec c
    ld h, e
    jp z, $2663

    ld h, h
    ld a, c
    ld h, h
    ld c, a
    ld h, l
    ret nc

    ld h, l
    ld [hl+], a
    ld h, [hl]
    sbc d
    ld h, [hl]
    rst $28
    ld h, [hl]
    ld e, e
    ld h, a
    add a
    ld l, b
    adc d
    ld l, c
    ld [$506a], sp
    ld l, e
    nop
    ld l, h

jr_04b_40a5:
    xor c
    ld l, h
    ldh [$6c], a
    ld e, $6d
    adc d

jr_04b_40ac:
    ld l, l
    xor a
    ld l, l
    ld h, $6e
    xor [hl]
    ld l, [hl]
    xor $6e
    add hl, hl
    ld l, a
    adc a
    ld l, a
    call c, $136f
    ld [hl], b
    ld [hl], b
    ld [hl], b
    and a
    ld [hl], c
    or c
    ld [hl], d
    add hl, hl
    ld [hl], e
    ld h, b
    ld [hl], e
    and h
    ld [hl], e
    ld h, [hl]
    ld [hl], h
    push de
    ld [hl], h
    dec bc
    ld [hl], l
    rst $28
    ld [hl], l
    ld sp, $dc76
    db $76
    ld a, [hl]
    ld [hl], a
    ld d, h
    ld a, b
    or a
    ld a, c
    db $d3
    ld a, d
    add hl, bc
    ld a, e
    add e
    ld a, e
    pop af
    ld a, e
    add hl, de
    ld a, h
    ld e, d
    ld a, h
    rst $00
    ld a, h
    inc [hl]
    ld a, l
    sbc a
    ld a, l
    ld [hl+], a
    ld a, [hl]
    ld c, e
    ld a, [hl]
    add b
    ld a, [hl]

Call_04b_40f3:
    ld a, [$c822]
    cp $01
    jr nz, jr_04b_4110

    ld a, [$c823]
    cp $34
    jr c, jr_04b_4110

    sub $34
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $2100
    rst $10
    ret


jr_04b_4110:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_04b_4134

    ld a, [$c823]
    cp $34
    jr c, jr_04b_4134

    sub $34
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $2101
    rst $10
    ret


jr_04b_4134:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_04b_4158

    ld a, [$c823]
    cp $34
    jr c, jr_04b_4158

    sub $34
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $2102
    rst $10
    ret


jr_04b_4158:
    call Call_04b_40f3
    call $0609
    ret


    db $eb
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld h, b
    rst $28
    xor $f6
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    ld d, a
    ld d, h
    ld a, $4f
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    jr z, jr_04b_4227

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld d, d
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld c, h
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld d, d
    rst $28
    xor $41
    ld a, $50

jr_04b_4227:
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, b
    ld h, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
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
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
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
    jr z, jr_04b_42c3

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld d, d
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld c, h
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld d, d
    rst $28
    xor $50
    ld b, [hl]
    ld b, d

jr_04b_42c3:
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld a, [$eff7]
    xor $45
    ld a, $50
    ld d, c
    ld h, b
    ld h, h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
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
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
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
    or $65
    ld h, l
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
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
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld [hl-], a
    ld l, $66
    ld h, a
    rst $38
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, [hl]
    rst $28
    xor $31
    ld a, $64
    ld b, a
    ld a, $a4
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $64
    ld a, $52
    ld b, b
    ld b, l
    rst $28
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld d, d
    ld b, b
    ld b, l
    ld h, [hl]
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld a, $64
    ld c, b
    ld a, $4b
    ld c, e
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
    ld [hl-], a
    ld l, $60
    ld h, h
    or $65
    rst $28
    xor $2c
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
    ld h, h
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $60
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld a, $4b
    ld c, b
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    jr nc, jr_04b_44cc

    ld c, c
    ld d, c
    ld a, $64
    ld c, b
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld c, b
    ld a, $52
    ld c, d
    ld h, h
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    jr c, jr_04b_4509

    ld b, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld b, a

jr_04b_44cc:
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
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
    jr nc, jr_04b_4547

    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
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
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e

jr_04b_4509:
    ld b, d
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
    rst $28
    xor $37
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    or $65
    rst $28
    xor $2a
    ld d, d
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b

jr_04b_4547:
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
    dec hl
    ld b, [hl]
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
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld c, c
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
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld h, h
    ld b, d
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
    ld a, [hl-]
    ld b, [hl]
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
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld c, e
    ld b, d
    ld b, l
    ld c, d
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
    ld c, d
    ld h, b
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, c
    rst $28
    xor $2b
    ld a, $50
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $fa
    rst $30
    rst $28
    xor $24
    ld c, e
    ld b, h
    ld d, b
    ld d, c
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
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $28
    ld c, a
    ld c, b
    ld c, c
    ld e, e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $41
    ld a, $50
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
    xor $45
    ld e, h
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
    dec hl
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld h, c
    ld h, h
    cpl
    ld a, $5e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, a
    ld a, $50
    ld b, b
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
    or $65
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
    rst $28
    xor $3e
    ld c, e
    ld d, c
    ld c, a
    ld b, d
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
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, [hl]
    ld b, l
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
    ld h, h
    ld b, l
    ld a, $50
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
    ld d, b
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $3f
    ld b, d
    ld b, e
    ld e, l
    ld c, a
    ld b, b
    ld b, l
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
    ld sp, $4642
    ld c, e
    ld h, b
    ld h, h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    rst $28
    xor $24
    ld c, d
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    rst $28
    xor $51
    ld c, a
    ld b, [hl]
    ld c, e
    ld c, b
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
    and h
    ld [hl-], a
    ld l, $61
    ld h, h
    daa
    ld a, $50
    rst $28
    xor $54
    ld a, $4f
    ld h, h
    ld e, l
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
    ld a, [$eff7]
    xor $2b
    ld a, $45
    ld a, $45
    ld a, $45
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_04b_482a

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
    xor $45
    ld a, $51
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
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, h
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
    ld d, h
    ld b, d
    ld c, a

jr_04b_482a:
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, hl
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
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    daa
    ld h, h
    ld b, e
    ld b, d
    ld c, a
    ld d, c
    ld b, [hl]
    ld b, h
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
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    jr z, jr_04b_482a

    inc l
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4a
    ld d, d
    ld e, [hl]
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    sbc h
    rst $28
    xor $42
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
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
    ld a, $60
    or $61
    rst $28
    xor $25
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, $4b
    ld h, h
    ld a, [$eff7]
    xor $33
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $28
    ld b, [hl]
    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    jr nc, jr_04b_495e

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
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, [hl]
    ld h, l
    ld a, [$eff7]
    xor $2a
    ld c, a
    ld c, h
    ld e, [hl]
    ld a, $4f
    ld d, c
    ld b, [hl]
    ld b, h
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
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    ld h, a

jr_04b_495e:
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld a, $49
    ld c, c
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
    xor $43
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
    jr nc, jr_04b_49f1

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
    xor $4a
    ld e, l
    ld e, [hl]
    ld d, c
    ld b, d
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
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $60
    rst $28
    xor $a4
    ld e, e
    ld b, l
    ld c, d
    and h
    ld h, a
    ld a, [$eff7]

jr_04b_49f1:
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_4a43

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
    ld h, h
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
    ld sp, $4a46
    ld c, d
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
    xor $2b
    ld b, d
    ld c, a

jr_04b_4a43:
    ld a, $52
    ld d, b
    ld b, e
    ld c, h
    ld c, a
    ld b, c
    ld b, d
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld h, [hl]
    ld h, a
    ld h, h
    ld h, h
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $42
    ld d, b
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
    ld [hl], $52
    ld c, l
    ld b, d
    ld c, a
    ld h, l
    ld h, h
    rst $28
    xor $30
    ld c, d
    ld c, d
    and h
    ld [hl], $40
    ld b, l
    ld c, d
    ld a, $51
    ld d, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $30
    ld c, d
    ld c, d
    and h
    ld [hl], $40
    ld b, l
    ld c, d
    ld a, $51
    ld d, a
    ld h, c
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
    ld h, [hl]
    ld h, h
    add hl, sp
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld c, h
    rst $28
    xor $50
    ld c, l
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
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
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld a, $4b
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
    and h
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, c
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
    ld b, h
    ld b, d
    ld b, h
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
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
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
    dec hl
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, h
    add hl, hl
    ld a, $5e
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
    ld h, h
    ld a, $4b
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, c
    rst $28
    xor $27
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld [hl-], a
    ld l, $61
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
    jr z, jr_04b_4c20

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

jr_04b_4c20:
    ld c, d
    ld c, d
    ld d, c
    ld h, h

jr_04b_4c24:
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
    jr z, jr_04b_4c24

    and h
    jr z, jr_04b_4cd3

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
    ld d, b
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

jr_04b_4cd3:
    ld c, h
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
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
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
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    rst $30
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
    ld b, l
    ld a, $3f
    ld l, b
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
    ld c, e
    ld h, h
    ld [hl], $4d
    ld c, a
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld c, l
    ld a, $4f
    ld a, $51
    ld h, l
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
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $24
    ld d, d
    ld d, b
    ld c, c
    ld a, $4b
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04b_4df0

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
    jr z, jr_04b_4e12

    ld h, h
    ld c, d
    ld c, h
    ld b, b
    ld b, l
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
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    rst $28
    xor $49
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e

jr_04b_4df0:
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
    ld a, [hl-]
    ld a, $45
    ld c, e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, e
    ld h, l
    ld h, h
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h

jr_04b_4e12:
    ccf
    ld b, d
    ld b, [hl]
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld a, $5e
    ld l, b
    ld h, h
    ld b, d
    ld d, b
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
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $36
    ld c, b
    ld b, d
    ld c, c
    ld b, h
    ld c, c
    ld a, $41
    ld a, $64
    rst $28
    xor $50
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld h, h
    inc h
    ld c, a
    ld c, d
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ccf
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3d
    ld d, d
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, e
    ld b, l
    ld a, $4b
    ld b, h
    ld h, h
    rst $28
    xor $44
    ld b, [hl]
    ccf
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $3f
    ld l, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld d, b
    rst $28
    xor $2f
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $2a
    ld b, [hl]
    ld a, [hl+]
    ld b, [hl]
    ld a, [hl+]
    ld b, [hl]
    ld b, [hl]
    ld b, h
    ld a, $50
    ld d, h
    ld c, h
    ld c, h
    ld c, a
    ld b, c
    rst $28
    xor $45
    ld a, $51
    ld h, h
    jr nc, jr_04b_4f21

    ld b, c
    ld c, b
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_4f37

    ld c, d
    ld b, d
    ld h, h
    jr nc, jr_04b_4f3c

    ld b, h
    ld a, $64
    dec sp
    rst $28
    xor $45
    ld a, $51
    ld h, h
    ld [hl], $48
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec hl
    ld e, h
    ld c, c
    ld c, c
    ld b, h
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    ld h, a
    rst $28
    xor $fa

jr_04b_4f21:
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld h, b
    dec h
    ld h, b
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $51

jr_04b_4f37:
    ld h, h
    jr z, jr_04b_4f89

    ld d, a
    ld c, b

jr_04b_4f3c:
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    daa
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, a
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
    dec h
    ld h, b
    dec h
    ld h, b
    dec h
    ld b, [hl]
    ld b, h
    ld h, h
    dec h
    ld a, $4b
    ld b, h
    rst $28
    xor $45
    ld a, $51
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
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ld h, l
    ld h, l
    ld h, a
    rst $28

jr_04b_4f89:
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $42
    ld c, a
    ld c, c
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
    ld h, h
    rst $28
    xor $2a
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
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
    ld l, $42
    ld c, a
    ld c, c
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    rst $28
    xor $41
    ld b, d
    ld c, a
    ccf
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
    xor $3f
    ld b, d
    ld c, b
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
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $41
    ld a, $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, c
    ld d, d
    ld c, e
    ld h, l
    ld a, [$eff7]
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
    ld b, d
    ld d, b
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $27
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld b, d
    ld c, a
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_04b_50b8

    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld b, l
    ld a, $51
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
    ld h, h
    ld a, [$eff7]
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
    ld b, d
    rst $28
    xor $37
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, l
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

jr_04b_50b8:
    ld h, h
    daa
    ld d, d
    ld l, b
    ld d, b
    ld h, h
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    jr nc, jr_04b_5113

    and h
    rst $28
    xor $30
    ld a, $a4
    jr nc, jr_04b_511b

    ld b, c
    ld a, $4b
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, d
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h

jr_04b_5113:
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $52
    ld c, e
    ld b, l

jr_04b_511b:
    ld b, d
    ld b, [hl]
    ld c, d
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
    dec hl
    ld a, $64
    ld b, l
    ld a, $64
    ld b, l
    ld a, $65
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_5187

    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
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
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04b_51ba

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l

jr_04b_5187:
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
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld c, d
    ld h, h
    dec h
    ld c, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld d, a
    ld d, d
    ld b, l

jr_04b_51ba:
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
    ld a, $4b
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $5c
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld c, e
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
    ld h, l
    ld h, l
    ld h, l
    ld h, h
    cpl
    ld a, $52
    ld b, e
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
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld h, b
    ld h, h
    ld b, l
    ld b, d
    ld h, b
    ld h, h
    ld b, l
    ld b, d
    ld h, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld a, $61
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $28
    ld c, d
    ld c, l
    ld b, e
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
    dec l
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
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
    ld a, [$eff7]
    xor $45
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
    ld d, [hl]
    ld h, c
    ld h, h
    ld [hl], $4c
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04b_52e3

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    jr nc, jr_04b_52f3

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
    xor $53
    ld b, d
    ld c, a
    ld c, a
    ld a, $51
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    rst $28
    xor $2a
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2e
    ld a, $4a

jr_04b_52e3:
    ld c, l
    ld b, e
    ld c, a
    ld c, h
    ld d, b
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h

jr_04b_52f3:
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04b_5348

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
    ld c, l
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    ld h, l
    ld h, l
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
    xor $46
    ld b, l
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
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
    dec hl
    ld a, $64
    ld b, l
    ld a, $64
    ld b, l
    ld a, $65
    rst $28
    xor $2c

jr_04b_5348:
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_5399

    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
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
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04b_53cc

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l

jr_04b_5399:
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
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld a, [$eff7]
    xor $3e
    ld c, d
    ld h, h
    dec h
    ld c, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld d, a
    ld d, d
    ld b, l
    ld b, d

jr_04b_53cc:
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
    ld a, $4b
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $5c
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $52
    ld h, l
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $46
    ld b, l
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
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
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04b_54d3

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
    xor $33
    ld b, l
    ld e, h
    ld c, e
    ld b, [hl]
    ld d, l
    ld h, l
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

jr_04b_54d3:
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld a, $3f
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld e, e
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    add hl, sp
    ld a, $51
    ld b, d
    ld c, a
    rst $28
    xor $45
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
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld e, [hl]
    sbc h
    rst $28
    xor $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, l
    ld h, h
    dec h
    ld b, d
    ccf
    ld b, d
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
    ld c, e
    ld a, $40
    ld b, l
    ld h, l
    rst $28
    xor $28
    ld b, [hl]
    ld c, e
    ld d, b
    ld h, b
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    and h
    ld h, a
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld a, $50
    rst $28
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
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $41
    ld a, $66
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
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    dec l
    ld c, h
    ld b, h
    ld b, l
    ld d, d
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
    and h
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld e, l
    ld c, a
    ld d, b
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    rst $28
    xor $50
    ld a, $44
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
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
    and h
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
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, c
    rst $28
    xor $28
    ld d, b
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
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
    dec h
    ld b, d
    ld d, b
    ld d, b
    ld b, d
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
    daa
    ld a, $64
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $47
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
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
    jr nc, jr_04b_56b1

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
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld b, l
    ld a, $43
    ld d, c
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4f
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
    jr c, jr_04b_56df

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
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f

jr_04b_56b1:
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld h, c
    ld h, c
    ld h, h
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $30
    ld c, h

jr_04b_56df:
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
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2e
    ld c, a
    ld a, $43
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    rst $28
    xor $27
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    ld a, [hl-]
    ld a, $a4
    ld d, h
    ld a, $50
    ld h, [hl]
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, h
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
    ld h, [hl]
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
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
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld c, c
    ld a, $52
    ccf
    ld l, b
    ld d, b
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
    rst $28
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld a, $4b
    ld b, h
    ld d, b
    ld a, $4a
    ld h, h
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ccf
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
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
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
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
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    jr nc, jr_04b_5834

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
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
    ld a, $51
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
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, h

jr_04b_5834:
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    and h
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
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld a, $52
    ld b, d
    ld c, e
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
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $25
    ld a, $52
    ld c, d
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
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, b
    ld h, h
    or $61
    rst $28
    xor $3a
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
    ld a, [$eff7]
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
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
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    dec hl
    ld a, $60
    ld h, h
    ld b, l
    ld a, $61
    ld h, h
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3f
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, $48
    ld d, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld c, a
    ld h, h
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
    scf
    ld b, a
    ld a, $61
    ld h, h
    ld sp, $404c
    ld b, l
    ld h, h
    rst $28
    xor $4a
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $49
    ld b, d
    ld c, a
    ld c, e
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
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
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
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
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
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    jr nc, jr_04b_5a11

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
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
    ld a, $51
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
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, h

jr_04b_5a11:
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    and h
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
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld a, $52
    ld b, d
    ld c, e
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
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $25
    ld a, $52
    ld c, d
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
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, b
    ld h, h
    or $61
    rst $28
    xor $3a
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
    ld a, [$eff7]
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
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
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
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
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $50
    ld a, $44
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
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $44
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld h, h
    and h
    daa
    ld d, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld d, d
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    and e
    ld h, h
    ld a, [$eff7]
    xor $36
    ld a, $4a
    ld c, d
    ld c, c
    ld b, d
    ld h, h
    ld a, $49
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
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
    inc l
    ld c, e
    ld d, b
    ld b, h
    ld b, d
    ld d, b
    ld a, $4a
    ld d, c
    ld h, h
    ld [bc], a
    ld bc, $6105
    ld h, h
    rst $28
    xor $2c
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
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
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
    ld [hl], $4c
    ld h, b
    ld h, h
    or $61
    rst $28
    xor $3a
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
    ld a, [$eff7]
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
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
    rst $28
    xor $f0
    db $eb
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
    ld h, h
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$52

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
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
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $41
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
    ld h, l
    rst $28
    xor $3d
    ld d, d
    ld c, a
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
    ld h, h
    ld a, [$eff7]
    xor $42
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
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld d, b
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec a
    ld a, $45
    ld c, c
    rst $28
    xor $4b
    ld b, d
    ccf
    ld b, d
    ld c, d
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    inc sp
    ld c, c
    ld d, d
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $57
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
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
    rst $30
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
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld a, $4b
    ld c, b
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
    jr z, jr_04b_5df5

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
    xor $02
    ld bc, $6405
    jr nc, jr_04b_5e08

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
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
    or $64
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $4a
    ld h, h
    ld a, [$eff7]
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]

jr_04b_5df5:
    ld b, d
    ld c, a
    ld h, h
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    jr z, jr_04b_5e56

    ld h, h

jr_04b_5e08:
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld a, $4f
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld b, d
    ld c, a
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec l
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld h, c
    ld h, a
    rst $28
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
    rst $38
    ldh a, [$67]
    or $64
    ld b, l
    ld a, $51
    ld h, h
    rst $28

jr_04b_5e56:
    xor $50
    ld c, h
    ld b, h
    ld a, $4f
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
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $2d
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld a, $64
    ld d, h
    ld a, $4f
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04b_5eef

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
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
    ld a, $51
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld a, $64
    ld d, b
    ld a, $45
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d

jr_04b_5eef:
    rst $28
    xor $2a
    ld b, d
    ccf
    ld d, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld h, c
    ld h, c
    ld h, c
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
    ld h, b
    ld h, h
    ld d, d
    ld c, d
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
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ccf
    ld a, $52
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, l
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
    ld b, [hl]
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
    xor $51
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, h
    ld b, d
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_6030

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
    xor $43
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld d, h
    ld e, e
    ld c, a
    ld b, d
    ld h, h
    ld b, d
    ld c, a
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
    ld b, l
    ld e, h
    ld c, a
    ld h, h
    ld c, d
    ld a, $49
    ld h, l
    ld h, l
    rst $28
    xor $28

jr_04b_6030:
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, d
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
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld e, l
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, l
    ld a, $3e
    ld c, a
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
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
    cpl
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, b
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
    ld a, $4f
    ld a, $4b
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, [hl]
    ld c, d
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
    ldh a, [$ea]
    sbc a
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
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, h
    ld a, [$eff7]
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
    ld h, h
    rst $28
    xor $3f
    ld b, d
    ld b, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $49
    ld c, c
    ld c, h
    ld h, b
    rst $28
    xor $f6
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld a, [$eff7]
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
    ld h, [hl]
    ld h, h
    ld [hl-], a
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $43
    ld e, l
    ld b, l
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld a, $4a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, l
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, c
    ld d, d
    ld c, e
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
    ld h, l
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, b
    ld d, c
    ld h, l
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
    ld a, [$eff7]
    xor $37
    ld c, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, a
    ld a, $51
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
    ld a, [hl-]
    ld b, [hl]
    ld d, c
    ld d, a
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld d, c
    ld d, a
    ld h, l
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_04b_62eb

    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04b_62ec

    ld c, e
    ld c, e
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    scf
    ld c, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
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
    ld [hl], $4c
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e

jr_04b_62eb:
    ld h, h

jr_04b_62ec:
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld c, h
    ld b, h
    ld a, $4f
    ld h, h
    scf
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $43
    ld e, l
    ld b, l
    ld c, a
    ld d, c
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
    inc b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld a, [$eff7]
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $37
    ld c, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
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
    ld d, c
    ld a, $52
    ld b, e
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
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
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld c, c
    ld a, $51
    ld d, c
    ld a, [$eff7]
    xor $53
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
    rst $28
    xor $fa
    rst $30
    rst $28
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
    dec b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld [hl], $4c
    ld h, c
    ld h, h
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    ld [hl], $3e
    ld h, h
    ld sp, $eeef
    scf
    ld b, [hl]
    ld h, c
    jr z, jr_04b_645d

    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
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
    ld d, c
    ld h, h
    ld sp, $282c
    jr nc, jr_04b_6467

    ld sp, $6527
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
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d

jr_04b_645d:
    rst $28
    xor $28
    ld c, e
    ld c, b
    ld b, d
    ld c, c
    ld b, [hl]
    ld c, e
    ld h, h

jr_04b_6467:
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $4a
    ld e, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
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
    ld c, h
    ld c, e
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
    ld h, l
    ld h, h
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
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
    ld c, a
    ld h, h
    jr z, jr_04b_64fd

    ld c, b
    ld b, d
    ld c, c
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld e, h
    ld c, a
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
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld b, c
    ld a, $64
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
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
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e

jr_04b_64fd:
    rst $28
    xor $3a
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, b
    ld d, c
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
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld h, h
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    jr nc, jr_04b_6586

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
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
    daa
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_65b9

    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    and h
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d

jr_04b_6586:
    ld c, e
    ld h, h
    daa
    ld a, $4b
    ld c, b
    and h
    ld a, [$eff7]
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
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
    ld [hl], $4c
    ld h, l
    ld h, h
    ld sp, $4b52
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $3e
    ccf
    ld h, h
    ld b, c
    ld d, d

jr_04b_65b9:
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $37
    ld c, h
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
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld h, b
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
    ld h, c
    ld h, c
    ld h, c
    ld h, h
    ld b, c
    ld a, $4f
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
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
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    daa
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$44

    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    and h
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld a, $4b
    ld c, b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld a, [$eff7]
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
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
    ld [hl], $4c
    ld h, l
    ld h, h
    dec h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
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
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld h, b
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
    ld h, c
    ld h, c
    ld h, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $4f
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
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
    inc sp
    ld a, $5e
    ld l, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
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
    jr z, jr_04b_6756

    ld c, b
    ld b, d
    ld c, c
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld d, d
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
    dec hl
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, h
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
    ld h, h
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d

jr_04b_6756:
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $a4
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
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $42
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, b
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
    ld h, c
    ld h, c
    ld h, c
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, d
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
    ld bc, $fa00
    rst $30
    rst $28
    xor $2d
    ld a, $45
    ld c, a
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, d
    ld b, l
    ld c, a
    sbc h
    rst $28
    xor $49
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ccf
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $26
    ld b, l
    ld b, d
    ld b, e
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
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
    ld b, [hl]
    ld c, a
    ld b, c
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
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    dec h
    ld b, d
    ld d, c
    ld b, l
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
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, b
    rst $28
    xor $30
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_04b_6919

    ld c, d
    ld b, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3e
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, h
    ld b, c
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
    daa
    ld a, $50
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l

jr_04b_6919:
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    dec h
    ld b, d
    ld d, c
    ld b, l
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $51
    ld a, $51
    ld d, b
    ld e, e
    ld b, b
    ld b, l
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
    ld c, h
    ld h, h
    ld c, c
    ld b, d
    ccf
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
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld b, h
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_04b_69d6

    ld c, d
    ld b, d
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    dec h
    ld b, d
    ld d, c
    ld b, l
    rst $28
    xor $46
    ld c, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
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
    ld a, $51
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
    ld a, $40
    ld b, l
    ld b, d

jr_04b_69d6:
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld b, h
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
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
    ld h, l
    ld h, a
    rst $30
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
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld a, $50
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, c
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
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04b_6aa9

    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    and e
    rst $28
    xor $27
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
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
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
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $4f
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld e, l
    ld c, e

jr_04b_6aa9:
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld e, l
    ld c, a
    ld b, h
    ld b, d
    ld c, a
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
    ld h, b
    ld h, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
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
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $3e
    ld d, c
    ld b, d
    ld d, b
    ld h, h
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
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_6b4f

    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, h
    jr z, jr_04b_6b69

    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, a
    ld a, $64
    ld b, c
    ld a, $50
    rst $28
    xor $25
    ld d, d
    ld b, b
    ld b, l
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
    ld h, a
    rst $30

jr_04b_6b4f:
    ldh a, [$ea]
    sbc a
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
    ld c, a
    rst $28
    xor $25
    ld e, l
    ld c, a
    ld b, h

jr_04b_6b69:
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
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
    ld h, b
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
    and h
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
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $3e
    ld d, c
    ld b, d
    ld d, b
    ld h, h
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
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_6c03

    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, a
    ld a, $64
    ld b, c
    ld a, $50
    rst $28
    xor $25
    ld d, d
    ld b, b
    ld b, l
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
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h

jr_04b_6c03:
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04b_6c56

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
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
    ld c, e
    ld h, h
    scf
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
    jr nc, jr_04b_6c80

    ld b, b
    ld b, l
    ld l, b
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $52

jr_04b_6c56:
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04b_6cb4

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld h, h

jr_04b_6c80:
    inc h
    ld c, a
    ld d, c
    ld h, h
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
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
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
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

jr_04b_6cb4:
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    rst $28
    xor $25
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
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
    jr nc, @+$44

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld a, $44
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
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
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld a, $4f
    ld b, e
    ld d, b
    ld d, c
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
    daa
    ld d, d
    ld a, [$eff7]
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
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
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
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
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
    ld d, b
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    ld h, c
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
    ld h, [hl]
    rst $28
    xor $2c
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld c, a
    ld h, c
    rst $28
    xor $2c
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
    ld c, d
    ccf
    ld b, d
    ld c, e
    ld b, d
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
    ld l, $4c
    ld c, d
    ld c, d
    ld l, b
    ld h, h
    ld b, l
    ld b, d
    ld c, a
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $5b
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld h, h
    ld b, a
    ld a, $ef
    xor $4a
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld c, l
    ld c, a
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $65
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld l, b
    rst $28
    xor $27
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
    ld d, a
    ld d, d
    ld c, d
    ld h, h
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
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $64
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
    rst $28
    xor $5a
    ccf
    ld b, d
    ld c, a
    ld c, a
    ld a, $50
    ld b, b
    ld b, l
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
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
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $64
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
    rst $28
    xor $5a
    ccf
    ld b, d
    ld c, a
    ld c, a
    ld a, $50
    ld b, b
    ld b, l
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
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld l, $42
    ld c, a
    ld c, c
    ld h, h
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_04b_6f64

    ld c, e
    ld d, b
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, h
    sbc h
    ld b, l
    ld c, h
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, c
    ld d, d
    ld c, c
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
    cpl
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a

jr_04b_6f64:
    ld a, $51
    ld d, d
    ld c, a
    rst $28
    xor $46
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
    xor $49
    ld d, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, l
    rst $28
    xor $2b
    ld c, h
    sbc h
    ld b, l
    ld c, h
    sbc h
    ld b, l
    ld c, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
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
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_04b_7006

    ld c, l
    ld d, b
    ld h, c
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld c, h
    ld b, l
    ld c, c
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, l
    ld b, d
    ld c, e
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
    inc h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
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

jr_04b_7006:
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    and h
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_04b_705b

    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $4b
    ld b, [hl]
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
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    rst $28
    xor $44
    ld b, d
    ccf
    ld b, d

jr_04b_705b:
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $2e
    ld c, a
    ld a, $43
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $61
    ld h, h
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $24
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, l
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
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04b_70ec

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
    xor $45
    ld a, $51
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $4a
    ld a, $49
    ld d, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
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
    and h
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
    ld h, h
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
    ld d, d
    ld c, e
    ld b, c

jr_04b_70ec:
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, [hl]
    ld c, e
    ld b, h
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $ef
    xor $44
    ld b, d
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $643e
    ld b, a
    ld a, $60
    ld h, h
    or $61
    rst $28
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $39
    ld c, h
    ld c, a
    ld c, c
    ld b, d
    ld d, b
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ccf
    ld b, d
    sbc h
    rst $28
    xor $45
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    jr nc, jr_04b_71ae

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
    ld c, e
    ld d, d
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
    jr nc, @+$4e

    ld c, e

jr_04b_71ae:
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
    xor $45
    ld a, $51
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $4a
    ld a, $49
    ld d, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $27
    ld d, d
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
    and h
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
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $44
    ld b, [hl]
    ld c, e
    ld b, h
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
    and h
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $ef
    xor $44
    ld b, d
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $643e
    ld b, a
    ld a, $60
    ld h, h
    or $61
    rst $28
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $39
    ld c, h
    ld c, a
    ld c, c
    ld b, d
    ld d, b
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ccf
    ld b, d
    sbc h
    rst $28
    xor $45
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    jr nc, jr_04b_72b6

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld d, d
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
    ld [hl-], a

jr_04b_72b6:
    ld b, l
    ld h, l
    ld h, h
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
    rst $28
    xor $33
    ld b, l
    ld e, h
    ld c, e
    ld b, [hl]
    ld d, l
    ld h, l
    ld h, h
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $fa
    rst $30
    rst $28
    xor $43
    ld a, $50
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld l, b
    ld c, e
    rst $28
    xor $28
    ld b, [hl]
    ld d, b
    ld b, e
    ld a, $49
    ld c, b
    ld b, d
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
    xor $27
    ld b, [hl]
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
    ld a, [$eff7]
    xor $54
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $37
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld h, h
    ld a, [$eff7]
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
    rst $28
    xor $3e
    ld d, d
    ld b, e
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
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
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
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
    ld a, $49
    ld b, c
    ld h, h
    ld d, b
    ld b, [hl]
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
    ccf
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $44
    ld c, c
    ld a, $52
    ccf
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    sbc h
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
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
    ld d, e
    ld c, h
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $4a
    ld e, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, d
    ld a, $51
    ld b, l
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $50
    ld b, d
    ld b, l
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
    ld d, b
    ld b, d
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
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld d, b
    ld b, d
    ld b, l
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
    ld h, l
    ld h, h
    daa
    ld b, d
    ld a, $51
    ld b, l
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, c
    ld c, a
    ld a, $52
    ld c, a
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $42
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, l
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
    xor $2e
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld d, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    ld c, a
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
    ld h, l
    ld h, a
    rst $28
    xor $fa
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3a
    ld b, [hl]
    ld d, c
    ld d, a
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld h, h
    ld a, [$eff7]
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
    jr z, @+$48

    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04b_7563

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld a, $44
    ld d, c
    ld h, b
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
    and h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld a, $41
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    and h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]

jr_04b_7563:
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
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
    daa
    ld b, d
    ld c, a
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
    ld d, b
    ld d, c
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld c, b
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3f
    ld b, d
    ld b, c
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld c, e
    and h
    ld h, [hl]
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_04b_7622

    ld c, h
    ld c, c
    ld b, h
    ld d, b
    sbc h
    rst $28
    xor $50
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
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
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, a
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
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, b
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld h, c
    rst $28
    xor $2b
    ld b, [hl]

jr_04b_7622:
    ld b, b
    ld h, l
    and h
    and h
    jr c, jr_04b_767c

    ld a, $a4
    ld b, l
    ld b, [hl]
    ld b, b
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
    ld d, h
    ld a, $4f
    ld h, h
    daa
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
    ld c, d
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

jr_04b_767c:
    ld b, l
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    and h
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $64
    ld l, b
    ld c, e
    ld b, d
    rst $28
    xor $5a
    ccf
    ld b, d
    ld c, a
    ld c, a
    ld a, $50
    ld b, b
    ld b, l
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld b, l
    ld a, $3f
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
    ld c, e
    ld h, h
    ld b, a
    ld e, l
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $25
    ld c, a
    ld d, d
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    jr nc, jr_04b_771d

    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ld h, h
    rst $28
    xor $5b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
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
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld a, $51
    ld b, [hl]
    ld h, h
    ld h, a
    inc h
    ld b, b

jr_04b_771d:
    ld b, l
    ld h, h
    ld b, a
    ld a, $61
    ld h, h
    jr z, jr_04b_7774

    ld h, h
    rst $28
    xor $5b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld a, [$eff7]
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
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, h
    ld b, e
    ld c, c
    ld c, h
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $30
    ld a, $51
    ld b, [hl]
    ld h, h
    ld h, a
    dec hl
    ld a, $51
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $57
    ld d, d
    ld h, h
    ccf
    ld b, d

jr_04b_7774:
    ld b, c
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld b, [hl]
    ld c, e
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
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld b, l
    ld b, d
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
    inc h
    ld c, c
    ld d, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld a, $45
    ld h, b
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04b_7835

    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld a, [$eff7]
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, b
    ld h, h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld h, c
    ld h, c
    ld h, c
    ld h, h
    ld b, c
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h

jr_04b_7835:
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
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
    xor $4a
    ld e, l
    ld e, [hl]
    ld d, c
    ld b, d
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
    jr c, jr_04b_78dd

    ld b, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld a, $50
    ld d, c
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $65
    ld h, a
    ld a, [$eff7]
    xor $9f
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

jr_04b_78dd:
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
    ld b, d
    ld b, l
    ld c, a
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
    xor $41
    ld a, $64
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
    ld h, h
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
    ld h, c
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
    ld a, [$f0f7]
    db $eb
    jr nc, jr_04b_7a00

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld l, b
    ld d, b
    ld h, [hl]
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, c
    ld a, $41
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56

jr_04b_7a00:
    ld a, $64
    ld h, a
    jr z, jr_04b_7a55

    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
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
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, b
    ld b, d
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
    xor $50
    ld b, [hl]
    ld b, d

jr_04b_7a55:
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $65
    rst $28
    xor $3a
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    jr nc, jr_04b_7adc

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
    ld h, [hl]
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
    ld b, d
    ld h, h
    ld d, h
    ld e, e
    ld c, a
    ld l, b
    ld d, b
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
    ld a, [$eff7]
    xor $36
    ld c, b
    ld b, d
    ld c, c
    ld b, h
    ld c, c
    ld a, $41
    ld a, $66
    ld h, a
    rst $28
    xor $f0
    db $eb
    jr nc, jr_04b_7b1c

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a

jr_04b_7adc:
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
    xor $36
    ld c, b
    ld b, d
    ld c, c
    ld b, h
    ld c, c
    ld a, $41
    ld a, $ef
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
    ldh a, [$eb]
    jr nc, jr_04b_7b52

    ld c, c
    ld a, $56
    ld a, $64
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
    rst $28

jr_04b_7b1c:
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
    ld c, e
    ld a, [$eff7]
    xor $36
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld d, d
    ld b, b
    ld b, l
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
    jr z, @+$52

    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c

jr_04b_7b52:
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
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $24
    ld c, a
    ld d, c
    ld h, h
    ld a, $4b
    ld b, h
    ld b, d
    ld b, l
    ld e, h
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
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    or $65
    ld h, h
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
    xor $3a
    ld d, d
    ld d, c
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $35
    ld a, $52
    ld c, d
    ld h, c
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
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
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
    xor $33
    ld c, h
    ld d, h
    ld b, d
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
    jr c, jr_04b_7c42

    ld d, b
    ld b, d
    ld c, a
    ld h, h
    or $65
    rst $28
    xor $38
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    or $fa
    rst $30
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld h, c
    ld h, h
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46

jr_04b_7c42:
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
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
    ld h, h
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
    rst $28
    xor $41
    ld a, $50
    ld h, h
    dec a
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, d
    ld c, e
    ld b, h
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
    xor $28
    ld b, l
    ld c, a
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, a
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
    ld h, h
    rst $28
    xor $52
    ld c, e
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    sbc h
    ld a, [$eff7]
    xor $3f
    ld a, $4f
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_04b_7d2c

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
    ld [hl-], a
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld [hl], $51
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld d, c
    ld c, h
    ld c, a
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
    xor $25
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c

jr_04b_7d2c:
    ld d, a
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
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld c, e
    ld b, [hl]
    ld a, $49
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
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
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
    ld h, h
    rst $28
    xor $39
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $2d
    ld d, d
    ld c, e
    ld b, [hl]
    ld c, h
    ld c, a
    sbc h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, h
    inc h
    ld c, c
    ld c, c
    ld b, d
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
    ld h, h
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, a
    ld a, $51
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld c, h
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
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
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
    ld a, [$eff7]
    xor $a4
    and h
    ld [hl], $40
    ld b, l
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, a
    and h
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
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec a
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld c, c
    sbc h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl-]
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
    dec hl
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
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
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $25
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
    ld h, h
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
    ld h, b
    ld h, h
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
    ld a, $40
    ld b, l
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $36
    ld c, h
    ld c, c
    ld b, c
    ld a, $51
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
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
