; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

    ld c, h
    reti


    ld b, d
    db $eb
    ld b, d
    ld a, [c]
    ld b, d
    ld sp, hl
    ld b, d
    add hl, de
    ld b, b
    dec d
    ld b, d
    dec sp
    ld b, d
    ld c, c
    ld b, d
    ld e, e
    ld b, d
    ld h, e
    ld b, d
    sbc l
    ld b, d
    rst $10
    ld b, d
    dec c
    ld b, e
    ld h, $43
    ld b, a
    ld b, e
    ld [hl], e
    ld b, e
    sbc c
    ld b, e
    cp l
    ld b, e
    db $e3
    ld b, e
    ld sp, hl
    ld b, e
    db $10
    ld b, h
    cpl
    ld b, h
    ld c, d
    ld b, h
    ld h, a
    ld b, h
    adc e
    ld b, h
    and e
    ld b, h
    pop bc
    ld b, h
    pop hl
    ld b, h
    rst $28
    ld b, h
    ld [bc], a
    ld b, l
    dec de
    ld b, l
    ld [hl-], a
    ld b, l
    ld b, h
    ld b, l
    ld d, h
    ld b, l
    ld h, d
    ld b, l
    ld a, h
    ld b, l
    and e
    ld b, l
    or d
    ld b, l
    call c, $1545
    ld b, [hl]
    ld c, a
    ld b, [hl]
    adc c
    ld b, [hl]
    xor l
    ld b, [hl]
    ld [c], a
    ld b, [hl]
    dec d
    ld b, a
    ld b, a
    ld b, a
    ld a, c
    ld b, a
    adc c
    ld b, a
    sbc d
    ld b, a
    xor l
    ld b, a
    cp l
    ld b, a
    call z, $e047
    ld b, a
    rst $28
    ld b, a
    db $fc
    ld b, a
    db $10
    ld c, b
    jr z, jr_04c_40bb

    add hl, sp
    ld c, b
    ld e, e
    ld c, b
    ld [hl], d
    ld c, b
    adc [hl]
    ld c, b
    or e
    ld c, b
    ret z

    ld c, b
    jp c, $fe48

    ld c, b
    inc de
    ld c, c
    ld b, a
    ld c, c
    ld e, e
    ld c, c
    ld [hl], e
    ld c, c
    adc e
    ld c, c
    xor b
    ld c, c
    call $e749
    ld c, c
    nop
    ld c, d
    inc e
    ld c, d
    scf
    ld c, d
    ld c, a
    ld c, d
    sub c
    ld c, d
    xor d
    ld c, d
    jp nz, $d04a

    ld c, d
    push hl
    ld c, d
    rlca
    ld c, e
    dec h
    ld c, e
    dec a
    ld c, e
    ld c, e
    ld c, e
    ld a, h
    ld c, e
    sub l
    ld c, e
    or l
    ld c, e
    rst $10
    ld c, e
    inc b
    ld c, h
    ld sp, $4c4c
    ld c, h

jr_04c_40bb:
    ld h, h
    ld c, h
    ld [hl], l
    ld c, h
    or h
    ld c, h
    and $4c
    ld [bc], a
    ld c, l
    jr nz, jr_04c_4114

    ld d, b
    ld c, l
    ld a, [hl]
    ld c, l
    sub d
    ld c, l
    call z, $f34d
    ld c, l
    inc h
    ld c, [hl]
    jr nc, @+$50

    ld b, c
    ld c, [hl]
    ld e, d
    ld c, [hl]
    ld a, e
    ld c, [hl]
    sbc e
    ld c, [hl]
    call $064e
    ld c, a
    inc sp
    ld c, a
    ld h, d
    ld c, a
    sub [hl]
    ld c, a
    call $f24f
    ld c, a
    ld a, [de]
    ld d, b
    ld [hl-], a
    ld d, b
    ld d, h
    ld d, b
    ld a, d
    ld d, b
    and b
    ld d, b
    or [hl]
    ld d, b
    rst $18
    ld d, b
    db $10
    ld d, c
    ld b, a
    ld d, c
    ld h, e
    ld d, c
    ld a, d
    ld d, c
    pop bc
    ld d, c
    ld a, [$1851]
    ld d, d
    jr nc, jr_04c_415b

    ld d, l
    ld d, d
    ld l, [hl]
    ld d, d
    add [hl]
    ld d, d
    and b
    ld d, d
    jp nc, $0852

jr_04c_4114:
    ld d, e
    dec [hl]
    ld d, e
    ld e, b
    ld d, e
    add a
    ld d, e
    sbc b
    ld d, e
    or h
    ld d, e
    ret z

    ld d, e
    call c, $ef53
    ld d, e
    inc c
    ld d, h
    add hl, sp
    ld d, h
    ld h, [hl]
    ld d, h
    add e
    ld d, h
    and d
    ld d, h
    ret nz

    ld d, h
    db $e4
    ld d, h
    dec b
    ld d, l
    dec de
    ld d, l
    ld l, $55
    ld b, e
    ld d, l
    ld h, d
    ld d, l
    ld a, [hl]
    ld d, l
    xor e
    ld d, l
    adc $55
    jp hl


    ld d, l
    dec de
    ld d, [hl]
    ld c, e
    ld d, [hl]
    db $76
    ld d, [hl]
    sub d
    ld d, [hl]
    cp l
    ld d, [hl]
    rst $20
    ld d, [hl]
    db $10
    ld d, a
    add hl, hl
    ld d, a
    ld c, d
    ld d, a
    ld h, e
    ld d, a
    adc e
    ld d, a

jr_04c_415b:
    sbc l
    ld d, a
    cp d
    ld d, a
    rst $10
    ld d, a
    db $ec
    ld d, a
    inc de
    ld e, b
    jr nc, jr_04c_41bf

    ccf
    ld e, b
    ld e, [hl]
    ld e, b
    ld a, d
    ld e, b
    or l
    ld e, b
    jp z, $df58

    ld e, b
    rrca
    ld e, c
    ld [hl-], a
    ld e, c
    ld c, e
    ld e, c
    ld l, l
    ld e, c
    adc c
    ld e, c
    and l
    ld e, c
    cp d
    ld e, c
    rst $08
    ld e, c
    ld [$fd59], a
    ld e, c
    dec l
    ld e, d
    ld e, l
    ld e, d
    ld [hl], h
    ld e, d
    adc [hl]
    ld e, d
    cp d
    ld e, d
    call $e05a
    ld e, d
    push af
    ld e, d
    ld de, $115b
    ld e, e
    add hl, sp
    ld e, e
    ld d, e
    ld e, e
    ld [hl], b
    ld e, e
    ld a, [hl]
    ld e, e
    and e
    ld e, e
    cp d
    ld e, e
    pop hl
    ld e, e
    pop af
    ld e, e
    ld b, $5c
    jr nz, jr_04c_420b

    ld a, [hl-]
    ld e, h
    ld d, l
    ld e, h
    ld l, a
    ld e, h
    add [hl]
    ld e, h
    sbc e
    ld e, h
    xor [hl]
    ld e, h
    ret


    ld e, h
    sbc $5c

jr_04c_41bf:
    pop af
    ld e, h
    cp $5c
    ld a, [de]
    ld e, l
    ld l, $5d
    ld c, d
    ld e, l
    ld e, a
    ld e, l
    ld [hl], l
    ld e, l
    sub b
    ld e, l
    or c
    ld e, l
    push bc
    ld e, l
    db $dd
    ld e, l
    rst $30
    ld e, l
    jr jr_04c_4237

    dec [hl]
    ld e, [hl]
    ld c, d
    ld e, [hl]
    ld h, c
    ld e, [hl]
    ld a, h
    ld e, [hl]
    adc a
    ld e, [hl]
    sbc h
    ld e, [hl]
    jp $d95e


    ld e, [hl]
    db $ed
    ld e, [hl]
    nop
    ld e, a
    dec d
    ld e, a
    inc sp
    ld e, a
    ld b, [hl]
    ld e, a
    ld e, l
    ld e, a
    ld a, c
    ld e, a
    sub l
    ld e, a
    xor h
    ld e, a
    call z, $ec5f
    ld e, a
    db $10
    ld h, b
    dec [hl]
    ld h, b
    ld h, a
    ld h, b
    adc a
    ld h, b
    and l
    ld h, b
    add $60

