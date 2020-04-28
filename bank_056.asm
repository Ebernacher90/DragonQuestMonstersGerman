; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

    ld d, [hl]
    rst $38
    ld c, b
    ld b, $49
    dec c
    ld c, c
    inc d
    ld c, c
    ld b, h
    ld c, d
    add e
    ld b, h
    push bc
    ld b, h
    dec a
    ld b, b
    ld h, d
    ld b, b
    ldh a, [$65]
    ld hl, $5466
    ld h, [hl]
    rst $38
    ld h, a
    ld d, l
    ld l, c
    ld [hl], $6a
    and d
    ld l, d
    inc bc
    ld l, e
    ld e, e
    ld l, e
    and c
    ld l, e
    ld d, $6c
    ld e, h
    ld l, h
    and h
    ld l, h
    ld de, $586d
    ld l, l
    db $d3
    ld l, l
    ld c, b
    ld l, [hl]
    ret z

    ld l, [hl]
    inc l
    ld l, a
    ld h, e
    ld l, a
    ret c

    ld l, a
    xor a
    ld hl, $9800
    ld de, $4083

jr_056_4044:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, h
    cp $9b
    jr nz, jr_056_4044

    ld a, l
    cp $ff
    jr nz, jr_056_4044

    ld a, [de]
    ld [hl], a
    ld a, $43
    ld [$c8a1], a
    ld a, $63
    ld [$c8a1], a
    ld a, $01
    jp $11cb


    ld a, [$c842]
    and $01
    cp $01
    jr nz, jr_056_4082

    ld hl, $c8ad
    ld a, [hl+]
    ld [$c88a], a
    ld a, [hl+]
    ld [$c88b], a
    ld a, [hl+]
    ld [$c88c], a
    ld a, [hl]
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]

jr_056_4082:
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_056_40c6

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_056_40e6

    ld [hl+], a

jr_056_40c6:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_056_40f6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_056_4116

    ld [hl-], a

jr_056_40e6:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_056_4126

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rst $38
    rst $38
    rst $38

jr_056_40f6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    rst $38
    rst $38
    rst $38

jr_056_4116:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    ld d, c
    ld d, d

jr_056_4126:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_056_4483:
    ld hl, $c829
    ld a, [hl+]
    or [hl]
    ret z

    ld a, [$c827]
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, [$c82a]
    ld c, a

jr_056_4495:
    ld a, [$c829]
    ld b, a

jr_056_4499:
    push bc
    ld b, $10
    ld de, $44b5

jr_056_449f:
    di

jr_056_44a0:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_056_44a0

    ld a, [de]
    ld [hl+], a
    ei
    inc de
    dec b
    jr nz, jr_056_449f

    pop bc
    dec b
    jr nz, jr_056_4499

    dec c
    jr nz, jr_056_4495

    ret


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, d
    ld [$c83a], a
    sub $e0
    rst $00
    inc c
    ld b, l
    inc c
    ld b, l
    inc c
    ld b, l
    inc c
    ld b, l
    inc c
    ld b, l
    inc c
    ld b, l
    inc c
    ld b, l
    rrca
    ld b, l
    dec e
    ld b, l
    ld d, d
    ld b, l
    ld e, h
    ld b, l
    ld h, a
    ld b, l
    ld [hl], d
    ld b, l
    and l
    ld b, l
    xor e
    ld b, l
    ld a, $46
    db $fc
    ld b, [hl]
    add hl, hl
    ld b, a
    ld c, l
    ld b, a
    ld d, [hl]
    ld b, a
    ld l, a
    ld b, a
    ld a, d
    ld b, a
    add b
    ld b, a
    or d
    ld b, a
    cp l
    ld b, a
    call z, $1947
    ld c, b
    rra
    ld c, b
    inc sp
    ld c, b
    ld b, a
    ld c, b
    ld c, l
    ld c, b
    ld d, e
    ld c, b
    jp Jump_056_4853


    call Call_056_4853
    ld a, $01
    ld [$c83c], a
    ld a, $ff
    ld [$c83a], a
    ret


    call $0954
    ld d, $00
    call $0d78
    ld e, a
    call $0954
    call $0d78
    ld c, a
    ld a, [$c82a]
    call $1dbe
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    ret


    call $0954
    call $0d78
    call $1b2c
    ret


    ld hl, $c826
    set 0, [hl]
    ld a, $5b
    ld [$c840], a
    ret


    ld hl, $c826
    set 0, [hl]
    ld a, $5a
    ld [$c840], a
    ret


    ld hl, $c826
    res 7, [hl]
    ld a, [$c8ee]
    cp $07
    jr z, jr_056_4591

    ld hl, $459e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c836], a
    ld hl, $c825
    set 7, [hl]
    ret


jr_056_4591:
    ld hl, $c826
    res 7, [hl]
    ld hl, $c825
    set 2, [hl]
    set 5, [hl]
    ret


    ld b, $0c
    inc d
    ld a, [de]
    jr nz, @+$2a

    jr nc, jr_056_45c7

    ld h, $c8
    set 7, [hl]
    ret


    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [$c829]
    ld c, a

jr_056_45c7:
    ld a, [$c82a]
    ld b, a
    ld a, [$c83e]
    ld l, a
    ld a, [$c83f]
    ld h, a
    push bc

jr_056_45d4:
    ld a, e
    call $1aad
    call $0cee
    inc e
    dec b
    jr nz, jr_056_45d4

    ld hl, $0020
    call $0cfd
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call $0d34
    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, l
    ld b, h
    push de
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    pop de

jr_056_4607:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec bc
    dec bc
    ld a, b
    or c
    jr nz, jr_056_4607

    pop bc
    ld hl, $0040
    call $0cfd

jr_056_461d:
    ld a, e
    call $1aad
    call $0cee
    inc e
    dec b
    jr nz, jr_056_461d

    ld a, [$c82f]
    ld l, a
    ld a, [$c830]
    ld h, a
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld hl, $c825
    res 1, [hl]
    ret


    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    ld a, [$c82f]
    ld e, a
    ld a, [$c830]
    ld d, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or e
    jr z, jr_056_4677

    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    call $0954
    ret


jr_056_4677:
    ld a, [$c83e]
    ld l, a
    ld a, [$c83f]
    ld h, a
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call $0d34
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    ld hl, $0020
    call $0cfd
    ld a, e
    add b
    ld e, a

jr_056_46b3:
    ld a, e
    call $1aad
    call $0cee
    inc e
    dec b
    jr nz, jr_056_46b3

    ld hl, $0040
    call $0cfd
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call $0d34
    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    ld c, l
    ld b, h
    add hl, de

jr_056_46e4:
    di
    call $1aa6
    ld a, [hl+]
    ei
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_056_46e4

    ld hl, $c825
    set 7, [hl]
    ld a, $04
    ld [$c836], a
    ret


    ld a, [$c825]
    bit 4, a
    jp z, Jump_056_4720

    ld a, [$c825]
    res 4, a
    ld [$c825], a
    call $0864
    ld a, [$c831]
    ld l, a
    ld a, [$c832]
    ld h, a
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


Jump_056_4720:
    xor a
    ld [$c825], a
    xor a
    ld [$c826], a
    ret


    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c82f]
    ld e, a
    ld a, [$c830]
    ld d, a
    add hl, de
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    ret


    call $0864
    call Call_056_476f
    call Call_056_4483
    ld a, [$c827]
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    ret


Call_056_476f:
    ld hl, $c826
    res 7, [hl]
    ld hl, $c825
    res 1, [hl]
    ret


    ld hl, $c825
    set 1, [hl]
    ret


    ld hl, $ca42
    ld de, $c0c8
    ld b, $08

jr_056_4788:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_056_4788

    ld a, $f0
    ld [de], a
    ld hl, $c825
    set 4, [hl]
    ld a, [$c82d]
    ld l, a
    ld a, [$c82e]
    ld h, a
    ld a, l
    ld [$c831], a
    ld a, h
    ld [$c832], a
    ld hl, $c0c8
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


    ld hl, $c825
    set 2, [hl]
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c825
    set 3, [hl]
    call $0954
    call $0d78
    ld [$c833], a
    ret


    ld hl, $c825
    set 4, [hl]
    ld a, [$c82d]
    ld l, a
    ld a, [$c82e]
    ld h, a
    ld a, l
    ld [$c831], a
    ld a, h
    ld [$c832], a
    ld a, [$c831]
    add $01
    ld [$c831], a
    ld a, [$c832]
    adc $00
    ld [$c832], a
    ld a, [$c88a]
    cp $0b
    jr nz, jr_056_4804

    ld hl, $0d8a
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


jr_056_4804:
    call $0d78
    ld de, $c180
    add e
    ld l, a
    ld a, $00
    adc d
    ld h, a
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


    ld hl, $c825
    set 5, [hl]
    ret


    ld hl, $c825
    set 6, [hl]
    call $0954
    call $0d78
    ld [$c835], a
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c825
    set 7, [hl]
    call $0954
    call $0d78
    ld [$c836], a
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c826
    set 0, [hl]
    ret


    ld hl, $c826
    res 0, [hl]
    ret


