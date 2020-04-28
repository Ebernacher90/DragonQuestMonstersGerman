; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

    ld c, c
    ld c, a
    ld b, c
    ld l, h
    ld b, c
    adc c
    ld b, c
    add hl, bc
    ld b, b
    and [hl]
    ld b, c
    ld b, h
    ld b, d
    sbc c
    ld b, d
    ret


    ld b, d
    inc b
    ld b, e
    ld e, $43
    ld c, l
    ld b, e
    ld l, h
    ld b, e
    sub [hl]
    ld b, e
    call c, $1743
    ld b, h
    ld c, b
    ld b, h
    add a
    ld b, h
    sbc [hl]
    ld b, h
    cp c
    ld b, h
    db $f4
    ld b, h
    ld [hl-], a
    ld b, l
    add b
    ld b, l
    xor c
    ld b, l
    or h
    ld b, l
    sub $45
    di
    ld b, l
    add hl, bc
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld [hl], e
    ld b, [hl]
    rst $38
    ld b, [hl]
    ld [hl], $47
    ld d, l
    ld b, a
    adc h
    ld b, a
    and c
    ld b, a
    rst $18
    ld b, a
    push af
    ld b, a
    add l
    ld c, b
    and d
    ld c, b
    rst $10
    ld c, b
    ld b, [hl]
    ld c, c
    ld [hl], a
    ld c, c
    jp c, $0549

    ld c, d
    ld [hl], $4a
    sbc c
    ld c, d
    sub $4a
    cp $4a
    ld [hl], h
    ld c, e
    inc e
    ld c, h
    dec sp
    ld c, h
    ld a, a
    ld c, h
    sbc d
    ld c, h
    xor h
    ld c, h
    ld [hl], $4d
    push bc
    ld c, l
    db $fc
    ld c, l
    sub b
    ld c, [hl]
    ret


    ld c, [hl]
    jr z, @+$51

    ld e, l
    ld c, a
    sbc [hl]
    ld c, a
    sub $4f
    ld a, [$544f]
    ld d, b
    or d
    ld d, b
    db $ed
    ld d, b
    inc e
    ld d, c
    dec sp
    ld d, c
    ld e, a
    ld d, c
    adc [hl]
    ld d, c
    db $d3
    ld d, c
    push af
    ld d, c
    inc hl
    ld d, d
    ld c, b
    ld d, d
    ld l, l
    ld d, d
    add c
    ld d, d
    sbc h
    ld d, d
    pop hl
    ld d, d
    dec de
    ld d, e
    ld a, [hl-]
    ld d, e
    ld [hl], d
    ld d, e
    adc h
    ld d, e
    xor c
    ld d, e
    rst $28
    ld d, e
    add hl, bc
    ld d, h
    ld h, a
    ld d, h
    adc h
    ld d, h
    or e
    ld d, h
    ld sp, $a155
    ld d, l
    ld a, [c]
    ld d, l
    db $e3
    ld d, [hl]
    ld h, $57
    sub h
    ld d, a
    call z, $1c57
    ld e, b
    dec hl
    ld e, b
    ld e, d
    ld e, b
    bit 3, b
    ld de, $7559
    ld e, c
    sbc e
    ld e, c
    xor h
    ld e, c
    push de
    ld e, c
    daa
    ld e, d
    ldh a, [$5b]
    ld d, d
    ld e, h
    ld h, h
    ld e, [hl]
    cp h
    ld e, [hl]
    dec b
    ld h, b
    sbc $60
    ld d, c
    ld h, c
    call nz, Call_049_7161
    ld h, d
    xor b
    ld h, d
    rst $18
    ld h, d
    db $76
    ld h, e
    rst $00
    ld h, e
    rrca
    ld h, h
    or e
    ld h, h
    or h
    ld h, l
    ld a, [hl+]
    ld h, [hl]
    sbc c
    ld h, [hl]
    or h
    ld h, [hl]
    push bc
    ld h, [hl]
    dec h
    ld h, a
    ld l, [hl]
    ld l, b
    ld b, a
    ld l, c
    add b
    ld l, c
    xor [hl]
    ld l, c
    ld [bc], a
    ld l, e
    sub c
    ld l, e
    ld [hl], h
    ld l, h
    or h
    ld l, h
    db $d3
    ld l, l
    ld de, $af6e
    ld l, [hl]
    di
    ld l, [hl]
    inc c
    ld l, a
    ld d, a
    ld l, a
    db $dd
    ld l, a
    sbc c
    ld [hl], b
    xor e
    ld [hl], c
    inc hl
    ld [hl], d
    sbc c
    ld [hl], d
    daa
    ld [hl], e
    and e
    ld [hl], e
    dec a
    ld [hl], h
    and h
    ld [hl], h
    ld e, a
    ld [hl], l
    inc l
    db $76
    sbc a
    db $76
    ld e, e
    ld [hl], a
    sbc l
    ld [hl], a
    db $fd
    ld [hl], a
    inc e
    ld a, b
    ld h, l
    ld a, b
    sub h
    ld a, b
    call z, $0d78
    ld a, c
    adc c
    ld a, c
    and l
    ld a, c
    nop
    ld a, h
    db $ec
    ld a, l
    ld c, l
    ld a, [hl]
    cpl
    ld a, a

Call_049_414f:
    ld a, [$c823]
    cp $a3
    jr c, jr_049_4165

    sub $a3
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $1a00
    rst $10
    ret


