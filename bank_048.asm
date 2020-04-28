; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

    ld c, b
    ld bc, $2a41
    ld b, c
    ld d, e
    ld b, c
    add hl, bc
    ld b, b
    ld a, h
    ld b, c
    cp l
    ld b, c
    ld [hl], l
    ld b, d
    pop af
    ld b, d
    ld e, c
    ld b, e
    db $76
    ld b, e
    cp c
    ld b, h
    rst $10
    ld b, l
    cp $45
    ld sp, $6e46
    ld b, [hl]
    adc c
    ld b, [hl]
    ld a, b
    ld b, a
    dec hl
    ld c, b
    ld a, b
    ld c, b
    or h
    ld c, b
    dec h
    ld c, c
    ld b, a
    ld c, c
    ld e, c
    ld c, d
    ld l, $4b
    ret


    ld c, e
    inc h
    ld c, [hl]
    ld l, c
    ld c, [hl]
    ld b, b
    ld d, b
    ld a, d
    ld d, b
    sub h
    ld d, c
    add $51
    rst $30
    ld d, c
    ld h, a
    ld d, d
    call c, Call_048_4452
    ld d, e
    or h
    ld d, e
    ld [hl], e
    ld d, h
    xor [hl]
    ld d, h
    ld a, [$4754]
    ld d, l
    ld a, c
    ld d, l
    adc a
    ld d, l
    adc $55
    pop af
    ld d, l
    dec hl
    ld d, [hl]
    and l
    ld d, [hl]
    ld [de], a
    ld d, a
    or e
    ld d, a
    ld e, h
    ld e, b
    call c, $0f58
    ld e, c
    adc h
    ld e, c
    or d
    ld e, c
    rst $28
    ld e, c
    dec [hl]
    ld e, d
    and a
    ld e, d
    ld [bc], a
    ld e, e
    ccf
    ld e, e
    adc d
    ld e, e
    call c, $025b
    ld e, h
    dec hl
    ld e, h
    ld e, d
    ld e, h
    sub e
    ld e, h
    jr jr_048_40e0

    ld d, c
    ld e, l
    ld a, l
    ld e, l
    ld b, e
    ld e, [hl]
    add c
    ld e, [hl]
    rst $00
    ld e, [hl]
    ld d, e
    ld e, a
    or a
    ld e, a
    inc b
    ld h, b
    ld h, [hl]
    ld h, b
    add $60
    ld hl, sp+$60
    sub d
    ld h, c
    bit 4, c
    rlca
    ld h, d
    ld l, [hl]
    ld h, d
    ld a, [bc]
    ld h, e
    ld a, h
    ld h, e
    ld a, l
    ld h, h
    and $64
    and d
    ld h, l
    dec de
    ld h, [hl]
    ld c, c
    ld h, [hl]
    ret z

    ld h, [hl]
    ld b, $67
    di
    ld h, a
    ld l, h
    ld l, b
    rst $38
    ld l, b
    xor h
    ld l, c
    ld [hl], b
    ld l, d
    dec de
    ld l, e
    sub [hl]
    ld l, e
    jp z, $a76b

    ld l, h
    jp c, $a86c

    ld l, l
    db $db
    ld l, l
    jp c, $fe6e

    ld l, [hl]
    cp d
    ld l, a
    di
    ld l, a
    ld d, d
    ld [hl], b
    db $dd
    ld [hl], b
    ld h, h
    ld [hl], c
    sbc $71
    dec sp
    ld [hl], d
    db $dd
    ld [hl], d
    ld a, b

jr_048_40e0:
    ld [hl], e
    xor l
    ld [hl], h
    ld de, $a775
    ld [hl], l
    db $fd
    ld [hl], l
    jr c, jr_048_4162

    ld d, $78
    rst $00
    ld a, d
    ld [hl], h
    ld a, e
    ld a, a
    ld a, e
    db $d3
    ld a, e
    inc bc
    ld a, h
    ccf
    ld a, h
    add a
    ld a, h
    ldh a, [$7c]
    add [hl]
    ld a, l
    add $7d

Call_048_4101:
    ld a, [$c822]
    cp $01
    jr nz, jr_048_410d

    ld hl, $2100
    rst $10
    ret


jr_048_410d:
    ld a, [$c823]
    cp $7c
    jr c, jr_048_4123

    sub $7c
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $2100
    rst $10
    ret


jr_048_4123:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_048_4136

    ld hl, $2101
    rst $10
    ret


jr_048_4136:
    ld a, [$c823]
    cp $7c
    jr c, jr_048_414c

    sub $7c
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $2101
    rst $10
    ret


jr_048_414c:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c822]
    cp $01
    jr nz, jr_048_415f

    ld hl, $2102
    rst $10
    ret


jr_048_415f:
    ld a, [$c823]