Call_056_4853:
Jump_056_4853:
    ld hl, $c826
    res 7, [hl]
    ld a, $5c
    call $1b2c
    ld hl, $0000
    call $0d11
    ld de, $c500
    ld c, $12

jr_056_4868:
    ld b, $20
    push hl

jr_056_486b:
    di
    call $1aa6
    ld a, [hl]
    ei
    ld [de], a
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    inc de
    dec b
    jr nz, jr_056_486b

    pop hl
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_056_4868

    call Call_056_489f
    ld hl, $c825
    set 2, [hl]
    xor a
    ld [$c83c], a
    ret


Call_056_489f:
    ld de, $5609
    ld hl, $8e50
    call $1577
    ld hl, $0100
    call $0d11
    ld b, $0e
    call $0ce7
    ld de, $48dc

jr_056_48b6:
    push hl

jr_056_48b7:
    ld a, [de]
    inc de
    cp $d9
    jr z, jr_056_48da

    cp $d8
    jr nz, jr_056_48d2

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    jr jr_056_48b6

jr_056_48d2:
    call $1aad
    call $0cee
    jr jr_056_48b7

jr_056_48da:
    pop hl
    ret


    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    push de
    call nc, $ffe0
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    push hl
    and $e7
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


Call_056_48ff:
    ld de, $63d4
    call $05b6
    ret


    ld de, $63d4
    call $05f6
    ret


Call_056_490d:
    call Call_056_48ff
    call $0609
    ret


    ld hl, $9000
    ld de, $1207
    call $098f
    ld hl, $c0a0
    ld bc, $0010
    ld a, $00
    call $12c7
    ld hl, $9c00
    ld bc, $0400
    ld a, $1f
    call $12c7
    ld hl, $9c00
    ld bc, $1204
    ld a, $80
    call Call_056_4a08
    xor a
    ld [$c8da], a
    xor a
    ldh [rVBK], a
    call Call_056_4994
    ld a, $00
    call $1ae1
    ld a, $0a
    ld [$df08], a
    xor a
    ld [$df03], a
    ld a, $98
    ld [$df04], a
    ld a, $8e
    ld [$df05], a
    ld a, $64
    ldh [$b6], a
    ld a, $07
    ldh [$b5], a
    ld h, $98
    ld l, $8e
    ld a, [hl+]
    ld [$df06], a
    ld a, [hl]
    ld [$df07], a
    ld a, $1f
    ld [$c83b], a
    ld a, $7f
    ld [$c83d], a
    xor a
    ld [$df0b], a
    ld [$df0c], a
    ld a, $43
    ld [$c8a1], a
    ld a, $63
    ld [$c8a1], a
    ld a, $01
    jp $11cb


Call_056_4994:
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $9100
    ld a, $00
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld de, $1002
    call Call_056_49e0
    ld hl, $9300
    ld a, [$c88b]
    inc a
    ld [$c823], a
    ld de, $1004
    call Call_056_49e0
    call Call_056_4a21
    ld hl, $9823
    ld bc, $1002
    ld a, $10
    call Call_056_4a08
    ld hl, $9883
    ld bc, $1004
    ld a, $30
    call Call_056_4a08
    call Call_056_4a2d
    ret


Call_056_49e0:
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    call Call_056_490d
    ret


Call_056_49f4:
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    call Call_056_48ff
    ret


Call_056_4a08:
jr_056_4a08:
    push hl
    ld d, b

jr_056_4a0a:
    call $1ab9
    inc a
    dec b
    jr nz, jr_056_4a0a

    ld b, d
    ld e, a
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, e
    dec c
    jr nz, jr_056_4a08

    ret


Call_056_4a21:
    ld hl, $9800
    ld bc, $0400
    ld a, $1f
    call $12c7
    ret


Call_056_4a2d:
    ld b, $04
    ld hl, $988e
    ld c, $6f

jr_056_4a34:
    ld a, $70
    ld [hl+], a
    ld [hl-], a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_056_4a34

    ret


    call Call_056_4a4e
    call Call_056_4d78
    call Call_056_4db8
    ret


Call_056_4a4e:
    ld a, [$c846]
    bit 6, a
    jr z, jr_056_4aa4

    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df06]
    call $1ab9
    ld a, [$df07]
    call $1aad
    ld a, [$df03]
    dec a
    cp $ff
    jr nz, jr_056_4a73

    ld a, $03

jr_056_4a73:
    ld [$df03], a
    ld c, a
    ld a, [$df02]
    add c
    ld [$df00], a
    ld a, [$df03]
    ld c, $20
    call $1dbe
    ld a, l
    add $8e
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    ld [$df04], a
    ld a, l
    ld [$df05], a
    call $1aa6
    ld a, [hl+]
    ld [$df06], a
    call $1aa6
    ld a, [hl]
    ld [$df07], a

jr_056_4aa4:
    ld a, [$c846]
    bit 7, a
    jr z, jr_056_4af9

    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df06]
    call $1ab9
    ld a, [$df07]
    call $1aad
    ld a, [$df03]
    inc a
    cp $04
    jr nz, jr_056_4ac8

    xor a

jr_056_4ac8:
    ld [$df03], a
    ld c, a
    ld a, [$df02]
    add c
    ld [$df00], a
    ld a, [$df03]
    ld c, $20
    call $1dbe
    ld a, l
    add $8e
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    ld [$df04], a
    ld a, l
    ld [$df05], a
    call $1aa6
    ld a, [hl+]
    ld [$df06], a
    call $1aa6
    ld a, [hl]
    ld [$df07], a

jr_056_4af9:
    ld a, [$c842]
    bit 4, a
    jp z, Jump_056_4b34

    ld a, [$df0b]
    inc a
    and $07
    ld [$df0b], a
    jr z, jr_056_4b0d

    ret


jr_056_4b0d:
    ld a, [$df07]
    inc a
    cp $80
    jr nz, jr_056_4b29

    ld a, $70
    ld [$df07], a
    ld a, [$df06]
    inc a
    cp $80
    jr nz, jr_056_4b24

    ld a, $70

jr_056_4b24:
    ld [$df06], a
    jr jr_056_4b2c

jr_056_4b29:
    ld [$df07], a

jr_056_4b2c:
    ld a, [$df01]
    inc a
    ld [$df01], a
    ret


Jump_056_4b34:
    ld a, [$c842]
    bit 5, a
    jp z, Jump_056_4b6f

    ld a, [$df0c]
    inc a
    and $07
    ld [$df0c], a
    jr z, jr_056_4b48

    ret


jr_056_4b48:
    ld a, [$df07]
    dec a
    cp $6f
    jr nz, jr_056_4b64

    ld a, $7f
    ld [$df07], a
    ld a, [$df06]
    dec a
    cp $6f
    jr nz, jr_056_4b5f

    ld a, $7f

jr_056_4b5f:
    ld [$df06], a
    jr jr_056_4b67

jr_056_4b64:
    ld [$df07], a

jr_056_4b67:
    ld a, [$df01]
    dec a
    ld [$df01], a
    ret


Jump_056_4b6f:
    ld a, [$c846]
    bit 2, a
    jr z, jr_056_4b9c

    ld a, [$c88b]
    inc a
    cp $0a
    jr nz, jr_056_4b80

    ld a, $00

jr_056_4b80:
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]
    ld a, [$c88b]
    ld c, $04
    call $1dbe
    ld a, l
    ld [$df02], a
    ld [$df00], a
    ld a, $0c
    call $1b2c
    ret


jr_056_4b9c:
    ld a, [$c846]
    bit 1, a
    jp z, Jump_056_4d61

    ld a, [$df01]
    ld b, a
    ld a, [$df00]
    ld hl, $4e22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub b
    jr nc, jr_056_4bcc

    ld a, $00
    ld [$c822], a
    ld a, $0b
    ld [$c823], a
    ld de, $1204
    ld hl, $8800
    call Call_056_49f4
    ret


jr_056_4bcc:
    ld a, [$df01]
    ld [$c823], a
    ld a, [$df00]
    ld hl, $4dd2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c822], a
    ld hl, $4dfa
    ld a, [$df00]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$df0a], a
    ld de, $1204
    ld hl, $8800
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, [$df0a]
    rst $00
    inc l
    ld c, h
    ld sp, $504c
    ld c, h
    ld l, a
    ld c, h
    adc [hl]
    ld c, h
    sub e
    ld c, h
    or d
    ld c, h
    pop de
    ld c, h
    ldh a, [$4c]
    ld a, [bc]
    ld c, l
    add hl, hl
    ld c, l
    ld c, b
    ld c, l
    ld c, l
    ld c, l
    ld d, d
    ld c, l
    ld d, a
    ld c, l
    ld e, h
    ld c, l
    ld hl, $4100
    rst $10
    ret


    ld a, [$c822]
    cp $00
    jr nz, jr_056_4c4b

    ld a, [$c823]
    cp $e2
    jr c, jr_056_4c4b

    sub $e2
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c50

jr_056_4c4b:
    ld hl, $4200
    rst $10
    ret


jr_056_4c50:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4c6a

    ld a, [$c823]
    cp $98
    jr c, jr_056_4c6a

    sub $98
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c6f

jr_056_4c6a:
    ld hl, $4300
    rst $10
    ret