jr_049_4165:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c823]
    cp $a3
    jr c, jr_049_4182

    sub $a3
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $1a01
    rst $10
    ret


jr_049_4182:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c823]
    cp $a3
    jr c, jr_049_419f

    sub $a3
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $1a02
    rst $10
    ret


jr_049_419f:
    call Call_049_414f
    call $0609
    ret


    db $eb
    jr nc, jr_049_41ef

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    dec hl
    ld c, d
    and h
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
    ld b, l
    ld a, $3f
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2a
    ld b, d
    ld b, e
    ld e, l
    ld b, l
    ld c, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    daa
    ld a, $50
    ld h, h

jr_049_41ef:
    ld c, b
    ld a, $4b
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
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $37
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
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
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
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
    ldh a, [$eb]
    jr nc, jr_049_428d

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    dec l
    ld a, $61
    ld h, h
    daa
    ld a, $50
    rst $28
    xor $54
    ld a, $4f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld c, a
    ld a, $52
    ld c, d
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
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a

jr_049_428d:
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
    ldh a, [$eb]
    jr nc, jr_049_42e2

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $31
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    ld h, h
    scf
    ld c, a
    ld e, e
    ld d, d
    ld c, d
    ld h, h
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    jr nc, jr_049_4312

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $31
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a

jr_049_42e2:
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    scf
    ld c, a
    ld a, $52
    ld c, d
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    jr nc, @+$48

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    and h
    dec hl
    ld d, d
    ld b, b
    ld b, l

jr_049_4312:
    ld h, [hl]
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    jr nc, jr_049_4367

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $50
    ld b, b
    ld b, l
    ld b, d
    ld h, [hl]
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
    ld a, [hl+]
    ld b, [hl]
    ccf
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    add hl, hl
    ld b, [hl]
    ld c, c
    ld b, d

jr_049_4367:
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
    daa
    ld a, $4b
    ld c, e
    rst $28
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
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $42
    ld d, d
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$37]
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
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
    jr nc, jr_049_43ff

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld d, l
    ld b, [hl]
    ld c, b
    ld c, h
    ld c, e
    and h
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, a
    and h
    ld a, [$eff7]
    xor $f6
    and h
    and h
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$e9]
    ld h, b
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
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
    ld [hl], $40
    ld b, l
    ld c, a
    ld a, $4b
    ld c, b
    ld h, c
    ld a, [$eff7]
    xor $31

jr_049_43ff:
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    rst $28
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
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    ld h, h
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
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_049_44dd

    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld c, d
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
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $28
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
    jr c, jr_049_4503

    ld b, l
    ld h, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $4a
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
    ld h, b
    ld a, [$eff7]
    xor $46

jr_049_44dd:
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld h, h
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    rst $28

jr_049_4503:
    xor $29
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
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
    ld h, c
    ld h, h
    cpl
    ld a, $5e
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
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
    xor $27
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
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_049_45a6

    ld c, d
    ld b, [hl]
    ld c, b
    ld h, l
    ld a, [$eff7]
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_049_45b5

    ld c, d
    ld b, [hl]
    ld c, b
    ld h, h
    ld c, c
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $4b
    ld d, d
    ld c, a
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
    xor $33
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld a, $4f
    ld d, a
    ld h, c
    rst $28

jr_049_45a6:
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

jr_049_45b5:
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    and h
    ld b, l
    ld a, $50
    ld d, c
    and h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    and h
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    and h
    and h
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    and h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    and h
    and h
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    and h
    and h
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    and h
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    and h
    and h
    ld c, e
    ld h, l
    ld h, l
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
    ld h, h
    cpl
    ld a, $5e
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld c, e
    ld b, h
    ld c, h
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    ld h, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ccf
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
    rst $30
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
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, e
    ld d, c
    ld d, a
    ld d, c
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
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $ef
    xor $48
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld a, $40
    ld b, l
    ld d, c
    ld b, d
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
    ld d, a
    ld d, d
    ld c, a
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
    ld sp, $663e
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld a, $49
    sbc h
    rst $28
    xor $49
    ld b, d
    ld c, e
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
    xor $37
    ld a, $4b
    ld d, a
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, [hl]
    ld d, c
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
    cpl
    ld d, d
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, c
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld h, [hl]
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
    ld b, a
    ld a, $64
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
    ld h, l
    ld h, h
    ld l, $4c
    ld c, d
    ld c, d
    ld h, b
    ld h, h
    ld c, c
    ld a, $5e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld d, c
    ld a, $4b
    ld d, a
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
    ld a, $51
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld [hl], $4d
    ld a, $5e
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, [hl]
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
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    rst $28
    xor $42
    ld c, a
    ld d, c
    ld e, h
    ld c, e
    ld d, c
    and h
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    and h
    ld [hl], $46
    ld b, d
    and h
    rst $28
    xor $44
    ld b, d
    ld c, e
    ld a, $52
    and h
    ld [hl], $46
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
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
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $36
    ld b, d
    ld b, d
    ld d, b
    ld h, c
    ld h, c
    ld h, c
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
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
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    and h
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
    ld b, d
    ld d, b
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld c, h
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
    ld l, $49
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_049_48df

    ld c, d
    ld b, d
    ld c, e
    ld d, c
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    rst $30
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
    ld [hl], $46
    ld b, d
    rst $28
    xor $41
    ld a, $4b
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
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
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
    inc l
    ld b, l
    ld c, a
    ld h, h