jr_048_4162:
    cp $7c
    jr c, jr_048_4175

    sub $7c
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $2102
    rst $10
    ret


jr_048_4175:
    call Call_048_4101
    call $0609
    ret


    ld [$5227], a
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
    ld b, c
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
    ld h, l
    rst $28
    xor $27
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
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
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    and h
    ld d, h
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
    ld a, [$eff7]
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
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
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    and h
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, a
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld h, h
    ld a, $52
    ld b, e
    ld d, b
    ld h, h
    dec h
    ld c, c
    ld d, d
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $68
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $4d
    ld a, $4b
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, c
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
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    cpl
    ld a, $5e
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
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $51
    ld c, h
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld b, e
    ld e, e
    ld c, c
    ld c, c
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
    ld a, $3f
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $42
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $51
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $57
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, $4b
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
    cpl
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $3e
    ld c, e
    ld b, e
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    and h
    and h
    ld a, [$eff7]
    xor $a4
    dec l
    ld a, $a4
    and h
    and h
    ld b, c
    ld a, $50
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    and h
    and h
    and h
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld b, h
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
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
    ld a, $5e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    daa
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
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    rst $28
    xor $44
    ld b, [hl]
    ccf
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
    ld [hl], $46
    ld b, d
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld c, e
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $4b

Call_048_4452:
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, h
    rst $28
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    jr z, jr_048_44c1

    ld h, h
    ld d, h
    ld a, $4f
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_048_44c7

    ld c, a
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $27
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $65
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a

jr_048_44c1:
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50

jr_048_44c7:
    ld d, c
    and h
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    daa
    ld a, $4a
    ld a, $49
    ld d, b
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld a, [$eff7]
    xor $42
    ld d, b
    and h
    and h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    and h
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    and h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
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
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, e
    ld a, $4b
    ld c, e
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
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
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
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
    xor $27
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
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
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, d
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
    rst $30
    ldh a, [$3a]
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, [hl]
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, [hl]
    rst $38
    ldh a, [$ea]
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
    ld h, c
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld e, l
    ld b, l
    ld c, c
    ld b, d
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $27
    ld d, d
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
    ldh a, [$ea]
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, c
    rst $28
    xor $2c
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
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld e, l
    ld b, l
    ld c, c
    ld b, d
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld h, h
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $2a
    ld d, d
    ld d, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    jr nc, jr_048_46d5

    ld b, [hl]
    ld c, e
    rst $28
    xor $2e
    ld e, h
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $49
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, b
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d

jr_048_46d5:
    ld a, [$eff7]
    xor $24
    ld d, d
    ld b, e
    ld d, b
    ld d, c
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
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    or $60
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
    ld d, d
    ld c, e
    ld d, b
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
    and h
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, b
    rst $28
    xor $a4
    ld b, c
    ld a, $50
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
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
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $50
    ld a, $44
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    or $60
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $49
    ld d, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    jr nc, jr_048_47fd

    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    rst $28
    xor $4a
    ld a, $4b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, a
    ld a, [$eff7]
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, b
    ld a, $44
    ld b, d

jr_048_47fd:
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, c
    ld a, $4a
    ld b, [hl]
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
    ld d, b
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    scf
    ld d, b
    ld b, b
    ld b, l
    ld e, l
    ld d, b
    ld h, b
    rst $28
    xor $f6
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $a4
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld a, $44
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    jr z, jr_048_48c6

    ld a, $49
    ld h, h
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
    and h
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28

jr_048_48c6:
    xor $4a
    ld d, d
    ld e, [hl]
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
    ld a, [$eff7]
    xor $49
    ld c, h
    ld d, b
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
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $27
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
    ld h, b
    ld a, [$eff7]
    xor $42
    ld b, h
    ld a, $49
    ld h, h
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
    cpl
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
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
    and h
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
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    jr z, jr_048_49af

    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $3d
    ld d, d
    ld c, b
    ld d, d
    ld c, e
    ld b, e
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
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, h
    jr z, jr_048_49d0

    ld h, h
    ld b, h
    ld a, $3f
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
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h

jr_048_49af:
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    rst $28
    xor $45
    ld c, d
    and h
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
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b

jr_048_49d0:
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    ld a, [$eff7]
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
    ld d, b
    ld b, b
    ld b, l
    ld c, h
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
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld a, $49
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
    dec [hl]
    ld d, d
    ld b, l
    ld d, c
    ld h, h
    jr z, @+$54

    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, c
    ld a, $45
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld h, c
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
    xor $2b
    ld a, $3f
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    jr z, jr_048_4ac2

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld c, a
    ld d, d
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
    ld sp, $4b52
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld d, b
    ld c, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
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
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28

jr_048_4ac2:
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    jr z, jr_048_4b2c

    ld b, b
    ld b, l
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
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $44
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, l
    ld a, [$eff7]
    xor $3d
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $54
    ld a, $50
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld h, l
    ld h, a