jr_04c_420b:
    and $60
    dec b
    ld h, c
    jr z, jr_04c_4272

    ld d, a
    ld h, c
    adc h
    ld h, c
    xor c
    ld h, c
    cp d
    ld h, c
    push de
    ld h, c
    pop af
    ld h, c
    ld [hl+], a
    ld h, d
    ld d, e
    ld h, d
    adc h
    ld h, d
    ret nc

    ld h, d
    inc d
    ld h, e
    ld e, b
    ld h, e
    ld a, c
    ld h, e
    and d
    ld h, e
    call $f663
    ld h, e
    ld [hl+], a
    ld h, h
    ld c, a
    ld h, h
    ld a, h
    ld h, h

jr_04c_4237:
    xor c
    ld h, h
    db $dd
    ld h, h
    ld a, [bc]
    ld h, l
    dec h
    ld h, l
    dec h
    ld h, l
    ld c, a
    ld h, l
    adc c
    ld h, l
    sbc c
    ld h, l
    and h
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    cp d
    ld h, l
    jp z, $e865

    ld h, l
    inc b
    ld h, [hl]
    ld [hl-], a
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    ld e, [hl]
    ld h, [hl]
    ld a, d
    ld h, [hl]
    adc d
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    and e
    ld h, [hl]
    or [hl]

jr_04c_4272:
    ld h, [hl]
    pop de
    ld h, [hl]
    jp hl


    ld h, [hl]
    ld c, $67
    ld hl, $3d67
    ld h, a
    ld d, b
    ld h, a
    ld e, a
    ld h, a
    ld l, h
    ld h, a
    add l
    ld h, a
    adc [hl]
    ld h, a
    sbc [hl]
    ld h, a
    xor d
    ld h, a
    or e
    ld h, a
    add $67
    rst $08
    ld h, a
    ret c

    ld h, a
    and $67
    ld a, [$0567]
    ld l, b
    add hl, de
    ld l, b
    inc h
    ld l, b
    dec h
    ld l, b
    ld sp, $4968
    ld l, b
    ld e, c
    ld l, b
    ld l, d
    ld l, b
    ld l, e
    ld l, b
    adc e
    ld l, b
    or l
    ld l, b
    rst $08
    ld l, b
    pop hl
    ld l, b
    ld [c], a
    ld l, b
    or $68
    dec b
    ld l, c
    inc d
    ld l, c
    ld [hl], $69
    ld b, a
    ld l, c
    ld d, c
    ld l, c
    ld a, [hl]
    ld l, c
    and [hl]
    ld l, c
    and a
    ld l, c
    or h
    ld l, c
    rst $28
    ld l, c
    scf
    ld l, d
    ld a, e
    ld l, d
    adc e
    ld l, d
    sbc c
    ld l, d
    or l
    ld l, d
    push bc
    ld l, d
    reti


    ld l, d
    dec c
    ld l, e

Call_04c_42d9:
    ld a, [$c823]
    cp $ff
    ret z

    ld de, $4009
    call $05b6
    ld a, $ff
    ld [$c823], a
    ret


    ld de, $4009
    call $05f6
    ret


    call Call_04c_42d9
    call $0609
    ret


    ld a, [$dd6d]
    add $d7
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_04c_42d9
    xor a
    ld [$dd6d], a
    ret


    ld sp, hl
    nop
    ld h, h
    jr c, jr_04c_435d

    ld b, h
    ld b, d
    ld d, c
    ld e, l
    ld c, d
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
    db $fc
    db $10
    db $ec
    ldh a, [rNR50]
    ld b, b
    ld b, l
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    ld h, h
    ld sp, hl
    nop
    pop af
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
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
    db $fc
    db $10
    db $ec
    ldh a, [rNR50]
    ld b, b
    ld b, l
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    ld h, h
    ld sp, hl
    nop
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld sp, hl
    db $10
    db $fc
    db $10
    db $ec
    ld a, [c]

jr_04c_435d:
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
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
    pop af
    db $fc
    db $10
    db $ec
    ldh a, [rNR50]
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld sp, hl
    nop
    pop af
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
    db $fc
    db $10
    db $ec
    ld a, [c]
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, l
    pop af
    db $fc
    db $10
    db $ec
    ldh a, [rNR50]
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    pop af
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
    ld h, h
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
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
    ld h, h
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld c, a
    ld a, $50
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    pop af
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld c, a
    ld a, $50
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
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
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld c, a
    ld a, $50
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ld c, l
    ld c, c
    ld e, h
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$36]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    pop af
    ld c, l
    ld c, c
    ld e, h
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, l
    db $fc
    db $10
    db $ec
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
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    pop af
    ld c, l
    ld c, c
    ld e, h
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_44dd

    ld d, b
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    pop af
    ld sp, hl
    nop
    ld h, l
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_44f5

    ld d, b
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld sp, hl
    nop
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_4513

    ld d, b
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld h, h
    ld d, e
    ld c, h
    ld c, e
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
    ld c, e
    ld h, l

jr_04c_44dd:
    db $fc
    db $10
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, [hl]
    ld d, b

jr_04c_44f5:
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld b, l
    ld a, $4f
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h

jr_04c_4513:
    ld [hl], $51
    ld a, $45
    ld c, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld b, h
    ld b, d
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, c
    ld a, $4b
    ld d, a
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, a
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    pop af
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld a, $4a
    ld h, h
    dec h
    ld c, h
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld b, e
    ld e, l
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, a
    ld b, d
    ld b, h
    ld c, c
    ld c, h
    ld d, b
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld b, e
    ld a, $52
    ld c, c
    ld b, d
    ld c, e
    ld d, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    ld sp, hl
    nop
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec hl
    inc sp
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    db $10
    pop af
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    jr nc, jr_04c_469b

    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    db $10
    pop af
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, h
    ld a, $4b
    ld h, l
    db $fc

jr_04c_469b:
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_46dc

    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
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
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    pop af
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h

jr_04c_46dc:
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
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
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    daa
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
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
    db $ec
    ldh a, [$ed]
    ld sp, hl
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
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_04c_4786

    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld b, e
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, c
    ld a, $4b
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld e, e
    ld c, e
    ld d, a
    ld b, d
    pop af
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
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
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ld a, $4b

jr_04c_4786:
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
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
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, h
    ld a, $4b
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld c, l
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, c
    ld a, $4b
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, e
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld d, c
    ld h, h
    ld a, $3f
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    pop af
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    ld h, c
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    pop af
    ld a, $4b
    ld h, h
    ld sp, hl
    jr nz, jr_04c_4886

    ld c, a
    ld a, $4b
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, c
    ld a, $40
    ld c, b
    ld b, d
    ld c, c
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_04c_489c

    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld e, l
    ccf
    ld d, c
    pop af
    ld l, $3e
    ld c, d
    ld b, [hl]
    ld c, b
    ld a, $57
    ld b, d
    ld a, $4b
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $52
    ld d, b
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld d, c
    ld e, l
    ld c, a
    ld c, d
    ld d, c
    pop af
    ld a, $52
    ld b, e
    ld h, h
    ld sp, hl
    jr nz, jr_04c_48d1

    ld d, a
    ld d, d
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    pop af
    ld e, l
    ccf
    ld b, d
    ld c, a

jr_04c_4880:
    ld h, h
    ld sp, hl
    jr nz, jr_04c_4880

    db $10
    db $ec

