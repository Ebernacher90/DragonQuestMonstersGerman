; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $042", ROMX[$4000], BANK[$42]

    ld b, d
    add hl, bc
    ld b, c
    ld h, $41
    ld b, e
    ld b, c
    add hl, bc
    ld b, b
    ld h, b
    ld b, c
    ld [hl], b
    ld b, d
    add [hl]
    ld b, d
    jp z, $0742

    ld b, e
    ld c, h
    ld b, e
    ret nz

    ld b, e
    ld a, [$3543]
    ld b, h
    di
    ld b, h
    rla
    ld b, l
    and c
    ld b, [hl]
    db $ec
    ld b, [hl]
    ld a, [de]
    ld b, a
    ld c, e
    ld b, a
    sub l
    ld b, a
    ld l, [hl]
    ld c, b
    push hl
    ld c, b
    jr nz, jr_042_4078

    ld d, e
    ld c, c
    add d
    ld c, c
    xor d
    ld c, c
    dec h
    ld c, d
    ld e, e
    ld c, d
    ld a, h
    ld c, d
    sbc e
    ld c, d
    cp d
    ld c, d
    jp z, $e14a

    ld c, d
    di
    ld c, d
    ld b, e
    ld c, e
    ld e, d
    ld c, e
    ld [hl], d
    ld c, e
    cp [hl]
    ld c, e
    inc de
    ld c, a
    ld c, e
    ld c, a
    add [hl]
    ld c, a
    call nz, $204f
    ld d, c
    inc [hl]
    ld d, c
    ld l, b
    ld d, c
    or c
    ld d, d
    ldh a, [rHDMA2]
    ld l, b
    ld d, e
    ldh [rHDMA3], a
    or h
    ld d, l
    xor $55
    ld h, d
    ld d, a
    xor $57
    daa
    ld e, b
    sbc l
    ld e, b
    ld h, l
    ld e, c
    sub a
    ld e, c
    call $f059
    ld e, c
    ld c, a

jr_042_4078:
    ld e, d
    pop af
    ld e, d
    ld hl, $c65b
    ld e, e
    sbc $5b
    dec b
    ld e, h
    ld [hl], $5c
    sbc $5c
    jr nz, jr_042_40e6

    ld e, a
    ld e, [hl]
    or h
    ld e, [hl]
    sbc h
    ld h, b
    ret z

    ld h, b
    db $fc
    ld h, b
    inc e
    ld h, c
    ld [hl-], a
    ld h, d
    ld d, c
    ld h, d
    adc [hl]
    ld h, d
    jp $2462


    ld h, e
    jp $e563


    ld h, e
    and $64
    ld c, l
    ld h, l
    ld [hl], d
    ld h, l
    ld h, e
    ld h, [hl]
    rst $20
    ld h, [hl]
    ld d, $67
    ld c, b
    ld h, a
    adc e
    ld l, b
    jr nz, jr_042_411e

    sbc l
    ld l, c
    bit 5, c
    dec sp
    ld l, d
    add $6a
    rst $30
    ld l, d
    dec c
    ld l, h
    ld b, e
    ld l, h
    ld hl, $6a6d
    ld l, l
    rst $30
    ld l, l
    inc e
    ld l, [hl]
    ld h, c
    ld l, [hl]
    add [hl]
    ld l, [hl]
    sub $6e
    ld hl, sp+$6e
    sbc h
    ld l, a
    ret nc

    ld [hl], b
    rrca
    ld [hl], c
    ld sp, hl
    ld [hl], c
    dec c
    ld [hl], e
    cpl
    ld [hl], e
    ld e, d
    ld [hl], e
    add h
    ld [hl], e
    rst $38
    ld [hl], e
    xor b

jr_042_40e6:
    ld [hl], h
    jp nc, $9974

    ld [hl], l
    ld [hl], a
    db $76
    sbc e
    db $76
    jp nc, $2c77

    ld a, b
    sbc d
    ld a, b
    ld [hl+], a
    ld a, c
    ld c, h
    ld a, c
    add c
    ld a, c
    xor a
    ld a, c
    db $d3
    ld a, c
    rrca
    ld a, d
    dec l
    ld a, d
    ld e, h
    ld a, d
    adc b
    ld a, d
    jp hl


    ld a, d

Call_042_4109:
    ld a, [$c823]
    cp $80
    jr c, jr_042_411f

    sub $80
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1a00
    rst $10

jr_042_411e:
    ret


jr_042_411f:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c823]
    cp $80
    jr c, jr_042_413c

    sub $80
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1a01
    rst $10
    ret


jr_042_413c:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c823]
    cp $80
    jr c, jr_042_4159

    sub $80
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1a02
    rst $10
    ret


jr_042_4159:
    call Call_042_4109
    call $0609
    ret


    db $eb
    jr nc, jr_042_41a9

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, l
    rst $28
    xor $3a
    ld a, $4f
    ld d, c
    ld b, d
    ld h, l
    ld h, h
    jr z, jr_042_41ca

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $3d
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
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
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa

jr_042_41a9:
    ld d, d
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
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld h, h
    inc sp
    ld a, $4d
    ld a, $64
    ld d, d
    ld c, e
    ld b, c

jr_042_41ca:
    ld h, h
    jr nc, jr_042_420b

    ld c, d
    ld a, $ef
    xor $44
    ld b, d
    ld d, b
    ld a, $44
    ld d, c
    ld h, h
    ld b, l
    ld a, $3f
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
    ld b, d
    ld c, a
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    rst $28
    xor $54
    ld a, $40
    ld b, l
    ccf
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $53

jr_042_420b:
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_042_4260

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
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
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $24
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, l
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c

jr_042_4260:
    ld h, h
    rst $28
    xor $46
    ld c, e
    ld d, b
    ld h, h
    dec h
    ld b, d
    ld d, c
    ld d, c
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    jr nc, jr_042_42b9

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    and h
    ld h, h
    and h
    ld h, h
    and h
    dec a
    dec a
    dec a
    ld h, a
    rst $28
    xor $f7
    ldh a, [$37]
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
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
    xor $27
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $54
    ld a, $50

jr_042_42b9:
    ld h, c
    ld a, [$eff7]
    xor $67
    jr nc, @+$48

    ld c, c
    ld a, $56
    ld a, $67
    rst $28
    xor $f7
    ldh a, [$37]
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
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $53
    ld c, h
    ld c, a
    ld c, e
    ld b, d
    ld h, c
    ld a, [$eff7]
    xor $24
    ld d, d
    ld d, b
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
    xor $43
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld d, d
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$37]
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld b, l
    ld c, h
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $25
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    jr nc, jr_042_437e

    ld c, a
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    jr z, jr_042_4382

    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec l
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    and h
    ld h, a
    rst $30
    ldh a, [$37]
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld b, l
    ld c, h
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $25
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    jr nc, jr_042_43ae

    ld c, c
    ld a, $56
    ld a, $ef
    xor $37
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, a
    ld a, [$eff7]
    xor $67
    dec hl
    ld b, d

jr_042_437e:
    ld d, d
    ld d, c
    ld b, d
    ld h, h

jr_042_4382:
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2b
    ld a, $52
    ld d, b
    ld h, h
    ld b, l
    ld e, l
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28

jr_042_43ae:
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$e9]
    ld h, b
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld c, h
    ld c, d
    ld c, d
    ld c, h
    ld b, c
    ld b, d
    ld h, c
    ld a, [$eff7]
    xor $39
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, b
    ld c, c
    ld a, $4a
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$e9]
    ld h, b
    scf
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld c, h
    ld c, d
    ld c, d
    ld c, h
    ld b, c
    ld b, d
    ld h, c
    ld a, [$eff7]
    xor $39
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
    ld a, $4a
    ld c, h
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$ea]
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
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $66
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, c
    ld h, h
    jr nc, jr_042_449f

    ld c, c
    ld a, $56
    ld a, $ef
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_44c4

    ld b, c
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
    ld a, $50
    ld h, [hl]
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    rst $28
    xor $37
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, [hl]
    ld h, h
    ld [hl-], a
    ld l, $60
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $45
    ld a, $52
    ld h, h
    ld a, $3f

jr_042_449f:
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
    rst $28
    xor $3a
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld a, $4f
    ld d, d
    ccf
    ld c, h

jr_042_44c4:
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $30
    ld a, $49
    ld d, c
    ld a, $65
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $4f
    ld d, d
    ccf
    ld c, h
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld e, [hl]
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $64
    ld a, [hl-]
    ld a, $a4
    ld a, [hl-]
    ld c, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $a4
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld a, $64
    ld a, [hl-]
    ld a, $a4
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
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
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
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
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, b
    ld h, h
    ld d, h
    ld c, h
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $46
    ld d, b
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
    jr z, @+$4d

    ld d, c
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, h
    ld sp, $4642
    ld c, e
    ld h, l
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, b
    ld c, l
    ld e, e
    ld d, c
    ld a, [$eff7]
    xor $41
    ld c, a
    ld a, $4b
    ld h, l
    ld h, a
    ld h, h
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
    ccf
    ld c, h
    ld h, [hl]
    ld h, h
    ld sp, $4642
    ld c, e
    ld h, c
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld c, h
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
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, [hl]
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
    ld l, $4c
    ld c, d
    ld c, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, l
    ld h, h
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    and h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
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
    ld l, $4c
    ld c, d
    ld c, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, h
    daa
    ld a, $4b
    ld c, e
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
    ld b, c
    ld a, $50
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$37]
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld b, l
    ld c, h
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $25
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    jr nc, jr_042_4709

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
    ld h, c
    rst $28
    xor $24
    ld d, d
    ld d, c
    ld c, h
    ld c, a
    and h
    and h
    ld a, [$eff7]
    xor $a4
    ld h, h
    and h
    ld h, h
    and h
    ld h, h
    ld d, d
    ld c, e
    ccf
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$37]
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld h, h
    ld b, l
    ld c, h
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $25
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h