jr_056_4c6f:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4c89

    ld a, [$c823]
    cp $44
    jr c, jr_056_4c89

    sub $44
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c8e

jr_056_4c89:
    ld hl, $4400
    rst $10
    ret


jr_056_4c8e:
    ld hl, $4500
    rst $10
    ret


    ld a, [$c822]
    cp $00
    jr nz, jr_056_4cad

    ld a, [$c823]
    cp $c8
    jr c, jr_056_4cad

    sub $c8
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cb2

jr_056_4cad:
    ld hl, $4600
    rst $10
    ret


jr_056_4cb2:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4ccc

    ld a, [$c823]
    cp $74
    jr c, jr_056_4ccc

    sub $74
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cd1

jr_056_4ccc:
    ld hl, $4700
    rst $10
    ret


jr_056_4cd1:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4ceb

    ld a, [$c823]
    cp $12
    jr c, jr_056_4ceb

    sub $12
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cf0

jr_056_4ceb:
    ld hl, $4800
    rst $10
    ret


jr_056_4cf0:
    ld a, [$c823]
    add $12
    cp $e0
    jr c, jr_056_4d05

    sub $e0
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d0a

jr_056_4d05:
    ld hl, $4900
    rst $10
    ret


jr_056_4d0a:
    ld a, [$c822]
    cp $02
    jr nz, jr_056_4d24

    ld a, [$c823]
    cp $c0
    jr c, jr_056_4d24

    sub $c0
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d29

jr_056_4d24:
    ld hl, $4a00
    rst $10
    ret


jr_056_4d29:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4d43

    ld a, [$c823]
    cp $68
    jr c, jr_056_4d43

    sub $68
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d52

jr_056_4d43:
    ld hl, $4b00
    rst $10
    ret


    ld hl, $4c00
    rst $10
    ret


    ld hl, $4d00
    rst $10
    ret


jr_056_4d52:
    ld hl, $4e00
    rst $10
    ret


    ld hl, $5906
    rst $10
    ret


    ld hl, $5600
    rst $10
    ret


Jump_056_4d61:
    ld a, [$c842]
    and $08
    cp $08
    jr nz, jr_056_4d77

    ld a, $07
    ld [$c88a], a
    xor a
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]

jr_056_4d77:
    ret


Call_056_4d78:
    ld a, [$df08]
    cp $00
    jr nz, jr_056_4db3

    ld a, $0a
    ld [$df08], a
    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df09]
    cp $00
    jr nz, jr_056_4da1

    ld a, $1f
    call $1ab9
    call $1aad
    ld a, $01
    ld [$df09], a
    ret


jr_056_4da1:
    ld a, [$df06]
    call $1ab9
    ld a, [$df07]
    call $1aad
    ld a, $00
    ld [$df09], a
    ret


jr_056_4db3:
    dec a
    ld [$df08], a
    ret


Call_056_4db8:
    ld a, [$df06]
    sub $70
    rlca
    rlca
    rlca
    rlca
    ld [$df01], a
    ld a, [$df07]
    sub $70
    ld c, a
    ld a, [$df01]
    add c
    ld [$df01], a
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    ld bc, $0001
    ld bc, $0101
    ld [bc], a
    ld bc, $0001
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    ld bc, $0001
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    dec b
    ld b, $07
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    rrca
    ld c, $0e
    ld c, $0e
    add hl, bc
    ld e, a
    ld l, a
    sbc a
    ld a, [bc]
    rst $38
    rst $38
    sub $2b
    dec hl
    daa
    inc h
    ld bc, $0b2f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    db $fd
    ld [de], a
    ld b, $08
    inc bc
    inc d
    inc d
    nop
    rst $38
    sub $ff
    ld b, $02
    dec c
    nop
    sub [hl]
    ld h, h
    jr nc, jr_056_4e76

    ld [hl], $36
    jr z, jr_056_4e7c

    jr z, @-$0d

    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    jr z, @+$27

    jr c, @+$2c

    ld h, h
    sub a
    pop af
    ld h, h
    ld h, h
    scf
    jr z, jr_056_4e9c

jr_056_4e66:
    scf
    jr nc, jr_056_4e91

    ld [hl], $f1
    daa
    jr z, @+$27

    jr c, jr_056_4e9a

    ld sp, $3024
    jr z, jr_056_4e66

    ld h, h

jr_056_4e76:
    ld h, h
    ld h, h
    ld [hl], $3c
    ld [hl], $30

jr_056_4e7c:
    jr z, jr_056_4eb4

    pop af
    ld h, h
    jr nc, jr_056_4eb3

    inc h
    jr nc, jr_056_4ead

    jr nc, jr_056_4eaf

    ld [hl], $f1
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07

jr_056_4e91:
    ld [$2409], sp
    dec h
    ld h, $27
    jr z, jr_056_4ec2

    ld h, h

jr_056_4e9a:
    ld l, $28

jr_056_4e9c:
    inc l
    scf
    ld [hl-], a
    jr c, jr_056_4ed1

    jr z, jr_056_4ed9

    pop af
    ld [hl], $3c
    jr c, @+$3f

    ld [hl-], a
    ld l, $38

jr_056_4eab:
    jr nc, jr_056_4ed5

jr_056_4ead:
    ld [hl], $f1

jr_056_4eaf:
    scf
    ld [hl-], a
    ld l, $38

jr_056_4eb3:
    ld a, [hl+]

jr_056_4eb4:
    inc l
    ld sp, $3024
    jr z, jr_056_4eab

    ld h, h
    ld h, h
    ld h, h
    ld [hl], $3c
    jr c, jr_056_4ef2

jr_056_4ec1:
    inc h

jr_056_4ec2:
    jr nc, jr_056_4eec

    ldh a, [$64]
    ld h, h
    inc l
    scf
    jr z, jr_056_4efb

    ld sp, $3024
    jr z, jr_056_4ec1

    ld h, h

jr_056_4ed1:
    ld h, h
    ld h, h
    inc l
    scf

jr_056_4ed5:
    jr z, jr_056_4f07

    jr nc, @+$2a

jr_056_4ed9:
    ld [hl], $f1
    ld [hl], $28
    inc l
    ld l, $24
    ld l, $38
    jr nc, jr_056_4f0c

    ld [hl], $f1
    ld h, h
    dec h
    scf
    cpl
    ld a, [hl-]
    inc l

jr_056_4eec:
    ld sp, $2830
    ld [hl], $f0
    ld h, h

jr_056_4ef2:
    dec h
    inc h
    scf
    scf
    cpl
    jr z, jr_056_4f29

    jr z, jr_056_4f31

jr_056_4efb:
    pop af
    ld h, h
    ld h, h
    inc l
    scf
    jr z, jr_056_4f32

    jr nc, jr_056_4f2c

    ld [hl], $02
    pop af

jr_056_4f07:
    scf
    ld [hl-], a
    ld l, $38
    ld a, [hl+]

jr_056_4f0c:
    jr c, jr_056_4f3e

    jr z, @+$38

    ld [bc], a
    pop af
    ld l, $24
    inc l
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f41

    ld [hl], $00
    nop
    ldh a, [$2e]
    inc h
    inc l
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f4c

    ld [hl], $00
    ld bc, $2ef1

jr_056_4f29:
    inc h
    inc l
    ld a, [hl-]

jr_056_4f2c:
    inc h
    jr nc, jr_056_4f57

    ld [hl], $00

jr_056_4f31:
    ld [bc], a

jr_056_4f32:
    pop af
    ld l, $24
    inc l
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f62

    ld [hl], $00
    inc bc
    pop af

jr_056_4f3e:
    ld l, $24
    inc l

jr_056_4f41:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f6d

    ld [hl], $00
    inc b
    ldh a, [$2e]
    inc h
    inc l

jr_056_4f4c:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f78

    ld [hl], $00
    dec b
    pop af
    ld l, $24
    inc l

jr_056_4f57:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f83

    ld [hl], $00
    ld b, $f1
    ld l, $24
    inc l

jr_056_4f62:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f8e

    ld [hl], $00
    rlca
    pop af
    ld l, $24
    inc l

jr_056_4f6d:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4f99

    ld [hl], $00
    ld [$2ef0], sp
    inc h
    inc l

jr_056_4f78:
    ld a, [hl-]
    inc h
    jr nc, jr_056_4fa4

    ld [hl], $00
    add hl, bc
    pop af
    ld h, h
    ld h, h
    ld h, h

jr_056_4f83:
    ld h, h
    dec h
    scf
    cpl
    jr nc, @+$2a

    ld [hl], $f1
    ld h, h
    ld h, h
    ld h, h

jr_056_4f8e:
    dec h
    scf
    cpl
    jr nc, @+$2a

    ld [hl], $01
    pop af
    ld h, h
    ld h, h
    ld h, h

jr_056_4f99:
    dec h
    scf
    cpl
    jr nc, jr_056_4fc6

    ld [hl], $02
    ldh a, [$64]
    ld h, h
    ld h, h

jr_056_4fa4:
    dec h
    scf
    cpl
    ld h, $30
    daa
    pop af
    ld h, h
    ld h, h
    dec h
    scf
    cpl
    jr nc, @+$2a

    ld [hl], $04
    pop af
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    jr nc, @+$2a

    ld [hl], $00
    pop af
    ld [hl], $37
    inc h
    add hl, hl
    add hl, hl
    jr nc, @+$2a