jr_048_4b2c:
    rst $30
    ldh a, [$ea]
    sbc a
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
    jr nc, jr_048_4bc5

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

jr_048_4bc5:
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
    jr z, jr_048_4c25

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
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
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
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, b
    rst $28
    xor $28
    ld d, d
    ld c, a
    ld b, d

jr_048_4c25:
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
    ld [hl-], a
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    jr z, jr_048_4cbb

    ld c, a
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
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
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    rst $28
    xor $44
    ld c, a
    ld c, h
    ld e, [hl]

jr_048_4cbb:
    ld a, $4f
    ld d, c
    ld b, [hl]
    ld b, h
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
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
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
    dec h
    ld e, l
    ld c, a
    ld b, h
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld c, c
    ld a, $52
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, e
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld a, $4b
    rst $28
    xor $28
    ld d, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
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
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $2f
    ld a, $4b
    ld b, c
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld c, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $28
    ld b, l
    ld c, a
    ld b, d
    ld h, h
    ccf
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
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
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    jr z, jr_048_4dc8

    ld b, b
    ld b, l
    ld h, b
    ld h, h
    jr nc, jr_048_4dba

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $f6
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
    jr nc, jr_048_4dee

    ld b, h
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld d, d
    ld d, c
    ld d, a
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
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h

jr_048_4dba:
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]

jr_048_4dc8:
    ld b, h
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, c
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h

jr_048_4dee:
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
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
    and h
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld d, b
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    inc sp
    ld d, d
    ccf
    ld c, c
    ld b, [hl]
    ld c, b
    ld d, d
    ld c, d
    rst $28
    xor $54
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld [hl], $46
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $2f
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
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld c, h
    ld b, c
    ld b, d
    ld c, e
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
    jr z, @+$48

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
    ld d, c
    ld d, b
    ld d, c
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
    inc h
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ld h, h
    scf
    ld a, $44
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, e
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld d, b
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
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld a, $44
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_048_50a2

    ld b, h
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $42
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    or $64
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    ld h, h
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

jr_048_50a2:
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
    jr nc, jr_048_514e

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
    ld d, d

jr_048_514e:
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
    jr nc, jr_048_51a5

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    or $65
    ld h, h
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
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
    ld h, h
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
    rst $28
    xor $36
    ld b, b

jr_048_51a5:
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
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    jr z, jr_048_5220

    ld b, e
    ld c, h
    ld c, c
    ld b, h
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
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
    ld sp, $4642
    ld c, e
    ld h, [hl]
    ld h, h
    inc l
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld c, h
    rst $28
    xor $4a
    ld e, l
    ld e, [hl]
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld c, e

jr_048_5220:
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
    and h
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
    ld h, h
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, d
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
    xor $48
    ld e, l
    ld c, d
    ld c, d
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
    daa
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_048_52b3

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, h
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $43
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld c, a

jr_048_52b3:
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $45
    ld b, d
    ld d, d
    ld d, c
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
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, d
    ld c, e
    ld c, a
    ld d, d
    ld b, l
    ld b, [hl]
    ld b, h
    and h
    ld h, a
    rst $28
    xor $f7
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
    ld b, l
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
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
    sbc h
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, c
    ld a, $50
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
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $43
    ld e, l
    ld c, c
    ld c, c
    ld d, c
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
    daa
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
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
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
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
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, b
    ld a, [$eff7]
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld c, d
    ld a, $44
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
    ld h, [hl]
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
    ld h, h
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
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
    and h
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
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    rst $28
    xor $37
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, b
    ld h, h
    or $65
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
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
    rst $28
    xor $f7
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $65
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
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $48
    ld c, a
    ld e, e
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    rst $28
    xor $3e
    ld c, e
    ld b, e
    ld b, d
    ld d, d
    ld b, d
    ld c, a
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
    and h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, b
    ld d, c
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
    rst $28
    xor $51
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    and h
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
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
    and h
    rst $28
    xor $54
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
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld a, $44
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
    xor $27
    ld d, d
    ld h, h
    ld b, c
    ld c, h
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
    ld d, b
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
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
    ld c, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld d, h
    ld a, $50
    ld h, h
    ld d, a
    ld d, d
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
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_048_567d

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
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld a, $49
    ld c, c
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
    ld d, b
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
    ld b, d
    ld c, a

jr_048_567d:
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $50
    ld a, $44
    ld d, c
    ld h, b
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
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
    and h
    jr nc, jr_048_56ee

    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld h, l
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld c, a
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    ld b, c
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
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    and h
    ld b, l
    ld c, d
    and h
    and h
    daa
    ld d, d
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d