jr_042_4709:
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld h, l
    rst $30
    ldh a, [$37]
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
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $53
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
    ld a, [hl-]
    ld a, $4b
    ld b, c
    ld d, d
    ld b, l
    ld c, a
    rst $28
    xor $51
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, c
    ld h, c
    rst $30
    ldh a, [$37]
    ld b, d
    ld c, a
    ld c, a
    ld d, [hl]
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
    xor $27
    ld a, $64
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $41
    ld c, a
    ld a, $52
    ld b, e
    ld h, c
    ld a, [$eff7]
    xor $67
    jr nc, jr_042_47d2

    ld c, c
    ld a, $56
    ld a, $67
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld a, [$eff7]
    xor $35
    ld d, d
    ld b, l
    ld l, b
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h

jr_042_47d2:
    ld h, a
    ld a, [hl-]
    ld c, h
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
    xor $3f
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, h
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
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
    ld l, $4c
    ld c, d
    ld c, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, c
    rst $28
    xor $3a
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
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
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
    rst $28
    xor $50
    ld a, $44
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
    ld d, b
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
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
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld c, a
    ld e, l
    ld c, e
    ld b, c
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
    ld d, h
    ld b, [hl]
    ld c, a
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
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $44
    ld a, $4b
    ld d, a
    ld h, h
    ld c, h
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
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    dec hl
    ld a, $51
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
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
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec l
    ld a, $54
    ld c, h
    ld b, l
    ld c, c
    ld h, c
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    rst $28
    xor $54
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld d, d
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
    ld a, [hl+]
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
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
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
    ld h, c
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
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
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
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $25
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    jr nc, jr_042_4a1a

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
    jr c, jr_042_4a36

    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $3f
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    dec hl
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    and h
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld c, c
    ld b, e
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
    xor $53
    ld b, [hl]
    ld b, d

jr_042_4a1a:
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
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
    ld b, l
    ld a, $51

jr_042_4a36:
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    inc sp
    ld c, a
    ld c, h
    ccf
    ld c, c
    ld b, d
    ld c, d
    ld h, c
    ld a, [$eff7]
    xor $2b
    ld b, [hl]
    ld c, c
    ld b, e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, d
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
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
    ld c, c
    ld b, e
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
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
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
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
    ld h, h
    ld d, b
    ld c, h
    ld h, c
    ld h, a
    rst $28
    xor $f7
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
    ld a, [$f0f7]
    or $64
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    rst $28
    xor $2e
    ld c, a
    ld a, $52
    ld d, c
    ld h, c
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, e
    ld a, $4b
    ld b, c
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
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    or $64
    ld b, l
    ld a, $51
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
    xor $41
    ld a, $50
    ld h, h
    ld l, $4f
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
    ld a, [$f0f7]
    ld [$649f], a
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
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
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
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, l
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
    rst $28
    xor $2e
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
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    jr z, jr_042_4c04

    ld b, d
    ld c, a
    rst $28
    xor $31
    ld a, $4a
    ld b, d
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
    or $65
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
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

jr_042_4c04:
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld b, c
    ld a, $5e
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld b, [hl]
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
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    rst $28
    xor $28
    ld d, d
    ld c, a
    ld b, d
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld d, c
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
    ld h, h
    ld b, e
    ld b, [hl]
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
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
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
    xor $57
    ld d, d
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
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
    dec hl
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    and h
    rst $28
    xor $2b
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
    dec l
    ld a, $65
    ld h, h
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, d
    ld d, b
    ld h, l
    ld h, l
    ld h, h
    jr z, @+$52

    ld a, [$eff7]
    xor $44
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    jr nc, jr_042_4d4d

    ld d, c
    ld b, l
    ld c, h
    ld b, c
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
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
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
    jr z, jr_042_4d9d

jr_042_4d4d:
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
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
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld d, b
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
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $28
    ld d, d
    ld c, a

jr_042_4d9d:
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
    ld a, [$eff7]
    xor $41
    ld a, $4b
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
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
    jr c, jr_042_4e18

    ld b, c
    ld h, h
    jr z, jr_042_4e23

    ld b, d
    ld c, a
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
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
    ld [hl], $52
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $28
    ld d, d
    ld c, a
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
    ld a, [$eff7]

jr_042_4e18:
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c

jr_042_4e23:
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_4e9b

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
    ld [hl-], a
    ld b, l
    ld c, e
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
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
    jr nc, jr_042_4ed0

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    ld a, [$eff7]

jr_042_4e9b:
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, h
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_4f11

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $45
    ld c, h
    ld b, e

jr_042_4ed0:
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
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, c
    ld h, h
    jr z, @+$51

    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_4f4f

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a

jr_042_4f11:
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
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a