jr_049_48df:
    jr nc, jr_049_492d

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
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld b, e
    ld a, $49
    ld c, c
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
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4f
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_049_492d:
    ld l, $49
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_049_4983

    ld c, d
    ld b, d
    ld c, e
    ld d, c
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
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
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
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
    ld d, b
    ld d, c
    ld e, l
    ld b, b
    ld c, b
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c

jr_049_4983:
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2f
    ld e, l
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
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    sbc h
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld b, d
    ld c, e
    and h
    ld b, h
    ld b, d
    ld b, l
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
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
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
    ld h, c
    ld h, h
    jr z, jr_049_4a2e

    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $24
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
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
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_049_4a5b

    ld c, e
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a

jr_049_4a2e:
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2f
    ld e, l
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
    inc l
    ld b, b
    ld b, l
    ld h, h

jr_049_4a5b:
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    inc l
    ld b, l
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
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    sbc h
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld b, d
    ld c, e
    and h
    ld b, h
    ld b, d
    ld b, l
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
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
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
    and h
    and h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld b, c
    ld d, d
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $24
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, c
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
    ld sp, hl
    nop
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld b, e
    ld a, $49
    sbc h
    ld a, [$eff7]
    xor $49
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    rst $28
    xor $36
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
    ld a, [$eff7]
    xor $9f
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
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
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
    ld c, c
    ld a, $50
    ld d, b
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
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $32
    ld c, a
    ld d, c
    ld h, c
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
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $42
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, h
    inc l
    ld b, l
    ld c, a
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
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_049_4c0a

    ld b, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $28
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, h
    ld b, d
    ccf
    ld b, d
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
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl+]
    ld a, $4f
    ld c, e
    ld b, d
    ld c, c
    ld b, d
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
    ld [hl], $46
    ld b, d

jr_049_4c0a:
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $3f
    ld b, d
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
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
    ld d, b
    ld b, [hl]
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
    xor $44
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
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
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec [hl]
    ld d, d
    ld b, l
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
    xor $3e
    ld d, d
    ld d, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld h, h
    ccf
    ld a, $49
    ld b, c
    and h
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
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
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
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld a, $50
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld c, e
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
    ld l, b
    ld sp, $6442
    ld sp, $5242
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    ld h, b
    ld h, h
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    jr nc, jr_049_4d6a

    ld c, e
    sbc h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_049_4d82

    ld c, e
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    ld h, b
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, c
    ld e, e
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $29
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $48

jr_049_4d6a:
    ld e, h
    ld c, e
    ld c, e
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
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a

jr_049_4d82:
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $42
    ld d, d
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $3e
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $44
    ld c, a
    ld e, l
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $45
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    ld h, [hl]
    ld h, h
    jr nc, jr_049_4e12

    ld b, [hl]
    ld c, e
    rst $28
    xor $35
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    and h
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_049_4e32

    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_049_4e3e

    ld c, d
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
    add hl, hl
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]

jr_049_4e12:
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld a, $49
    ld h, l
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    and h
    ld h, a
    rst $28
    xor $fa

jr_049_4e32:
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    ld h, l
    ld h, [hl]
    ld h, h

jr_049_4e3e:
    jr z, @+$52

    ld h, h
    ld b, a
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_049_4eaf

    ld h, h
    ld d, c
    ld d, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    rst $28
    xor $49
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, l
    ld h, h
    ld a, [hl+]
    ld b, [hl]
    ccf
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
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $3d
    ld b, d
    ld b, [hl]
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
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld h, h
    rst $28
    xor $47
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld a, $44
    ld a, [$eff7]

jr_049_4eaf:
    xor $4a
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
    rst $28
    xor $29
    ld b, [hl]
    ld c, c
    ld b, d
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
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    and h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $49
    ld d, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    daa
    ld c, h
    ld c, a
    ld b, e
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, a
    ld d, d
    ccf
    ld c, a
    ld b, d
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
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, d
    ld a, $40
    ld b, l
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
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld h, l
    rst $28
    xor $25
    ld c, a
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_049_4f86

    ld b, b
    ld b, l
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
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
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
    ld b, a
    ld a, $ef
    xor $49
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld c, c
    ld h, h

jr_049_4f86:
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld b, d
    ld c, e
    ld c, e
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
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
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
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $48
    ld c, h
    ld c, d
    ld c, l
    ld c, c
    ld b, d
    ld d, c
    ld d, c
    rst $28
    xor $53
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld b, d
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
    jr nc, @+$40

    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
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
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
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
    ld a, [hl-]
    ld c, h
    ld d, h
    ld h, l
    rst $28
    xor $2b
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
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
    ld [hl], $4c
    ld h, l
    ld h, h
    cpl
    ld a, $5e
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld h, c
    ld a, [$eff7]
    xor $67
    dec [hl]
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
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
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, h
    scf
    ld c, a
    ld b, d
    ld b, e
    ld b, e
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
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
    xor $28
    ld c, e
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld d, d
    ld c, e
    ld b, h
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
    xor $41
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld h, c
    ld a, [$eff7]
    xor $67
    ld [hl], $52
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld b, e
    ld c, a
    ld e, h
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $30
    ld b, [hl]
    ld d, c
    ld a, $4f
    ccf
    ld b, d
    ld b, [hl]
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
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, [hl]
    ld h, l
    ld h, h
    dec h
    ld b, d
    ld b, [hl]
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld l, b
    ld d, b
    ld a, [$eff7]
    xor $4f
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
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
    ld d, c
    rst $28
    xor $42
    ld c, a
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    add hl, hl
    ld e, l
    ld b, l
    ld c, c
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
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    dec a
    ld d, d
    ld b, l
    ld a, $52
    ld d, b
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, a
    ld c, a
    ld d, [hl]
    and h
    ld h, h
    ld a, $3f
    ld b, d
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
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
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
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, l
    rst $28
    xor $24
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $61
    ld h, h
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
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
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_049_5245

    ld c, d
    ld c, d
    ld h, c
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, d
    ld a, $51
    ld d, a
    ld h, c
    rst $28
    xor $2d
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $49
    ld c, h
    ld d, b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_049_527d

    ld a, $4c
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

