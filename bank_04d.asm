; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

    ld c, l
    cp c
    ld b, e
    ret nz

    ld b, e
    rst $00
    ld b, e
    dec bc
    ld b, b
    dec bc
    ld b, d
    adc $43
    sbc $43
    db $ed
    ld b, e
    db $fc
    ld b, e
    dec c
    ld b, h
    dec e
    ld b, h
    dec l
    ld b, h
    dec a
    ld b, h
    ld c, [hl]
    ld b, h
    ld e, l
    ld b, h
    ld [hl], b
    ld b, h
    add d
    ld b, h
    sub l
    ld b, h
    xor b
    ld b, h
    cp d
    ld b, h
    ret


    ld b, h
    ret c

    ld b, h
    jp hl


    ld b, h
    ei
    ld b, h
    ld c, $45
    rra
    ld b, l
    ld l, $45
    dec a
    ld b, l
    ld c, h
    ld b, l
    ld e, l
    ld b, l
    ld l, l
    ld b, l
    ld a, l
    ld b, l
    adc l
    ld b, l
    sbc [hl]
    ld b, l
    or c
    ld b, l
    pop bc
    ld b, l
    ret nc

    ld b, l
    db $e3
    ld b, l
    or $45
    add hl, bc
    ld b, [hl]
    inc e
    ld b, [hl]
    inc l
    ld b, [hl]
    inc a
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld e, l
    ld b, [hl]
    ld [hl], b
    ld b, [hl]
    add e
    ld b, [hl]
    sub e
    ld b, [hl]
    and [hl]
    ld b, [hl]
    or [hl]
    ld b, [hl]
    add $46
    push de
    ld b, [hl]
    push hl
    ld b, [hl]
    db $f4
    ld b, [hl]
    dec b
    ld b, a
    dec d
    ld b, a
    inc h
    ld b, a
    inc [hl]
    ld b, a
    ld b, l
    ld b, a
    ld d, h
    ld b, a
    ld h, a
    ld b, a
    ld a, c
    ld b, a
    adc e
    ld b, a
    sbc [hl]
    ld b, a
    xor [hl]
    ld b, a
    cp e
    ld b, a
    adc $47
    pop hl
    ld b, a
    db $f4
    ld b, a
    rlca
    ld c, b
    ld a, [de]
    ld c, b
    inc l
    ld c, b
    dec a
    ld c, b
    ld c, h
    ld c, b
    ld e, h
    ld c, b
    ld l, [hl]
    ld c, b
    ld a, l
    ld c, b
    adc l
    ld c, b
    sbc h
    ld c, b
    xor l
    ld c, b
    cp l
    ld c, b
    call $dd48
    ld c, b
    xor $48
    db $fd
    ld c, b
    inc c
    ld c, c
    rra
    ld c, c
    ld l, $49
    ld a, $49
    ld d, c
    ld c, c
    ld h, e
    ld c, c
    ld [hl], d
    ld c, c
    add c
    ld c, c
    sub d
    ld c, c
    and l
    ld c, c
    or l
    ld c, c
    call nz, $d449
    ld c, c
    db $e3
    ld c, c
    ld a, [c]
    ld c, c
    ld [bc], a
    ld c, d
    ld [de], a
    ld c, d
    ld [hl+], a
    ld c, d
    inc sp
    ld c, d
    ld b, d
    ld c, d
    ld d, d
    ld c, d
    ld h, c
    ld c, d
    ld [hl], c
    ld c, d
    add h
    ld c, d
    sub a
    ld c, d
    xor d
    ld c, d
    cp e
    ld c, d
    call z, $df4a
    ld c, d
    xor $4a
    db $fd
    ld c, d
    inc c
    ld c, e
    inc e
    ld c, e
    dec hl
    ld c, e
    ld a, [hl-]
    ld c, e
    ld c, e
    ld c, e
    ld e, e
    ld c, e
    ld l, e
    ld c, e
    ld a, h
    ld c, e
    adc e
    ld c, e
    sbc d
    ld c, e
    xor h
    ld c, e
    cp a
    ld c, e
    pop de
    ld c, e
    ldh [rWX], a
    rst $28
    ld c, e
    ld bc, $134c
    ld c, h
    ld h, $4c
    add hl, sp
    ld c, h
    ld c, b
    ld c, h
    ld d, a
    ld c, h
    ld h, [hl]
    ld c, h
    ld [hl], l
    ld c, h
    add h
    ld c, h
    sub l
    ld c, h
    and l
    ld c, h
    or l
    ld c, h
    add $4c
    push de
    ld c, h
    db $e4
    ld c, h
    db $f4
    ld c, h
    ld b, $4d
    ld d, $4d
    dec h
    ld c, l
    dec [hl]
    ld c, l
    ld c, b
    ld c, l
    ld e, d
    ld c, l
    ld l, e
    ld c, l
    ld a, h
    ld c, l
    adc a
    ld c, l
    and b
    ld c, l
    xor a
    ld c, l
    ret nz

    ld c, l
    db $d3
    ld c, l
    and $4d
    push af
    ld c, l
    rlca
    ld c, [hl]
    ld d, $4e
    dec h
    ld c, [hl]
    ld [hl], $4e
    ld b, [hl]
    ld c, [hl]
    ld d, [hl]
    ld c, [hl]
    ld h, a
    ld c, [hl]
    db $76
    ld c, [hl]
    adc b
    ld c, [hl]
    sbc d
    ld c, [hl]
    xor d
    ld c, [hl]
    cp e
    ld c, [hl]
    call z, $dc4e
    ld c, [hl]
    db $eb
    ld c, [hl]
    ei
    ld c, [hl]
    dec bc
    ld c, a
    ld e, $4f
    dec l
    ld c, a
    inc a
    ld c, a
    ld c, h
    ld c, a
    ld e, e
    ld c, a
    ld l, d
    ld c, a
    ld a, e
    ld c, a
    adc e
    ld c, a
    sbc e
    ld c, a
    xor e
    ld c, a
    cp d
    ld c, a
    bit 1, a
    db $dd
    ld c, a
    db $ec
    ld c, a
    cp $4f
    db $10
    ld d, b
    inc hl
    ld d, b
    ld [hl], $50
    ld b, [hl]
    ld d, b
    ld e, c
    ld d, b
    ld l, h
    ld d, b
    ld a, [hl]
    ld d, b
    adc a
    ld d, b
    and c
    ld d, b
    or b
    ld d, b
    cp a
    ld d, b
    jp nc, $e450

    ld d, b
    or $50
    rlca
    ld d, c
    ld a, [de]
    ld d, c
    ld a, [hl+]
    ld d, c
    jr c, @+$53

    ld c, d
    ld d, c
    ld e, l
    ld d, c
    ld [hl], b
    ld d, c
    add e
    ld d, c
    sub e
    ld d, c
    and [hl]
    ld d, c
    cp b
    ld d, c
    add $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    sub $51
    and $51
    ld [de], a
    ld d, d
    add hl, sp
    ld d, d
    ld h, c
    ld d, d
    add l
    ld d, d
    xor e
    ld d, d
    call nz, $f652
    ld d, d
    inc hl
    ld d, e
    ld e, b
    ld d, e
    add h
    ld d, e
    or [hl]
    ld d, e
    pop de
    ld d, e
    ld hl, sp+$53
    dec h
    ld d, h
    ld b, a
    ld d, h
    ld h, l
    ld d, h
    sbc e
    ld d, h
    ret


    ld d, h
    db $eb
    ld d, h
    inc d
    ld d, l
    inc a
    ld d, l
    ld [hl], b
    ld d, l
    adc h
    ld d, l
    or e
    ld d, l
    sbc $55
    dec c
    ld d, [hl]
    ld a, [hl-]
    ld d, [hl]
    ld l, d
    ld d, [hl]
    add [hl]
    ld d, [hl]
    or c
    ld d, [hl]
    ldh [rRP], a
    dec c
    ld d, a
    add hl, sp
    ld d, a
    ld h, d
    ld d, a
    adc l
    ld d, a
    cp d
    ld d, a
    rst $28
    ld d, a
    ld a, [bc]
    ld e, b
    dec a
    ld e, b
    ld e, d
    ld e, b
    adc e
    ld e, b
    or c
    ld e, b
    pop de
    ld e, b
    db $ed
    ld e, b
    ld d, $59
    ld c, b
    ld e, c
    ld a, b
    ld e, c
    and a
    ld e, c
    jp nz, $e659

    ld e, c
    ld a, [bc]
    ld e, d
    jr c, jr_04d_42cf

    ld h, h
    ld e, d
    sub b
    ld e, d
    or c
    ld e, d
    db $e3
    ld e, d
    ei
    ld e, d
    ld h, $5b
    ld c, e
    ld e, e
    ld l, h
    ld e, e
    and d
    ld e, e
    add $5b
    di
    ld e, e
    inc h
    ld e, h
    ld b, a
    ld e, h
    ld l, e
    ld e, h
    sbc d
    ld e, h
    or [hl]
    ld e, h
    add sp, $5c
    dec de
    ld e, l
    ld c, [hl]
    ld e, l
    ld a, d
    ld e, l
    sbc c
    ld e, l
    push bc
    ld e, l
    rst $30
    ld e, l
    ld e, $5e
    ld c, c
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    and b
    ld e, [hl]
    rst $00
    ld e, [hl]
    rst $30
    ld e, [hl]
    daa
    ld e, a
    ld d, l
    ld e, a
    adc c
    ld e, a
    xor a
    ld e, a
    db $dd
    ld e, a
    ld de, $4260
    ld h, b
    ld h, l
    ld h, b
    sub b
    ld h, b
    cp h
    ld h, b
    rst $20
    ld h, b
    add hl, de
    ld h, c
    ld c, b
    ld h, c
    ld a, l
    ld h, c
    xor h
    ld h, c
    sbc $61