jr_056_4fc6:
    ld [hl], $01
    ldh a, [$28]
    ld sp, $2c27
    ld sp, $302a
    jr z, jr_056_5008

    pop af
    jr nc, jr_056_5007

    ld sp, $242b
    inc l
    jr nc, jr_056_5003

    ld [hl], $f1
    jr nc, jr_056_5011

    ld sp, $312c
    add hl, hl
    jr nc, jr_056_500d

    ld [hl], $f1
    scf
    ld [hl-], a
    ld l, $38
    ld a, [hl+]
    inc l
    jr nc, jr_056_5017

    ld [hl], $f0
    ld h, h
    daa
    jr z, jr_056_5025

    ld [hl-], a
    jr nc, @+$2a

    ld [hl], $00
    nop
    pop af
    daa
    jr z, jr_056_502f

    ld [hl-], a
    ld sp, $3024

jr_056_5003:
    jr z, jr_056_5005

jr_056_5005:
    nop
    pop af

jr_056_5007:
    ld h, h

jr_056_5008:
    dec h
    ld [hl-], a
    ld [hl-], a
    ld l, $30

jr_056_500d:
    jr z, jr_056_5045

    nop
    nop

jr_056_5011:
    pop af
    ld h, h
    ld [hl-], a
    dec h
    dec l
    scf

jr_056_5017:
    jr nc, jr_056_5041

    ld [hl], $00
    nop
    ldh a, [$2c]
    ld sp, $2439
    cpl
    inc l
    daa
    ld h, h

jr_056_5025:
    ld sp, $3038
    dec h
    jr z, jr_056_5060

    ld h, l
    ldh a, [rNR50]
    ld c, e

jr_056_502f:
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
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
    pop af
    add hl, hl
    ld b, d

jr_056_5041:
    ld d, d
    ld b, d
    ld c, a
    ccf

jr_056_5045:
    ld a, $49
    ld c, c
    ld h, c
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
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
    pop af
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]

jr_056_5060:
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
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld d, b
    ld e, e
    ld d, d
    ld c, c
    ld b, d
    pop af
    ld d, e
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld b, d
    ld c, e
    ld c, e
    ld d, c
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld h, h
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec [hl]
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    pop af
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    jr z, jr_056_5160

    ld c, l
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    pop af
    jr z, jr_056_5187

    ld c, l
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld a, [hl-]
    ld a, $45
    ld c, e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    pop af
    jr z, jr_056_51a7

    ld c, l
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d

jr_056_5160:
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]

jr_056_5187:
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ccf
    ld b, d
    ld c, c
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ld c, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]

jr_056_51a7:
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, l
    ld b, d
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, d
    pop af
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ccf
    ld b, d
    ld c, c
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ld c, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    jr z, jr_056_521f

    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, l
    ld b, d
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, d
    pop af
    ld [hl], $40
    ld b, l
    ld c, e
    ld b, d
    ld b, d
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ld c, d
    ld h, c

jr_056_521f:
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    pop af
    ld d, c
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec hl
    ld b, d
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    pop af
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld a, $4b
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, c
    ldh a, [$37]
    ld e, h
    ld d, c
    ld b, d
    ld d, c
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    scf
    ld e, h
    ld d, c
    ld b, d
    ld d, c
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl-], a
    ld c, l
    ld b, e
    ld b, d
    ld c, a
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
    ld d, c
    ld e, h
    ld d, c
    ld b, d
    ld d, c
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld d, c
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
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld b, c
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
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    dec h
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a
    ld e, l
    ld b, b
    ld b, l
    ld b, d
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    pop af
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
    ld c, e
    pop af
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
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
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld h, c
    ldh a, [$36]
    ld a, $52
    ld b, h
    ld d, c
    ld h, h
    jr nc, jr_056_53b8

    pop af
    ld d, e
    ld c, h
    ld c, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld a, $3f
    ld h, c
    ldh a, [$36]
    ld a, $52
    ld b, h
    ld d, c
    ld h, h
    jr nc, jr_056_53d0

    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld b, h
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
    pop af
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e

jr_056_53b8:
    ld b, [hl]
    ld c, b
    ld h, h
    ld a, $3f
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    inc h
    ccf

jr_056_53d0:
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$28]
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    pop af
    ld h, $45
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    jr z, jr_056_5487

    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld a, $4a
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    inc h
    ld b, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d

jr_056_5487:
    and c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld b, c
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
    pop af
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$28]
    ld c, a
    ld b, l
    ld e, h
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    inc h
    ld b, h
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    pop af
    ld h, $45
    ld a, $4f
    ld a, $48
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    jr z, jr_056_552d

    ld b, l
    ld e, h
    ld b, l
    ld d, c
    pop af
    ld b, c
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
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld a, $4a
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    inc h
    ld d, c
    ld b, d
    ld c, d

jr_056_552d:
    sbc h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld b, c
    ld c, h
    ld c, l
    ld c, l
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
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
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, c
    ld h, c
    ldh a, [$35]
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
    pop af
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld h, c
    ldh a, [$35]
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
    pop af
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2c]
    ld c, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    jr nc, jr_056_560b

    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld b, l
    ld a, $4f
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    pop af
    ld [hl], $51
    ld a, $45
    ld c, c
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    pop af
    inc bc
    nop
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    inc b
    nop
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$2b]

jr_056_560b:
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    pop af
    rlca
    dec b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    add hl, bc
    nop
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    pop af
    ld d, e
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    pop af
    add hl, bc
    nop
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld bc, $0002
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    pop af
    ld d, e
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
    ld h, c
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
    ld b, d
    ld c, e
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_056_56e3

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
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
    ld b, d
    ld c, e
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_056_5701

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl], $46
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    pop af
    jr nc, jr_056_571b

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    pop af
    ld c, h
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ldh a, [$28]

jr_056_56e3:
    ld c, e
    ld d, c
    ld b, h
    ld b, [hl]
    ld b, e
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    pop af
    jr nc, jr_056_5741

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c

jr_056_5701:
    ld d, c
    ld h, h
    cpl
    ld e, e
    ld b, l
    ld c, d
    ld d, d
    ld c, e
    ld b, h
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $43
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c

jr_056_571b:
    ld d, c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_056_577c

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    add hl, hl
    ld c, c
    ld d, d

jr_056_5741:
    ld b, b
    ld b, l
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_056_5798

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld d, d
    ld d, c
    ld d, a
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    pop af
    dec h
    ld a, $4f
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    sbc h
    ld h, b
    ld h, h
    cpl
    ld a, $53
    ld a, $9c
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $52
    ld c, d
    ld c, l
    ld b, e
    ld b, e
    ld b, d
    ld c, c

jr_056_577c:
    ld b, c
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    jr c, jr_056_57cf

    ld b, h
    ld b, d
    ccf
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld b, h
    ld b, d
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c

jr_056_5798:
    ld h, c
    ldh a, [$38]
    ld c, e
    ccf
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
    ld d, c
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    pop af
    ld d, c
    ld c, h
    ld c, c
    ld c, c
    ld c, b
    ld e, l
    ld b, l
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$35]
    ld b, d
    ld c, d
    ld c, l
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld l, $4f
    ld a, $43

jr_056_57cf:
    ld d, c
    ld h, c
    ldh a, [$2a]
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    pop af
    ld b, e
    ld e, l
    ld c, a
    ld h, h
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
    ld h, c
    ldh a, [$2e]
    ld a, $4a
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
    ld h, b
    pop af
    ld d, d
    ld c, d
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
    ld h, h
    ld d, a
    ld d, d
    pop af
    ld d, c
    ld e, h
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2d]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld d, c
    pop af
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    pop af
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, c
    ldh a, [$36]
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
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
    ld c, e
    pop af
    dec [hl]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$36]
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ld b, l
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [rNR50]
    ld d, c
    ld c, d
    ld b, d
    ld d, c
    ld h, h
    ld d, c
    ld b, [hl]
    ld b, d
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    pop af
    ld [hl], $51
    ld a, $4f
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld b, [hl]
    ld c, e
    pop af
    ld b, c
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
    ld c, e
    ld h, h
    dec [hl]
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ldh a, [$29]
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    sbc h
    pop af
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, c
    ldh a, [rNR51]
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    sbc h
    pop af
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, c
    ldh a, [$39]
    ld a, $48
    ld d, d
    ld d, d
    ld c, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    sbc h
    pop af
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, c
    ldh a, [rSB]
    nop
    nop
    xor d
    ld h, h
    ld d, c
    ld c, a
    ld b, d
    ld b, e
    ld b, e
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    add hl, sp
    ld e, h
    ld b, h
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    jr nc, jr_056_5a58

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec a
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld c, c
    ld d, c
    pop af
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
    ld h, c
    ldh a, [$3d]
    ld d, h
    ld b, d
    ld b, [hl]
    ld h, h
    inc h