jr_04c_4886:
    ld a, [c]
    ld b, l
    ld b, d
    ld c, a
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e

jr_04c_489c:
    pop af
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld sp, hl
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    jr nz, jr_04c_4911

    ld a, $4b
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    pop af
    ld l, $4f
    ld e, e
    ld b, e
    ld d, c
    ld b, d
    ld h, c
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h

jr_04c_48d1:
    ld d, c
    pop af
    ld b, l
    ld c, h
    ld b, b
    ld b, l
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    pop af
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld e, h
    ld b, l
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld a, $51
    ld c, d
    ld b, d
    ld d, c
    pop af
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c

jr_04c_4911:
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld c, a
    ld d, d
    ld b, e
    ld d, c
    pop af
    add hl, sp
    ld a, $48
    ld d, d
    ld d, d
    ld c, d
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    ld d, e
    ld c, h
    ld c, a
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    add hl, sp
    ld a, $48
    ld d, d
    ld d, d
    ld c, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_04c_49aa

    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld c, a
    ld d, d
    ld b, e
    ld d, c
    pop af
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld c, a
    ld d, d
    ld b, e
    ld d, c
    pop af
    ld c, c
    ld a, $52
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
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
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ccf
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, h
    ld a, $4b
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl

jr_04c_49aa:
    nop
    ld h, h
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ld c, d
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
    ld c, a
    ld b, d
    ld b, [hl]
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $4b
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    add hl, sp
    ld a, $48
    ld d, d
    ld d, d
    ld c, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld c, a
    ld d, d
    ld b, e
    ld d, c
    pop af
    daa
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld c, a
    ld d, e
    ld c, h
    ld c, a
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, e
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    dec hl
    ld e, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld b, c
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    dec h
    ld b, [hl]
    ld b, h
    ld h, h
    dec h
    ld a, $4b
    ld b, h
    ld h, l
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04c_4a9f

    ld b, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    jr c, jr_04c_4abb

    ld c, b
    ld c, h
    ld c, e
    ld d, c
    ld c, a
    ld c, h
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    pop af
    jr nc, jr_04c_4abe

    ld b, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld d, l
    ld c, l
    ld c, c
    ld c, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, e
    ld c, c
    ld e, l
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    db $fc
    db $10
    db $ec

jr_04c_4a9f:
    ld a, [c]
    add hl, hl
    ld c, c
    ld e, l
    ld b, b
    ld b, l
    ld b, d
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    ld [hl], $3e
    ld c, e
    ld b, c
    ld d, b

jr_04c_4abb:
    ld d, c
    ld d, d
    ld c, a

jr_04c_4abe:
    ld c, d
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld d, c
    ld e, e
    ld c, e
    ld d, a
    ld b, d
    ld c, c
    ld d, c
    ld h, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    jr nz, jr_04c_4b47

    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld c, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld b, c
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    jr nz, jr_04c_4b69

    pop af
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, e
    ld b, d
    ld b, h
    ld d, c

jr_04c_4b0e:
    ld h, h
    ld sp, hl
    jr nz, jr_04c_4b0e

    db $10
    db $ec
    ld a, [c]
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld e, l
    ld e, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, d
    ld b, h
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld e, l
    ccf
    ld d, c
    pop af
    jr nc, jr_04c_4b71

    ld b, h
    ld a, $43
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]

jr_04c_4b47:
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ccf
    ld b, d
    ld d, c
    ld h, h
    ld a, $4b
    db $fc
    db $10
    db $ec

jr_04c_4b69:
    ld a, [c]
    ld b, c
    ld a, $50
    ld h, h
    jr z, jr_04c_4bbf

    ld b, c

jr_04c_4b71:
    ld b, d
    ld c, c
    ld b, d
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    dec [hl]
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    ld b, l
    ld b, d
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, b
    ld d, c
    ld c, h
    ld e, [hl]
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, d

jr_04c_4bbf:
    ld e, [hl]
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04c_4c1d

    ld c, e
    ld b, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    pop af
    ld sp, hl
    jr nz, jr_04c_4c3a

    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld c, d
    ld b, d
    ld b, c
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    ld h, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    pop af
    rst $30
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, h
    ld a, $52
    ld d, b
    db $fc
    db $10
    db $ec

jr_04c_4c1d:
    ld a, [c]
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, e
    ld d, b
    ld d, c
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, l
    ld a, $51
    pop af
    ld d, a

jr_04c_4c3a:
    ld d, d
    ld h, h
    jr z, jr_04c_4c89

    ld b, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ccf
    ld b, d
    ld b, l
    ld e, l
    ld d, c
    ld b, d
    ld d, c
    pop af
    ld sp, hl
    jr nz, jr_04c_4cd4

    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ld c, a
    ld c, d
    ld b, d
    ld h, h

jr_04c_4c89:
    ld d, d
    ld c, e
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    pop af
    ld b, c
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
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, c
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
    ld c, e
    ld b, h
    ld c, a

jr_04c_4cd4:
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    pop af
    ld a, $3f
    ld d, a
    ld d, d
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    pop af
    ld a, $52
    ld b, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld h, $45
    ld a, $4b
    ld b, b
    ld b, d
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04c_4d83

    ld c, e
    ld b, c
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, a
    ld d, d
    ld d, b
    ld a, $52
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ccf
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, $4b
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
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
    ld d, c
    ld c, a
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld b, e

jr_04c_4d83:
    ld e, l
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld d, c
    ld e, l
    ld c, a
    ld c, d
    ld d, c
    pop af
    ld a, $52
    ld b, e
    ld h, h
    ld sp, hl
    jr nz, jr_04c_4e08

    ld d, a
    ld d, d
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld b, h
    ld d, b
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, c
    ld c, l
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    pop af
    ld d, b
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
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    db $fc
    db $10
    db $ec
    ld a, [c]
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ld a, $4b
    ld h, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, b
    ld a, $4b

jr_04c_4e08:
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    pop af
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, c
    ld a, $4b
    ld d, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
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
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, e
    ld d, c

jr_04c_4e4a:
    pop af
    ld sp, hl
    jr nz, jr_04c_4e4a

    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    db $10
    ld h, h
    ld d, a
    ld d, d
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec hl
    inc sp
    sbc h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a
    ld e, l
    ld b, l
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld c, a
    ld c, h
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    daa
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld a, $3f
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld b, e
    ld e, e
    ld b, l
    ld c, a
    ld d, c
    pop af
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
    rst $30
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    daa
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $3f
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, sp
    ld a, $48
    ld d, d
    ld d, d
    ld c, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld h, l
    db $ec
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
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    jr nc, jr_04c_4f71

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
    db $ec
    ldh a, [$ed]
    ld sp, hl
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
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    cpl
    ld a, $53
    ld a, $64
    ld b, c
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr z, jr_04c_4fac

    ld b, c
    ld b, d
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    pop af
    ld sp, hl
    db $10

jr_04c_4f71:
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    jr z, jr_04c_4fbe

    ld c, e
    ld h, h
    ld b, d
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
    ccf
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, c
    ld c, h
    ld d, b
    ld h, l
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    daa
    ld b, d

jr_04c_4fac:
    ld c, a
    ld h, h
    ld [hl], $51
    ld a, $3f
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e

jr_04c_4fbe:
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ccf
    ld a, $49
    ld c, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld l, $4f
    ld a, $43
    ld d, c
    ld h, h
    ld a, $4b
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    inc h
    ld d, d
    ld d, b
    ld h, h
    add hl, hl
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, c
    pop af
    ld sp, hl
    nop
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, l
    ld h, h
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    db $ec
    pop af
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
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld c, b
    ld c, h
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    ld l, $4c
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, $4b
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_509d

    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
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
    ld a, $49
    ld d, b
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld [hl], $40
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, l