jr_04d_42cf:
    dec b
    ld h, d
    ld a, $62
    ld l, e
    ld h, d
    add a
    ld h, d
    or l
    ld h, d
    push de
    ld h, d
    rlca
    ld h, e
    jr c, jr_04d_4342

    ld h, c
    ld h, e
    add h
    ld h, e
    or l
    ld h, e
    db $eb
    ld h, e
    dec bc
    ld h, h
    ld [hl-], a
    ld h, h
    ld d, a
    ld h, h
    adc d
    ld h, h
    or b
    ld h, h
    db $dd
    ld h, h
    ld b, $65
    ld [hl-], a
    ld h, l
    ld h, e
    ld h, l
    add a
    ld h, l
    and l
    ld h, l
    call $f565
    ld h, l
    ld hl, $4c66
    ld h, [hl]
    ld l, [hl]
    ld h, [hl]
    sbc a
    ld h, [hl]
    jp $ec66


    ld h, [hl]
    jr nz, @+$69

    jr c, jr_04d_4378

    ld h, c
    ld h, a
    adc h
    ld h, a
    cp h
    ld h, a
    db $ec
    ld h, a
    ld de, $3b68
    ld l, b
    ld l, h
    ld l, b
    sbc h
    ld l, b
    ret nc

    ld l, b
    db $fc
    ld l, b
    dec [hl]
    ld l, c
    ld h, a
    ld l, c
    sub c
    ld l, c
    cp l
    ld l, c
    rst $28
    ld l, c
    rrca
    ld l, d
    scf
    ld l, d
    ld l, h
    ld l, d
    sbc b
    ld l, d
    or d
    ld l, d
    db $e4
    ld l, d
    db $fd
    ld l, d
    inc e
    ld l, e
    inc [hl]
    ld l, e
    ld e, h

jr_04d_4342:
    ld l, e
    add e
    ld l, e
    cp b
    ld l, e
    ld [c], a
    ld l, e
    rrca
    ld l, h
    ccf
    ld l, h
    ld l, b
    ld l, h
    sub c
    ld l, h
    ret nz

    ld l, h
    db $e4
    ld l, h
    inc d
    ld l, l
    ld b, d
    ld l, l
    ld [hl], e
    ld l, l
    and e
    ld l, l
    push bc
    ld l, l
    rst $30
    ld l, l
    rla
    ld l, [hl]
    ld b, e
    ld l, [hl]
    ld l, l
    ld l, [hl]
    sbc e
    ld l, [hl]
    add $6e
    ei
    ld l, [hl]
    jr z, @+$71

    ld d, e
    ld l, a
    ld a, l
    ld l, a
    xor b
    ld l, a
    call z, $f56f

jr_04d_4378:
    ld l, a
    dec h
    ld [hl], b
    ld d, [hl]
    ld [hl], b
    ld [hl], e
    ld [hl], b
    sub a
    ld [hl], b
    ret


    ld [hl], b
    ld hl, sp+$70
    ld h, $71
    ld b, h
    ld [hl], c
    ld a, d
    ld [hl], c
    sbc l
    ld [hl], c
    ret nc

    ld [hl], c
    ld [bc], a
    ld [hl], d
    ld l, $72
    ld e, [hl]
    ld [hl], d
    add c
    ld [hl], d
    xor b
    ld [hl], d
    sub $72
    ld [bc], a
    ld [hl], e
    dec h
    ld [hl], e
    ld b, [hl]
    ld [hl], e
    ld [hl], a
    ld [hl], e
    and h
    ld [hl], e
    cp l
    ld [hl], e
    ld [$0f73], a
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld h, e
    ld [hl], h
    add l
    ld [hl], h
    sbc [hl]
    ld [hl], h
    call z, $f574
    ld [hl], h
    db $10
    ld [hl], l

Call_04d_43b9:
    ld de, $4007
    call $05b6
    ret


    ld de, $4007
    call $05f6
    ret


    call Call_04d_43b9
    call $0609
    ret


    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4486

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $3e
    ld b, e
    ld d, c
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld b, l
    ld a, $50
    ld b, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d

jr_04d_4486:
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    add hl, hl
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, h
    ld c, d
    ccf
    ld b, d
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld l, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ccf
    ld c, h
    ld d, c
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld l, $5b
    ld c, e
    ld b, h
    ld d, d
    ld c, a
    ld d, d
    ld b, l
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $48
    ccf
    ld c, h
    ld d, c
    ldh a, [$28]
    ld c, a
    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    jr z, jr_04d_4543

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$2f]
    ld a, $53
    ld a, $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    cpl
    ld a, $53
    ld a, $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$28]
    ld c, a
    ld d, a
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, h
    ld h, h
    jr z, jr_04d_4568

    ld d, a
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d

jr_04d_4543:
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    inc l
    ld c, e

jr_04d_4568:
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_45d6

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ldh a, [$27]
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld c, b
    ld b, [hl]
    ld b, c
    daa
    ld c, a
    ld a, $44
    ld c, h
    ld c, e
    ld c, b
    ld b, [hl]
    ld b, c
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    dec l
    ld a, $3f
    ccf
    ld a, $f0
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d

jr_04d_45d6:
    ld h, h
    ld h, h
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
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4634

    ld d, b
    ld d, c
    ld b, e
    ld b, [hl]
    ld b, h
    ld d, d
    ld c, a
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
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
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld a, $4d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld d, d
    ccf
    ccf
    ld c, c
    ld b, d
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h

jr_04d_4634:
    ld h, h
    ld l, $4f
    ld a, $3f
    ccf
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4698

    ld b, h
    ld a, $45
    ld a, $45
    ld c, e
    ldh a, [$2b]
    ld a, $45
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    dec hl
    ld a, $45
    ld c, e
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    ldh a, [$3a]
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c
    ld d, e
    ld b, [hl]
    ld c, l
    ld b, d
    ld c, a
    ldh a, [$38]
    ld c, e
    ld b, c
    ld c, h
    ld c, a
    ld b, d
    ld a, $49
    ld h, h
    jr nc, @+$44

    ld b, c
    ld d, d
    ld d, b
    ld a, $f0
    daa
    ld c, a
    ld a, $40
    ld b, l