jr_042_4f4f:
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
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
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
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
    and h
    ld a, [$eff7]
    xor $67
    daa
    ld a, $50
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, h
    scf
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
    jr z, jr_042_500d

    ld c, e
    ld h, h
    ld c, b
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, b
    rst $28
    xor $41
    ld a, $50
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
    xor $44
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld a, $52
    ld c, d
    ld h, h
    ld b, h
    ld b, d
    sbc h
    rst $28
    xor $44
    ld c, a
    ld e, l
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67

jr_042_500d:
    jr z, @+$41

    ld b, d
    ld c, e
    ld d, b
    ld c, h
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    cpl
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld c, a
    ld e, l
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    inc l
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    rst $28
    xor $44
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
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
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
    ld h, h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, @+$4e

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
    rst $28
    xor $28
    ld c, a
    ld b, c
    ccf
    ld b, d
    ccf
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    rst $28
    xor $25
    ld b, d
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld a, $52
    ld c, d
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
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
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    jr nc, jr_042_51a9

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $4d
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
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
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
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

jr_042_51a9:
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld c, b
    ld a, $52
    ld c, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, l
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    rst $28
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld a, $5e
    ld h, h
    ld c, d
    ld a, $4b
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
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld c, h
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld d, b
    ld c, h
    rst $28
    xor $54
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    ld h, h
    ld a, [$eff7]
    xor $67
    jr z, jr_042_527c

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    rst $28
    xor $24
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    jr nc, jr_042_5282

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $67
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a

jr_042_527c:
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $41

jr_042_5282:
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    sbc h
    rst $28
    xor $3f
    ld c, a
    ld a, $40
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
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_5308

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
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
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
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, h
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld b, e
    ld b, [hl]
    ld c, e

jr_042_5308:
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_5366

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $45
    ld c, h
    ld b, e
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
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, c
    ld h, h
    jr z, jr_042_5393

    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_53a4

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a

jr_042_5366:
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    dec l
    ld a, $45
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
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    rst $28
    xor $37
    ld d, d

jr_042_5393:
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
    inc h
    ccf
    ld b, d

jr_042_53a4:
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $51
    ld d, c
    ld h, l
    ld h, h
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
    jr z, jr_042_554b

    ld c, e
    ld h, h
    scf
    ld a, $44
    and h
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
    and h
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

jr_042_554b:
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
    ld [hl], $4c
    ld c, c
    ld c, c
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
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    ld h, h
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $57
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
    add hl, sp
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
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
    inc h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    scf
    ld a, $44
    rst $28
    xor $43
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $41
    ld b, d
    ld c, d
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
    xor $49
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    cpl
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
    ld [hl], $4c
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    inc h
    ld b, l
    ld c, e
    ld b, d
    ld c, e
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
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
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
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld d, c
    ld c, a
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $3a
    ld b, d
    ld c, c
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
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, c
    ld c, h
    ld c, h
    ld b, e
    ld h, b
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $4b
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    scf
    ld d, [hl]
    ld c, l
    ld h, c
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
    ld [hl], $46
    ld b, d
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
    sbc h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    jr nc, @+$4e

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
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld c, b
    ld e, l
    ld c, d
    ld c, d
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
    ld c, d
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
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld b, l
    ld c, h
    ld c, c
    ld d, c
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld c, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld a, $3f
    ld d, c
    ld b, d
    ld c, e
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
    inc h
    ld b, l
    ld a, $66
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
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    sbc h
    rst $28
    xor $51
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
    ld h, c
    ld h, c
    ld h, c
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
    ld b, d
    ld b, l
    ld b, d
    ld h, b
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ccf
    ld b, d
    sbc h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $51
    ld e, l
    ld b, b
    ld c, b
    ld a, [$eff7]
    xor $29
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld h, [hl]
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
    ld a, $50
    ld h, h
    ld [hl], $40
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, c
    ld a, [$eff7]
    xor $67
    add hl, sp
    ld c, h
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, h
    ld sp, $4046
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, l
    ld h, h
    jr z, jr_042_5a29

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld h, h
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
    ld a, $50
    ld d, b
    ld b, d
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2f
    ld c, h
    ld b, b
    ld b, l
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
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4f
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, l
    ld h, a

jr_042_5a29:
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
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, e
    ld e, l
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
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
    ld a, $50
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, c
    ld a, [$eff7]
    xor $67
    jr z, jr_042_5aba

    ld h, h
    ccf
    ld b, d
    ccf
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    rst $28
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
    ld a, [$eff7]
    xor $67
    daa
    ld a, $50
    ld h, h
    cpl
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld b, d
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld d, b
    rst $28
    xor $3a
    ld a, $40
    ld b, l
    ld d, b
    ld d, c

jr_042_5aba:
    ld d, d
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $67
    daa
    ld a, $50
    ld h, h
    cpl
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $49
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    dec h
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
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld b, l
    ld a, $51
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
    ld a, [$eff7]
    xor $43
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
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld h, b
    ld h, h
    jr nc, jr_042_5b69

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $2b
    ld c, d
    ld h, [hl]
    ld h, h
    ld [hl-], a
    ccf
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld a, $4b
    ld b, h
    ld b, d
    ld c, c
    ld c, e
    rst $28
    xor $48
    ld a, $4b
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d