jr_049_5245:
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
    ld a, $51
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld [hl], $4d
    ld a, $5e
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $43
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    and h
    ld h, a

jr_049_527d:
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, c
    ld c, h
    ccf
    ld d, c
    ld h, c
    rst $28
    xor $2b
    ld c, h
    ld b, l
    ld c, h
    ld b, l
    ld c, h
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
    ld h, h
    dec hl
    ld a, $51
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $36
    ld c, l
    ld a, $5e
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, h
    cpl
    ld a, $5e
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, h
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
    jr nc, jr_049_532d

    ld d, c
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
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
    and h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    and h
    rst $28
    xor $45
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
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
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $46
    ld b, d

jr_049_532d:
    rst $28
    xor $48
    ld c, a
    ld e, e
    ld b, e
    ld d, c
    ld b, [hl]
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
    ld a, [hl-]
    ld a, $4f
    ld l, b
    ld d, b
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld h, [hl]
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$3a]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld c, a
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld d, b
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
    rst $30
    ldh a, [$27]
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $36
    ld d, c
    ld c, h
    ld b, e
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, l
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
    xor $27
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
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_049_541d

    ld c, d
    ld b, [hl]
    ld c, b
    ld h, l
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld c, b
    ld h, h
    ld c, c
    ld a, $40
    ld b, l
    ld d, c
    and h
    rst $28
    xor $f7
    ldh a, [$30]
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld c, b
    ld h, h
    ld c, c
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $4046
    ld b, l
    ld d, c
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_049_541d:
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_049_546a

    ld b, h
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $51
    ld c, h
    ld c, c
    ld c, c
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
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
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, d
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

jr_049_546a:
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
    ld h, h
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $3e
    ld b, b
    ld c, b
    ld b, h
    ld a, $50
    ld d, b
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_049_54e2

    ld h, h
    ld b, h
    ld a, $3f
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_049_54e9

    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    daa
    ld a, $50
    rst $28
    xor $36
    ld d, c
    ld c, h
    ld b, e
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, e
    ld b, [hl]
    ld a, $49
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d

jr_049_54e2:
    ld c, a
    ld h, [hl]
    rst $28
    xor $2b
    ld b, d
    ld b, l

jr_049_54e9:
    ld b, d
    ld b, l
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    or $60
    rst $28
    xor $45
    ld e, h
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld h, [hl]
    ld a, [$eff7]
    xor $2e
    ld c, h
    ld c, d
    ld c, d
    ld h, b
    ld h, h
    ld c, c
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
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
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
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $5c
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    jr nc, jr_049_5595

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld e, [hl]
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $44
    ld b, d
    ld d, c
    ld e, h
    ld d, c
    ld b, d
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
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, c
    ld a, $4b

jr_049_5595:
    ld h, h
    ld b, l
    ld a, $3f
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
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld a, [hl+]
    ld d, d
    ld d, c
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
    ld a, $50
    ld h, h
    jr c, jr_049_565a

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
    jr nc, jr_049_5658

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    or $64
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $51
    ld a, $52
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld b, e
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld c, h
    ld c, a
    ld b, c
    ld b, d
    ld d, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $4b
    ld b, h
    ld b, d
    ld c, b
    ld c, c
    ld a, $44
    ld d, c
    rst $28
    xor $52

jr_049_5658:
    ld c, e
    ld b, c

jr_049_565a:
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld d, b
    ld d, c
    ld e, e
    ld c, e
    ld b, c
    ld c, e
    ld b, [hl]
    ld d, b
    rst $28
    xor $3e
    ccf
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    or $a4
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    scf
    ld c, h
    ld b, c
    ld b, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, d
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $60
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $ff
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
    ld b, c
    ld a, $50
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $64
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $64
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld e, h
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
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
    add hl, sp
    ld b, d
    ld c, a
    ld d, d
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $f6
    ld h, b
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    rst $28
    xor $2a
    ld d, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, c
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
    xor $2b
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ccf
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld d, b
    ld a, $44
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
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
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
    daa
    ld a, $4b
    ld c, e
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
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, l
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld [hl], $51
    ld b, [hl]
    ld c, a
    ccf
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, h
    ld b, d
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
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld c, a
    ld a, $43
    ld d, c
    ld a, $51
    ld h, [hl]
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
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
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
    jr nc, jr_049_58d4

    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, c
    ld a, $4b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $2e
    ld c, h
    ld c, d
    ld c, d
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, e
    ld a, $5e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]