jr_048_56ee:
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
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
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    dec [hl]
    ld e, e
    ld d, d
    ld c, d
    ld b, d
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld [hl], $46
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$48

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
    ld d, c
    ld d, b
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
    dec [hl]
    ld e, e
    ld d, d
    ld c, d
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld e, h
    ld b, e
    ld b, e
    sbc h
    ld a, [$eff7]
    xor $4b
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
    ld c, c
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, b
    ld a, [$eff7]
    xor $30
    ld b, [hl]
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
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $4f
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
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
    rst $28
    xor $30
    ld d, d
    ld d, c
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
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
    ld b, e
    ld a, $45
    ld c, a
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
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld b, d
    ld h, h
    dec a
    ld d, d
    sbc h
    ld a, [$eff7]
    xor $48
    ld d, d
    ld c, e
    ld b, e
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    ld h, a
    ld a, [$eff7]
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
    ldh a, [$ea]
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
    ccf
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
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
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld a, $4a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    scf
    ld a, $3e
    ld a, $40
    ld b, l
    ld h, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $52
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld b, d
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld b, d
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $3e
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
    inc h
    ld a, $3e
    ld c, c
    ld c, c
    ld b, d
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $54
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $3e
    ld b, h
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld c, h
    rst $28
    xor $3e
    ld a, $52
    ld b, e
    ld b, h
    ld b, d
    ld c, a
    ld b, d
    ld b, d
    ld b, h
    ld d, c
    ld h, c
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
    ld h, l
    ld h, h
    dec hl
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_048_5a08

    ld h, h
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
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $44
    ld d, d
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
    rst $28
    xor $45
    ld a, $51
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
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
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

jr_048_5a08:
    ld a, $44
    ld h, h
    ld c, e
    ld e, e
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $3f
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
    ld h, h
    cpl
    ld d, d
    ld d, b
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld b, [hl]
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
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $53
    ld c, h
    ld c, a
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
    ld a, [$eff7]
    xor $51
    ld a, $44
    ld h, h
    ld c, e
    ld b, d
    ld c, a
    ld d, e
    ld e, h
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
    jr c, jr_048_5ac6

    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld h, l
    ld h, l
    rst $28
    xor $27
    jr z, jr_048_5ab6

    ld h, h
    ld [hl], $37
    jr z, @+$37

    ld sp, $2437
    ld a, [hl+]
    ld a, [$eff7]
    xor $2e
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    jr nc, @+$32

    scf
    ld h, l
    ld h, l
    rst $28
    xor $2b
    jr c, jr_048_5ad2

    inc h
    inc h
    inc h
    inc h
    inc h
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
    ld b, e
    ld e, l
    ld b, l
    ld c, c
    ld b, d
    ld h, h
    ld c, d

jr_048_5ab6:
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $51
    ld c, h
    ld c, l
    ld b, e
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]

jr_048_5ac6:
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e

jr_048_5ad2:
    ld d, c
    ld a, $44
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
    ld b, a
    ld a, $fa
    rst $30
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    scf
    ld a, $4b
    ld d, a
    rst $28
    xor $3f
    ld b, d
    ld d, h
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld h, l
    ld h, a
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    add hl, sp
    ld c, h
    ld c, a
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $2b
    ld a, $52
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    rst $28
    xor $54
    ld b, d
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
    dec a
    dec a
    dec a
    and h
    rst $28
    xor $3d
    ld d, a
    ld d, a
    ld d, a
    and h
    ld b, l
    ld d, d
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
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
    xor $2c
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
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
    ld d, c
    ld a, $44
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
    ld b, e
    ld e, l
    ld b, l
    ld c, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, l
    rst $28
    xor $37
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
    ld a, [$eff7]
    xor $50
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
    ld [hl], $46
    ld b, d
    ld h, h
    ccf
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
    rst $28
    xor $53
    ld c, h
    ld c, a
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
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
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld a, $49
    ld c, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_048_5c46

    ld c, c
    ld d, c
    ld a, $65
    ld h, h
    jr nc, @+$40

    ld c, c
    ld d, c
    ld a, $ef
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld c, b
    ld h, h
    ld b, h
    ld b, d

jr_048_5c46:
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    daa
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, b
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $44
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    rst $28
    xor $2b
    ld b, d
    ld b, l
    ld b, d
    ld b, l
    ld b, d
    ld h, l
    ld h, a
    ld h, h
    ld h, h
    rst $30
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
    ld d, b
    ld c, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
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
    xor $9f
    ld h, h
    ld h, a
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld c, e
    ld d, b
    ld c, c
    ld d, d
    ld d, b
    ld d, c
    ld h, c
    ld h, h
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld a, $52
    ld d, b
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld b, c
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
    ld h, a
    rst $38
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
    ld b, e
    ld b, d
    ld c, a
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
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
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    jr nc, jr_048_5dac

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $f6
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