jr_04c_509d:
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, c
    ld d, d
    ld d, b
    ld d, c
    ld c, c
    ld c, h
    ld d, b
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_5128

    ld c, e
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
    ld b, d
    ld d, b
    pop af
    ld a, [hl-]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ccf
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    inc h
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    pop af
    ld sp, hl
    nop
    ld h, h
    ld d, b

jr_04c_5128:
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld a, $4f
    ld d, a
    ld b, d
    ld c, a
    ld h, h
    ld sp, $3f42
    ld b, d
    ld c, c
    pop af
    ld a, $52
    ld b, e
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    pop af
    ld b, d
    ld c, e
    ld c, h
    ld c, a
    ld c, d
    ld b, d
    ld h, h
    ld l, $4f
    ld e, e
    ld b, e
    ld d, c
    ld b, d
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, l
    ld a, $51
    pop af
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04c_51a5

    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, l
    db $ec
    ldh a, [$ed]
    ld h, a
    jr nc, jr_04c_51d4

    ld d, b
    ld d, c
    ld b, [hl]
    ld c, b
    ld h, h
    jr nc, jr_04c_51db

    ld d, b
    ld d, c
    ld b, [hl]
    ld c, b
    pop af
    jr nc, jr_04c_51e2

    ld d, b
    ld d, c
    ld b, [hl]
    ld c, b
    ld h, h
    jr nc, jr_04c_51e9

    ld d, b
    ld d, c
    ld b, [hl]
    ld c, b
    and h
    ld h, a
    db $fc
    db $10
    db $ec
    ld a, [c]
    db $ed
    daa
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $4d
    ld c, a

jr_04c_51a5:
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $49
    ld c, c
    ld d, c
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr c, jr_04c_5202

    ld b, h
    ld b, d
    ccf
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_520a

    ld c, e
    ld h, h
    ld b, h
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    pop af
    daa

jr_04c_51d4:
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, h
    ld b, d
    ld c, a

jr_04c_51db:
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c

jr_04c_51e2:
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    daa
    ld e, e

jr_04c_51e9:
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld a, $4b
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, l
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    jr z, @+$48

    ld c, e
    ld h, h
    ld c, b
    ld a, $49

jr_04c_5202:
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c

jr_04c_520a:
    pop af
    ld d, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    jr nz, jr_04c_527b

    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld d, b
    ld h, h
    jr nc, jr_04c_5252

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
    db $ec
    ldh a, [$ed]
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld c, e
    ld h, h
    pop af
    ld b, e
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, d
    ld h, h
    dec hl
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, c

jr_04c_5252:
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld b, d
    ld c, c
    ld b, d
    ld b, h
    ld a, $4b
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_52c6

    ld d, a
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h

jr_04c_527b:
    pop af
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, l
    db $ec
    ldh a, [$ed]
    ld [hl], $40
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ld d, a
    ld b, l
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    pop af
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, l
    db $ec
    ldh a, [$ed]
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, h
    ld a, $4b
    ld b, c
    pop af
    ld c, a
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld c, b
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld a, $52
    ccf

jr_04c_52c6:
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a
    ld d, d
    ld b, b
    ld b, l
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    daa
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, h
    ld a, $4b
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, a
    ld b, d
    ld b, e
    ld c, c
    ld b, d
    ld c, b
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    daa
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, d
    ld c, d
    pop af
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, d
    ld b, l
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, c
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
    pop af
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    jr nz, jr_04c_539d

    ld c, c
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    pop af
    ld b, c
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
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    jr nz, jr_04c_53c0

    ld c, b
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    pop af
    ld b, c
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
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld e, l
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b

jr_04c_539d:
    ld a, $52
    ld b, h
    ld d, c
    pop af
    ld b, c
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h

jr_04c_53c0:
    ld sp, hl
    db $10
    ld h, h
    dec hl
    inc sp
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld sp, hl
    db $10
    ld h, h
    dec hl
    inc sp
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld d, b
    pop af
    ld a, [hl-]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, l
    db $ec
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
    ld d, c
    ld e, h
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld d, b
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    db $10
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld d, b
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    db $10
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld d, b
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld d, b
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
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
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    db $10
    ld h, h
    jr nc, jr_04c_54db

    ld h, h
    ld d, e
    ld c, h
    ld c, e
    pop af
    ld sp, hl
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld a, $3f
    ld b, h
    ld b, d
    ld d, b
    ld a, $52
    ld b, h
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    db $10
    ld h, h
    jr nc, jr_04c_54f9

    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld sp, hl
    nop
    db $fc
    db $10
    ld a, [c]
    ld a, $3f
    ld b, h
    ld b, d

jr_04c_54db:
    ld d, b
    ld a, $52
    ld b, h
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld d, b
    pop af
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, c
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld d, c

jr_04c_54f9:
    ld b, d
    ld d, c
    ld h, h
    ld d, b
    ld a, $4b
    ld b, e
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, b
    ld a, $52
    ld b, h
    ld d, c
    ld b, d
    pop af
    ld sp, hl
    db $10
    ld h, h
    jr nc, jr_04c_5548

    ld h, h
    ld a, $3f
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld d, b
    ld h, h

jr_04c_5548:
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, c
    ld c, h
    ld c, l
    ld c, l
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld d, a
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
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
    db $10
    db $fc
    db $10
    db $ec
    ld a, [c]
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, h
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
    db $ec
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
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, l
    ld a, $4f
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $45
    ld c, c
    ld h, l
    db $ec
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
    ld b, l
    ld a, $4f
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $45
    ld c, c
    ld h, l
    db $ec
    ldh a, [$ed]
    inc h
    ld b, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    pop af
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    db $10
    ld h, h
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
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    ld h, l
    db $ec
    ldh a, [rNR50]
    ld b, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    pop af
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    db $10
    ld h, h
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
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, d
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, d
    ld c, d
    pop af
    ld sp, hl
    db $10
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    pop af
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    inc l
    ld c, c
    ld c, c
    ld d, d
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$39]
    ld c, h
    ld c, a
    ld h, h
    ld sp, hl
    nop
    pop af
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
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, c
    ld e, l
    ld c, e
    ld c, e
    ld b, d
    ld h, h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, h
    ld a, $4b
    ld b, c
    ld h, l
    pop af
    db $ec
    ldh a, [$39]
    ld c, h
    ld c, a
    ld h, h
    ld sp, hl
    nop
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, h
    ld a, $4b
    ld b, c
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, l
    pop af
    db $ec
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
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, h
    ld b, d
    ld d, c
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
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
    db $ec
    ldh a, [$ed]
    ld sp, hl
    nop
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
    db $fc
    db $10
    db $ec
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
    db $ec
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
    db $ec
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
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
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
    pop af
    db $ec
    ldh a, [$f9]
    jr nz, jr_04c_57f2

    ld a, $45
    ld c, d
    ld d, c
    pop af
    ld sp, hl
    nop
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, l
    db $ec
    ldh a, [$39]
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld l, $3e
    ld c, d
    ld b, d
    ld c, a
    ld a, $41
    ld b, d
    ld c, e
    pop af
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$36]
    ld a, $4b
    ld b, c
    ld c, b
    ld c, h
    ld c, a
    ld c, e
    ld h, h
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    pop af
    ld sp, hl
    nop
    ld d, b
    ld h, h
    inc h
    ld d, d
    ld b, h
    ld b, d
    ld h, l
    db $ec
    ldh a, [$f9]
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
    ccf
    ld c, c
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a

jr_04c_57f2:
    ld b, c
    ld b, d
    pop af
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    pop af
    ld sp, hl
    db $10
    ld h, h
    jr nc, jr_04c_5855

    db $fc
    db $10
    db $ec
    ld a, [c]
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, c
    ld a, $4b
    ld d, a
    ld d, c
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    pop af
    ld d, a
    ld d, d
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, a