jr_04d_4698:
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    cpl
    ld e, h
    ld d, h
    ld b, d
    ld c, e
    ld b, l
    ld a, $49
    ld d, b
    ldh a, [$27]
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, l
    ld e, h
    ld c, e
    ld b, [hl]
    ld d, l
    ldh a, [$36]
    ld c, b
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
    ld h, h
    ld h, h
    inc a
    ld a, $4a
    ld a, $51
    ld a, $f0
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_477d

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec [hl]
    ld e, l
    ld d, b
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b

jr_04d_477d:
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $48
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld a, $52
    ld c, d
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl-], a
    ld c, a
    ld c, b
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4804

    ld d, d
    ld c, c
    ld d, b
    ld e, e
    ccf
    ld b, d
    ld c, c
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, h
    ld b, d
    ld b, b
    ld b, l
    ld d, b
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    add hl, hl
    ld a, $4b
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $48
    ld d, b
    ld c, c
    ld b, [hl]

jr_04d_4804:
    ld c, d
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
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
    ldh a, [$30]
    ld c, h
    ld c, a
    ld b, c
    ld a, $43
    ld b, e
    ld b, d
    ld h, h
    jr nc, jr_04d_4871

    ld c, a
    ld b, c
    ld a, $43
    ld b, e
    ld b, d
    ldh a, [$33]
    ld a, $4c
    ld b, e
    ld a, $4b
    ld d, c
    ld h, h
    ld h, h
    inc sp
    ld a, $4c
    ld b, e
    ld a, $4b
    ld d, c
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [rNR51]
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr nc, @+$44

    ld b, h
    ld a, $3e
    ld d, d
    ld b, h
    ld b, d
    ldh a, [$39]
    ld c, h
    ld b, h

jr_04d_4871:
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4926

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    add hl, hl
    ld b, d
    ld c, c
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h

jr_04d_4926:
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, h
    ld c, a
    ld c, h
    ld c, c
    ld c, c
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr z, jr_04d_49a2

    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld a, [hl+]
    ld b, [hl]
    ld d, a
    ld c, d
    ld c, h
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec [hl]
    ld a, $56
    ccf
    ld d, d
    ld c, a
    ld c, e
    ldh a, [$39]
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    scf
    ld a, $4b
    ld d, a
    ld c, d
    ld e, h
    ld b, l

jr_04d_49a2:
    ld c, a
    ld b, d
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld b, e
    ld a, $49
    ld c, b
    ld b, d
    ld h, h
    inc sp
    ld b, l
    ld e, h
    ld c, e
    ld b, [hl]
    ld d, l
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    jr nc, jr_04d_4a6b

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    ld a, [hl+]
    ld c, a
    ld e, e
    ccf
    ld b, d
    ld c, a
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    scf
    ld c, h
    ld d, c
    ld b, d
    ld c, d
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    inc sp

jr_04d_4a6b:
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld d, [hl]
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    ld sp, $403e
    ld b, l
    ld d, c
    ld d, h
    ld b, [hl]
    ld c, l
    ld d, b
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    scf
    ld a, $4b
    ld d, a
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, c
    ld c, a
    ld a, $51
    ld d, c
    ld b, d
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    daa
    ld a, $4f
    ld c, b
    ld b, d
    ld d, [hl]
    ld b, d
    ldh a, [rNR51]
    ld e, h
    ld d, b
    ld d, b
    ld a, $4a
    ld b, d
    ld h, h
    ld h, h
    dec h
    ld e, h
    ld d, b
    ld d, b
    ld a, $4a
    ld b, d
    ldh a, [rNR50]
    ld b, b
    ld b, [hl]
    ld b, c
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    inc h
    ld b, b
    ld b, [hl]
    ld b, c
    ld c, b
    ld c, a
    ld a, $52
    ld d, c
    ldh a, [$33]
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4bb4

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld [hl-], a
    ld c, a
    ld a, $40
    ld d, d
    ld c, c
    ld d, d
    ld c, d
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h

jr_04d_4bb4:
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
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    jr z, jr_04d_4c19

    ld d, a
    ccf
    ld c, c
    ld d, d
    ld c, d
    ld b, d
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4c22

    ld c, e
    ld c, e
    ld c, h
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $48
    ld b, b
    ld c, a
    ld a, $3f
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    add hl, hl
    ld b, d
    ld b, d
    ld c, a
    ld a, $51
    ld d, c
    ld b, d
    ldh a, [$3d]
    ld a, $45
    ld c, e
    ld c, b
    ld e, e

jr_04d_4c19:
    ld b, e
    ld b, d
    ld c, a
    dec a
    ld a, $45
    ld c, e
    ld c, b
    ld e, e

jr_04d_4c22:
    ld b, e
    ld b, d
    ld c, a
    ldh a, [$2b]
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ldh a, [$2c]
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    jr nc, @+$40

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    jr z, jr_04d_4d3f

    ld b, l
    ld d, b
    ld c, d
    ld a, $4b
    ld c, e
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    scf
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld c, h
    ld b, l
    ld c, e
    ld b, [hl]
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    dec hl
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ldh a, [rNR51]
    ld a, $3f
    ld d, [hl]
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    dec h

jr_04d_4d3f:
    ld a, $3f
    ld d, [hl]
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ldh a, [$38]
    ld c, e
    ld b, [hl]
    ld b, b
    ld c, c
    ld c, h
    ld d, h
    ld c, e
    ld h, h
    jr c, jr_04d_4d9e

    ld b, [hl]
    ld b, b
    ld c, c
    ld c, h
    ld d, h
    ld c, e
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4da3

    ld b, c
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld a, [hl+]
    ld c, a
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, c
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    inc l
    ld c, a
    ld c, a
    ld c, l
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, h
    ld h, h
    jr z, jr_04d_4df4

jr_04d_4d9e:
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]

jr_04d_4da3:
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$37]
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld h, h
    ld h, h
    ld l, $46
    ld c, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ldh a, [rNR50]
    ld b, b
    ld d, d
    ccf
    ld a, $64
    ld h, h
    ld h, h
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
    ldh a, [$30]
    ld a, $4b
    ld b, c
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
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
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d

jr_04d_4df4:
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, h
    ld c, a
    ld c, e
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_4e9f

    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, e
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    add hl, hl
    ld b, [hl]
    ld c, a
    ld b, d
    ccf
    ld b, [hl]
    ld c, a
    ld b, c
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]

jr_04d_4e9f:
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ccf
    ld c, c
    ld b, d
    ld c, a
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    inc sp
    ld b, [hl]
    ld c, c
    ld d, a
    ccf
    ld d, d
    ld b, h
    ldh a, [$2e]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld l, $4b
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$3d]
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$2e]
    ld c, e
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld h, h
    ld h, h
    ld l, $4b
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ldh a, [$36]
    ld c, b
    ld b, d
    ld c, c
    ld b, h
    ld c, c
    ld a, $41
    ld a, $36
    ld c, b
    ld b, d
    ld c, c
    ld b, h
    ld c, c
    ld a, $41
    ld a, $f0
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld l, $5d
    ld e, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    jr c, jr_04d_5021

    ld b, c
    ld c, h
    ld c, a
    ld b, d
    ld a, $49
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    jr nc, jr_04d_5039

    ld b, h
    ld a, $54
    ld d, d
    ld c, a
    ld c, d
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, h
    ccf
    ld a, $52
    ld c, d
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    ld [hl], $48
    ld b, d
    ld c, c
    ld b, d
    ld d, c
    ld d, c
    ld c, h

jr_04d_5021:
    ld c, a
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    dec hl
    ld a, $52
    ld d, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$30]
    ld a, $41