jr_048_5dac:
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
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $25
    ld a, $52
    ld c, d
    ld h, b
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $30
    ld a, $49
    ld d, c
    ld a, $64
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
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
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
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
    rst $28
    xor $fa
    rst $30
    rst $28
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec h
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
    jr z, jr_048_5eab

    ld c, b
    ld c, c
    ld e, e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
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
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    rst $28
    xor $43
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h

jr_048_5eab:
    ld h, a
    or $65
    ld h, h
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    rst $28
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    ld h, h
    ld [hl], $40
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
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
    ld c, b
    ld a, $4b
    ld c, e
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
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld d, b
    ld d, b
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
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
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
    xor $53
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_048_5f9f

    ld c, e
    ld h, h
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
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
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld d, b
    ld h, h
    dec hl
    ld c, h
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
    xor $2c
    ld b, l
    ld c, a
    ld h, h

jr_048_5f9f:
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
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld c, c
    ld a, $52
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    dec h
    ld c, c
    ld a, $52
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    dec h
    ld c, a
    ld a, $52
    ld d, c
    ld c, b
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, c
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld a, [$eff7]
    xor $25
    ld c, a
    ld a, $52
    ld d, c
    ld c, b
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld h, l
    ld h, h
    dec h
    ld b, d
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    sbc h
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, h
    ld a, $4b
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
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
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
    ld h, h
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
    xor $67
    daa
    ld b, d
    ld c, a
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    ld c, h
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl+]
    ld c, c
    ld a, $51
    ld d, a
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    ld a, [hl+]
    ld c, c
    ld a, $51
    ld d, a
    ld b, d
    ld h, h
    ld a, [hl+]
    ld c, c
    ld a, $51
    ld d, a
    ld b, d
    rst $28
    xor $2a
    ld c, c
    ld a, $51
    ld d, a
    ld b, d
    ld h, h
    ld a, [hl+]
    ld c, c
    ld a, $51
    ld d, a
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_048_6112

    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_048_6104

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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    sbc h
    ld b, l
    ld c, h
    ld h, l
    ld h, h
    ld a, [hl+]

jr_048_6104:
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c

jr_048_6112:
    ld h, h
    ld b, d
    ld d, b
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $45
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
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    ld [hl], $46
    ld b, d
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, b
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, e
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $54
    ld b, d
    ld c, a
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
    ld c, h
    ld d, [hl]
    ld h, h
    ld [hl], $3e
    ld d, d
    ld b, b
    ld b, d
    ld h, c
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
    ld [hl], $4c
    ld d, [hl]
    ld h, h
    ld [hl], $3e
    ld d, d
    ld b, b
    ld b, d
    ld h, [hl]
    rst $28
    xor $3a
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld d, b
    ld a, $44
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
    ld b, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $36
    ld c, h
    ld b, a
    ld a, $50
    ld c, h
    ld e, [hl]
    ld b, d
    ld h, l
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld h, h
    rst $28
    xor $4b
    ld e, e
    ld b, l
    ld b, d
    ld c, a
    ld d, c
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
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2b
    ld a, $52
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld b, d
    ld b, [hl]
    ld b, c
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
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld e, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
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
    ld b, d
    ld c, e
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
    ld b, c
    ld a, $5e
    ld h, h
    ld c, c
    ld e, e
    ld e, [hl]
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
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
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
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, e
    rst $28
    xor $41
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld c, a
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, [hl]
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
    ld b, [hl]
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
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
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld d, c
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld d, e
    ld c, h
    ld c, a
    ccf
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $38
    ldh a, [$67]
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
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
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    ld a, $52
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
    ld b, [hl]
    ld c, d
    ld h, h
    ld sp, $ef52
    xor $3f
    ld b, d
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_048_6439

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
    jr z, jr_048_643c

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
    ld h, h
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

jr_048_6439:
    ld b, l
    ld a, $51

jr_048_643c:
    ld h, h
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
    ld h, h
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
    and h
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
    jr z, @+$51

    ld h, h
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
    xor $f7
    ldh a, [$ea]
    sbc a
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
    ld h, b
    ld h, h
    rst $28
    xor $41
    ld a, $5e
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, $4b
    sbc h
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_048_6567

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
    ld a, $52
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld e, h
    ld b, l
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $33
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h

jr_048_6567:
    ld a, $52
    ld b, b
    ld b, l
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
    ld h, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_048_65d5

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $3e
    ld c, a
    ld d, c
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
    inc h
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    rst $28
    xor $43
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, d
    rst $28
    xor $2b
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, c

jr_048_65d5:
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
    ld b, e
    ld c, a
    ld a, $44
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    rst $28
    xor $54
    ld c, h
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld b, l
    ld a, $52
    ld c, l
    ld d, c
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
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
    jr nc, jr_048_66d6

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
    ld h, h
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
    ld h, h
    ld c, e
    ld b, [hl]