jr_04c_5855:
    ld d, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl+]
    ld e, e
    ld c, e
    ld d, b
    ld b, d
    ld b, l
    ld a, $52
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl+]
    ld e, e
    ld c, e
    ld d, b
    ld b, d
    ld b, l
    ld a, $52
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld sp, hl
    nop
    ld d, b
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    pop af
    ccf
    ld b, d
    ld d, c
    ld c, a
    ld e, e
    ld b, h
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld bc, $ec65
    ldh a, [$f9]
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
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld b, b
    ld c, b
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld b, e
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    pop af
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld sp, hl
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld b, d
    pop af
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld c, b
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, l
    ld a, $51
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld c, b
    ld c, h
    ld c, d
    ld c, l
    ld c, c
    ld b, d
    ld d, c
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld d, d
    ld c, e
    ld b, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld d, b
    ld h, h
    scf
    ld a, $4b
    ld d, a
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
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
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld d, b
    ld h, h
    scf
    ld a, $4b
    ld d, a
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
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
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld d, b
    ld h, h
    jr nc, @+$54

    ld c, e
    ld b, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld b, e
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld d, b
    ld h, h
    jr nc, jr_04c_5a12

    ld c, e
    ld b, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld c, h
    ld c, l
    ld b, e
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    pop af
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    db $ec
    ldh a, [$29]
    ld b, d
    ld b, l
    ld c, c
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld b, d
    ld c, e
    ld h, l
    pop af
    ld sp, hl
    nop
    ld h, h
    ccf
    ld b, d

jr_04c_5a12:
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$29]
    ld b, d
    ld b, l
    ld c, c
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld b, d
    ld c, e
    ld h, l
    pop af
    ld sp, hl
    nop
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
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
    ld h, h
    ld a, $52
    ld b, e
    pop af
    ld sp, hl
    nop
    ld h, l
    db $ec
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
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
    ld d, b
    ld c, l
    ld b, d
    ld c, a
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld a, $4f
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $45
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld d, d
    ld c, e
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld d, c
    ld d, a
    ccf
    ld a, $4f
    ld h, l
    db $ec
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
    pop af
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld d, c
    pop af
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld d, b
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld h, l
    db $ec
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
    ld d, d
    ld c, e
    ld b, h
    pop af
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld sp, hl
    nop
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$28]
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    pop af
    ld sp, hl
    nop
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $ec
    ldh a, [rNR50]
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    pop af
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, b
    ld b, l
    pop af
    ld a, $52
    ld d, b
    ld h, l
    db $ec
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    pop af
    ld sp, hl
    nop
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld [hl-], a
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld b, d
    ld b, l
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $3e
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld b, h
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld a, $52
    ld d, b
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
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
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld b, h
    ld a, $4b
    ld d, a
    ld h, h
    ld b, b
    ld c, h
    ld c, h
    ld c, c
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    pop af
    ld b, c
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    db $ec
    ldh a, [$3d]
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld c, b
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    ld h, l
    db $ec
    ldh a, [$f9]
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
    ld e, e
    ld b, l
    ld c, d
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    ld b, e
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ld c, b
    ld c, h
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    ld h, h
    ld c, a
    ld b, d
    ld a, $44
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld d, b
    pop af
    ld l, $4c
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld a, $4b
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    ld h, h
    ld c, a
    ld b, d
    ld a, $44
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ccf
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld b, l
    ld d, c
    pop af
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
    ld h, l
    db $ec
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $4c
    ld c, c
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
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
    db $ec
    ldh a, [$f9]
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
    ld d, h
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    db $ec
    ldh a, [$f9]
    nop
    ld d, b
    ld h, h
    jr z, @+$48

    ld d, b
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, h
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
    ld h, l
    db $ec
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, h
    ld a, $4b
    ld b, c
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
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
    ld h, l
    db $ec
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, h
    ld b, h
    ld b, [hl]
    ld c, e
    ld b, h
    pop af
    ld c, c
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld b, h
    ld h, c
    db $ec
    ldh a, [$f9]
    db $10
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld c, l
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
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
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, d
    ld d, c
    ld h, l
    db $fc
    db $10
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ccf
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    pop af
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ccf
    pop af
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld b, l
    ld b, d
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, d
    db $fc
    db $10
    db $ec
    ld a, [c]
    scf
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld h, c
    pop af
    db $ec
    ldh a, [$f9]
    nop
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
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, d
    ld c, d
    ld b, h
    ld b, d
    ld b, e
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ldh a, [$f9]
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
    ld d, c
    ld e, h
    ld d, c
    ld b, d
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
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
    ld d, b
    ld c, l
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, c
    ld c, h
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
    ld d, b
    ld d, d
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, l
    ld a, $51
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld a, [$f0f7]
    or $64
    ld b, l
    ld a, $51
    pop af
    ld sp, hl
    nop
    ld a, [$f2f7]
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    pop af
    ld a, [$f0f7]
    or $64
    ld b, l
    ld a, $51
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
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
    ld h, l
    ld a, [$f0f7]
    or $64
    ld b, l
    ld a, $51
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
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
    ld h, l
    ld a, [$f0f7]
    ld sp, hl
    nop
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
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld a, [$f0f7]
    daa
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
    ld h, l
    ld a, [$f0f7]
    daa
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
    ld h, l
    ld a, [$f0f7]
    daa
    ld a, $50
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld c, b
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
    ld a, [$f0f7]
    ld l, $42
    ld b, [hl]
    ld c, e
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld b, l
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld a, [$f0f7]
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    pop af
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$f2f7]
    ld d, a
    ld d, d
    ld b, h
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, l
    pop af
    ld a, [$f0f7]
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    add hl, hl
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld c, d
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
    ld h, l
    ld a, [$f0f7]
    ld sp, hl
    nop
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    pop af
    dec h
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    db $ec
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
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_60f5

    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, b
    ld c, l
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_6115

    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, c
    ld a, $4b
    ld d, a
    ld d, c
    pop af
    ld sp, hl
    db $10
    ld h, l
    db $fc
    db $10
    db $ec

jr_04c_60f5:
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_6134

    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    pop af
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, h
    ld b, d

jr_04c_6115:
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld a, [$f2f7]
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    pop af
    ld a, [$f0f7]
    daa
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

jr_04c_6134:
    ld c, b
    ld h, h
    ld b, l
    ld a, $51
    pop af
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$f2f7]
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld c, b
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    pop af
    ld a, [$f0f7]
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    pop af
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$f2f7]
    ccf
    ld b, d
    ld b, e
    ld c, h
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    pop af
    ld a, [$f0f7]
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld sp, hl
    db $10
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    db $ec
    ldh a, [$f9]

jr_04c_61aa:
    nop
    ld h, h
    ld b, h
    ld a, $3f
    pop af
    ld sp, hl
    jr nz, jr_04c_61aa

    ld a, [c]
    ld sp, hl
    db $10
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    jr nc, jr_04c_6214

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $30
    ld a, [c]
    ld sp, hl
    db $10
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    jr nc, jr_04c_622f

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $30
    ld a, [c]
    ld sp, hl
    db $10
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, e
    ld c, a

jr_04c_61f6:
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
    db $fc
    jr jr_04c_61f6

    ld a, [c]
    ld sp, hl
    nop
    ld h, h
    ld b, l
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    pop af

jr_04c_6214:
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $4b
    ld h, h
    ld sp, hl
    jr nz, @+$67

    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, [hl]
    ld e, [hl]
    ld d, c

jr_04c_6228:
    pop af
    ld b, h
    ld a, $4b
    ld d, a
    ld h, h
    ld d, e

jr_04c_622f:
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
    db $fc
    jr jr_04c_6228

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
    ld d, e
    ld b, d
    ld c, a
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    db $ec
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04c_62a5

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a