jr_04d_5039:
    ld b, l
    ld a, $4b
    ld b, c
    ld h, h
    ld h, h
    ld sp, $5042
    ld d, b
    ld b, d
    ld c, c
    ldh a, [$27]
    ld c, a
    ld a, $48
    ccf
    ld c, h
    ld d, c
    ld h, h
    ld h, h
    inc h
    ld c, a
    ld b, b
    ld b, l
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$2e]
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ccf
    ld c, h
    ld d, c
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    cpl
    ld b, d
    ld c, h
    ldh a, [$30]
    ld a, $51
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld h, h
    ld h, h
    dec h
    ld c, h
    ld d, l
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$30]
    ld a, $41
    ld b, l
    ld a, $4b
    ld b, c
    ld h, h
    ld h, h
    jr nc, jr_04d_50c7

    ld b, c
    ld b, l
    ld a, $4b
    ld b, c
    ldh a, [$36]
    ld a, $4b
    ld b, c
    ld c, d
    ld a, $4b
    ld c, e
    ld h, h
    ld [hl], $3e
    ld c, e
    ld b, c
    ld c, d
    ld a, $4b
    ld c, e
    ldh a, [$2a]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ldh a, [$36]
    ld c, l
    ld b, [hl]
    ld c, b
    ld d, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], $4d
    ld b, [hl]
    ld c, b
    ld d, [hl]
    ldh a, [$28]
    ld b, [hl]
    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e

jr_04d_50c7:
    ld h, h
    cpl
    ld a, $53
    ld a, $41
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ldh a, [$27]
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_511f

    ld b, h
    ld a, $41
    ld c, a
    ld a, $48
    ldh a, [$27]
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$27]
    ld b, d
    ld a, $51
    ld b, l
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    jr z, jr_04d_5150

    ld d, a
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ldh a, [$2d]
    ld a, $4a
    ld b, [hl]
    ld c, a
    ld d, d
    ld d, b
    ld h, h
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, a
    ld c, h
    ld d, b
    ld b, d
    ldh a, [$2b]
    ld a, $44
    ld c, h
    ld c, e

jr_04d_511f:
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc a
    ld a, $4a
    ld a, $51
    ld a, $f0
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld [hl], $46
    ld b, c
    ld c, h
    ldh a, [$27]
    ld d, d
    ld c, a
    ld a, $4b
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ldh a, [$33]
    ld b, [hl]
    ld d, b
    ld a, $4f
    ld c, h

jr_04d_5150:
    ld h, h
    ld h, h
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    cpl
    ld b, d
    ld c, h
    ldh a, [$28]
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, h
    ld h, h
    ld h, h
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ldh a, [$30]
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    daa
    ld b, d
    ld c, e
    ld d, a
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ldh a, [rNR51]
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, c
    ld b, l
    ld h, h
    scf
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ldh a, [$3d]
    ld c, h
    ld c, d
    ld a, $64
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_04d_51e4

    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ldh a, [$37]
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, h
    ld h, h
    ld [hl], $48
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
    ldh a, [$37]
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, h
    ld h, h
    jr nc, jr_04d_5215

    ld b, c
    ld c, h
    ldh a, [$37]
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $64
    ld h, h
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ldh a, [$66]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_04d_51e4:
    ldh a, [$f0]
    dec h
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
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld a, $4b
    ld d, a
    ld h, c
    ldh a, [$2a]
    ld b, d
    ld c, l

jr_04d_5215:
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    ld b, d
    ld d, c
    ld h, b
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    pop af
    ld b, h
    ld c, a
    ld e, h
    ld e, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    pop af
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, c
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
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
    ld c, h
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld e, e
    ld b, l
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    pop af
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    ld h, c
    ldh a, [$30]
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    inc sp
    ld b, l
    ld c, h
    ld d, c
    ld c, h
    sbc h
    pop af
    ld d, b
    ld d, [hl]
    ld c, e
    ld d, c
    ld b, l
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    dec h
    ld c, c
    ld e, e
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld e, l
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    dec [hl]
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld c, l
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2b]
    ld a, $49
    ccf
    ld h, h
    dec [hl]
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, l
    ld a, $49
    ccf
    pop af
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, c
    ldh a, [$29]
    ld c, c
    ld e, l
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    pop af
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    sbc h
    pop af
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ldh a, [rNR51]
    ld d, d
    ccf
    ccf
    ld c, c
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld d, a
    ld d, d
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
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
    pop af
    scf
    ld c, a
    ld d, d
    ld b, l
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld b, d
    ld h, c
    ldh a, [rNR51]
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    pop af
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld h, c
    ld h, h
    ld [hl], $42
    ld b, l
    ld c, a
    pop af
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, c
    ldh a, [$2e]
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, a
    ld a, $45
    ld c, c
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    pop af
    scf
    ld b, d
    ld c, e
    ld d, c
    ld a, $48
    ld b, d
    ld c, c
    ld c, e
    ld h, c
    ldh a, [$2b]
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    pop af
    jr nc, @+$5d

    ld b, l
    ld c, e
    ld b, d
    ld h, b
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    ccf
    ld b, d
    ld d, h
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, c
    ldh a, [rNR50]
    ld d, d
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $4f
    ld d, c
    ld h, b
    pop af
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld b, e
    ld c, c
    ld e, l
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$2c]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    pop af
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld e, [hl]
    ld d, c
    ld h, h
    ld e, c
    ld c, c
    pop af
    ld d, b
    ld d, c
    ld a, $51
    ld d, c
    ld h, h
    dec h
    ld c, c
    ld d, d
    ld d, c
    ld h, c
    ldh a, [$30]
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, e
    ld c, c
    ld b, [hl]
    ld c, e
    ld c, b
    pop af
    ld c, c
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$28]
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, h
    ld a, $52
    ld d, b
    pop af
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    pop af
    inc sp
    ld d, d
    ld c, e
    ld c, b
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, c
    ldh a, [$28]
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, h
    ld a, $52
    ld d, b
    pop af
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    pop af
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, c
    ldh a, [rNR50]
    ld e, [hl]
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    jr nc, @+$48

    ld c, e
    ld b, d
    ld c, a
    ld a, $49
    ld b, [hl]
    ld b, d
    ld c, e
    ld h, b
    pop af
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld d, c
    ld a, $49
    ld c, c
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld h, c
    ldh a, [rNR50]
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
    ld b, d
    pop af
    ld a, [hl-]
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld d, c
    ld h, c
    ldh a, [$28]
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, h
    ld a, $52
    ld d, b
    pop af
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    pop af
    jr z, jr_04d_5531

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, c
    ldh a, [$2a]
    ld c, h
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, c
    pop af
    daa
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
    pop af
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld h, c
    ldh a, [rNR50]
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld d, b
    ld b, h
    ld b, d
    ld d, h
    ld a, $40
    ld b, l
    ld d, b
    ld b, d
    ld c, e
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b

jr_04d_5531:
    ld b, l
    ld d, c
    ld h, h
    ld b, h
    ld c, a
    ld e, h
    ld e, [hl]
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2e]
    ld a, $4b
    ld c, e
    ld h, h
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
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld b, l
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    pop af
    inc sp
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    pop af
    add hl, hl
    ld c, c
    ld d, d
    ld b, h
    ld b, l
    ld a, $52
    ld d, c
    ld h, c
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    ld b, h
    ld a, $50
    ld b, h
    ld b, d
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    pop af
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$29]
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld sp, $453e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    pop af
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    dec a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld h, c
    ldh a, [$2c]
    ld c, e
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, c
    ld h, b
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, [hl-]
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld d, d
    ld c, d
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld b, a
    ld a, $4d
    ld a, $4b
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, d
    pop af
    inc sp
    ld b, e
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    pop af
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld c, d
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    sbc h
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld a, $4f
    ld b, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $40
    ld b, l
    ld b, d
    ld c, c
    ld c, e
    ld h, c
    ldh a, [$58]
    ld c, c
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    pop af
    ld [hl], $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld h, c
    ldh a, [rNR51]
    ld a, $49
    ld a, $4b
    ld b, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    pop af
    cpl
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    ld [hl], $40
    ld b, l
    ld d, h
    ld a, $4b
    ld d, a
    ld h, c
    ldh a, [$36]
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, l
    ld a, $4f
    ld c, d
    ld c, c
    ld c, h
    ld d, b
    ld h, h
    ld a, $52
    ld d, b
    ld h, b
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld e, e
    ld d, d
    ld e, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    pop af
    ld a, $44
    ld b, h
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, [hl]
    ld d, e
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, b
    ld h, h
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    pop af
    ld d, b
    ld c, h
    ld b, h
    ld a, $4f
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld b, e
    ld a, $4f
    ccf
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    pop af
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    jr c, jr_04d_577b

    ld b, h
    ld b, d
    ccf
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ldh a, [$2e]
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    cpl
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2e]
    ld c, a
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld a, [hl+]
    ld b, d
    ccf
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld e, e
    ld d, d