jr_056_5a58:
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    pop af
    inc l
    ld c, e
    ld h, h
    add hl, hl
    ld c, h
    ld c, c
    ld b, h
    ld b, d
    ld h, c
    ldh a, [$39]
    ld b, [hl]
    ld b, d
    ld c, a
    ld c, d
    ld a, $49
    pop af
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld a, $4b
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld l, $3e
    ld c, d
    ld b, d
    ld c, a
    ld a, $41
    ld b, d
    ld c, e
    ld h, c
    ldh a, [rNR50]
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    pop af
    ld l, $3e
    ld c, d
    ld b, d
    ld c, a
    ld a, $41
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$3d]
    ld d, h
    ld b, d
    ld b, [hl]
    ld h, h
    inc h
    ld c, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
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
    ld c, e
    pop af
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, a
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$30]
    ld a, $4b
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    pop af
    ld a, $49
    ld d, b
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    pop af
    ld a, $4b
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld a, $4a
    ld h, h
    jr z, jr_056_5b67

    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    pop af
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, a
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld a, $52
    ld b, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$36]
    ld b, d
    ld d, c
    ld d, a
    ld d, c
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
    pop af
    ld b, e
    ld c, a
    ld b, d
    ld b, [hl]

jr_056_5b67:
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    jr z, jr_056_5bc1

    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    cpl
    ld e, h
    ld d, b
    ld d, c
    pop af
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld h, h
    ld a, $52
    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld b, e
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld b, d
    ld c, c
    ld d, b

jr_056_5bc1:
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, e
    pop af
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    pop af
    ld [hl], $4d
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    add hl, hl
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl], $4d
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld d, b
    ld h, h
    add hl, hl
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    pop af
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
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    pop af
    jr c, jr_056_5c88

    ld d, e
    ld c, h
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ccf
    ld a, $4f
    ld b, d
    pop af
    add hl, hl
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl], $4d
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld l, $5b
    ld c, c
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl], $4d
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld l, $5b
    ld c, c
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d

jr_056_5c88:
    and c
    ld h, h
    jr z, jr_056_5cdb

    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    pop af
    ld [hl], $40
    ld b, l
    ld c, e
    ld b, d
    ld b, d
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ld c, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl], $4d
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld c, c
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld d, c
    ld b, d
    ld c, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, l
    ld b, d
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, d
    pop af

jr_056_5cdb:
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    pop af
    ld a, [hl-]
    ld a, $45
    ld c, e
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    pop af
    jr z, jr_056_5d4c

    ld c, l
    ld c, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    pop af
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
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
    ld h, c
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h

jr_056_5d4c:
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
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
    ld h, c
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld b, h
    ld b, d
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld d, c
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    daa
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
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
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld d, c
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
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
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
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
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
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
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, a
    ld d, c
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
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
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
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
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    scf
    ld e, h
    ld d, c
    ld b, d
    ld d, c
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    cpl
    ld e, h
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld [hl], $3e
    ld c, e
    ld b, c
    ld d, b
    ld d, c
    ld d, d
    ld c, a
    ld c, d
    ld h, h
    ld a, $52
    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec h
    ld c, c
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, l
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld c, d
    pop af
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
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
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
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
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    jr nc, jr_056_5f53

    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$36]
    ld a, $52
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_056_5f6d

    ld h, h
    ld b, c
    ld b, d
    ld d, b
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    ld a, $3f
    ld h, c
    ldh a, [$37]
    ld e, e
    ld c, e
    ld d, a
    ld b, d
    ld c, c
    ld d, c
    ld h, h

jr_056_5f53:
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, e
    ld c, c
    ld b, [hl]
    ld c, e
    ld c, b
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d

jr_056_5f6d:
    ld d, c
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
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    scf
    ld a, $4b
    ld d, a
    ld h, c
    ldh a, [$30]
    ld a, $40
    ld b, l
    ld d, c
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
    pop af
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ld d, d
    ld c, e
    ld b, e
    ld e, e
    ld b, l
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [rNR51]
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
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
    pop af
    ld d, a
    ld d, d
    ld h, h
    add hl, hl
    ld a, $49
    ld c, c
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    cpl
    ld e, e
    ld e, [hl]
    ld d, c
    pop af
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
    pop af
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    pop af
    ld d, d
    ld c, d
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
    pop af
    ld a, $52
    ld b, e
    ld d, a
    ld d, d
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2b]
    ld c, h
    ld c, c
    ld d, c
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2c]
    ld c, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    pop af
    dec hl
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    pop af
    jr nc, jr_056_60b3

    ld b, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    pop af
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec a
    ld d, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld d, d

jr_056_60b3:
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ldh a, [rNR51]
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
    ld b, d
    ld c, e
    pop af
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ldh a, [$35]
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    scf
    ld a, $51
    ld d, c
    ld d, b
    pop af
    ld b, l
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, c
    ldh a, [$35]
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    daa
    ld b, d
    ld a, $44
    ld c, h
    pop af
    ld b, l
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, c
    ldh a, [$35]
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    ld [hl], $4c
    ld c, d
    ld b, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld c, e
    pop af
    ld b, l
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, c
    ldh a, [$35]
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    dec h
    ld a, $57
    ld d, a
    ld d, d
    pop af
    ld b, l
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld e, l
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld l, $3e
    ld c, d
    ld b, d
    ld c, a
    ld a, $41
    ld b, d
    ld c, e
    pop af
    ld d, e
    ld c, h
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    add hl, hl
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    pop af
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld h, h
    ld a, $3f
    ld h, c
    ldh a, [$3a]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld d, c
    ld b, d
    ld c, d
    pop af
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    pop af
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    inc h
    ld d, c
    ld b, d
    ld c, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    pop af
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, c
    ldh a, [$2f]
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    pop af
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld d, b
    pop af
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ldh a, [rNR51]
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
    pop af
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    pop af
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
    ld h, c
    ldh a, [rNR51]
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    pop af
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    ld [hl], $3e
    ld d, d
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    inc h
    ld d, c
    ld b, d
    ld c, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ldh a, [$39]
    ld c, h
    ld c, a
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, $4b
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec h
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld a, $4b
    ld d, a
    ld h, c
    ldh a, [rNR51]
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld d, c
    ld b, d
    ld c, d
    ld a, $4b
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    pop af
    dec b
    nop
    nop
    ld h, h
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    ld h, h
    dec hl
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld d, d
    ld c, d
    pop af
    rlca
    nop
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld [$6400], sp
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    pop af
    ld a, [hl-]
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
    ld h, c
    ldh a, [$a0]
    inc h
    ld c, c
    ld c, c
    ld b, d
    and c
    pop af
    ld a, [hl-]
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
    ld h, c
    ldh a, [$f0]
    add hl, sp
    ld b, d
    ld c, a
    ld d, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    pop af
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$36]
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    pop af
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld d, d
    ld c, e
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld h, c
    ldh a, [$f0]
    ret c

    ld h, e
    ldh a, [$63]
    ld c, d
    ld c, [hl]
    ld h, c
    ld c, [hl]
    sbc c
    ld c, [hl]
    push bc
    ld c, [hl]
    pop af
    ld c, [hl]
    dec e
    ld c, a
    ld c, c
    ld c, a
    ld [hl], l
    ld c, a
    and c
    ld c, a
    ret


    ld c, a
    pop af
    ld c, a
    dec e
    ld d, b
    dec l
    ld d, b
    ld c, d
    ld d, b
    ld l, [hl]
    ld d, b
    sub h
    ld d, b
    xor a
    ld d, b
    sub $50
    or $50
    inc d
    ld d, c
    dec a
    ld d, c
    ld e, e
    ld d, c
    ld a, e
    ld d, c
    sbc e
    ld d, c
    call nz, $dc51
    ld d, c
    rst $30
    ld d, c
    jr nz, jr_056_6462

    ld a, [hl-]
    ld d, d
    ld e, d
    ld d, d
    ld a, b
    ld d, d
    adc d
    ld d, d
    and e
    ld d, d
    call z, $e652
    ld d, d
    rlca
    ld d, e
    dec [hl]
    ld d, e
    ld e, d
    ld d, e
    ld a, l
    ld d, e
    sub l
    ld d, e
    cp a
    ld d, e
    ld [c], a
    ld d, e
    dec bc
    ld d, h
    cpl
    ld d, h
    ld e, l
    ld d, h
    add d
    ld d, h
    xor a
    ld d, h
    push de
    ld d, h
    dec b
    ld d, l
    jr c, jr_056_6491

    ld c, a
    ld d, l
    ld a, [hl]
    ld d, l
    sbc c
    ld d, l
    xor l
    ld d, l
    call nz, $ec55
    ld d, l
    ld a, [bc]
    ld d, [hl]
    jr z, jr_056_64a2

    ld a, $56
    ld h, h
    ld d, [hl]
    add c
    ld d, [hl]
    sbc a
    ld d, [hl]
    cp l
    ld d, [hl]
    ld [c], a
    ld d, [hl]
    db $fd
    ld d, [hl]
    rla
    ld d, a
    jr c, jr_056_64b5

    ld d, h
    ld d, a
    ld a, a
    ld d, a