jr_04c_625e:
    ld h, h
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    pop af
    ld b, h
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    db $fc
    jr jr_04c_625e

    ld a, [c]
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld a, $4b
    ld h, h
    ld sp, hl
    jr nz, jr_04c_62eb

    db $ec
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04c_62de

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e

jr_04c_629d:
    pop af
    ld b, h
    ld a, $4b
    ld d, a
    ld h, h
    ld d, e
    ld c, h

jr_04c_62a5:
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    db $fc
    jr jr_04c_629d

    ld a, [c]
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    db $ec
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04c_6322

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld d, b

jr_04c_62de:
    ld d, b
    ld b, d

jr_04c_62e0:
    ld c, e
    pop af
    ld b, h
    ld a, $4b
    ld d, a
    ld h, h
    ld b, h
    ld c, c
    ld e, l
    ld b, b

jr_04c_62eb:
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    db $fc
    jr jr_04c_62e0

    ld a, [c]
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld a, $4b
    ld h, h
    ld sp, hl
    jr nz, jr_04c_6373

    db $ec
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04c_6366

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld d, b

jr_04c_6322:
    ld d, b
    ld b, d
    ld c, e

jr_04c_6325:
    pop af
    ld b, h
    ld a, $4b
    ld d, a
    ld h, h
    ld d, e
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
    db $fc
    jr jr_04c_6325

    ld a, [c]
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, [hl]

jr_04c_6366:
    ld b, b
    ld b, l
    ld d, c
    db $fc
    jr @-$12

    ld a, [c]
    ld b, h
    ld b, d
    ld d, c
    ld a, $52
    ld b, b

jr_04c_6373:
    ld b, l
    ld d, c
    ld h, l
    pop af
    db $ec
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
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, h
    ld b, d
    ld d, c
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04c_63f4

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, h
    ld b, d
    ld d, c
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    pop af
    ld b, l
    ld c, h
    ld b, b
    ld b, l
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_6425

    ld h, l
    pop af

jr_04c_63f4:
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    pop af
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    ld h, h
    ld c, a
    ld d, d
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_6451

    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h

jr_04c_6425:
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4b
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_647e

    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop

jr_04c_6451:
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    pop af
    add hl, hl
    ld c, c
    ld e, l
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld b, e
    ld c, c
    ld e, l
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_64ab

    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop

jr_04c_647e:
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    pop af
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld a, $52
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, @+$35

    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop

jr_04c_64ab:
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    pop af
    ld sp, hl
    nop
    ld d, b
    ld h, h
    jr nc, jr_04c_650b

    ld c, e
    ld b, c
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, d
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_650c

    ld h, l
    pop af
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
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
    ld h, l
    db $fc
    db $10
    db $ec
    ld a, [c]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_6539

    ld h, l
    pop af
    db $ec
    ldh a, [$2e]

jr_04c_650b:
    ld b, d

jr_04c_650c:
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    jr nc, jr_04c_655e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld b, l
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld a, [$f0f7]
    ld sp, hl
    nop
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b

jr_04c_6539:
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld a, [$f2f7]
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld h, l
    pop af
    ld a, [$f0f7]
    daa
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
    ld h, h
    ld c, b

jr_04c_655e:
    ld a, $4b
    ld c, e
    pop af
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$f2f7]
    ld a, $4b
    ld b, h
    ld b, d
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
    ld h, l
    pop af
    ld a, [$f0f7]
    dec a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04c_65c7

    ld h, l
    pop af
    ld a, [$f0f7]
    inc h
    ld d, d
    ld b, e
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, [hl]
    pop af
    ldh a, [$f9]
    nop
    ld h, h
    ld b, l
    ld a, $51
    pop af
    ld a, $52
    ld b, e
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    db $ec
    ld a, [$f0f7]
    or $64
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    pop af
    add hl, hl
    ld b, d
    ld b, c
    ld b, d
    ld c, a

jr_04c_65c7:
    ld h, l
    db $ec
    ldh a, [$29]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    pop af
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    jr nc, jr_04c_662c

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld b, d
    pop af
    ld c, d
    ld a, $49
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, l
    db $ec
    ldh a, [$f9]
    nop
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld b, d
    pop af
    ccf
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
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
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld d, a
    ld d, d
    ld c, a
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l

jr_04c_662c:
    ld c, l
    ld b, d
    ld h, l
    pop af
    db $ec
    ldh a, [$ed]
    jr z, jr_04c_6670

    jr z, @+$28

    jr c, jr_04c_6670

    inc l
    add hl, sp
    jr z, jr_04c_66a1

    daa
    inc l
    dec [hl]
    jr z, jr_04c_6668

    scf
    ld [hl-], a
    dec [hl]
    ldh a, [$ed]
    ld [hl], $26
    jr z, @+$33

    inc h
    dec [hl]
    inc l
    ld [hl-], a
    pop af
    or [hl]
    ld h, h
    ld a, [hl+]
    inc h
    jr nc, @+$2a

    ld h, h
    daa
    jr z, jr_04c_6690

    inc l
    ld a, [hl+]
    ld sp, $edf0
    ld h, $2b
    inc h
    dec [hl]
    inc h
    ld h, $37
    jr z, jr_04c_669d

jr_04c_6668:
    pop af
    or [hl]
    ld h, h
    jr nc, jr_04c_669f

    ld sp, $3736

jr_04c_6670:
    jr z, jr_04c_66a7

    ld h, h
    daa
    jr z, jr_04c_66ac

    inc l
    ld a, [hl+]
    ld sp, $edf0
    jr nc, @+$3a

    ld [hl], $2c
    ld h, $64
    ld h, $32
    jr nc, @+$35

    ld [hl-], a
    ld [hl], $28
    dec [hl]
    ldh a, [$ed]
    scf
    ld [hl-], a
    ld [hl], $28
    ld h, h

jr_04c_6690:
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    ldh a, [$ed]
    inc sp
    dec [hl]
    ld [hl-], a
    ld a, [hl+]
    dec [hl]
    inc h

jr_04c_669d:
    jr nc, @+$32

jr_04c_669f:
    jr z, jr_04c_66d6

jr_04c_66a1:
    ld [hl], $f0
    db $ed
    ld a, [hl+]
    dec [hl]
    inc h

jr_04c_66a7:
    inc sp
    dec hl
    inc l
    ld h, $64

jr_04c_66ac:
    daa
    jr z, jr_04c_66e5

    inc l
    ld a, [hl+]
    ld sp, $3528
    ld [hl], $f0
    db $ed
    jr nc, jr_04c_66f1

    ld [hl], $2c
    ld h, $64
    ld h, $32
    jr nc, jr_04c_66f4

    ld [hl-], a
    ld [hl], $28
    dec [hl]
    pop af
    inc h
    ld [hl], $36
    inc l
    ld [hl], $37
    inc h
    ld sp, $3637
    ldh a, [$ed]
    ld a, [hl+]
    inc h
    jr nc, @+$2a

jr_04c_66d6:
    ld h, h
    daa
    jr z, jr_04c_6710

    inc l
    ld a, [hl+]
    ld sp, $24f1
    ld [hl], $36
    inc l
    ld [hl], $37
    inc h

jr_04c_66e5:
    ld sp, $3637
    ldh a, [$ed]
    jr z, @+$2e

    daa

jr_04c_66ed:
    ld [hl-], a
    ld [hl], $64
    inc l

jr_04c_66f1:
    ld sp, $2837

jr_04c_66f4:
    dec [hl]
    inc h
    ld h, $37
    inc l
    add hl, sp
    jr z, jr_04c_66ed

    daa
    jr z, @+$3a

    scf
    ld [hl], $26
    dec hl
    cpl
    inc h
    ld sp, $6427
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    ldh a, [$ed]
    cpl