jr_042_5b69:
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $29
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, l
    ld b, e
    ld h, h
    ld c, c
    ld b, d
    ld b, h
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
    ld b, a
    ld a, $64
    ld a, $3f
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, $4b
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld a, $52
    ld b, d
    ld c, e
    ld h, c
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
    ld a, [$f0f7]
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
    scf
    ld c, h
    ld c, l
    ld b, e
    ld h, c
    ld a, [$eff7]
    xor $39
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    jr nc, jr_042_5c5b

    ld c, c
    ld c, c
    ld h, c
    rst $28
    xor $f7
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
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $52
    ld c, d
    ld h, h
    jr nc, jr_042_5c69

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld b, l
    ld c, c
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
    rst $28
    xor $4d
    ld c, c
    ld a, $51
    ld d, c
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $36

jr_042_5c5b:
    ld b, b
    ld b, l
    ld c, e
    ld e, l
    ld b, e
    ld b, e
    and h
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, e
    ld e, l

jr_042_5c69:
    ld b, e
    ld b, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, b
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
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld b, c
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
    daa
    ld d, d
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
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
    ld b, [hl]
    ld c, e
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_042_5d13

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $61
    ld h, h
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_5d38

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
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_042_5d59

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28

jr_042_5d13:
    xor $3f
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$f0f7]
    db $eb
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
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, c
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld c, b

jr_042_5d38:
    ld e, l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $52
    ld c, d
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
    ld h, c
    ld h, a
    rst $28
    xor $fa

jr_042_5d59:
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $53
    ld c, h
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, h
    ld b, d
    sbc h
    ld a, [$eff7]
    xor $45
    ld e, h
    ld c, a
    ld d, c
    ld h, c
    ld h, h
    ld sp, $4a46
    ld c, d
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld [hl-], a
    ccf
    ld d, h
    ld c, h
    ld b, l
    ld c, c
    ld h, b
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
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
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3e
    ld c, c
    ld d, c
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_042_5e22

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr z, jr_042_5e2f

    ld c, e
    ld h, h
    jr nc, jr_042_5e39

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld c, h
    ld c, d
    ld h, h
    ld c, c
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, h
    ld [hl], $42
    ld b, [hl]
    ld c, e
    rst $28
    xor $31
    ld a, $4a
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]

jr_042_5e22:
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr c, jr_042_5e75

    ld h, h
    ld b, c
    ld b, d
    ld c, e

jr_042_5e2f:
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, d
    ld c, e
    ld b, d
    ld b, l

jr_042_5e39:
    ld c, d
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld e, e
    ld b, l
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    sbc h
    rst $28
    xor $43
    ld a, $40
    ld b, l
    ld h, h
    inc h
    dec h
    dec hl
    ld [hl-], a
    cpl
    jr z, jr_042_5e8d

    ld h, c
    ld h, a
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
    ld [hl], $49
    ld b, [hl]
    ld c, h
    ld h, c
    rst $28
    xor $36
    ld c, c
    ld b, [hl]

jr_042_5e75:
    ld c, d
    ld d, b
    ld h, h
    jr z, jr_042_5ec5

    ld c, b
    ld b, d
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c

jr_042_5e8d:
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
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
    ld [hl], $49
    ld b, [hl]
    ld c, h
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

jr_042_5ec5:
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld bc, $fa09
    rst $30
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
    rst $28
    xor $28
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld a, $3f
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    sbc h
    rst $28
    xor $4a
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
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
    ld c, l
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld c, h
    ld b, e
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
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
    ld h, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    rst $28
    xor $49
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $27
    ld a, $4b
    ld c, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, e
    ld h, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld d, d
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld bc, $ef09
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
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld d, b
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
    ld h, b
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $51
    ld c, a
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr c, jr_042_60c0

    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_042_60c3

    rst $28
    xor $4a
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ccf
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld [hl], $49
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr z, jr_042_60f4

    ld d, a
    ld b, [hl]
    ld b, d
    ld b, l
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
    ld d, b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c

jr_042_60c0:
    ld b, d
    ld c, a
    ld h, c

jr_042_60c3:
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld [hl], $49
    ld b, [hl]
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
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, b

jr_042_60f4:
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
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    and h
    ld h, l
    ld h, h
    daa
    ld a, $50
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
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld a, [$eff7]
    xor $53
    ld c, h
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
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    and h
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
    ld b, [hl]
    ld b, l
    ld c, e
    ld a, [$eff7]
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
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    jr nc, jr_042_61f2

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, [hl]
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, l
    ld h, l
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
    jr z, jr_042_6221

    ld h, h
    ld b, l
    ld a, $51
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
    ld a, [$eff7]
    xor $43
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d