jr_056_6462:
    sbc d
    ld d, a
    and l
    ld d, a
    and l
    ld d, a
    cp c
    ld d, a
    jp nc, $ee57

    ld d, a
    rla
    ld e, b
    ld [hl], $58
    ld c, l
    ld e, b
    ld [hl], h
    ld e, b
    and [hl]
    ld e, b
    call c, $f558
    ld e, b
    inc c
    ld e, c
    inc h
    ld e, c
    scf
    ld e, c
    ld c, c
    ld e, c
    ld [hl], b
    ld e, c
    sbc b
    ld e, c
    cp [hl]
    ld e, c
    push hl
    ld e, c
    inc c
    ld e, d
    inc sp
    ld e, d
    ld d, d

jr_056_6491:
    ld e, d
    ld l, d
    ld e, d
    adc h
    ld e, d
    and e
    ld e, d
    cp l
    ld e, d
    rst $20
    ld e, d
    rlca
    ld e, e
    jr nc, jr_056_64fb

    ld d, c
    ld e, e

jr_056_64a2:
    ld l, c
    ld e, e
    adc h
    ld e, e
    and e
    ld e, e
    call nc, $e95b
    ld e, e
    ld b, $5c
    inc [hl]
    ld e, h
    ld d, d
    ld e, h
    ld h, a
    ld e, h
    add e

jr_056_64b5:
    ld e, h
    sbc a
    ld e, h
    cp a
    ld e, h
    ld [c], a
    ld e, h
    nop
    ld e, l
    add hl, de
    ld e, l
    ld b, c
    ld e, l
    ld l, [hl]
    ld e, l
    sub h
    ld e, l
    cp l
    ld e, l
    rst $18
    ld e, l
    inc bc
    ld e, [hl]
    dec l
    ld e, [hl]
    ld d, b
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    add e
    ld e, [hl]
    sbc h
    ld e, [hl]
    cp l
    ld e, [hl]
    sbc $5e
    rrca
    ld e, a
    ld l, $5f
    ld c, e
    ld e, a
    ld h, l
    ld e, a
    add h
    ld e, a
    and a
    ld e, a
    jp z, $e55f

    ld e, a
    ld [$3360], sp
    ld h, b
    ld b, b
    ld h, b
    ld h, d
    ld h, b
    ld a, [hl]
    ld h, b
    sbc d
    ld h, b
    cp d
    ld h, b
    ld [c], a
    ld h, b
    push af

jr_056_64fb:
    ld h, b
    ld [$1e61], sp
    ld h, c
    ld sp, $5061
    ld h, c
    ld l, a
    ld h, c
    sub c
    ld h, c
    cp e
    ld h, c
    sbc $61
    ld a, [bc]
    ld h, d
    ld a, [hl+]
    ld h, d
    ld d, d
    ld h, d
    ld [hl], c
    ld h, d
    adc h
    ld h, d
    and a
    ld h, d
    cp a
    ld h, d
    db $e4
    ld h, d
    ei
    ld h, d
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    ld [de], a
    ld h, e
    inc de
    ld h, e
    dec [hl]
    ld h, e
    ld e, e
    ld h, e
    add c
    ld h, e
    xor c
    ld h, e
    jp nz, $d363

    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    db $d3
    ld h, e
    jr nc, jr_056_65f2

jr_056_65f2:
    ld [bc], a
    rst $38
    adc c
    rst $38
    ret


    rst $38
    ret


    rst $38
    xor c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    adc c
    rst $38
    nop
    rst $38
    di
    rst $38
    ld bc, $01ff
    rst $38
    pop hl
    ld [bc], a
    ld [de], a
    ld bc, $fff3
    nop
    rst $38
    sub c
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    dec d
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    sub c
    rst $38
    nop
    jr nc, jr_056_6623

jr_056_6623:
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub d
    rst $38
    ld d, h
    rst $38
    jr c, @+$01

    ld d, h
    rst $38
    sub d
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    inc c
    rst $38
    ld [$0500], sp
    dec b
    dec b
    rst $38
    db $fc
    ld bc, $0f01
    rrca
    ccf
    ccf
    ld a, h
    ld a, h
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    dec b
    ld e, $01
    add b
    add b
    dec b
    rst $38
    db $f4
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    dec b
    rst $38
    or $f8
    ld hl, sp+$1c
    dec b
    ld b, b
    dec bc
    rrca
    rrca
    rrca
    rrca
    ld c, $05
    ld d, h
    rlca
    dec b
    ld e, $00
    dec b
    rst $38
    ld hl, sp-$40
    ret nz

    ld hl, sp-$08
    cp $fe
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ff05
    db $f4
    add c
    add c
    add e
    add e
    jp $c3c3


    jp $0707


    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    dec b
    inc h
    nop
    dec b
    ld e, $00
    inc bc
    inc bc
    dec b
    ld h, h
    ld a, [bc]
    ldh a, [$f0]
    ld a, b
    ld a, b
    inc e
    inc e
    dec b
    ld d, h
    nop
    ld b, $06
    ld bc, $0701
    rlca
    dec b
    ld d, d
    nop
    rrca
    rrca
    rlca
    rlca
    dec b
    and h
    nop
    dec b
    ld h, b
    ld b, $c0
    ret nz

    db $fc
    db $fc
    ld a, a
    ld a, a
    db $fc
    db $fc
    db $fc
    db $fc
    dec b
    ld h, [hl]
    ld [$ffff], sp
    ldh [$e0], a
    ldh a, [$f0]
    ld a, h
    ld a, h
    ccf
    ccf
    rrca
    rrca
    dec b
    ld a, [hl]
    nop
    dec b
    ld h, d
    inc b
    add b
    add b
    dec b
    ld h, b
    ld [bc], a
    dec b
    ld [hl-], a
    ld b, $05
    jr nc, jr_056_6708

    dec b
    ld b, b

jr_056_6708:
    ld a, [bc]
    nop
    nop
    dec b
    ld d, h
    ld [$0e0e], sp
    dec b
    rst $38
    ld hl, sp+$05
    ld h, b
    ld [bc], a
    ld bc, $0501
    ld a, b
    nop
    rrca
    rrca
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    jp $83c3


    add e
    add c
    add c
    dec b
    rst $38
    or $05
    sbc d
    nop
    dec b
    or d
    nop
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    rlca
    rlca
    dec b
    rst $38
    or $03
    inc bc
    dec b
    ld h, b
    ld [bc], a
    dec b
    ld d, h
    nop
    inc e
    inc e
    ld a, b
    ld a, b
    dec b
    sub [hl]
    nop
    dec b
    rst $38
    ld a, [$5005]
    nop
    nop
    nop
    dec b
    ld a, h
    ld d, $05
    ld a, [bc]
    inc d
    ld a, [hl]
    ld a, [hl]
    dec b
    ret z

    nop
    rra
    rra
    dec b
    ld e, b
    db $10
    dec b
    rst $38
    ld a, [c]
    jr nz, jr_056_676e

    call nc, $0515
    rst $38
    ld a, [c]

jr_056_676e:
    ld [de], a
    ld [de], a
    ld a, [de]
    ld a, [de]
    ld d, $16
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    add d
    inc d
    dec b
    ld a, h
    nop
    dec b
    ld a, h
    ld b, $05
    inc h
    ld b, $05
    rst $38
    ld a, [c]
    ldh a, [$f0]
    add b
    add b
    ldh [$e0], a
    add b
    add b
    ldh a, [$f0]
    dec b
    rst $38
    ld a, [c]
    inc e
    inc e
    ld [de], a
    ld [de], a
    dec b
    inc h
    jr nz, jr_056_67a1

    db $ec
    inc d
    ld bc, $0201

jr_056_67a1:
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    inc d
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    dec b
    rst $38
    ld a, [c]
    jr nc, jr_056_67e8

    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    jr nc, jr_056_67f0

    dec b
    rst $38
    ld a, [c]
    ld c, $0e
    inc b
    dec b
    ld h, [hl]
    inc hl
    dec b
    ld a, [bc]
    inc b
    dec b
    or $1a
    dec b
    ld hl, sp+$18
    dec b
    ret nc

    ld d, $c0
    ret nz

    dec b
    sbc d
    inc d
    inc a
    inc a
    jr nz, jr_056_67fe

    jr c, jr_056_6818

    jr nz, jr_056_6802

    inc a
    inc a
    dec b
    and b
    rst $38
    ld c, l

jr_056_67e8:
    dec b
    dec c
    ccf
    ld c, l
    dec b
    ld l, l
    ccf
    ld c, l

jr_056_67f0:
    dec b
    call $4d3f
    dec b
    dec l
    ld c, a
    ld c, l
    dec b
    adc l
    ld c, a
    ld c, l
    dec b
    db $ed

jr_056_67fe:
    ld c, [hl]
    ld b, b
    ld [bc], a
    inc b

jr_056_6802:
    inc b
    rst $38
    db $fc
    ld bc, $0f01
    rrca
    ccf
    ccf
    ld a, h
    ld a, h
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    inc b
    ld e, $01
    add b