jr_04d_577b:
    ld e, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    pop af
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
    ldh a, [$2a]
    ld b, [hl]
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, d
    ccf
    ld b, [hl]
    ld e, [hl]
    ld h, c
    pop af
    jr z, jr_04d_57e5

    ld c, e
    ld h, h
    dec h
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    pop af
    ld d, c
    ld e, h
    ld b, c
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
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld b, l
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    pop af
    ld d, b
    ld d, c
    ld a, $40
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d

jr_04d_57e5:
    ld c, e
    ld h, h
    inc sp
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld e, h
    ld e, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    pop af
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    ld h, c
    ldh a, [$28]
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
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
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    ld a, $52
    ld b, e
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld l, $3e
    ld c, d
    ld c, d
    ld h, c
    ldh a, [$2a]
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    pop af
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, l
    ld a, $52
    ld d, c
    ld h, c
    ldh a, [$3a]
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, c
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
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    pop af
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [rNR50]
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, e
    ld b, e
    ld h, h
    ld l, $5c
    ld c, l
    ld b, e
    ld b, d
    pop af
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    pop af
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld d, l
    ld d, c
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld l, $4f
    ld a, $43
    ld d, c
    pop af
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_04d_5926

    ld b, h
    ld b, [hl]
    ld b, d
    ld h, c
    ldh a, [rNR51]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, b
    ld h, h
    ld d, b
    ld c, h
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    pop af
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, c
    ldh a, [$2c]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld d, c
    ld c, a
    ld e, e
    ld b, h
    ld b, d
    ld h, b
    pop af

jr_04d_5926:
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld h, h
    dec a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    pop af
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld d, c
    ld e, h
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    add hl, hl
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld c, e
    ld c, h
    ld d, c
    ld b, e
    ld a, $49
    ld c, c
    ld d, b
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld h, h
    ld a, $4b
    ldh a, [$36]
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    pop af
    daa
    ld d, d
    ld c, e
    ld c, b
    ld b, d
    ld c, c
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld b, e
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    pop af
    ld c, e
    ld a, $40
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$2b]
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld d, h
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    add hl, hl
    ld b, d
    ld c, c
    ld c, c
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ccf
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    pop af
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    ld sp, $5042
    ld d, c
    ld h, c
    ldh a, [$39]
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
    ld b, [hl]
    ld b, d
    pop af
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    dec a
    ld d, d
    ld b, h
    ld h, c
    ldh a, [$38]
    ld c, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    pop af
    ld a, $4b
    ld d, a
    ld d, d
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, e
    ld d, c
    pop af
    ld b, d
    ld d, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld [hl], $40
    ld b, l
    ld e, e
    ld b, c
    ld b, d
    ld c, c
    ld c, e
    ld h, c
    ldh a, [$28]
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
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
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    pop af
    add hl, sp
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld b, h
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ldh a, [rNR51]
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    dec a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    jr z, jr_04d_5adb

    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$3d]
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    dec [hl]
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    scf
    ld e, e
    ld c, e
    ld d, a
    ld b, d
    ld h, c
    ldh a, [$36]
    ld d, c
    ld e, l
    ld c, a
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $51
    ld a, $40
    ld b, l
    ld b, d
    ld c, c
    ld c, l
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    pop af
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h

jr_04d_5adb:
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$29]
    ld c, h
    ld c, c
    ld b, h
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    pop af
    dec hl
    ld d, d
    ld c, e
    ld b, c
    ld h, c
    ldh a, [$37]
    ld c, a
    ld e, e
    ld b, h
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ccf
    ld d, d
    ld c, a
    ld d, c
    pop af
    ld a, $4b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld a, $4a
    ld c, d
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$28]
    ld c, a
    ld d, h
    ld e, l
    ld c, a
    ld b, h
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    inc sp
    ld c, a
    ld a, $4b
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, hl
    ld b, d
    ld c, c
    ld c, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld e, l
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, h
    ld l, $5b
    ld c, c
    ld d, c
    ld b, d
    ld h, c
    ldh a, [rNR51]
    ld a, $52
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld sp, $5042
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    pop af
    ld bc, $0000
    ld c, d
    ld a, $49
    ld h, h
    ld c, c
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld a, $49
    ld d, b
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, c
    ldh a, [rNR51]
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld [hl-], a
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld d, a
    ld d, d
    pop af
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld c, h
    ld b, e
    ld d, c
    pop af
    ld a, $49
    ld d, b
    ld h, h
    jr nc, jr_04d_5c21

    ld b, c
    ld b, [hl]
    ld c, b
    ld a, $4a
    ld b, d
    ld c, e
    ld d, c
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, c
    ldh a, [rNR50]
    ld d, c
    ld d, c
    ld a, $40
    ld c, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
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
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld d, b
    ld c, l
    ld b, [hl]
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    dec hl
    ld e, h
    ld c, a
    ld c, e
    ld b, d
    ld c, a

jr_04d_5c21:
    ld c, e
    ld h, c
    ldh a, [$2f]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld d, d
    ld b, c
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    cpl
    ld b, d
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld c, h
    ld e, [hl]
    ld d, a
    ld e, e
    ld b, l
    ld c, e
    ld b, d
    pop af
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld h, c
    ldh a, [$2a]
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    pop af
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc b
    ld h, h
    dec h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    inc b
    ld h, h
    inc h
    ld c, a
    ld c, d
    ld b, d
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    inc sp
    ld b, d
    ld c, c
    ld d, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld c, h
    ld d, b
    ld d, c
    ccf
    ld a, $4f
    ld h, c
    ldh a, [$27]
    ld a, $50
    ld h, h
    scf
    ld b, [hl]
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
    pop af
    ld c, a
    ld c, h
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_04d_5d2a

    ld b, l
    ld c, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld e, e
    ld d, d
    ld e, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld a, $52
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    pop af
    dec hl
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    pop af
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c

jr_04d_5d2a:
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld c, b
    ld e, l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld d, c
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    pop af
    ld b, d
    ld c, a
    ld h, h
    ld c, c
    ld e, e
    ld d, d
    ld b, e
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld c, b
    ld e, h
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    add hl, hl
    ld a, $49
    ld c, b
    ld b, d
    ld c, e
    ld c, b
    ld c, h
    ld c, l
    ld b, e
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    ld c, e
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld d, c
    ld h, h
    ld b, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    pop af
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    jr z, jr_04d_5de4

    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2f]
    ld c, h
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    inc l
    ld c, e
    ld d, b
    ld b, d
    ld c, b
    ld d, c
    ld b, d
    ld c, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    dec h
    ld c, c
    ld d, d
    ld c, d
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$33]
    ld c, c
    ld d, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
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

jr_04d_5de4:
    ld c, a
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, a
    ld d, d
    ld d, b
    ld b, b
    ld b, l
    ld e, l
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    pop af
    ld [hl], $40
    ld b, l
    ld d, h
    ld a, $4f
    ld c, d
    ld h, h
    ld a, $4b
    ld h, c
    pop af
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, e
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld d, b
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
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    scf
    ld c, h
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld e, e
    ld b, c
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$32]
    ld b, l
    ld c, e
    ld b, d
    ld h, h
    ld b, e
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    ld a, [hl+]
    ld b, d
    sbc h
    pop af
    ld d, b
    ld d, c
    ld a, $49
    ld d, c
    ld h, c
    ld h, h
    jr z, jr_04d_5eb0

    ld h, h
    ld c, c
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, c
    pop af
    ld b, [hl]
    ld c, d
    ld h, h
    daa
    ld d, d
    ld c, e
    ld c, b
    ld b, d
    ld c, c
    ld c, e
    ld h, c
    ldh a, [$2f]
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    add hl, hl
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld a, $52
    ld b, h
    ld d, c
    ld h, h
    dec h
    ld c, c
    ld d, d
    ld d, c
    ld h, c
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld a, $45
    ld c, e
    ld h, d