jr_042_61f2:
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
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, b
    ld h, h
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, l
    rst $28
    xor $25
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $33

jr_042_6221:
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, l
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld d, d
    ld c, d
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, l
    ld d, d
    ld c, e
    ld b, h
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
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, l
    ld h, h
    dec hl
    ld a, $3f
    ld d, c
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $64
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld b, [hl]
    sbc h
    rst $28
    xor $44
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, l
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, l
    ld h, h
    dec hl
    ld c, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, e
    ld c, c
    ld c, h
    ld b, l
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
    jr nc, jr_042_630f

    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld h, l
    rst $28
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    dec hl
    ld c, h
    ld b, [hl]
    ld c, d
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld a, $43
    ld d, c
    ld h, l
    ld h, h
    dec h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    ld a, [$eff7]
    xor $46

jr_042_630f:
    ld b, l
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, e
    ld d, b
    rst $28
    xor $2a
    ld b, d
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld c, e
    ld b, [hl]
    ld d, b
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
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $f6
    ld h, l
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $2b
    ld c, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld b, [hl]
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
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $ef
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld d, d
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
    ld a, [hl+]
    ld d, d
    ld d, c
    ld h, l
    ld h, h
    jr nc, jr_042_63f2

    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, b
    ld h, h
    or $65
    ld h, a
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld c, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld b, h
    ld b, [hl]
    ld c, e
    ld b, h
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld a, $4f
    ld d, c
    ld d, c
    ld c, h
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld e, h
    ld c, a

jr_042_63f2:
    ld d, c
    ld h, [hl]
    rst $28
    xor $f6
    ld h, l
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld a, $4f
    ld d, c
    ld d, c
    ld c, h
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
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $43
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, [hl]
    ld c, d
    ld h, h
    ccf
    ld c, a
    ld b, [hl]
    ld c, e
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
    ld e, c
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld d, d
    ld b, l
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, $4b
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
    xor $30
    ld b, [hl]
    ld c, e
    ld b, [hl]
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
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    ld b, e
    ld c, h
    ld c, a
    sbc h
    rst $28
    xor $4a
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld d, h
    ld a, $4f
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, a
    ld c, h
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld c, h
    ld c, c
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    dec hl
    ld c, h
    ld b, [hl]
    ld c, d
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld a, $4f
    ld d, c
    ld d, c
    ld c, h
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
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    jr z, jr_042_6595

    ld b, b
    ld b, l
    ld h, b
    rst $28
    xor $f6
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_042_65af

    ld b, h
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_042_659a

    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    jr z, jr_042_65b9

    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
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
    scf
    ld c, h
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
    scf
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $57
    ld d, d
    ld c, a
    ld h, h
    ld a, $4b

jr_042_6595:
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e

jr_042_659a:
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, b
    ld d, c
    ld h, h

jr_042_65af:
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $ef
    xor $41
    ld d, d
    ld c, a

jr_042_65b9:
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld c, c
    ld a, $4b
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld b, [hl]
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
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_042_667b

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
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    or $65
    rst $28
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
    and h
    ld h, a

jr_042_667b:
    ld a, [$eff7]
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $61
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    scf
    ld b, [hl]
    ld c, l
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    jr nc, jr_042_66fb

    ld c, e
    ld e, l
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
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld c, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_042_6738

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

jr_042_66fb:
    ld b, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $2b
    ld c, h
    ld b, [hl]
    ld c, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l

jr_042_6738:
    ld c, e
    ld b, d
    ld c, c
    ld c, c
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
    ld h, h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld a, [hl-]
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
    xor $4a
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld e, h
    ld d, b
    ld b, d
    ld h, h
    cpl
    ld e, h
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, a
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
    xor $36
    ld d, c
    ld d, d
    ld b, e
    ld b, d
    ld h, h
    ccf
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
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
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2e
    ld a, $4f
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld b, d
    ld b, l
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
    ld h, h
    ld b, c
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld [hl], $28
    cpl
    jr z, jr_042_6876

    scf
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $41
    ld a, $4b
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d

jr_042_6876:
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
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
    ld h, h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, c
    ld a, $4a
    ld b, [hl]
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld c, a
    ld b, h
    ld d, b
    ld a, $4a
    ld h, h
    ld d, d
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_042_6927

    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld [bc], a
    nop
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld a, [$eff7]
    xor $44
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, h
    rst $28
    xor $51
    ld c, a
    ld a, $44
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