jr_049_58d4:
    ld b, d
    rst $28
    xor $2a
    ld d, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, $4b
    ld h, c
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $49
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    rst $28
    xor $50
    ld c, l
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$f6]
    ld h, h
    ld b, e
    ld a, $5e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2a
    ld d, d
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, h
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, $4b
    ld h, c
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $49
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    rst $28
    xor $44
    ld c, c
    ld e, e
    ld c, e
    ld d, a
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    ld c, h
    ccf
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $f6
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, h
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, $3e
    ld a, $3e
    ld b, h
    ld b, l
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
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    and h
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld a, $3e
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld h, l
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
    or $65
    rst $28
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
    ld a, [$eff7]
    xor $44
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
    jr c, jr_049_5a1f

    ld a, $4f
    ld c, a
    ld c, a
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    and h
    and h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    and h
    and h
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
    and h
    and h
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
    jr c, jr_049_5a60

    ld a, $4f
    ld c, a

jr_049_5a1f:
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
    ld [hl], $46
    ld b, d
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld a, $4b
    and h
    ld h, a
    ld a, [$eff7]
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
    ld a, $50
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c

jr_049_5a60:
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $3c
    ld a, $4a
    ld a, $51
    ld a, $64
    ccf
    ld b, d
    ld d, b
    ld a, $5e
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
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
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
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, c
    ld d, c
    ld b, [hl]
    ld c, d
    ld a, $51
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, h
    ld sp, $4046
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld c, h
    ld d, c
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $3f
    ld b, d
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
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld c, h
    rst $28
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
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, h
    daa
    ld d, d
    rst $28
    xor $3f
    ld b, d
    ld b, c
    ld a, $4b
    ld c, b
    ld d, b
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
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
    xor $44
    ld b, d
    ld c, a
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    rst $28
    xor $41
    ld a, $50
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
    ld h, h
    ld b, e
    ld a, $49
    ld d, b
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
    ld c, e
    ld d, d
    ld c, a
    rst $28
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
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, h
    daa
    ld a, $50
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
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
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
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
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    ld h, c
    rst $28
    xor $3c
    ld a, $4a
    ld a, $51
    ld a, $64
    ld b, [hl]
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
    xor $52
    ld c, e
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
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
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
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
    ld a, $4f
    ld d, d
    ld c, d
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
    ld b, c
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
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
    ld [hl-], a
    ccf
    ld d, h
    ld c, h
    ld b, l
    ld c, c
    and h
    ld d, h
    ld a, $4f
    ld d, d
    ld c, d
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, d
    sbc h
    rst $28
    xor $49
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
    ld b, c
    ld a, $50
    rst $28
    xor $52
    ld c, c
    ld d, c
    ld b, [hl]
    ld c, d
    ld a, $51
    ld b, [hl]
    ld d, e
    ld b, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
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
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $50
    ld d, b
    ld b, d
    ld h, h
    rst $28
    xor $3a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, b
    ld h, c
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $4b
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, a
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
    ld c, d
    and h
    ld b, [hl]
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
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $57
    ld d, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $53
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
    ld b, c
    ld a, $4b
    ld c, e
    ld h, c
    rst $28
    xor $3c
    ld a, $4a
    ld a, $51
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
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
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, l
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
    dec l
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    rst $28
    xor $45
    ld a, $51
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld c, h
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, [hl]
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
    xor $3a
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
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
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, b
    rst $28
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    cpl
    ld a, $4b
    ld b, h
    ld b, d
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    ld b, c
    ld a, $5e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, @+$40

    ld c, e
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    rst $28
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld c, e
    ld d, b
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
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
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2b
    ld e, e
    ld c, c
    ld b, e
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    jr c, jr_049_602e

    ld b, c
    ld h, [hl]
    rst $28
    xor $3a
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
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $4a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld h, l
    rst $28
    xor $27
    ld a, $4b
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h

jr_049_602e:
    dec hl
    ld e, e
    ld c, c
    ld b, e
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld a, $51
    ld d, c
    ld b, d
    ld c, e
    ld d, h
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    dec hl
    ld a, $65
    rst $28
    xor $2a
    ld c, c
    ld a, $52
    ccf
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $60
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
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
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_049_610d

    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld b, d
    ld d, b
    rst $28

jr_049_610d:
    xor $24
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld d, c
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    daa
    ld d, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    ld a, $49
    ld d, b
    ld c, h
    ld h, h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld d, b
    ld c, h
    and h
    rst $28
    xor $27
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
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
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
    xor $30
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    daa
    ld d, d
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $54
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
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
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
    ld b, d
    ld h, h
    ld a, [$eff7]
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
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, b
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
    rst $28
    xor $36
    ld d, c
    ld b, [hl]
    ld c, a
    ccf
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
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
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld e, h
    ld b, l
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_049_62e0

    ld c, e
    ld d, b
    ld b, b
    ld b, l
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
    jr c, jr_049_62fe

    ld b, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $54
    ld a, $4f
    ld l, b
    ld d, b
    ld h, b
    ld h, h
    or $65
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
    ldh a, [$ea]

jr_049_62e0:
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
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
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $44
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, b
    rst $28

jr_049_62fe:
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $54
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, c
    ld e, h
    ld c, a
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
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_049_638c

    ld b, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $33
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld a, $44
    ld c, h
    ld c, e
    rst $28
    xor $3f
    ld b, [hl]
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    dec hl
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b