jr_04d_5eb0:
    pop af
    jr z, jr_04d_5f02

    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, b
    ld c, b
    ld c, b
    ld e, h
    ld c, l
    ld b, e
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, h
    ld e, b
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    pop af
    ld [hl], $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04d_5f24

    ld b, [hl]
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, b
    ld c, h
    pop af
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld h, c
    ldh a, [$2e]
    ld a, $4b
    ld c, e
    ld h, h
    ld d, a
    ld d, h
    ld a, $4f
    ld h, h
    ld c, e

jr_04d_5f02:
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    pop af
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld d, c
    ld h, h
    dec hl
    ld b, [hl]
    ld b, d
    ccf

jr_04d_5f24:
    ld b, d
    ld h, c
    ldh a, [$2c]
    ld c, d
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld a, $4f
    ld c, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    pop af
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld a, $4f
    ld b, e
    ld b, d
    ld h, h
    ld l, $4f
    ld a, $49
    ld c, c
    ld b, d
    ld h, c
    pop af
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    dec hl
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld d, b
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld c, b
    ld a, $49
    ld d, c
    ld b, d
    ld c, d
    pop af
    inc h
    ld d, c
    ld b, d
    ld c, d
    ld h, c
    ldh a, [$39]
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
    ld b, [hl]
    ld b, d
    pop af
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    ld b, e
    ld b, d
    ld d, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld d, c
    ld b, d
    ld c, d
    ld h, c
    ldh a, [$28]
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    sbc h
    pop af
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h
    daa
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld l, $4f
    ld a, $49
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    pop af
    ld a, [hl+]
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    ld a, [hl+]
    ld b, d
    ld d, b
    ld a, $4b
    ld b, h
    ld h, c
    ldh a, [rNR51]
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
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld c, d
    pop af
    jr z, jr_04d_60d2

    ld b, d
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld h, c
    ldh a, [$2e]
    ld e, h
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld d, b
    ld e, l
    ld e, [hl]
    ld b, d
    ld c, e
    pop af
    dec h
    ld a, $52
    ld c, d
    ld d, b
    ld a, $43
    ld d, c
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec h
    ld c, c
    ld e, e
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    pop af
    ld d, b
    ld b, d
    ld b, l

jr_04d_60d2:
    ld c, a
    ld h, h
    ld b, e
    ld b, d
    ld d, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld a, $4f
    ld b, e
    ld h, c
    ldh a, [$2f]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, a
    ld a, $45
    ld c, a
    ld b, l
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    sbc h
    pop af
    ld c, c
    ld a, $4b
    ld b, h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    pop af
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld a, [hl+]
    ld a, $50
    pop af
    ld d, d
    ld c, e
    ld b, c
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
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    ld c, e
    ld h, c
    ldh a, [$36]
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld d, b
    ld b, d
    ld c, a
    pop af
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld e, l
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld c, b
    ld d, c
    ld b, [hl]
    ld d, e
    ld h, c
    ldh a, [$29]
    ld c, a
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    pop af
    jr nc, jr_04d_61db

    ld b, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    pop af
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    jr z, jr_04d_620c

    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    pop af
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, c
    ld b, d
    ld b, h

jr_04d_61db:
    ld d, c
    ld h, c
    ldh a, [$36]
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, l
    ld a, $4f
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    pop af
    ld b, h
    ld b, d
    ld d, c
    ld c, a
    ld c, h
    ld b, b
    ld c, b
    ld c, e
    ld b, d
    ld d, c
    ld b, d
    pop af
    dec h
    ld a, $52
    ld c, d
    ld d, b
    ld e, e
    ld b, e
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld c, a
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, l

jr_04d_620c:
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, a
    ld d, a
    ld b, d
    ld c, c
    ld h, b
    pop af
    ld d, b
    ld a, $52
    ld b, h
    ld d, c
    ld h, h
    add hl, hl
    ld c, c
    ld e, l
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    ldh a, [$28]
    ld c, a
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld d, a
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, a
    pop af
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ld d, a
    ld b, d
    ld b, [hl]
    ld d, c
    pop af
    ld a, $4b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld h, c
    ldh a, [$2c]
    ld b, l
    ld c, a
    ld h, h
    ld a, [hl+]
    ld a, $4b
    ld b, h
    pop af
    ld e, e
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    scf
    ld a, $4b
    ld d, a
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    dec h
    ld a, $52
    ld c, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld d, c
    ld h, c
    ldh a, [$36]
    ld a, $52
    ld b, h
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld l, $4f
    ld a, $43
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    jr z, jr_04d_6320

    ld b, c
    ld b, d
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, a
    ld d, a
    ld b, d
    ld c, c
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    pop af
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld l, $4f
    ld a, $4b
    ld c, b
    sbc h
    pop af
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    inc sp
    ld c, c
    ld a, $51
    ld d, a
    ld h, b
    pop af
    ld d, d
    ld c, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]

jr_04d_6320:
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $3e
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ld d, d
    ld b, d
    ld c, e
    ld h, c
    ldh a, [rNR51]
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
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    dec hl
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    pop af
    cpl
    ld b, d
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$3d]
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    jr nc, jr_04d_63b8

    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld e, e
    ld d, d
    ld c, a
    ld b, d
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld b, c
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    ld l, $4b
    ld c, h
    ld d, b
    ld c, l
    ld b, d
    ld c, e
    pop af
    ccf
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, e
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$35]
    ld a, $4b

jr_04d_63b8:
    ld c, b
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, d
    ld c, d
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
    ld h, d
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
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
    ldh a, [$2f]
    ld d, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
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
    ld d, b
    pop af
    ld a, [hl-]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2c]
    ld b, l
    ld c, a
    ld b, d
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld d, b
    ld e, e
    ld b, e
    ld d, c
    ld b, d
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    add hl, sp
    ld b, d
    ld c, a
    ld b, c
    ld a, $52
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    dec [hl]
    ld a, $52
    ld c, l
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $49
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    jr nc, jr_04d_649e

    ld d, c
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$2f]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, d
    ld c, l
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    pop af
    ld b, c
    ld a, $64
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld d, c
    ld d, b
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr z, jr_04d_64d0

    ld b, c
    ld b, d
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    ld d, b
    ld d, c
    ld a, $52
    ccf
    pop af
    ld d, e
    ld b, d
    ld c, a

jr_04d_649e:
    ld d, h
    ld b, [hl]
    ld c, a
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
    ld h, c
    ldh a, [$28]
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, h
    jr nc, jr_04d_64f8

    ld b, h
    ld b, [hl]
    ld b, d
    pop af
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    inc h
    ccf
    ld d, b
    ld a, $52
    ld b, h
    ld b, d
    ld c, e
    pop af
    ld b, c
    ld b, d
    ld c, a

jr_04d_64d0:
    ld h, h
    ld sp, $455b
    ld c, a
    ld d, b
    ld d, c
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, c
    ldh a, [$29]
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e

jr_04d_64f8:
    pop af
    ld a, [hl+]
    ld b, d
    ld c, a
    ld d, d
    ld b, b
    ld b, l
    ld d, b
    ld d, b
    ld b, [hl]
    ld c, e
    ld c, e
    ld h, c
    ldh a, [$27]
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    inc h
    ccf
    ld c, c
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
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
    pop af
    ld d, d
    ld c, e
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld d, c
    ld a, $9c
    pop af
    ccf
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    inc sp
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    inc h
    ld c, d
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    pop af
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld d, b
    ld h, h
    ld a, [hl+]
    ld b, d
    ccf
    ld b, [hl]
    ld e, [hl]
    ld h, c
    ldh a, [$30]
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, a
    ld e, e
    ld d, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    pop af
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    add hl, hl
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2e]
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    jr nc, jr_04d_65f8

    ld d, d
    ld c, c
    ld h, h
    ld a, $4a
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld b, d
    ld d, b
    ld d, c
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld e, l
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    pop af
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]