jr_056_6818:
    add b
    inc b
    rst $38
    db $f4
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    inc b
    rst $38
    or $f8
    ld hl, sp+$1c
    inc b
    ld b, b
    dec bc
    rrca
    rrca
    rrca
    rrca
    ld c, $04
    ld d, h
    rlca
    inc b
    ld e, $00
    inc b
    rst $38
    ld hl, sp-$40
    ret nz

    ld hl, sp-$08
    cp $fe
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ff04
    db $f4
    add c
    add c
    add e
    add e
    jp $c3c3


    jp $0707


    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    inc b
    inc h
    nop
    inc b
    ld e, $00
    inc bc
    inc bc
    inc b
    ld h, h
    ld a, [bc]
    ldh a, [$f0]
    ld a, b
    ld a, b
    inc e
    inc e
    inc b
    ld d, h
    nop
    ld b, $06
    ld bc, $0701
    rlca
    inc b
    ld d, d
    nop
    rrca
    rrca
    rlca
    rlca
    inc b
    and h
    nop
    inc b
    ld h, b
    ld b, $c0
    ret nz

    db $fc
    db $fc
    ld a, a
    ld a, a
    db $fc
    db $fc
    db $fc
    db $fc
    inc b
    ld h, [hl]
    ld [$ffff], sp
    ldh [$e0], a
    ldh a, [$f0]
    ld a, h
    ld a, h
    ccf
    ccf
    rrca
    rrca
    inc b
    ld a, [hl]
    nop
    inc b
    ld h, d
    inc b
    add b
    add b
    inc b
    ld h, b
    ld [bc], a
    inc b
    ld [hl-], a
    ld b, $04
    jr nc, jr_056_68b3

    inc b
    ld b, b

jr_056_68b3:
    ld a, [bc]
    nop
    nop
    inc b
    ld d, h
    ld [$0e0e], sp
    inc b
    rst $38
    ld hl, sp+$04
    ld h, b
    ld [bc], a
    ld bc, $0401
    ld a, b
    nop
    rrca
    rrca
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    jp $83c3


    add e
    add c
    add c
    inc b
    rst $38
    or $04
    sbc d
    nop
    inc b
    or d
    nop
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    rlca
    rlca
    inc b
    rst $38
    or $03
    inc bc
    inc b
    ld h, b
    ld [bc], a
    inc b
    ld d, h
    nop
    inc e
    inc e
    ld a, b
    ld a, b
    inc b
    sub [hl]
    nop
    inc b
    rst $38
    ld a, [$5004]
    nop
    nop
    nop
    inc b
    ld a, h
    ld d, $04
    ld a, [bc]
    inc d
    ld a, [hl]
    ld a, [hl]
    inc b
    ret z

    nop
    rra
    rra
    inc b
    ld e, b
    db $10
    inc b
    rst $38
    ld a, [c]
    jr nz, jr_056_6918

    call nc, $0415
    rst $38

jr_056_6918:
    ld a, [c]
    ld [de], a
    ld [de], a
    ld a, [de]
    ld a, [de]
    ld d, $16
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc b
    add d
    inc d
    inc b
    ld a, h
    nop
    inc b
    ld a, h
    ld b, $04
    inc h
    ld b, $04
    rst $38
    ld a, [c]
    ldh a, [$f0]
    add b
    add b
    ldh [$e0], a
    add b
    add b
    ldh a, [$f0]
    inc b
    rst $38
    ld a, [c]
    inc e
    inc e
    ld [de], a
    ld [de], a
    inc b
    inc h
    jr nz, @+$06

    db $ec
    inc d
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld bc, $01ff
    rst $38
    cp $18
    ld bc, $0712
    rra
    rst $38
    nop
    rst $38
    inc a
    ld bc, $0712
    inc a
    rst $38
    nop
    rst $38
    ld [hl], c
    rst $38
    reti


    rst $38
    pop bc
    ld bc, $0136
    reti


    rst $38
    ld [hl], c
    rst $38
    nop
    rst $38
    di
    rst $38
    add e
    rst $38
    add e
    ld bc, $0542
    nop
    rst $38
    inc hl
    rst $38
    ld h, $ff
    and a
    rst $38
    and e
    rst $38
    ld h, c
    rst $38
    ld h, h
    rst $38
    daa
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    ld c, h
    rst $38
    inc c
    rst $38
    adc a
    rst $38
    call z, $ccff
    rst $38
    adc a
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    sbc e
    ld bc, $0174
    sbc [hl]
    ld bc, $0f00
    nop
    ld a, c
    rst $38
    ld h, l
    rst $38
    ld h, h
    rst $38
    ld a, b
    rst $38
    ld h, h
    ld bc, $0196
    nop
    rst $38
    ld [$98ff], sp
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    ld h, b
    ld bc, $01aa
    nop
    rst $38
    inc bc
    ld bc, $09b2
    nop
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    and e
    rst $38
    and e
    rst $38
    ld h, e
    rst $38
    ld h, e
    ld bc, $015e
    sbc c
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    dec e
    ld bc, $0174
    sbc c
    rst $38
    nop
    rst $38
    ccf
    rst $38
    inc c
    ld bc, $07e4
    nop
    rst $38
    ld a, $ff
    jr nc, @+$01

    jr nc, jr_056_6a00

    ld a, [c]

jr_056_6a00:
    dec b
    nop
    ld bc, $019a
    ld [hl], h
    rst $38
    ld [hl], h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    reti


    ld bc, $1514
    ldh a, [rIE]
    nop
    rst $38
    ldh [rIE], a
    or b
    ld bc, $1524
    ldh [rSB], a
    and b
    rst $38
    ld c, l
    ld bc, $1f8f
    ld c, l
    ld bc, $1fef
    ld c, l
    ld bc, $2f4f
    ld c, l
    ld bc, $2faf
    dec a
    sub b
    nop
    ld bc, $00ff
    rst $38
    ld [hl], c
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$88ff], sp
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld b, c
    ld bc, $0114
    ld b, e
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    add e
    ld bc, $011c
    ld b, e
    rst $38
    ld [c], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    ld hl, $21ff
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    ld hl, $00ff
    rst $38
    rst $08
    rst $38
    ld [bc], a
    ld bc, $0744
    nop
    rst $38
    adc [hl]
    rst $38
    ld de, $5401
    dec b
    ld c, $ff
    nop
    rst $38
    ld e, $01
    ld d, h
    ld bc, $ff1e
    inc d
    rst $38
    ld [de], a
    rst $38
    ld de, $01ff
    rst $38
    ldh a, [rSB]
    ld [hl], c
    ld a, [bc]
    jr @+$01

    jr jr_056_6aa1

    ld a, [hl]

jr_056_6aa1:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ld hl, sp-$01
    ld [$50ff], sp
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld b, d
    ld bc, $0312
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld hl, $2201
    inc bc
    ld bc, $001b
    add c
    rst $38
    nop
    rst $38
    ld [$3201], sp
    rlca
    rrca
    rst $38
    nop
    rst $38
    rra
    rst $38
    inc b
    ld bc, $0544
    add h
    rst $38
    nop
    rst $38
    ld c, $ff
    ld de, $5401
    dec b
    ld c, $ff
    nop
    rst $38
    ld e, $01
    ld d, h
    ld bc, $ff1e
    inc d
    rst $38
    ld [de], a
    rst $38
    ld de, $01ff
    rst $38
    ldh a, [rSB]
    ld [hl], c
    ld a, [bc]
    jr @+$01

    jr jr_056_6b02

    ld a, [hl]

jr_056_6b02:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    adc b
    ld bc, $0102
    xor b
    rst $38
    xor b
    rst $38
    ret c

    rst $38
    adc b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0114
    ld hl, sp+$01
    ld [bc], a
    ld bc, $ff00
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add b
    ld bc, $0102
    ld [hl], b
    ld bc, $0500
    ld bc, $021b
    ld bc, $000f
    ld hl, sp-$01
    jr nz, jr_056_6b3c

    ld b, h

jr_056_6b3c:
    rlca
    ld bc, $0221
    ld bc, $0455
    ld bc, $002f
    ldh a, [rSB]
    ld [bc], a
    ld bc, $fff0
    and b
    rst $38
    sub b
    ld bc, $010e
    ld bc, $0c71
    jr @+$01

    jr jr_056_6b5a

    ld a, [hl]

jr_056_6b5a:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    adc b
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    adc b
    ld bc, $010a
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0512
    ld bc, $0e01
    ld [hl], b
    ld bc, $030a
    ld bc, $000b
    ld [hl], b
    ld bc, $0110
    jr nz, jr_056_6b88

    ld b, h

jr_056_6b88:
    rlca
    ld bc, $0e31
    ldh a, [rSB]
    ld a, [bc]
    ld bc, $fff0
    and b
    rst $38
    sub b
    ld bc, $010e
    ld bc, $0c71
    jr @+$01

    jr jr_056_6ba0

    ld a, [hl]