jr_048_66d6:
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
    ld c, e
    ld c, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld b, d
    ld h, c
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
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $27
    ld a, $45
    ld b, d
    ld c, a
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
    jr nc, jr_048_678a

    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
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
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld a, $52
    ld b, b

jr_048_678a:
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    ld l, $46
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ccf
    ld c, a
    ld a, $53
    ld b, d
    ld c, e
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, c
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
    jr nc, jr_048_680a

    ld b, [hl]
    ld c, e
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
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4b
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
    jr nc, jr_048_683b

    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_048_683c

    ld c, e
    ld c, e
    ld h, h
    rst $28
    xor $49
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld d, d

jr_048_680a:
    ld c, e
    ld d, b
    ld b, d
    ld c, a
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
    ld e, l
    ccf
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    and h
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
    cpl
    ld b, d
    ld d, b
    ld b, d

jr_048_683b:
    ld c, e

jr_048_683c:
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld a, $49
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $30
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
    ld b, c
    ld a, $50
    ld h, h
    ld b, e
    ld a, $49
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld h, h
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
    rst $28
    xor $44
    ld a, $4b
    ld d, a
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, h
    ld a, $5e
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
    xor $57
    ld d, d
    ld h, h
    ld d, c
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    dec hl
    ld a, $3f
    ld h, h
    ld b, d
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
    ld h, b
    rst $28
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
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld h, h
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
    or $61
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
    ld h, c
    ld h, c
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $24
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, a
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
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld c, h
    ld d, b
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $29
    ld c, a
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, @+$51

    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld h, h
    ld b, c
    ld a, $50
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
    ld h, c
    rst $28
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
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_048_6ad0

    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $4b
    ld a, $40
    ld b, l
    ld c, c
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld d, b
    sbc h
    ld a, [$eff7]

jr_048_6ad0:
    xor $49
    ld b, d
    ld b, [hl]
    ld b, l
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
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    rst $28
    xor $41
    ld a, $57
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld c, h
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld c, h
    ld d, h
    ld a, $50
    rst $28
    xor $50
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
    jr nc, jr_048_6b86

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
    xor $50
    ld a, $44
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
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_048_6bd2

jr_048_6b86:
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
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_048_6bed

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, d
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
    add hl, hl

jr_048_6bd2:
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld c, h
    ld c, a
    ld h, h
    rst $28
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld a, $52
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d

jr_048_6bed:
    ld h, b
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, e
    ld c, e
    ld c, h
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
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld a, $4d
    ld b, e
    ld b, d
    ld c, c
    ld h, b
    rst $28
    xor $30
    ld b, d
    ld b, h
    ld a, $3e
    ld d, d
    ld b, h
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $30
    ld d, d
    ld c, d
    ld b, [hl]
    ld b, d
    ld h, b
    rst $28
    xor $25
    ld d, d
    ccf
    ccf
    ld c, c
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
    scf
    ld c, h
    ld b, c
    ld c, l
    ld b, [hl]
    ld b, b
    ld c, b
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
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld d, c
    ld b, d
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $3d
    ld e, l
    ld c, e
    ld b, h
    ld c, c
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
    add hl, hl
    ld c, c
    ld c, h
    ld c, a
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, b
    rst $28
    xor $2e
    ld b, [hl]
    ld c, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
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
    inc sp
    ld d, c
    ld b, d
    ld c, a
    ld a, $4b
    ld c, h
    ld b, c
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
    jr nc, jr_048_6cfe

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, d
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
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
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
    dec a
    ld d, h
    ld b, [hl]
    ld b, d
    ccf
    ld c, c
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]

jr_048_6cfe:
    xor $29
    ld c, c
    ld d, d
    ld b, h
    ld b, c
    ld c, a
    ld a, $48
    ld h, b
    rst $28
    xor $2a
    ld c, a
    ld e, e
    ccf
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc sp
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld d, [hl]
    ld h, b
    ld h, h
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
    xor $2e
    ld c, e
    ld b, [hl]
    ld b, h
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
    rst $28
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $4d
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
    ld a, $a4
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld a, $45
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $3d
    ld b, d
    ld c, e
    ld d, c
    ld a, $52
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    add hl, hl
    ld b, [hl]
    ld c, a
    ld b, d
    ccf
    ld b, [hl]
    ld c, a
    ld b, c
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
    jr nc, jr_048_6dff

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $46
    ld c, d
    ld h, h
    inc l
    ld c, a
    ld c, a
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
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
    inc l
    ld c, a
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
    ld h, $45
    ld a, $4a
    ld e, e
    ld c, c
    ld b, d
    ld c, h
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $29