jr_04d_65f8:
    ld c, e
    ld b, d
    ld h, h
    scf
    ld b, d
    ld c, e
    ld d, c
    ld a, $48
    ld b, d
    ld c, c
    pop af
    ld b, l
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
    ld b, c
    ld b, d
    ld c, e
    ld b, d
    pop af
    inc h
    ld d, d
    ld b, e
    ld b, h
    ld a, $3f
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$28]
    ld c, a
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    add hl, hl
    ld c, c
    ld e, l
    ld b, h
    ld b, d
    ld c, c
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c
    ldh a, [$2b]
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld b, d
    ld d, b
    pop af
    ld a, [hl+]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld b, e
    ld b, d
    ld c, c
    ld b, c
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld d, a
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, c
    ldh a, [$36]
    ld d, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, b
    pop af
    ld d, d
    ld c, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld c, c
    ld e, e
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld d, c
    ld e, l
    ld c, a
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld h, h
    ld a, $52
    ld b, e
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
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    ld c, l
    ld d, d
    ld c, e
    ld c, b
    ld d, c
    pop af
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    sbc h
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld e, l
    ld d, c
    ld d, a
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld h, c
    ldh a, [$2f]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld d, d
    ld c, e
    ld c, b
    ld c, c
    ld b, d
    ld c, e
    pop af
    dec hl
    ld e, h
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2f]
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    pop af
    ld d, a
    ld d, d
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    pop af
    ld b, l
    ld a, $51
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    sbc h
    pop af
    ld b, l
    ld a, $43
    ld d, c
    ld b, d
    ld h, h
    ld l, $4f
    ld a, $43
    ld d, c
    ld h, c
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld c, e
    ld c, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ccf
    ld e, h
    ld d, b
    ld b, d
    ld h, c
    pop af
    ld a, [hl+]
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    pop af
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld b, e
    ld a, $4a
    ld b, [hl]
    ld c, c
    ld b, [hl]
    ld b, d
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, c
    ld h, b
    pop af
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    pop af
    ld d, a
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    jr nc, jr_04d_681d

    ld h, c
    ldh a, [$3a]
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld a, $4b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    daa
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$36]
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld b, d

jr_04d_681d:
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    inc h
    ld d, d
    ld b, h
    ld b, d
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$35]
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    jr c, @+$4d

    ld d, c
    ld c, h
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld b, c
    pop af
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
    ld h, h
    ld c, d
    ld e, l
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    jr nc, jr_04d_68c7

    ld b, h
    ld b, [hl]
    ld b, d
    pop af
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, c
    ld h, h
    ld b, l
    ld a, $51
    ld h, c
    ldh a, [$3d]
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld b, d
    ld d, a
    ld b, [hl]
    ld a, $49
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, c
    pop af
    dec h
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    jr nc, jr_04d_68f6

    ld b, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    pop af
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec a
    ld a, $52

jr_04d_68c7:
    ccf
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $3f
    ld h, c
    ldh a, [$2f]
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld [hl], $51
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld c, d
    ld b, d
    ld b, b
    ld b, l
    ld a, $4b
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    pop af
    ld a, [hl+]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld d, c

jr_04d_68f6:
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld h, c
    ldh a, [rNR51]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    pop af
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    inc l
    ld c, d
    ld h, h
    dec a
    ld b, d
    ld c, e
    sbc h
    pop af
    ld d, c
    ld c, a
    ld d, d
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    inc h
    ld d, d
    ld b, h
    ld b, d
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld c, e
    ld d, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld d, l
    ld d, c
    ld c, a
    ld b, d
    ld c, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, d
    pop af
    ld b, l
    ld a, $51
    ld h, h
    dec a
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    dec hl
    ld e, h
    ld c, a
    ld c, e
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$36]
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld h, h
    inc h
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    pop af
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    pop af
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ccf
    ld b, d
    ld b, l
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ldh a, [$36]
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, h
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
    pop af
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld l, $52
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ldh a, [$2e]
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    pop af
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, c
    ld h, c
    ldh a, [$2a]
    ld d, d
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
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    pop af
    ld b, d
    ld d, l
    ld d, c
    ld c, a
    ld b, d
    ld c, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, c
    ldh a, [$31]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, c
    ld h, b
    pop af
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_04d_6aaa

    ld c, l
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    pop af
    ld b, [hl]
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld c, b
    ld a, $4a
    ld c, l
    ld b, e
    ld h, c
    ldh a, [rNR51]
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld d, h
    ld c, h
    ld b, l
    ld c, c
    pop af
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
    ld h, h
    ld a, $49
    ld d, b
    pop af
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld h, c
    ldh a, [$37]
    ld c, a
    ld e, e
    ld b, h
    ld d, c
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld d, c
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    dec [hl]

jr_04d_6aaa:
    ld e, l
    ld d, b
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ldh a, [$28]
    ld d, l
    ld d, c
    ld c, a
    ld b, d
    ld c, d
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    pop af
    ld c, b
    ld c, a
    ld e, e
    ld b, e
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, d
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    sbc h
    pop af
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, b
    ld c, c
    ld d, d
    ld b, h
    ld h, c
    ldh a, [$2b]
    ld a, $49
    ccf
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, b
    pop af
    ld b, l
    ld a, $49
    ccf
    ld h, h
    jr nc, @+$44

    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, c
    ldh a, [$31]
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    pop af
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc l
    ld b, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ld h, c
    ldh a, [$2b]
    ld a, $49
    ccf
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, b
    pop af
    dec hl
    ld a, $49
    ccf
    ld h, h
    dec h
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld h, c
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    pop af
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    pop af
    ld [hl], $42
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
    ld h, c
    ldh a, [$28]
    ld c, a
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, b
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    pop af
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld a, $52
    ld d, b
    ld h, h
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    sbc h
    pop af
    ld c, b
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, c
    ldh a, [$2e]
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld [hl], $40
    ld b, l
    ld c, d
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld c, e
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
    ldh a, [$2b]
    ld a, $49
    ccf
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld d, b
    ld d, c
    ld h, c
    pop af
    daa
    ld a, $45
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld b, d
    ld d, b
    pop af
    daa
    ld b, d
    ld c, e
    ld c, b
    ld d, e
    ld b, d
    ld c, a
    ld c, d
    ld e, h
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $f1
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    pop af
    scf
    ld c, a
    ld e, e
    ld c, e
    ld c, b
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    inc sp
    ld a, $4b
    ld d, a
    ld b, d
    ld c, a
    pop af
    ld e, e
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    jr nc, jr_04d_6c9b

    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    scf
    ld c, h
    ld b, c
    ld b, d
    ld d, b
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, d
    ld c, a
    ld c, d
    ld e, l
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    pop af
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    ld h, c
    ldh a, [$3a]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $40

jr_04d_6c9b:
    ld b, l
    ld a, $51
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    pop af
    jr z, jr_04d_6cf4

    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    ld b, e
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $4d
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, c
    ld h, h
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
    pop af
    daa
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, d
    ld b, d
    ld c, c
    ld d, a
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld b, b
    ld b, l
    ld c, c
    ld a, $4a
    ld c, d
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld b, e