jr_049_638c:
    ld b, l
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
    xor $53
    ld b, d
    ld c, a
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
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    add hl, hl
    ld a, $45
    ld c, a
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    rst $28
    xor $2b
    ld e, h
    ld c, c
    ld c, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    dec hl
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    jr nc, jr_049_6413

    ld c, a
    ld c, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $41
    ld a, $50
    and h
    ld h, a
    ld a, [$eff7]
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
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
    xor $2a
    ld e, h
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ccf
    ld c, h
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    dec hl
    ld a, $44

jr_049_6413:
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld a, $44
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
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
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    rst $28
    xor $42
    ld d, d
    ld c, a
    ld b, d
    ld h, h
    ld a, [hl+]
    ld c, a
    ld b, d
    ld c, e
    ld d, a
    ld b, d
    ld c, e
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
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
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
    rst $28
    xor $42
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld c, c
    ld c, h
    ld d, b
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    dec hl
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, c
    ld a, $52
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld h, a
    ld a, [$eff7]
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    and h
    rst $28
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
    ccf
    ld c, h
    ld d, c
    ld b, d
    and h
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    and h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    and h
    and h
    ld h, a
    ld a, [$eff7]
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    and h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $42
    ld d, d
    ld c, a
    ld b, d
    ld h, h
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, d
    ld c, a
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    and h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
    ld h, h
    ld h, a
    ld b, d
    ld d, b
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $50
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
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
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $2b
    ld a, $44
    ld c, h
    ld c, e
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
    xor $41
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    and h
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
    ld h, [hl]
    rst $28
    xor $2c
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
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
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, h
    ld a, $49
    ld h, c
    ld h, h
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
    xor $3e
    ccf
    ld b, l
    ld a, $52
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    and h
    and h
    ld sp, $4a3e
    ld b, d
    and h
    and h
    and h
    and h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    rst $28
    xor $a4
    dec a
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, c
    ld c, h
    and h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $36
    ld b, [hl]
    ld b, c
    ld c, h
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    and h
    ld d, h
    ld a, $50
    rst $28
    xor $46
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
    and h
    and h
    ld h, a
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, c
    ld c, h
    ld h, h
    ld h, a
    dec a
    jr z, jr_049_66c1

    ld [hl], $37
    ld e, c
    dec [hl]
    jr c, @+$33

    ld a, [hl+]
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld [hl], $46
    ld b, c
    ld c, h
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    and h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    rst $28
    xor $51
    ld d, d
    ld c, e
    ld b, h
    and h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    ld [hl], $46
    ld b, c
    ld c, h
    ld h, h
    ld h, a
    and h
    and h
    and h
    and h
    and h
    ld h, a

jr_049_66c1:
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
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    rst $28
    xor $41
    ld c, h
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
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
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
    ld sp, $4b52
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    and h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, a
    ld c, d
    ld d, b
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    and h
    and h
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
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    jr z, jr_049_67c4

    ld b, b
    ld b, l
    rst $28
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $38
    ld c, e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
    daa
    ld a, $5e

jr_049_67c4:
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $29
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
    daa
    ld a, $4a
    ld b, [hl]
    ld d, c
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $54
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
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
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
    jr z, jr_049_68a1

    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld b, e
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    dec h
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld d, c
    ld d, a

jr_049_68a1:
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
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
    rst $28
    xor $44
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $2a
    ld c, a
    ld b, d
    ld c, e
    ld d, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
    jr z, jr_049_693b

    ld c, a
    ld b, d
    rst $28
    xor $2b
    ld a, $4b
    ld b, c
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld c, e
    ld c, c
    ld c, h
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
    daa
    ld a, $50
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    jr z, @+$54

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3f
    ld b, d

jr_049_693b:
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    dec h
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
    dec hl
    ld b, h
    ld b, l
    and h
    and h
    rst $28
    xor $2c
    ld b, l
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $25
    ld a, $49
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    ld h, a
    and h
    and h
    rst $28
    xor $3f
    ld b, d
    ld b, c
    ld a, $52
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    and h
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
    ld a, [hl+]
    ld b, d
    ld c, e
    ld b, [hl]
    ld a, $49
    ld h, l
    rst $28
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
    ld a, [$eff7]
    xor $44
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
    xor $3f
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    inc h
    ld c, c
    ld d, c
    ld a, $4f
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $32
    ld c, l
    ld b, e
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
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $65
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, h
    ld c, l
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
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
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, e
    ld b, e
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4f
    ld a, $52
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld b, d
    ld d, b
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, [hl]
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld d, b
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld d, c
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
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
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    dec a
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    and h
    ld d, h
    ld a, $50
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $43
    ld a, $49
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld c, h
    ld b, e
    ld d, c
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    ld a, [hl+]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $28
    ld d, d
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    dec a
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    and h
    rst $28
    xor $28
    ld d, d
    ld b, d
    ld c, a
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    or $a4
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
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
    jr z, jr_049_6c28

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld e, e
    ld d, c
    ld d, a
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    jr nc, @+$44

    ld c, a
    ld c, b
    ld d, c
    ld h, h
    jr z, jr_049_6c50

    ld b, b
    ld b, l
    rst $28
    xor $41
    ld a, $50
    and h
    ld h, a
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
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
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld h, h

jr_049_6c28:
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3d
    ld c, h
    ld c, d
    ld a, $64
    ld h, a
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $46
    ld c, d
    ld c, d

jr_049_6c50:
    ld b, d
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
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
    jr z, jr_049_6ccf

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $47
    ld a, $64
    ld d, e
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
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, h
    cpl
    ld a, $5e
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, h
    ld b, d
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
    jr c, jr_049_6cfe

    ld a, $3e
    ld a, $3e
    ld a, $a4
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, [hl]