jr_042_6927:
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $49
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld b, d
    ld h, h
    dec hl
    ld c, h
    ld b, [hl]
    ld c, d
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
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld b, e
    ld c, c
    ld c, h
    ld b, l
    ld b, d
    ld c, e
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
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld b, d
    ld h, h
    scf
    ld e, l
    ld c, a
    rst $28
    xor $43
    ld e, l
    ld b, l
    ld c, a
    ld d, c
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld h, c
    ld h, a
    ld h, h
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
    ld h, l
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
    xor $37
    ld c, h
    ld c, a
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
    ld a, [$eff7]
    xor $27
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $36
    ld d, c
    ld a, $4f
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld c, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld a, $64
    ld b, c
    ld c, a
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $60
    ld h, h
    ld d, e
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
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    scf
    ld a, $40
    ld b, l
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
    xor $2b
    ld c, h
    ld b, [hl]
    ld c, d
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
    ld h, h
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $31
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld c, c
    ld a, $5e
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld b, h
    ld d, d
    ld d, c
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
    daa
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $57
    ld d, d
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
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $44
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    or $65
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
    dec hl
    ld c, h
    ld b, [hl]
    ld c, d
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    dec hl
    ld c, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
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
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
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
    xor $24
    ld b, l
    ld a, $a4
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    jr z, jr_042_6c01

    rst $28
    xor $4a
    ld c, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    jr z, jr_042_6c0f

    ld b, b
    ld b, l
    ld h, l
    ld a, [$eff7]
    xor $29
    ld a, $50
    ld d, a
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld b, c
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
    ld a, $44
    rst $28
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    daa
    ld a, $43
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b

jr_042_6c01:
    ld b, l
    ld h, h
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    inc sp

jr_042_6c0f:
    ld c, a
    ld b, [hl]
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
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $48
    ld a, $4b
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
    or $61
    rst $28
    xor $2a
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, a
    ld d, d
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
    xor $28
    ld d, d
    ld c, a
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
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
    ld a, [hl+]
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $41
    ld c, h
    ld c, a
    ld d, c
    ld h, b
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
    ld d, c
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    jr z, jr_042_6d19

    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld e, l
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
    ld h, c
    rst $28
    xor $37
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d

jr_042_6d19:
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    ld [hl], $49
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    or $65
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
    xor $36
    ld c, c
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld h, h
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
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
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
    jr c, jr_042_6dbb

    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
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
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a

jr_042_6dbb:
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
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
    ld h, b
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $4a
    ld a, $4b
    ld h, h
    ld a, $4a
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
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, h
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_042_6e5c

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
    jr c, jr_042_6e8d

    ld b, c
    ld h, h
    ld b, c
    ld c, a
    ld a, $52
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $41
    ld d, c
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]

jr_042_6e5c:
    ld d, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ld c, a
    ld d, d
    ld c, e
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
    ld b, d

jr_042_6e8d:
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
    xor $36
    ld d, c
    ld a, $41
    ld d, c
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
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $43
    ld e, l
    ld b, l
    ld c, a
    ld d, c
    ld h, h
    ld d, a
    ld d, d
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
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec [hl]
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld [hl], $4d
    ld a, $5e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $60
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld a, $49
    ld d, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
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
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld l, b
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
    ld d, b
    ld c, h
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld b, d
    ld c, l
    ld c, l
    ld b, d
    rst $28
    xor $4f
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $46
    ld c, e
    ld d, b
    ld h, h
    ld l, $4c
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
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
    xor $4a
    ld a, $49
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld b, e
    ld d, d
    ld c, e
    ld b, c
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
    ld d, h
    ld a, $4f
    ld h, b
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $37
    ld c, h
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $65
    ld h, h
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    inc l
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, a
    ld a, $51
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
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $4a
    ld a, $4b
    ld h, h
    ld a, $3f
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, $4b
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld b, d
    ld c, e
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
    daa
    ld a, $64
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, e
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $4a
    ld a, $4b
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    scf
    ld c, h
    ld c, a
    ld b, d
    rst $28
    xor $3e
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, $52
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_042_7153

    ld c, e
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    dec [hl]
    ld e, e
    ld d, d
    ld c, d
    ld b, d
    rst $28
    xor $5c
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
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
    ld h, c

jr_042_7153:
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld c, d
    ld a, $49
    ld b, [hl]
    ld b, h
    ld b, d
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld d, b
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
    ld d, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, l
    ld a, $51
    ld h, h
    ld d, b
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
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld d, c
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, b
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    jr nc, jr_042_7230

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld c, h
    ld c, c
    ld d, c
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
    jr nc, jr_042_7250

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
    rst $28
    xor $28
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l

jr_042_7230:
    ld a, $43
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_042_728b

    ld b, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $5b
    ld c, e
    ld b, c
    ld b, d

jr_042_7250:
    ld c, a
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $47
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld b, d
    ld c, d
    ld h, h
    inc sp
    ld c, c
    ld a, $4b
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
    cpl
    ld [hl-], a
    ld [hl], $65
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c

jr_042_728b:
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
    ld c, d
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
    daa
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    add hl, sp
    jr z, jr_042_72e9

    ld [hl], $38
    ld h, $2b
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld d, b
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
    ld c, c
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
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    inc sp
    inc h
    ld [hl], $36
    inc l