jr_04d_6cf4:
    pop af
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
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    pop af
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$29]
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    cpl
    ld d, d
    ld b, e
    ld d, c
    ld h, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld e, e
    ld e, [hl]
    ld d, c
    pop af
    cpl
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld d, c
    ld c, a
    ld a, $45
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ldh a, [rNR51]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    pop af
    ld d, e
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
    ld c, e
    pop af
    ccf
    ld e, h
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ldh a, [$3a]
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
    scf
    ld d, d
    ld b, b
    ld b, l
    pop af
    ld a, $3f
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, b
    ld h, h
    ccf
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    pop af
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld e, l
    ccf
    ld c, a
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$28]
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    scf
    ld c, h
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld a, [hl-]
    ld b, d
    ld b, h
    ld h, h
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    pop af
    ld b, [hl]
    ld c, d
    ld h, h
    ld [hl], $51
    ld d, d
    ld c, a
    ld c, d
    ld a, $4b
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
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $4d
    ld b, d
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, l
    ld c, h
    ld b, b
    ld b, l
    sbc h
    pop af
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    pop af
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, c
    ldh a, [$3a]
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $4f
    ld d, c
    ld b, d
    pop af
    ld b, l
    ld a, $4f
    ld d, c
    ld b, d
    ld h, h
    inc h
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld c, e
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
    ld h, c
    ldh a, [$28]
    ld d, l
    ld c, l
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, d
    pop af
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld c, b
    ld a, $4a
    ld c, l
    ld b, e
    pop af
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, $64
    ld [hl], $40
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ldh a, [$3a]
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    pop af
    ld [hl], $42
    ld b, l
    ld c, a
    ld h, h
    jr nc, jr_04d_6eef

    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$2b]
    ld a, $51
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld e, e
    ld b, l
    ld b, [hl]
    ld b, h
    sbc h
    pop af
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    pop af
    ld c, e
    ld a, $40
    ld b, l
    ld d, a
    ld d, d
    ld a, $45
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$36]
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    ld h, h
    ld c, b
    ld c, h
    ld d, b
    ld d, c
    ccf
    ld a, $4f
    ld b, d
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, l
    ld c, h
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    pop af
    ld [hl], $51
    ld c, h
    ld b, e
    ld b, e
    ld b, d

jr_04d_6eef:
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $5c
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    dec a
    ld a, $52
    ccf
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $3f
    ld h, b
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    pop af
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$27]
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
    pop af
    ld d, b
    ld c, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    pop af
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, a
    ccf
    ld d, c
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    add hl, sp
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    pop af
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld a, $4f
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    pop af
    ld a, [hl+]
    ld b, d
    ld c, a
    ld e, e
    ld d, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld h, c
    ldh a, [$3a]
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    pop af
    ld c, d
    ld a, $44
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld a, $52
    ld c, d
    pop af
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$3a]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld e, l
    ld d, c
    ld b, d
    ld c, e
    ld b, c
    pop af
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
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
    pop af
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2b]
    ld a, $51
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld e, e
    ld b, l
    ld b, [hl]
    ld b, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    pop af
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    pop af
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$27]
    ld b, [hl]
    ld b, d
    ld h, h
    dec [hl]
    ld e, l
    ld d, b
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    pop af
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    pop af
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$2b]
    ld e, e
    ld c, c
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    pop af
    ld b, e
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    pop af
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, c
    ld h, h
    ccf
    ld b, d
    ld d, h
    ld b, d
    ld b, h
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ld c, c
    ld c, h
    ld d, b
    ld h, c
    ldh a, [$2f]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    add hl, hl
    ld b, [hl]
    ld b, h
    ld d, d
    ld c, a
    pop af
    ld a, $52
    ld d, b
    ld h, h
    inc sp
    ld c, h
    ld c, a
    ld d, a
    ld b, d
    ld c, c
    ld c, c
    ld a, $4b
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld b, c
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld e, e
    ld b, l
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    pop af
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, d
    ld a, $50
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, c
    ldh a, [$3a]
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    pop af
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
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    sbc h
    pop af
    ld d, h
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$30]
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    cpl
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    sbc h
    pop af
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld a, $52
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    pop af
    ld b, d
    ld d, b
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, c
    ldh a, [$2c]
    ld c, d
    ld h, h
    inc l
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld c, d
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    pop af
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2e]
    ld a, $4a
    ld c, l
    ld b, e
    ld c, d
    ld a, $50
    ld b, b
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr c, jr_04d_718d

    ld d, a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, e
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, l
    ld b, e
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_04d_71cb

    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld b, d
    ccf
    ld a, $49
    ld c, c
    ld h, b
    pop af
    ld b, c
    ld b, d

jr_04d_718d:
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld d, c
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$2f]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    cpl
    ld a, $53
    ld a, $60
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $42
    ld c, a
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    jr z, jr_04d_720a

    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld b, d
    ld c, b
    ld e, h
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h

jr_04d_71cb:
    ld b, l
    ld a, $51
    ld h, c
    ldh a, [$2f]
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    jr z, jr_04d_7220

    ld d, b
    ld h, b
    pop af
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld l, $42
    ld c, a
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    pop af
    jr z, jr_04d_723c

    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld b, d
    ld c, b
    ld e, h
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    ld h, c
    ldh a, [$2a]
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld b, a

jr_04d_720a:
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, b
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld b, l
    ld b, d

jr_04d_7220:
    pop af
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld a, $4a
    ld c, d
    ld b, e
    ld b, [hl]

jr_04d_723c:
    ld b, h
    ld d, d
    ld c, a
    ld h, b
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    pop af
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld b, [hl]
    ld b, h
    ld d, d
    ld c, a
    ld h, b
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld b, [hl]
    ld b, h
    ld d, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    pop af
    add hl, hl
    ld b, d
    ld c, c
    ld d, b
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    ccf
    ld b, d
    ld c, c
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$3a]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld d, c
    ld h, b
    pop af
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    pop af
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    add hl, hl
    ld b, d
    ld c, c
    ld d, b
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    pop af
    jr nc, jr_04d_732d

    ld d, c
    ld a, $49
    ld c, c
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld b, d
    ld c, e
    pop af
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ldh a, [$28]
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, b
    pop af
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    pop af
    ld b, d
    ld c, a
    ld c, h
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ldh a, [$27]
    ld a, $50
    ld h, h
    ld d, h
    ld a, $45
    ld c, a

jr_04d_732d:
    ld b, d
    pop af
    ld a, [hl+]
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    pop af
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld d, b
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    pop af
    ld b, c
    ld b, d
    ld c, a
    ld h, h
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
    pop af
    ld d, a
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ldh a, [$2a]
    ld c, h
    ld d, c
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    sbc h
    pop af
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, h
    ld e, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c
    pop af
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
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    pop af
    jr nc, jr_04d_7402

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld e, h
    ld d, b
    ld b, d
    ld h, c
    ld h, h
    ld [hl], $51
    ld b, d
    ld b, l
    ld d, c
    pop af
    ld d, b
    ld c, h
    ld b, h
    ld a, $4f
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    pop af
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
    ld h, c
    ldh a, [$28]
    ld b, [hl]
    ld c, e
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    jr nc, jr_04d_744b

    ld c, e
    ld d, b
    ld d, c

jr_04d_7402:
    ld b, d
    ld c, a
    pop af
    ld c, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld b, d
    ld h, c
    ldh a, [$2a]
    ld c, h
    ld d, c
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    dec h
    ld e, h
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    pop af
    dec h
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    pop af
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld b, h
    ld h, c
    ldh a, [$39]
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    pop af
    jr nc, jr_04d_748c

    ld c, e

jr_04d_744b:
    ld d, b
    ld b, b
    ld b, l
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    pop af
    ld d, a
    ld d, d
    ld h, h
    ccf
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
    ld h, c
    ldh a, [$27]
    ld a, $50
    ld h, h
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld h, h
    inc h
    ld d, d
    ld d, b
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    pop af
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    jr nc, jr_04d_74c2

    ld c, a
    ld d, d
    ld b, c
    ld c, h
    ld c, a
    ld a, $50
    ld h, c
    ldh a, [$2b]
    ld b, d
    ld c, a
    ld c, a
    ld d, b
    ld b, b
    ld b, l

jr_04d_748c:
    ld b, d
    ld c, a
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    pop af
    jr nc, jr_04d_74e3

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ldh a, [$2f]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld d, a
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af
    scf
    ld c, a
    ld a, $52
    ld c, d
    ld d, h
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    pop af

jr_04d_74c2:
    dec [hl]
    ld b, d
    ld a, $49
    ld b, [hl]
    ld d, c
    ld e, e
    ld d, c
    ld h, c
    ldh a, [$2c]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ld h, h
    dec a
    ld d, d
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    pop af
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld d, c

jr_04d_74e3:
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    pop af
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld h, c
    ldh a, [$37]
    ld a, $4a
    ld d, d
    ld b, l
    ld a, $50
    ld h, h
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    pop af
    jr z, jr_04d_7554

    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ldh a, [$36]
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    pop af
    ld a, $49
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, c
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

jr_04d_7554:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