jr_049_6ccf:
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
    rst $28
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d

jr_049_6cfe:
    ld h, h
    ld b, h
    ld b, d
    ld c, a
    ld a, $41
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld c, b
    ld e, h
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $4d
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    and h
    rst $28
    xor $2c
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
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld h, h
    ld c, e
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
    rst $28
    xor $42
    ld c, a
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld e, [hl]
    ld d, c
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, $3e
    ld a, $65
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
    ld b, d
    ld d, b
    and h
    ld h, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    ccf
    ld a, $49
    ld b, c
    rst $28
    xor $3f
    ld b, d
    ld c, a
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    and h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    jr z, jr_049_6e7c

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $50
    ld a, $44
    ld b, d
    ld c, e
    and h
    rst $28
    xor $24
    inc h
    inc h
    inc h
    inc h
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    and h
    ld a, [$eff7]
    xor $52
    ld c, d
    ld h, h
    jr z, @+$54

    ld b, b
    ld b, l
    ld h, h
    jr nc, jr_049_6eb2

    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, a

jr_049_6e7c:
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $38
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld a, $4b
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld d, a
    ld d, d
    ld c, a
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    inc sp
    ld b, [hl]

jr_049_6eb2:
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, l
    ld a, $3e
    ld a, $65
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    rst $28
    xor $50
    ld d, c
    ld b, d
    ld c, a
    ccf
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    inc sp
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    rst $28
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $51
    ld e, h
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $30
    ld b, d
    ld c, e
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
    inc sp
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    jr c, jr_049_6fa6

    ld a, $3e
    and h
    rst $28
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld c, e
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    jr z, jr_049_6fe1

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld b, c
    ld b, d

jr_049_6fa6:
    ld c, e
    and h
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $33
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld c, e
    and h
    rst $28
    xor $46
    ld b, b
    ld b, l
    and h
    dec [hl]
    ld c, h
    ld d, b
    ld b, d
    and h
    and h
    ld a, [$eff7]
    xor $54
    ld a, $50
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    and h
    rst $28
    xor $46
    ld b, b
    ld b, l
    and h
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51

jr_049_6fe1:
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    dec [hl]
    ld c, h
    ld d, b
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    ld b, [hl]
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
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
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_049_7063

    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, [hl]
    ld d, d
    ld e, e
    ld c, c
    ld d, c
    and h
    ld d, d
    ld c, e
    ld b, c
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
    inc sp
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h
    rst $28
    xor $46
    ld d, b
    ld d, c
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
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b

jr_049_7063:
    ld b, l
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $3a
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
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
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_049_710a

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
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    and h
    ld h, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    jr nc, @+$44

    ld b, l
    ld c, a
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
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28

jr_049_710a:
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    rst $28
    xor $51
    ld d, d
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    ld [hl], $42
    ld c, c
    ccf
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
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
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c

Call_049_7161:
    ld d, c
    rst $28
    xor $46
    ld b, l
    ld c, a
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
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
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
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    jr z, jr_049_71fe

    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld a, $5e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $32
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
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
    rst $28
    xor $41
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $35
    ld d, d

jr_049_71fe:
    ld b, l
    ld b, d
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    jr z, jr_049_7276

    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
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
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
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
    xor $52

jr_049_7276:
    ld c, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_049_72d5

    ld b, [hl]
    sbc h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld c, e
    ld d, a
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
    ldh a, [$ea]
    jr z, jr_049_72ec

    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
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
    ld d, b
    and h
    ld h, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, l

jr_049_72d5:
    ld a, $3f
    ld d, c
    rst $28
    xor $4a
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
    xor $3e
    ld d, d
    ld b, e

jr_049_72ec:
    ld b, h
    ld b, d
    ld d, h
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    cpl
    ld e, e
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    and h
    rst $28
    xor $53
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
    ld h, h
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    jr z, jr_049_737a

    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    and h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $48
    ld a, $4b
    ld c, e
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
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld c, c
    ld a, $52
    ccf
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
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
    rst $28
    xor $31

jr_049_737a:
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld c, c
    ld a, $44
    ld b, d
    ld h, a
    ld a, [$eff7]
    xor $28
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, a
    ld b, h
    ld b, d
    ld d, c
    ld c, a
    ld e, e
    ld d, d
    ld c, d
    ld d, c
    ld h, h
    rst $28
    xor $45
    ld a, $3f
    ld b, d
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
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $37
    ld c, a
    ld a, $52
    ld c, d
    ld d, h
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $43
    ld b, d
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $3f
    ld b, d
    ld c, d
    ld e, l
    ld b, l
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $3a
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
    ld d, a
    ld d, d
    ld c, a
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
    jr z, jr_049_748e

    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_049_74a1

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    or $ef
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, b
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
    ld b, l
    ld c, a
    ld h, h

jr_049_748e:
    ld d, h
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, [hl]

jr_049_74a1:
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $45
    ld a, $65
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld d, d
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
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $27
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld d, h
    ld b, d
    ld c, c
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
    jr nc, jr_049_753d

    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    jr z, jr_049_758d

    ld b, b
    ld b, l

jr_049_753d:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    dec h
    ld a, $50
    ld d, c
    ld a, $4f
    ld b, c
    ld b, d
    ld h, l
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_049_758d:
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
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $27
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld d, h
    ld b, d
    ld c, c
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
    jr nc, jr_049_760a

    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    jr z, jr_049_765a

    ld b, b
    ld b, l