jr_04c_6710:
    jr z, jr_04c_673e

    scf
    jr c, @+$33

    ld a, [hl+]
    ld h, h
    jr nc, @+$26

    dec [hl]
    ld l, $28
    scf
    inc l
    ld sp, $f02a
    db $ed
    cpl
    jr z, jr_04c_6751

    scf
    jr c, jr_04c_6759

    ld a, [hl+]
    pop af
    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, jr_04c_675e

    scf
    jr z, jr_04c_6764

    scf
    ld a, [hl-]
    inc l
    ld h, $2e
    cpl
    jr c, @+$33

    ld a, [hl+]
    ldh a, [$ed]

jr_04c_673e:
    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, jr_04c_6772

    scf
    jr nc, jr_04c_676b

    ld sp, $2a24
    jr z, @+$32

    jr z, jr_04c_677f

    scf
    ldh a, [$ed]

jr_04c_6751:
    cpl
    ld [hl-], a
    ld l, $24
    cpl
    inc l
    ld [hl], $2c

jr_04c_6759:
    jr z, @+$37

    jr c, jr_04c_678e

    ld a, [hl+]

jr_04c_675e:
    ldh a, [$ed]
    ld e, d
    dec h
    jr z, jr_04c_6799

jr_04c_6764:
    ld [hl], $28
    scf
    dec a
    jr c, @+$33

jr_04c_676a:
    ld a, [hl+]

jr_04c_676b:
    ldh a, [$ed]
    dec a
    jr c, jr_04c_67a6

    ld e, b
    scf

jr_04c_6772:
    dec a
    cpl
    inc l
    ld h, $2b
    jr z, jr_04c_676a

    ld e, d
    dec h
    jr z, @+$37

    ld [hl], $28

jr_04c_677f:
    scf
    dec a
    jr c, jr_04c_67b4

    ld a, [hl+]
    ldh a, [$ed]
    scf
    jr z, @+$38

    scf
    jr z, jr_04c_67c1

    ld [hl], $f0

jr_04c_678e:
    db $ed
    ld [hl], $33
    jr z, @+$28

    inc l
    inc h
    cpl
    ld h, h
    scf
    dec hl

jr_04c_6799:
    inc h
    ld sp, $362e
    ldh a, [$ed]
    jr z, @+$33

    inc l
    dec sp
    ld h, h
    ld [hl], $37

jr_04c_67a6:
    inc h
    add hl, hl
    add hl, hl
    ldh a, [$ed]
    inc h
    dec [hl]
    scf
    ld a, [hl-]
    ld [hl-], a
    dec [hl]
    ld l, $f0
    db $ed

jr_04c_67b4:
    scf
    jr z, jr_04c_67dd

    dec hl
    ld sp, $262c
    inc h
    cpl
    ld h, h
    ld [hl], $38
    inc sp

jr_04c_67c1:
    inc sp
    ld [hl-], a
    dec [hl]
    scf
    ldh a, [$ed]
    scf
    jr z, @+$38

    scf
    jr z, @+$37

    ld [hl], $f0
    db $ed
    scf
    jr z, @+$38

    scf
    jr z, @+$37

    ld [hl], $f0
    db $ed
    jr c, jr_04c_683c

    ld [hl], $61

jr_04c_67dd:
    ld h, h
    cpl
    inc l
    inc h
    inc l
    ld [hl], $32
    ld sp, $edf0
    inc h
    ld [hl], $36
    inc l
    ld [hl], $37
    inc h
    ld sp, $f137
    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, @+$28

    jr z, jr_04c_682e

    ldh a, [$ed]
    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, jr_04c_6827

jr_04c_6801:
    jr z, jr_04c_6838

    ld [hl], $f0
    db $ed
    jr z, jr_04c_6843

    jr z, jr_04c_6830

    jr c, jr_04c_6843

    inc l
    add hl, sp
    jr z, jr_04c_6801

    inc sp
    dec [hl]
    ld [hl-], a
    daa
    jr c, jr_04c_683c

    jr z, jr_04c_684d

    ldh a, [$ed]
    inc sp
    dec [hl]
    jr z, jr_04c_6854

    inc l
    daa
    jr z, jr_04c_6853

    scf
    ldh a, [$f0]
    db $ed
    inc a

jr_04c_6827:
    jr c, jr_04c_6856

    inc l
    pop af
    dec hl
    ld [hl-], a
    dec [hl]

jr_04c_682e:
    inc l
    inc l

jr_04c_6830:
    ldh a, [$ed]
    jr z, jr_04c_6865

    inc l
    dec sp
    pop af
    pop af

jr_04c_6838:
    scf
    ld [hl-], a
    ld [hl], $28

jr_04c_683c:
    pop af
    pop af
    inc a
    jr c, jr_04c_686e

    inc l
    pop af

jr_04c_6843:
    dec hl
    ld [hl-], a
    dec [hl]
    inc l
    inc l
    ldh a, [$ed]
    inc h
    ld l, $2c

jr_04c_684d:
    dec [hl]
    inc h
    pop af
    scf
    ld [hl-], a
    dec [hl]

jr_04c_6853:
    inc l

jr_04c_6854:
    inc a
    inc h

jr_04c_6856:
    jr nc, jr_04c_687c

    ldh a, [$ed]
    ld l, $32
    inc l
    ld h, $2b
    inc l
    pop af
    ld [hl], $38
    ld a, [hl+]
    inc l

jr_04c_6865:
    inc a
    inc h
    jr nc, jr_04c_688d

    ldh a, [$f0]
    db $ed
    ld a, [hl+]
    inc h

jr_04c_686e:
    ld [hl-], a
    pop af
    jr nc, jr_04c_6896

    scf
    ld [hl], $38
    jr nc, jr_04c_68a9

    scf
    ld [hl-], a
    pop af
    jr c, jr_04c_68ac

jr_04c_687c:
    jr z, jr_04c_68bb

    ld [hl-], a
    pop af
    pop af
    dec hl
    inc l
    ld h, l
    ld h, h
    ld [hl], $33
    jr z, jr_04c_68b1

    daa
    ldh a, [$ed]
    ld a, [hl-]

jr_04c_688d:
    inc h
    ld sp, $2837
    ld sp, $383c
    pop af
    pop af

jr_04c_6896:
    inc a
    jr c, @+$30

    inc h
    inc sp
    inc l
    pop af
    pop af
    ld [hl-], a
    cpl
    daa
    sbc e
    ld [hl-], a
    ld sp, $3628
    pop af
    pop af
    scf

jr_04c_68a9:
    inc h
    ld h, $26

jr_04c_68ac:
    dec hl
    inc h
    ld sp, $f1f1

jr_04c_68b1:
    ld [hl], $2c
    ld sp, $edf0
    inc h
    ld [hl], $27
    sbc e
    dec h

jr_04c_68bb:
    inc h
    scf
    pop af
    pop af
    ld l, $24
    dec a
    jr c, jr_04c_68f2

    inc l
    pop af
    ld l, $2c
    ld l, $38
    scf
    inc h
    ld sp, $f02c
    db $ed
    dec l
    inc l
    ld sp, $f1f1
    jr c, jr_04c_6908

    ld l, $f1
    pop af
    dec hl
    inc l
    ld [hl], $24
    ld sp, $f028
    ldh a, [$ed]
    ld l, $31
    jr c, jr_04c_691e

    sbc h
    dec l
    ld [hl-], a
    ld h, $2b
    jr z, jr_04c_691f

    pop af
    dec h
    jr z, jr_04c_6927

jr_04c_68f2:
    ld a, [hl+]
    jr z, @+$31

    ldh a, [$ed]
    dec h
    jr z, @+$28

    ld [hl-], a
    pop af
    jr nc, jr_04c_6936

    cpl
    daa
    jr z, jr_04c_6937

    inc l
    dec l
    ldh a, [$ed]
    cpl
    inc h

jr_04c_6908:
    dec [hl]
    ld [hl], $f1
    ld a, [hl-]
    inc l
    scf
    scf
    ld l, $38
    dec hl
    ld sp, $edf0
    cpl
    inc h
    dec [hl]
    ld [hl], $64
    pop af
    ld a, [hl-]
    inc l
    scf