jr_056_6ba0:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ld sp, hl
    rst $38
    add hl, bc
    rst $38
    ld d, c
    rst $38
    ld hl, $51ff
    rst $38
    add c
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld d, e
    rst $38
    ld d, d
    rst $38
    or d
    rst $38
    inc de
    rst $38
    nop
    rst $38
    ld [c], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld bc, $0522
    nop
    rst $38
    ld a, $ff
    jr nz, @+$01

    jr nz, @+$01

    inc a
    ld bc, HeaderTitle
    jr nz, @+$01

    nop
    rst $38
    ld a, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld bc, $0542
    nop
    rst $38
    add a
    rst $38
    add c
    ld bc, $0554
    ld bc, $000f
    rst $00
    rst $38
    ld [$6401], sp
    dec b
    rlca
    rst $38
    nop
    rst $38
    ld e, $ff
    sub c
    rst $38
    sub c
    rst $38
    sbc [hl]
    rst $38
    sub h
    rst $38
    sub d
    rst $38
    ld de, $00ff
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    nop
    ld bc, HeaderLogo
    ld bc, $0413
    ld [hl], b
    ld bc, $0510
    ld hl, sp+$01
    ld [de], a
    inc bc
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0532
    ld bc, $0031
    jr nz, jr_056_6c49

    ld b, h

jr_056_6c49:
    rlca
    nop
    rst $38
    ld [hl], b
    ld bc, $0b14
    ld bc, $0c03
    ld bc, $0c71
    jr @+$01

    jr jr_056_6c5b

    ld a, [hl]

jr_056_6c5b:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    adc b
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    adc b
    ld bc, $010a
    ld bc, $0001
    ld bc, $0613
    ld [hl], b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    jr nz, jr_056_6c7d

    inc h

jr_056_6c7d:
    rlca
    ld bc, $f0ff
    ld bc, $f0ff
    ld hl, sp+$01
    jr nc, jr_056_6c8f

    ld bc, $0a25
    ld [hl], b
    ld bc, $0b14

jr_056_6c8f:
    ldh a, [rSB]
    ld a, [bc]
    ld bc, $fff0
    and b
    rst $38
    sub b
    ld bc, $010e
    ld bc, $0c71
    jr @+$01

    jr jr_056_6ca3

    ld a, [hl]

jr_056_6ca3:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc c
    rst $38
    adc c
    rst $38
    pop af
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [c], a
    rst $38
    ld [de], a
    ld bc, $0314
    inc de
    rst $38
    ld [c], a
    rst $38
    nop
    rst $38
    inc hl
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    and e
    rst $38
    and d
    rst $38
    ld h, d
    rst $38
    inc hl
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld bc, $0332
    ld bc, $001f
    rst $08
    ld bc, $0124
    jp nz, $82ff

    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    adc [hl]
    rst $38
    ld de, $5401
    dec b
    ld c, $ff
    nop
    rst $38
    ld e, $01
    ld d, h
    ld bc, $ff1e
    inc d
    rst $38
    ld [de], a
    rst $38
    ld de, $01ff
    rst $38
    ldh a, [rSB]
    ld [hl], c
    ld a, [bc]
    jr @+$01

    jr jr_056_6d10

    ld a, [hl]

jr_056_6d10:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    adc b
    ld bc, $0102
    xor b
    rst $38
    xor b
    rst $38
    ret c

    rst $38
    adc b
    ld bc, $0500
    ld bc, $0203
    ld [hl], b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    jr nz, jr_056_6d31

    inc h

jr_056_6d31:
    rlca
    ld bc, $f0ff
    ld bc, $f0ff
    ld hl, sp+$01
    jr nc, jr_056_6d43

    ld bc, $0a25
    ld [hl], b
    ld bc, $0b14

jr_056_6d43:
    ldh a, [rSB]
    ld [bc], a
    ld bc, $fff0
    and b
    rst $38
    sub b
    ld bc, $010e
    ld bc, $0c71
    jr @+$01

    jr jr_056_6d57

    ld a, [hl]

jr_056_6d57:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ld sp, hl
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop af
    ld bc, HeaderLogo
    add c
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    db $e3
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    inc de
    rst $38
    nop
    rst $38
    add sp, -$01
    ld [$08ff], sp
    ld bc, $0322
    rst $20
    rst $38
    nop
    rst $38
    sbc h
    rst $38
    sub d
    rst $38
    sub c
    ld bc, $0136
    sub d
    rst $38
    inc e
    rst $38
    nop
    rst $38
    ld a, $ff
    jr nz, @+$01

    jr nz, jr_056_6d9d

    ld b, d

jr_056_6d9d:
    dec b
    nop
    rst $38
    adc e
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    sbc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    rst $20
    ld bc, $015c
    ld bc, $0265
    add a
    rst $38
    nop
    rst $38
    ld e, $01
    ld [hl], $01
    sbc [hl]
    rst $38
    sub h
    rst $38
    sub d
    rst $38
    ld de, $00ff
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    cp h
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld bc, $0512
    nop
    rst $38
    jr nz, @+$01

    ld hl, $21ff
    rst $38
    jr nz, jr_056_6dfc

    ld [hl+], a

jr_056_6dfc:
    ld bc, $ff20
    nop
    rst $38
    db $e3
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    db $10
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rst $20
    rst $38
    add c
    ld bc, $0744
    nop
    rst $38
    rst $00
    rst $38
    ld [$5401], sp
    dec b
    rlca
    rst $38
    nop
    rst $38
    rrca
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc a
    rst $38
    adc d
    rst $38
    adc c
    rst $38
    ld [$01ff], sp
    rst $38
    ldh a, [$80]
    rst $38
    add b
    ld bc, $0170
    ld bc, $0073
    nop
    rst $38
    jr @+$01

    jr jr_056_6e44

    ld [hl], b

jr_056_6e44:
    ld bc, $8301
    ld bc, $0090
    ld bc, $00ff
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    cp h
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    add c
    rst $38
    add b
    rst $38
    add c
    ld bc, $0316
    ld hl, sp-$01
    nop
    rst $38
    ld de, $02ff
    rst $38
    ld [de], a
    ld bc, $0326
    pop hl
    rst $38
    nop
    rst $38
    call nz, $24ff
    rst $38
    dec b
    rst $38
    ld b, $ff
    dec h
    rst $38
    inc h
    rst $38
    call nz, $00ff
    rst $38
    ld b, a
    rst $38
    adc b
    rst $38
    ld [$07ff], sp
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    rra
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add h
    ld bc, $0154
    nop
    rst $38
    inc e
    rst $38
    ld [hl+], a
    ld bc, $0564
    inc e
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld a, b
    rst $38
    ld d, b
    rst $38
    ld c, b
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$88ff], sp
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    adc b
    ld bc, $0712
    ld bc, $000f
    ld bc, $0203
    add b
    ld bc, $051a
    adc c
    ld bc, $0112
    ld hl, sp+$01
    ld [de], a
    inc bc
    nop
    rst $38
    di
    rst $38
    ld b, b
    ld bc, $0744
    nop
    rst $38
    db $e3
    rst $38
    add h
    ld bc, $0554
    add e
    rst $38
    nop
    rst $38
    add a
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, a
    rst $38
    ld b, l
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    nop
    rst $38
    add b
    ld bc, HeaderNewLicenseeCode
    add b
    ld bc, $0370
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    jr nz, jr_056_6f35

    ld [bc], a

jr_056_6f35:
    add hl, bc
    nop
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    sub b
    rst $38
    adc b
    ld bc, $0f10
    nop
    ld hl, sp+$01
    inc b
    dec bc
    ld [hl], b
    ld bc, $0114
    ld bc, $0245
    ld [hl], b
    ld bc, $0f10
    nop
    ld bc, $0f61
    dec c
    jr @+$01

    jr jr_056_6f62

    ld a, [hl]

jr_056_6f62:
    ld b, $90
    nop
    ld [bc], a
    rst $38
    nop
    rst $38
    adc c
    ld [bc], a
    ld [bc], a
    rlca
    ld [hl], c
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    add h
    rst $38
    add h
    rst $38
    add a
    ld [bc], a
    inc h
    inc bc
    nop
    rst $38
    call nz, $04ff
    rst $38
    inc b
    ld [bc], a
    ld [hl-], a
    dec b
    nop
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, b
    ld [bc], a
    ld b, d
    ld bc, $027c
    jr nz, @+$03

    ld de, $01ff
    rst $38
    pop hl
    rst $38
    ld de, $11ff
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    adc $02
    ld e, d
    ld bc, $6502
    ld [bc], a
    ld c, $ff
    nop
    rst $38
    inc a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc a
    rst $38
    jr z, @+$01

    inc h
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld [bc], a
    rst $38
    ldh a, [rSC]
    add e
    ld bc, $0090
    ld bc, $00ff
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$88ff], sp
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    pop af
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    pop af
    rst $38
    add c
    ld bc, $011a
    nop
    rst $38
    rra
    rst $38
    db $10
    rst $38
    db $10
    ld bc, $0522
    nop
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    jr nz, @+$01

    cpl
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
    ld a, [de]
    rst $38
    nop
    rst $38
    ld a, $ff
    jr nz, @+$01

    jr nz, jr_056_701d

    ld b, d

jr_056_701d:
    dec b
    nop
    rst $38
    ld b, e
    rst $38
    ld b, b
    ld bc, $0554
    ld a, h
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    adc b
    ld bc, $0564
    add a
    rst $38
    nop
    rst $38
    ld e, $ff
    sub c
    rst $38
    sub c
    rst $38
    sbc [hl]
    rst $38
    sub h
    rst $38
    sub d
    rst $38
    ld de, $00ff
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