jr_049_760a:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    jr nc, jr_049_7675

    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $a4
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $f6
    ld h, h
    ld d, d

jr_049_765a:
    ld c, e
    ld b, c
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
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]

jr_049_7675:
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $4b
    ld b, d
    ld c, a
    ld d, e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $57
    ld b, [hl]
    ld b, d
    ld c, d
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    jr nc, @+$48

    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    daa
    ld a, $50
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    and h
    ld a, [$eff7]
    xor $38
    ld c, e
    ld c, d
    ld e, h
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    daa
    ld a, $50
    rst $28
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
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld c, a
    ld a, $52
    ld c, d
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    rst $28
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
    ld a, [$eff7]
    xor $4a
    ld e, h
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
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
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld d, b
    ld d, c
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
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld h, l
    ld h, h
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
    ld h, b
    rst $28
    xor $46
    ld b, l
    ld c, a
    ld h, h
    scf
    ld b, [hl]
    ld b, d
    ld c, a
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
    jr nc, jr_049_7807

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
    xor $30
    ld d, d
    ld b, c
    ld c, h
    and h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, c
    ld h, a
    rst $38
    ldh a, [$ea]
    jr nc, jr_049_7852

    ld b, c
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a

jr_049_7807:
    ld h, h
    ld d, h
    ld d, d
    ld e, [hl]
    ld d, c
    ld b, d
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    jr nc, jr_049_7871

    ld b, c
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld h, c
    rst $28
    xor $27
    ld a, $4b
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $30
    ld d, d
    ld b, c
    ld c, h
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
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, d
    ld d, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $2a

jr_049_7852:
    ld c, a
    ld e, e
    ccf
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld c, a
    ld a, $3f
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    jr nc, @+$54

    ld b, c
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $51
    ld b, d
    ld b, l
    ld b, d

jr_049_7871:
    ld c, e
    ld h, h
    jr z, jr_049_78c7

    ld c, a
    ld b, d
    rst $28
    xor $36
    ld e, e
    ld c, a
    ld b, h
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    jr nc, jr_049_78e9

    ld b, c
    ld c, h
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, c
    ld h, h
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld c, c
    ld a, $5e
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, c

jr_049_78c7:
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    jr nc, jr_049_7921

    ld b, c
    ld c, h
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
    rst $28
    xor $42
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    inc sp
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, a

jr_049_78e9:
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
    ld c, d
    ld e, h
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    jr nc, jr_049_7962

    ld b, c
    ld c, h
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
    rst $28
    xor $53
    ld c, h

jr_049_7921:
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    add hl, sp
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    and h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $41
    ld a, $50
    and h
    ld h, a
    ld a, [$eff7]
    xor $30
    ld d, d
    ld b, c
    ld c, h
    ld h, h
    ld h, a
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, h

jr_049_7962:
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
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
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, sp
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, [hl]
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
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $45
    ld a, $45
    ld a, $a4
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
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, d
    ld e, l
    ld d, c
    ld b, [hl]
    ld b, h
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
    ld a, $3f
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $41
    ld a, $4f
    ld a, $4b
    ld h, h
    ld b, h
    ld b, d
    ld b, c
    ld a, $40
    ld b, l
    ld d, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, l
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    and h
    ld d, d
    ld c, d
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld a, $50
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $42
    ld c, a
    ld c, c
    ld b, d
    ld b, c
    ld b, [hl]
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld b, a
    ld a, $ef
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
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
    rst $28
    xor $46
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
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
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld b, d
    and h
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld c, b
    ld b, d
    ld c, e
    ld c, e
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
    ld h, b
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    scf
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $65
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld d, c
    ld h, b
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld sp, $4046
    ld b, l
    ld d, c
    ld d, b
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    jr z, jr_049_7bb6

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $57
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    inc l
    ld b, l
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
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $54
    ld b, d
    ld d, b
    ld b, l
    ld a, $49
    ccf

jr_049_7bb6:
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $a4
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    scf
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    sbc h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    inc h
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld c, c
    ld a, $44
    ld b, d
    rst $28
    xor $42
    ld c, a
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld a, $50
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    inc l
    ld b, c
    ld b, [hl]
    ld c, h
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, c
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    inc h
    ld d, d
    ld d, b
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
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
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
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
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, d
    ld b, l
    ld d, c
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
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
    jr z, jr_049_7dc1

    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $54
    ld b, d
    ld d, b
    ld b, l
    ld a, $49
    ccf
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $67
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    ld b, c

jr_049_7dc1:
    ld b, d
    ld c, a
    rst $28
    xor $2b
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    scf
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    jr c, @+$46

    ld b, l
    and h
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    and h
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld c, a
    ld a, $43
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $3d
    ld d, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    rst $28
    xor $3e
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
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
    scf
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $ef
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
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
    xor $52
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $27
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld c, b
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    jr z, jr_049_7eea

    ld h, h
    ld d, h
    ld a, $4f
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
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
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld c, c
    ld a, [$eff7]
    xor $42
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld a, $49

jr_049_7eea:
    ld d, c
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
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
    ld h, h
    ld c, c
    ld a, $5e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, a
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
    ld h, b
    rst $28
    xor $f6
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
    jr nc, jr_049_7f86

    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $3d
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld d, b
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $49
    ld c, c

jr_049_7f86:
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