jr_04c_691e:
    scf

jr_04c_691f:
    ld l, $38
    dec hl
    ld sp, $2bf1
    jr z, @+$2e

jr_04c_6927:
    daa
    inc l
    pop af
    jr nc, jr_04c_6950

    dec [hl]
    inc l
    inc h
    ld h, h
    ld l, $32
    dec hl
    ld sp, $f028

jr_04c_6936:
    db $ed

jr_04c_6937:
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    add hl, hl
    jr c, jr_04c_696e

    inc l
    pop af
    inc a
    inc h
    jr nc, jr_04c_6968

    daa
    inc h
    ldh a, [$ed]
    dec [hl]
    jr z, jr_04c_6972

    ld h, c
    dec h
    ld e, c
    ld h, $2e

jr_04c_6950:
    ldh a, [$ed]
    ld [hl], $59
    dec [hl]
    jr z, jr_04c_6988

    pop af
    ld a, [hl-]
    inc l
    ld sp, $2837
    dec [hl]
    add hl, hl
    jr z, @+$31

    daa
    pop af
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    pop af

jr_04c_6968:
    inc a
    inc h
    jr nc, @+$26

    daa
    inc h

jr_04c_696e:
    pop af
    ld [hl], $24
    scf

jr_04c_6972:
    ld [hl-], a
    ld [hl], $2b
    inc l
    pop af
    inc a
    inc h
    jr nc, jr_04c_699f

    daa
    inc h
    ldh a, [$ed]
    ld [hl], $24
    scf
    ld [hl-], a
    ld [hl], $2b
    inc l
    pop af
    dec hl

jr_04c_6988:
    ld [hl-], a
    ld sp, $2427
    pop af
    scf
    inc h
    ld l, $24
    pop af
    inc a
    inc h
    jr nc, jr_04c_69ba

    ld a, [hl+]
    jr c, jr_04c_69bf

    dec hl
    inc l
    pop af
    inc a
    ld [hl-], a
    scf

jr_04c_699f:
    inc h
    ld h, h
    ld a, [hl-]
    inc h
    daa
    inc h
    ldh a, [$f0]
    db $ed
    ld sp, $3224
    ld l, $2c
    pop af
    ld [hl-], a
    inc l
    ld [hl], $2b
    inc l
    ldh a, [$ed]
    scf
    jr z, @+$37

    jr c, jr_04c_69e5

jr_04c_69ba:
    inc l
    ld l, $32
    pop af
    dec hl

jr_04c_69bf:
    inc h
    ld sp, $3a24
    inc h
    pop af
    ld l, $28
    ld sp, $2c2d
    dec [hl]
    ld [hl-], a
    pop af
    ld l, $24
    ld sp, $f132
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    ld [hl], $2b
    inc l
    pop af
    ld [hl], $24
    scf
    ld [hl-], a
    pop af
    dec hl
    inc l
    daa
    jr z, jr_04c_6a12

    inc l

jr_04c_69e5:
    pop af
    inc a
    ld [hl-], a
    ld sp, $3c28
    inc h
    jr nc, jr_04c_6a12

    ldh a, [$ed]
    ld [hl], $28
    inc l
    inc l
    ld h, $2b
    inc l
    pop af
    jr nc, jr_04c_6a2c

    dec [hl]
    inc l
    jr c, jr_04c_6a24

    dec hl
    inc l
    pop af
    ld l, $24
    ld sp, $2cf1
    ld l, $28
    daa
    inc h
    pop af
    scf
    jr z, @+$37

    jr c, @+$3e

    ld [hl-], a
    pop af

jr_04c_6a12:
    ld [hl], $24
    ld l, $38
    jr nc, jr_04c_6a3c

    pop af
    inc a
    inc h
    ld [hl], $38
    ld [hl-], a
    pop af
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    inc l

jr_04c_6a24:
    pop af
    ld l, $28
    ld sp, $2c9c
    ld h, $2b

jr_04c_6a2c:
    inc l
    pop af
    jr nc, @+$2e

    inc a
    inc h
    jr nc, @+$34

    scf
    ld [hl-], a
    ldh a, [$30]
    inc l
    scf
    ld [hl-], a
    pop af

jr_04c_6a3c:
    inc a
    inc h
    jr nc, jr_04c_6a64

    ld a, [hl+]
    inc l
    ld [hl], $2b
    inc l
    pop af
    dec l
    inc l
    dec [hl]
    ld [hl-], a
    pop af
    ld l, $2c
    jr nc, jr_04c_6a87

    dec [hl]
    inc h
    pop af
    jr nc, jr_04c_6a80

    ld a, [hl-]
    inc h
    ld l, $32
    pop af
    scf
    ld [hl-], a
    ld l, $38
    daa
    inc h
    pop af
    inc a
    jr c, @+$30

    inc l

jr_04c_6a64:
    pop af
    ld sp, $3524
    inc h
    pop af
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    ld l, $2c
    pop af
    jr nc, jr_04c_6aab

    dec [hl]
    inc h
    ld l, $32
    ld [hl], $2b
    inc l
    ldh a, [$ed]
    inc sp
    inc h
    jr c, jr_04c_6aaf

jr_04c_6a80:
    pop af
    dec hl
    inc h
    ld sp, $2827
    cpl

jr_04c_6a87:
    jr nc, jr_04c_6aad

    ld sp, $edf0
    dec l
    jr c, @+$33

    pop af
    jr nc, @+$2e

    inc a
    inc h
    jr nc, jr_04c_6ac8

    scf
    ld [hl-], a
    ldh a, [$ed]
    dec hl
    inc l
    scf
    ld [hl-], a
    ld [hl], $2b
    inc l
    pop af
    ld [hl], $38
    inc l
    ld sp, $3832
    pop af
    ld l, $28

jr_04c_6aab:
    inc l
    dec l

jr_04c_6aad:
    inc l
    pop af

jr_04c_6aaf:
    dec hl

jr_04c_6ab0:
    ld [hl-], a
    ld sp, $2427
    ldh a, [$ed]
    inc a
    jr c, jr_04c_6ae7

    inc l
    ld sp, $2532
    jr c, jr_04c_6ab0

    ld h, $2b
    inc l
    daa
    inc h
    ldh a, [$ed]
    inc a
    inc h

jr_04c_6ac8:
    ld [hl], $38
    dec hl
    inc l
    dec [hl]
    ld [hl-], a
    pop af
    add hl, hl
    jr c, jr_04c_6b00

    jr c, jr_04c_6b0a

    dec hl
    inc l
    jr nc, jr_04c_6afc

    ldh a, [$ed]
    or l
    ld [bc], a
    nop
    nop
    nop
    ld h, h
    inc h
    dec [hl]
    jr nc, @+$34

    dec [hl]
    ld h, h
    inc sp

jr_04c_6ae7:
    dec [hl]
    ld [hl-], a
    dec l
    jr z, jr_04c_6b12

    scf
    pop af
    pop af
    or l
    ld [bc], a
    nop
    nop
    nop
    ld h, h
    dec h
    inc l
    dec [hl]
    daa
    ld h, h
    ld [hl], $37

jr_04c_6afc:
    jr c, jr_04c_6b25

    inc l
    ld [hl-], a

jr_04c_6b00:
    pop af
    pop af
    or l
    ld [bc], a
    nop
    nop
    nop
    ld h, h
    jr z, jr_04c_6b3b

jr_04c_6b0a:
    inc l
    dec sp
    ldh a, [$ed]
    and h
    scf
    ld [hl-], a
    dec h

jr_04c_6b12:
    jr z, jr_04c_6b3a

    ld [hl-], a
    ld sp, $2c37
    ld sp, $2838
    daa
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04c_6b25:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04c_6b3a:
    nop

jr_04c_6b3b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