jr_048_6dff:
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
    xor $27
    ld c, a
    ld a, $48
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $3e
    ld c, b
    ld d, c
    ld b, d
    ld b, d
    ld h, b
    rst $28
    xor $36
    ld a, $52
    ld b, h
    ld d, h
    ld d, d
    ld c, a
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $24
    ld d, d
    ld c, a
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
    jr c, @+$51

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
    dec hl
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld c, c
    ld d, a
    ccf
    ld d, d
    ld b, h
    ld h, b
    rst $28
    xor $2e
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, h
    ld a, $4b
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
    jr nc, jr_048_6f0f

    ld b, h
    ld a, $4a
    ld c, h
    ld d, c
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
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    ld c, a
    ld a, $52
    ld c, d
    ld h, [hl]
    ld h, a
    rst $38
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

jr_048_6f0f:
    rst $28
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
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
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld a, $51
    ld d, c
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
    dec h
    ld e, h
    ld d, b
    ld d, b
    ld d, c
    ld a, $3f
    ld h, b
    rst $28
    xor $28
    ld b, b
    ld b, l
    ld d, b
    ld c, d
    ld a, $4b
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, h
    ld h, b
    rst $28
    xor $31
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld h, $45
    ld b, [hl]
    ld c, d
    ld e, e
    ld c, a
    ld a, $60
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
    xor $30
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld c, a
    ld a, $3f
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
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
    rst $28
    xor $37
    ld a, $4b
    ld d, a
    ld b, a
    ld d, d
    ld d, h
    ld b, d
    ld c, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    add hl, hl
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $49
    ld b, d
    ld b, h
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
    ld a, [$eff7]
    xor $2b
    ld a, $4b
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld d, b
    rst $28
    xor $29
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $65
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
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
    xor $4a
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
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
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    rst $28
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec l
    ld a, $66
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $48
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld h, l
    ld h, l
    ld h, h
    daa
    ld a, $4b
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld d, d
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
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
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
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
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $4b
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
    sbc a
    ld h, h
    ld h, a
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld h, h
    ld l, $42
    ld c, a
    ld d, a
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_048_7147

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
    xor $3f
    ld c, a
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
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
    ld [hl-], a
    ccf
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    rst $28
    xor $54
    ld c, h
    ld b, l

jr_048_7147:
    ld c, c
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
    rst $28
    xor $49
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_048_71b9

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
    scf
    ld c, h
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    scf
    ld c, h
    ld b, c
    ld h, b
    ld h, h
    ld b, c
    ld b, d

jr_048_71b9:
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $44
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld h, h
    ld [hl], $46
    ld b, b
    ld b, l
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
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
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    scf
    ld c, h
    ld b, c
    ld h, l
    rst $28
    xor $3a
    ld a, $50
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $36
    ld b, d
    ld c, e
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
    or $a4
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ccf
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $35
    ld a, $51
    ld h, c
    ld h, h
    inc h
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    rst $28
    xor $43
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ccf
    ld a, $4f
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc sp
    ld a, $5e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, c
    rst $28
    xor $28
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld d, d
    ld d, c
    ld a, $49
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
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
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld c, a
    ld d, b
    ld d, c
    ld b, d
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
    ld a, $52
    ld d, b
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
    ld b, h
    ld b, d
    ld d, b
    ld d, d
    ld c, e
    ld b, c
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
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
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
    ld h, b
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld a, $64
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
    ld d, c
    ld c, h
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_048_73c0

    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    daa
    ld a, $4a
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld c, a
    ld b, d
    ld c, e
    ld h, c
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
    ld b, [hl]

jr_048_73c0:
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $49
    ld a, $4b
    ld b, h
    ld h, h
    ld b, d
    ld c, a
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
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
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $46
    ld b, l
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
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
    cpl
    ld a, $4b
    ld b, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3e
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
    ld a, [$eff7]
    xor $2f
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $45
    ld a, $51
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
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
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
    ld b, d
    ld b, h
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
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
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
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    add hl, sp
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld a, $52
    ld c, d
    sbc h
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
    ld a, [$eff7]
    xor $9f
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
    and h
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    and h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    jr nc, jr_048_755c

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
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
    rst $28
    xor $3f
    ld b, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld c, a
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    ld b, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, h

jr_048_755c:
    ld b, d
    ld d, h
    ld a, $4b
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
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
    ld c, d
    ld a, [$eff7]
    xor $4b
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, b
    sbc h
    add hl, sp
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
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
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    and h
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    and h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    add hl, hl
    ld b, [hl]
    ld c, e
    ld a, $49
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld d, h
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
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4b
    ld d, d
    ld c, e
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
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
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, a
    ld d, b
    ld d, c
    ld b, d
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
    daa
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_048_7705

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld d, b
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
    ld d, b
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
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
    ld a, [hl+]
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, b
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld a, $52