jr_042_72e9:
    add hl, sp
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld d, e
    ld c, h
    ld c, c
    ld c, c
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
    jr nc, jr_042_7356

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    rst $28
    xor $2b
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld l, b
    ld c, e
    ld h, h
    jr z, @+$48

    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$33]
    ld c, c
    ld a, $51
    ld d, b
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    or $ef
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, d
    ld h, h
    ld l, $4c
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, c
    ld c, a
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld h, c

jr_042_7356:
    rst $28
    xor $f7
    ldh a, [$33]
    ld c, c
    ld c, h
    ld c, l
    ld c, l
    ld h, l
    ld h, h
    or $ef
    xor $43
    ld a, $4b
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, @+$48

    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld [hl], $48
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
    ld h, l
    rst $28
    xor $fa
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
    xor $41
    ld a, $50
    ld h, h
    jr z, jr_042_73da

    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $36
    ld c, b
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
    ld h, l
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_042_7405

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
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27

jr_042_73da:
    ld a, $50
    ld h, h
    jr z, jr_042_7425

    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $f7
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a

jr_042_7405:
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $53
    ld c, h
    ld c, c
    ld c, c
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    jr z, @+$48

    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $4a

jr_042_7425:
    ld a, $4b
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    jr z, jr_042_748f

    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, h
    ld a, $52
    ld b, e
    sbc h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld d, c
    ld h, c
    rst $28
    xor $fa
    rst $30
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
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
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

jr_042_748f:
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld c, b
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, c
    rst $30
    ldh a, [$3a]
    ld a, $51
    ld d, b
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    or $ef
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, d
    ld h, h
    ld l, $4c
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, c
    ld c, a
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld d, b
    ld c, h
    ld c, a
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $29
    ld d, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld [hl], $40
    ld b, l
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $31
    ld d, d
    ld b, h
    ld b, h
    ld b, d
    ld d, c
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
    add hl, hl
    ld d, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
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
    xor $3e
    ld c, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_042_7580

    ld b, c
    ld h, h
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
    ld b, c
    ld a, $50
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b

jr_042_7580:
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    add hl, hl
    ld b, [hl]
    ld c, c
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
    jr nc, jr_042_75eb

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld e, h
    ld b, l
    ld c, e
    ld d, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    sbc h
    rst $28
    xor $44
    ld b, d
    ld c, e
    ld c, h
    ld c, d
    ld c, d
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
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_042_7632

    ld b, c
    ld h, h
    ld d, h
    ld b, d

jr_042_75eb:
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
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    dec h
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_042_765d

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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h

jr_042_7632:
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld e, h
    ld b, l
    sbc h
    rst $28
    xor $4b
    ld b, d
    ld c, e
    ld h, h
    ld d, b
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
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e

jr_042_765d:
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $29
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
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
    scf
    ld a, $40
    ld b, l
    ld h, l
    ld h, h
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
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
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ld c, a
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, d
    ld d, b
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
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
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    rst $28
    xor $43
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $48
    ld d, [hl]
    sbc h
    ld a, [$eff7]
    xor $41
    ld c, a
    ld a, $48
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld b, l
    ld c, d
    ld h, l
    ld h, h
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld c, l
    ld a, $50
    sbc h
    ld a, [$eff7]
    xor $50
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, c
    ld h, h
    ld a, [hl-]
    ld a, $50
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld a, $40
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld c, d
    rst $28
    xor $36
    ld c, b
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $4d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, e
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $24
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
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
    ld l, b
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $3a
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
    ld a, [$eff7]
    xor $42
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
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
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $50
    ld d, c
    ld e, l
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
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
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
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
    or $60
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $36
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    inc h
    ld h, b
    ld h, h
    dec hl
    inc h
    ld h, b
    ld h, h
    dec hl
    inc h
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld a, $50
    ld d, b
    ld l, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    cpl
    ld a, $5e
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
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
    ld l, $49
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    jr c, jr_042_7a14

    inc h
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
    inc sp
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    rst $28
    xor $33
    ld c, c
    ld e, e
    ld c, e
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, h
    ld a, $49
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l

jr_042_7a14:
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $44
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    and h
    ld h, a
    ld h, h
    rst $30
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
    ld b, l
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, l
    rst $28
    xor $24
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_042_7a85

    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld a, $40
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec hl
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    ld h, l

jr_042_7a85:
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
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld l, $4f
    ld a, $43
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld l, $4f
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
    jr c, jr_042_7b11

    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, l
    ld d, c
    ld d, a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, e
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
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_042_7b35

    ld c, e
    ld h, h
    daa
    ld c, a
    ld a, $52
    ld b, e
    ld b, h
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    rst $28
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
    ld d, d
    ld c, e
    ld d, e
    ld c, h
    ld c, a
    sbc h
    ld a, [$eff7]

jr_042_7b11:
    xor $50
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
    jr z, jr_042_7b75

    ld h, h
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $36

jr_042_7b35:
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, h
    daa
    ld a, $45
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $43
    ld e, l
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld b, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, l
    ld h, a
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

jr_042_7b75:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