jr_048_7705:
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld a, $4b
    ld c, b
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld a, $52
    ld d, b
    ld c, b
    ld a, $4a
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_048_776b

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $f6
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    inc h
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $43
    ld c, a
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f

jr_048_776b:
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
    xor $2a
    ld b, d
    ld c, a
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld e, l
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
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
    jr nc, jr_048_782f

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $30
    ld a, $49
    ld d, c
    ld a, $a4
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_048_7851

    ld c, c
    ld a, $56
    ld a, $65
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    jr nc, jr_048_785f

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    or $66
    rst $28
    xor $3a
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

jr_048_782f:
    ld d, d
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, [hl]
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
    and h
    inc h
    ld b, b
    ld b, l
    rst $28
    xor $50
    ld c, h
    and h

jr_048_7851:
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld a, [$eff7]

jr_048_785f:
    xor $3e
    ld d, d
    ld b, b
    ld b, l
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
    and h
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
    rst $28
    xor $49
    ld a, $4b
    ld b, c
    ld b, d
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $49
    ld d, c
    ld a, $a4
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
    jr nc, jr_048_78ef

    ld c, a
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
    ld a, $44
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_048_7909

    ld d, b
    ld d, c
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
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    jr c, jr_048_7936

    ld b, c
    ld h, h
    ld b, [hl]
    ld b, b

jr_048_78ef:
    ld b, l
    rst $28
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
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

jr_048_7909:
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
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
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
    ld sp, $4f52
    rst $28
    xor $41

jr_048_7936:
    ld b, d
    ld d, b
    ld b, l
    ld a, $49
    ccf
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld sp, $403e
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, [hl]
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
    ld a, $3f
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
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
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $48
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_048_79f3

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    ld a, [$eff7]
    xor $37
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
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    or $a4
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    and h
    ld h, a
    rst $28
    xor $fa

jr_048_79f3:
    rst $30
    rst $28
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
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, a
    ld d, d
    ld d, b
    ld b, d
    ld b, l
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld c, h
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
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, b
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
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld b, l
    ld e, h
    ld c, a
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
    cpl
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
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
    xor $f7
    ldh a, [$eb]
    jr nc, jr_048_7b10

    ld c, c
    ld a, $56
    ld a, $64
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
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4a
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
    ld h, [hl]
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
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, c

jr_048_7b10:
    ld c, h
    ld b, b
    ld b, l
    ld h, l
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld d, h
    ld a, $4f
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld b, d
    ld b, l
    ld c, a
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, a
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld [hl-], a
    ld l, $60
    ld h, h
    ld c, c
    ld a, $5e
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3a
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
    ldh a, [$31]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, c
    rst $28
    xor $f7
    ldh a, [$eb]
    jr nc, @+$48

    ld c, c
    ld a, $56
    ld a, $64
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
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
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
    cpl
    ld a, $5e
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
    ldh a, [$eb]
    jr nc, jr_048_7c1c

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    or $a4
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld h, h
    ld h, h
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
    jr nc, jr_048_7c54

    ld c, c
    ld a, $56
    ld a, $65
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c

jr_048_7c1c:
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld a, $44
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld c, c
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    rst $28
    xor $2e
    ld a, $49
    ccf
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
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_048_7c54:
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
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld a, $4b
    ld d, b
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld b, e
    ld c, h
    ld c, c
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    jr nc, jr_048_7cc8

    ld d, c
    ld b, [hl]
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
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld a, $51
    ld b, [hl]
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $47

jr_048_7cc8:
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $39
    ld c, h
    ld c, a
    ccf
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_048_7d26

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
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
    xor $54
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
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h

jr_048_7d26:
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, [hl]
    ld h, h
    ld a, [$eff7]
    xor $27
    ld a, $50
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
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld c, a
    ld a, $44
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]
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
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, $51
    ld d, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld h, l
    rst $28
    xor $2f
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
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
    ld d, b
    ld a, [$eff7]
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
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld e, h
    ld e, [hl]
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
    ld h, h
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
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
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_048_7e8d

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld a, [$eff7]
    xor $27
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_048_7e9c

    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    ccf
    ld b, d
    ld c, a
    and h
    ld b, d
    ld d, b
    rst $28
    xor $51
    ld d, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, c

jr_048_7e8d:
    ld b, d
    ld b, [hl]
    ld b, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, d

jr_048_7e9c:
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
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
    ld a, [$eff7]
    xor $28
    ld d, d
    ld c, a
    ld b, d
    ld c, e
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
    and h
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
    jr z, jr_048_7f42

    ld h, h
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, l
    rst $28
    xor $36
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    jr z, jr_048_7f56

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld a, $4b
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

jr_048_7f42:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_048_7f56:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
