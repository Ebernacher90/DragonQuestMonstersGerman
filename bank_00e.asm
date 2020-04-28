; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    ld c, $07
    ld b, b
    cpl
    ld b, b
    db $10
    ld b, c

Call_00e_4007:
    ld a, [$d8d3]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $41ba
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$d8d4]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$d8d5]
    ld l, a
    ld a, [$d8d6]
    ld h, a
    add hl, hl
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    ret


    ld hl, $ffb7
    ld a, [hl]
    and $f8
    ld [hl], a
    ld hl, $ffbb
    ld a, [hl]
    and $f8
    ld [hl], a
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_00e_4007
    push bc
    call Call_00e_40e7
    pop bc

Call_00e_4075:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    ld a, [$d8e7]
    add l
    ld l, a
    ld a, [$d8e8]
    adc h
    and $03
    ld h, a
    ld a, [$d8e8]
    and $fc
    or h
    ld h, a
    ld a, b
    and $1f
    jr z, jr_00e_40a0

    ld b, a

jr_00e_409a:
    call Call_00e_40da
    dec b
    jr nz, jr_00e_409a

jr_00e_40a0:
    ld a, l
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    pop bc

jr_00e_40a9:
    ld a, [bc]
    inc bc
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00e_40d2

    ld a, [$d8e7]
    ld l, a
    ld a, [$d8e8]
    ld h, a
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
    ld a, l
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    jr jr_00e_40a9

jr_00e_40d2:
    call $1aad
    call Call_00e_40da
    jr jr_00e_40a9

Call_00e_40da:
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
    ret


Call_00e_40e7:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c3
    ld h, a

jr_00e_40f5:
    push hl

jr_00e_40f6:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00e_410e

    cp $d8
    jr nz, jr_00e_410b

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00e_40f5

jr_00e_410b:
    ld [hl+], a
    jr jr_00e_40f6

jr_00e_410e:
    pop hl
    ret


    ld hl, $ffb7
    ld a, [hl]
    and $f8
    ld [hl], a
    ld hl, $ffbb
    ld a, [hl]
    and $f8
    ld [hl], a
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$d8e7], a
    ld a, h
    ld [$d8e8], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_00e_4007
    push bc
    call Call_00e_4171
    pop bc
    ld a, [$c81d]
    or a
    ret z

    di
    call $1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    call Call_00e_4075
    di
    call $1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_00e_4171:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

jr_00e_4177:
    push hl

jr_00e_4178:
    ld a, [bc]
    inc bc
    cp $d9
    jr z, jr_00e_4193

    cp $d8
    jr nz, jr_00e_418d

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_00e_4177

jr_00e_418d:
    call Call_00e_4195
    inc hl
    jr jr_00e_4178

jr_00e_4193:
    pop hl
    ret


Call_00e_4195:
    push hl
    srl h
    rr l
    push af
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c2
    ld h, a
    pop af
    jr c, jr_00e_41b0

    swap a
    and $f0
    ld d, a
    ld a, [hl]
    and $0f
    jr jr_00e_41b6

jr_00e_41b0:
    and $0f
    ld d, a
    ld a, [hl]
    and $f0

jr_00e_41b6:
    or d
    ld [hl], a
    pop hl
    ret


    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld [c], a
    ld l, d
    ld a, [hl-]
    ld b, d
    ld a, $42
    ld b, d
    ld b, d
    ld b, [hl]
    ld b, d
    ld e, d
    ld b, d
    ld h, h
    ld b, d
    ld l, [hl]
    ld b, d
    ld a, b
    ld b, d
    or b
    ld b, d
    cp d
    ld b, d
    call nz, $ce42
    ld b, d
    ld a, [$0442]
    ld b, e
    ld c, $43
    jr jr_00e_425d

    ld c, b
    ld c, [hl]
    ld d, $4f
    ld a, [hl]
    ld d, b
    ld c, [hl]
    ld d, d
    ld b, h
    ld d, e
    or [hl]
    ld d, h
    or [hl]
    ld d, l
    ld d, d
    ld d, a
    ld c, [hl]
    ld e, d
    ld h, $5e
    ld c, d
    ld e, a
    ld c, b
    ld h, c
    ld [hl], $62
    ld h, h
    ld h, [hl]
    ld a, [c]
    ld l, b
    and $69
    inc a
    ld b, d
    rst $38
    rst $38
    ld b, b
    ld b, d
    rst $38
    rst $38
    ld b, h
    ld b, d
    rst $38
    rst $38
    ld c, d
    ld b, d
    ld c, h
    ld b, d
    rst $38
    rst $38
    ld bc, $09ff
    nop
    ld d, [hl]
    ld b, d
    ld d, a
    nop
    rst $38
    rst $38
    rra
    ld bc, $ffff
    ld e, [hl]
    ld b, d
    ld h, b

jr_00e_425d:
    ld b, d
    rst $38
    rst $38
    and c
    ld bc, $ffff
    ld l, b
    ld b, d
    ld l, d
    ld b, d
    rst $38
    rst $38
    pop hl
    ld bc, $ffff
    ld [hl], d
    ld b, d
    ld [hl], h
    ld b, d
    rst $38
    rst $38
    ld l, [hl]
    ld [bc], a
    rst $38
    rst $38
    ld a, [hl]
    ld b, d
    add b
    ld b, d
    sbc b
    ld b, d
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    sub h
    ld b, d
    ld bc, $1dff
    nop
    sub b
    ld b, d
    sbc h
    ld [bc], a
    rst $38
    rst $38
    ld l, $03
    rst $38
    rst $38
    ld a, [hl+]
    ld [$ffff], sp
    ld bc, $f1ff
    nop
    xor h
    ld b, d
    ld bc, $1dff
    nop
    xor b
    ld b, d
    sbc l
    ld [bc], a
    rst $38
    rst $38
    cpl
    inc bc
    rst $38
    rst $38
    dec hl
    ld [$ffff], sp
    or h
    ld b, d
    or [hl]
    ld b, d
    rst $38
    rst $38
    ld e, l
    inc bc
    rst $38
    rst $38
    cp [hl]
    ld b, d
    ret nz

    ld b, d
    rst $38
    rst $38
    db $dd
    inc bc
    rst $38
    rst $38
    ret z

    ld b, d
    jp z, $ff42

    rst $38
    ld [$ff04], sp
    rst $38
    jp nc, $d442

    ld b, d
    rst $38
    rst $38
    ld bc, $f1ff
    nop
    or $42
    ld bc, $25ff
    nop
    ld a, [c]
    ld b, d
    ld l, d
    inc b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ee00
    ld b, d
    ld l, e
    inc b
    rst $38
    rst $38
    ld l, h
    inc b
    rst $38
    rst $38
    sbc $04
    rst $38
    rst $38
    inc l
    ld [$ffff], sp
    cp $42
    nop
    ld b, e
    rst $38
    rst $38
    dec l
    ld [$ffff], sp
    ld [$0a43], sp
    ld b, e
    rst $38
    rst $38
    ld l, $08
    rst $38
    rst $38
    ld [de], a
    ld b, e
    inc d
    ld b, e
    rst $38
    rst $38
    cpl
    ld [$ffff], sp
    ld [hl], $43
    cp b
    ld c, e
    cp h
    ld c, e
    ret nz

    ld c, e
    call nz, $c84b
    ld c, e
    call z, $d04b
    ld c, e
    ld a, [c]
    ld c, e
    nop
    ld c, h
    inc b
    ld c, h
    ld d, b
    ld c, l
    ld d, h
    ld c, l
    ld e, b
    ld c, l
    inc c
    ld c, [hl]
    ld c, $ff
    inc b
    nop
    ld b, h
    ld b, e
    ld c, $ff
    dec b
    nop
    db $e4
    ld c, b
    rst $38
    rst $38
    ld bc, $efff
    nop
    ld b, d
    ld b, e
    ld bc, $eeff
    nop
    adc $47
    ld bc, $edff
    nop
    jr nz, jr_00e_439c

    ld bc, $ecff
    nop
    ld b, d
    ld b, e
    ld bc, $ebff
    nop
    ld b, d
    ld b, e
    ld bc, $eaff
    nop
    ret nz

    ld b, l
    ld bc, $e9ff
    nop
    ld b, d
    ld b, e
    ld bc, $e4ff
    nop
    ld e, h
    ld b, l
    ld bc, $00ff
    nop
    ld b, d
    ld b, e
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    ld c, c
    rst $38
    nop
    nop
    ld c, c
    rst $38
    ld bc, $0800
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a

jr_00e_439c:
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    dec de
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ld b, b
    nop
    ld a, [de]
    rst $38
    ld bc, $4000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    dec de
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ld b, b
    nop
    ld a, [de]
    rst $38
    ld bc, $4000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    dec de
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ld b, b
    nop
    ld a, [de]
    rst $38
    ld bc, $4000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    ldh [rIE], a
    ld a, [de]
    rst $38
    ld bc, $e000
    rst $38
    add hl, de
    rst $38
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    ld b, $ff
    ld a, [bc]
    rst $38
    ld bc, $2000
    nop
    dec bc
    rst $38
    ld bc, $1000
    nop
    ld a, [bc]
    rst $38
    ld bc, $f000
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    nop
    nop
    stop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    jr nz, jr_00e_453c

jr_00e_453c:
    ld [$4cff], sp
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld c, b
    rst $38
    nop
    nop
    rst $38
    rst $38
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [$09ff], sp
    rst $38
    stop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$4900], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$4a00], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$4900], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [$0300], sp
    rst $38
    jp hl


    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    inc bc
    nop
    rst $38
    rst $38
    dec c
    rst $38
    ld bc, $1800
    nop
    ld l, b
    nop
    add hl, bc
    rst $38
    ld b, $00
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    ld a, [bc]
    rst $38
    ld bc, $1000
    nop
    add hl, bc
    rst $38
    ld b, $00
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    ld bc, $0700
    rst $38
    ld de, $1505
    rst $38
    inc a
    ret z

    ld bc, $1200
    ld b, [hl]
    ld [de], a
    dec b
    inc bc
    rst $38
    db $eb
    nop
    inc d
    rst $38
    jr jr_00e_4658

    inc de
    dec b
    inc bc
    rst $38
    db $ec
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    inc b
    nop
    rst $38
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    add hl, bc
    rst $38
    stop
    ld hl, $5fff
    nop
    add hl, bc
    rst $38
    ld [$2100], sp
    rst $38
    ld d, l
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc e
    rst $38
    ld [bc], a
    inc c
    add hl, de
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec c
    rst $38

jr_00e_4658:
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    ld bc, $0d00
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld a, [de]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    ld bc, $1000
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    nop
    nop
    ld b, a
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff1c
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    jr jr_00e_46ad

    ld b, $ff
    inc e
    rst $38
    nop

jr_00e_46ad:
    ld bc, $ff1c
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    rlca
    rst $38
    add hl, de
    dec b
    ld b, $ff
    add hl, bc
    rst $38
    ld [$4a00], sp
    rst $38
    nop
    nop
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    ld [$1c00], sp
    rst $38
    nop
    inc b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld a, [de]
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$4700], sp
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    stop
    inc bc
    rst $38
    xor $00
    ld [de], a
    rst $38
    dec hl
    reti


    inc b
    nop
    ld [de], a
    rst $38
    inc l
    reti


    nop
    nop
    ld [de], a
    rst $38
    dec l
    reti


    inc b
    nop
    ld [de], a
    rst $38
    inc sp
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    dec a
    reti


    inc b
    nop
    ld [de], a
    rst $38
    ld a, $d9
    ld bc, $1200
    rst $38
    ccf
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, b
    reti


    ld bc, $1200
    rst $38
    ld b, d
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, e
    reti


    ld bc, $1200
    rst $38
    ld b, h
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, a
    reti


    nop
    nop
    ld [de], a
    rst $38
    ld c, [hl]
    reti


    ld bc, $1200
    rst $38
    ld d, d
    reti


    ld bc, $1200
    rst $38
    ld h, a
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    ld b, $00
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    inc b
    nop
    ld bc, $15ff
    nop
    adc [hl]
    ld b, a
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld b, c
    reti


    inc bc
    nop
    ld bc, $1bff
    nop
    and b
    ld b, a
    ld [de], a
    rst $38
    ld b, c
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    dec b
    nop
    ld bc, $21ff
    nop
    cp [hl]
    ld b, a
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    inc b
    nop
    ld bc, $1eff
    ld bc, $47be
    ld [de], a
    rst $38
    ld e, [hl]
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    adc d
    ret z

    inc b
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    ld bc, $3e00
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    ld hl, $55ff
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc e
    rst $38
    ld [bc], a
    inc c
    add hl, de
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec de
    rst $38
    nop
    nop
    stop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    dec bc
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_4830

jr_00e_4830:
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_4836

jr_00e_4836:
    dec bc
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    dec bc
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_4848

jr_00e_4848:
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_484e

jr_00e_484e:
    dec bc
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    ld c, b
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    rlca
    rst $38
    or h
    dec b
    ld b, $ff
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ld b, b
    nop
    dec bc
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    jr nc, jr_00e_48ca

jr_00e_48ca:
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    inc bc
    rst $38
    rst $28
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    ld [hl], l
    reti


    ld bc, $ff00
    rst $38
    ld bc, $f0ff
    nop
    ld b, d
    ld b, e
    ld bc, $efff
    nop
    ld h, b
    ld c, e
    ld bc, $00ff
    nop
    ld b, d
    ld b, e
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld hl, $60ff
    nop
    rla
    rst $38
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld hl, $55ff
    nop
    inc e
    rst $38
    ld [bc], a
    ld [de], a
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    sub b
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    ld [$0600], sp
    rst $38
    dec e
    rst $38
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld e, $ff
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    ld hl, $54ff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    add b
    nop
    dec bc
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ldh [rIE], a
    add hl, bc
    rst $38
    ld d, $00
    dec c
    rst $38
    inc bc
    nop
    jr jr_00e_497c

jr_00e_497c:
    sbc b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec e
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    ld c, b
    rst $38
    ld [bc], a
    nop
    dec e
    rst $38
    add hl, bc
    rst $38
    ld bc, $1b00
    rst $38
    ld [bc], a
    nop
    ldh a, [rIE]
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    inc bc
    nop
    dec e
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    add hl, de
    rst $38
    ld e, $ff

Call_00e_4a00:
Jump_00e_4a00:
    ld c, c
    rst $38
    inc bc
    nop
    dec e
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1a00
    rst $38
    ld [bc], a
    nop
    stop
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $1e00
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $1c00
    rst $38
    nop
    ld bc, $ff19
    dec e
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    inc bc
    nop
    add hl, bc
    rst $38
    ld bc, $2100
    rst $38
    ld d, l
    nop
    inc e
    rst $38
    ld [bc], a
    inc de
    ld a, [de]
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    ld hl, $55ff
    nop
    inc e
    rst $38
    inc bc
    inc de
    add hl, de
    rst $38
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    ld hl, $60ff
    nop
    rla
    rst $38
    add hl, bc
    rst $38
    ld [$2200], sp
    rst $38
    dec de
    rst $38
    nop
    nop
    ldh [rIE], a
    add hl, de
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    nop
    nop
    jr nc, jr_00e_4ac0

jr_00e_4ac0:
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc c
    nop
    ld hl, $60ff
    nop
    rla
    rst $38
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld hl, $55ff
    nop
    inc e
    rst $38
    ld bc, $1912
    rst $38
    rlca
    rst $38
    add hl, bc
    nop
    ld b, $ff
    add hl, bc
    rst $38
    inc bc
    nop
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    inc bc
    nop
    ld c, d
    rst $38
    ld bc, $0900
    rst $38
    inc bc
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    dec b
    nop
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    dec b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    ld [$0a00], sp
    rst $38
    ld bc, $d000
    rst $38
    rlca
    rst $38
    ld a, [bc]
    nop
    ld b, $ff
    ld a, [bc]
    rst $38
    ld bc, $3000
    nop
    ld b, a
    rst $38
    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld bc, $1902
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld hl, $60ff
    nop
    rla
    rst $38
    inc bc
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    ld bc, $ff00
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld c, d
    rst $38
    nop
    nop
    ld b, a
    rst $38
    ld bc, $0800
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld hl, $60ff
    nop
    rla
    rst $38
    add hl, bc
    rst $38
    ld b, $00
    dec e
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld e, $ff
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    ld bc, $1902
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld hl, $60ff
    nop
    rla
    rst $38
    inc bc
    rst $38
    ldh a, [rP1]
    ld [de], a
    rst $38
    ld [hl], h
    reti


    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    rst $38
    rst $38
    dec b
    nop
    rst $38
    rst $38
    ld b, $00
    rst $38
    rst $38
    rlca
    nop
    rst $38
    rst $38
    ld [bc], a
    nop
    rst $38
    rst $38
    inc bc
    nop
    rst $38
    rst $38
    ld bc, $eeff
    nop
    xor $4b
    ld bc, $ecff
    nop
    ld [HeaderOldLicenseeCode], a
    rst $38
    db $eb
    nop
    and $4b
    ld bc, $ff00
    rst $38
    inc d
    dec b
    rst $38
    rst $38
    dec d
    dec b
    rst $38
    rst $38
    ld bc, $ff00
    rst $38
    ld bc, $e4ff
    nop
    db $fc
    ld c, e
    dec bc
    nop
    rst $38
    rst $38
    ld a, [de]
    dec b
    rst $38
    rst $38
    inc c
    nop
    rst $38
    rst $38
    ld bc, $f0ff
    nop
    or h
    ld c, h
    ld bc, $e4ff
    nop
    xor h
    ld c, h
    ld hl, $60ff
    nop
    rla
    rst $38
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec e
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    nop
    nop
    stop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    inc e
    rst $38
    nop
    inc bc
    add hl, de
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    ld [de], a
    rst $38
    ld d, c
    reti


    ld b, $00
    dec sp
    rst $38
    ld [$5800], sp
    nop
    ld c, b
    nop
    rst $38
    rst $38
    dec de
    dec b
    inc bc
    rst $38
    ld_long $ff00, a
    rst $38
    ld hl, $60ff
    nop
    rla
    rst $38
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec e
    rst $38
    dec de
    rst $38
    nop
    nop
    stop
    add hl, de
    rst $38
    ld e, $ff
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    nop
    nop
    stop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld bc, $4700
    rst $38
    nop
    nop
    inc e
    rst $38
    nop
    inc bc
    add hl, de
    rst $38
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    ld [de], a
    rst $38
    ld d, c
    reti


    ld b, $00
    dec sp
    rst $38
    ld [$5800], sp
    nop
    ld c, b
    nop
    rst $38
    rst $38
    ld c, $00
    rst $38
    rst $38
    dec c
    nop
    rst $38
    rst $38
    ld bc, $ebff
    nop
    ld h, [hl]
    ld c, l
    ld bc, $ecff
    nop
    ld h, [hl]
    ld c, l
    rst $38
    rst $38
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld bc, $1901
    rst $38
    rlca
    rst $38
    ld d, $05
    ld b, $ff
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    jr nz, jr_00e_4d88

jr_00e_4d88:
    rlca
    rst $38
    rla
    dec b
    ld b, $ff
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc c
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    nop
    inc b
    inc e
    rst $38
    ld bc, $1904
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    ld [hl], h
    reti


    dec b
    nop
    inc bc
    rst $38
    db $ed
    nop
    ld b, c
    rst $38
    ld b, a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld h, l
    rst $38
    ld [de], a
    rst $38
    adc d
    ret z

    inc b
    nop
    ld [de], a
    rst $38
    adc e
    ret z

    nop
    nop
    ld a, $ff
    rst $38
    rst $38
    ld bc, $ebff
    nop
    ld a, [de]
    ld c, [hl]
    ld bc, $ecff
    nop
    ld a, [de]
    ld c, [hl]
    rst $38
    rst $38
    ld c, c
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld bc, $1901
    rst $38
    rlca
    rst $38
    ld d, $05
    ld b, $ff
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    rla
    dec b
    ld b, $ff
    inc d
    rst $38
    adc [hl]
    ld c, l
    ld c, h
    ld c, [hl]
    ld e, h
    ld c, [hl]
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $3dff
    nop
    ld c, $4f
    ld e, b
    nop
    inc bc
    rst $38
    dec a
    nop
    ld e, d
    rst $38
    dec bc
    nop
    rlca
    rst $38
    ld e, c
    nop
    ld b, $ff
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    rlca
    inc bc
    inc e
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    ld b, [hl]
    ld bc, $ff1c
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    jr nc, jr_00e_4eec

jr_00e_4eec:
    inc bc
    rst $38
    stop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, b
    reti


    ld bc, $1200
    rst $38
    db $76
    reti


    ld bc, $0600
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ccf
    ld bc, $ff14
    ld l, b
    ld c, [hl]
    rst $38
    rst $38
    inc e
    ld c, a
    inc l
    ld c, a
    or [hl]
    ld c, a
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $b6ff
    nop
    xor b
    ld c, a
    ld bc, $b2ff
    nop
    adc [hl]
    ld c, a
    ld bc, $b5ff
    nop
    add b
    ld c, a
    ld bc, $b4ff
    nop
    ld l, [hl]
    ld c, a
    ld bc, $b3ff
    nop
    ld e, h
    ld c, a
    jr nz, jr_00e_4f4e

    dec d
    rst $38

jr_00e_4f4e:
    inc a
    ret z

    nop
    nop
    xor h
    ld c, a
    ld hl, $0302
    rst $38
    or e
    nop
    rst $38
    rst $38
    jr nz, jr_00e_4f60

    dec d
    rst $38

jr_00e_4f60:
    inc a
    ret z

    nop
    nop
    xor h
    ld c, a
    ld [hl+], a
    ld [bc], a
    inc bc
    rst $38
    or h
    nop
    rst $38
    rst $38
    jr nz, jr_00e_4f72

    dec d
    rst $38

jr_00e_4f72:
    inc a
    ret z

    nop
    nop
    xor h
    ld c, a
    inc hl
    ld [bc], a
    inc bc
    rst $38
    or l
    nop
    rst $38
    rst $38
    jr nz, jr_00e_4f84

    dec d
    rst $38

jr_00e_4f84:
    inc a
    ret z

    nop
    nop
    xor h
    ld c, a
    inc h
    ld [bc], a
    rst $38
    rst $38
    daa
    ld [bc], a
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    and b
    ld c, a
    jr z, jr_00e_4f9c

    inc d
    rst $38

jr_00e_4f9c:
    sub b
    ld c, a
    rst $38
    rst $38
    add hl, hl
    ld [bc], a
    inc bc
    rst $38
    or [hl]
    nop
    rst $38
    rst $38
    ld d, b
    ld [bc], a
    rst $38
    rst $38
    dec h
    ld [bc], a
    ld h, $02
    inc bc
    rst $38
    or d
    nop
    rst $38
    rst $38
    ld bc, $b7ff
    nop
    db $76
    ld d, b
    ld bc, $b6ff
    nop
    add $4f
    ld d, c
    ld [bc], a
    rst $38
    rst $38
    ld d, d
    ld [bc], a
    inc bc
    rst $38
    or a
    nop
    ld e, d
    rst $38
    rra
    nop
    rlca
    rst $38
    ld d, h
    ld [bc], a
    ld b, $ff
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    ld [bc], a
    ld d, $19
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    ld d, l
    ld [bc], a
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld sp, $0300
    rst $38
    ld de, $1200
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, c
    reti


    ld bc, $1200
    rst $38
    ld [hl], a
    reti


    ld bc, $0000
    rst $38
    ld [de], a
    nop
    ld l, d
    ld d, b
    ld [de], a
    rst $38
    ld l, c
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld d, e
    ld [bc], a
    inc d
    rst $38
    call z, $ff4f
    rst $38
    add h
    ld d, b
    add b
    ld d, c
    add h
    ld d, c
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld bc, $b8ff
    nop
    ld a, [hl]
    ld d, c
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_50aa

jr_00e_50aa:
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    ret nc

    rst $38
    dec bc
    rst $38
    ld [bc], a
    nop
    jr nz, jr_00e_50b6

jr_00e_50b6:
    ld c, c
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld bc, $4a00
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld bc, $4800
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld bc, $4900
    rst $38
    ld [bc], a
    nop
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4900
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4700
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4a00
    rst $38
    ld bc, $0900
    rst $38
    stop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4900
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4700
    rst $38
    ld bc, $0900
    rst $38
    ld bc, $4a00
    rst $38
    ld bc, $0900
    rst $38
    ld [$1c00], sp
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld [bc], a
    ld bc, $ff19
    add hl, bc
    rst $38
    inc b
    nop
    dec e
    rst $38
    ld a, [de]
    rst $38
    ld bc, $f000
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    ld hl, $54ff
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    inc bc
    inc e
    rst $38
    ld [bc], a
    jr jr_00e_518e

    rst $38
    ld e, $ff
    inc bc
    rst $38
    cp b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    ld [bc], a
    rst $38
    rst $38
    ld c, d
    rst $38
    ld bc, $0900
    rst $38
    inc b
    nop
    rlca
    rst $38

jr_00e_518e:
    ld bc, $b9ff
    nop
    ld b, [hl]
    ld d, d
    ld d, a
    ld [bc], a
    inc bc
    rst $38
    cp c
    nop
    ld e, d
    rst $38
    jr nz, jr_00e_519e

jr_00e_519e:
    rlca
    rst $38
    ld e, c
    ld [bc], a
    ld b, $ff
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    inc b
    inc e
    rst $38
    inc bc
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    rlca
    rst $38
    ld h, d
    ld [bc], a
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, c
    rst $38
    inc bc
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    inc bc
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld [hl-], a
    nop
    inc bc
    rst $38
    ld [de], a
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, c
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, b
    reti


    ld bc, $0000
    rst $38
    ld de, $3a00
    ld d, d
    ld [de], a
    rst $38
    ld l, c
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld e, b
    ld [bc], a
    inc d
    rst $38
    sbc d
    ld d, c
    rst $38
    rst $38
    ld d, d
    ld d, d
    ld h, d
    ld d, d
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $bcff
    nop
    inc a
    ld d, e
    ld bc, $bbff
    nop
    add h
    ld d, d
    ld bc, $baff
    nop
    ld a, h
    ld d, d
    ld h, e
    ld [bc], a
    inc bc
    rst $38
    cp d
    nop
    rst $38
    rst $38
    ld h, h
    ld [bc], a
    inc bc
    rst $38
    cp e
    nop
    rst $38
    rst $38
    ld h, l
    ld [bc], a
    inc bc
    rst $38
    cp h
    nop
    ld e, d
    rst $38
    inc sp
    nop
    rlca
    rst $38
    ld h, a
    ld [bc], a
    ld b, $ff
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    rlca
    inc b
    inc e
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    ld l, b
    ld [bc], a
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    inc sp
    nop
    inc bc
    rst $38
    inc de
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, d
    reti


    ld bc, $1200
    rst $38
    ld a, c
    reti


    ld bc, $0000
    rst $38
    inc d
    nop
    jr nc, jr_00e_537d

    ld [de], a
    rst $38
    ld l, d
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld h, [hl]
    ld [bc], a
    inc d
    rst $38
    adc d
    ld d, d
    rst $38
    rst $38
    ld e, d
    ld d, e
    ld l, d
    ld d, e
    ld l, [hl]
    ld d, e
    ld a, [hl+]
    ld d, h
    ld b, d
    ld d, h
    ld e, d
    ld d, h
    ld [hl], d
    ld d, h
    adc d
    ld d, h
    sub d
    ld d, h
    and b
    ld d, h
    xor [hl]
    ld d, h
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld l, c
    ld [bc], a
    rst $38
    rst $38
    ld bc, $17ff
    ld bc, $5422
    ld l, d
    ld [bc], a
    inc bc
    rst $38
    rla
    ld bc, $ff5a
    dec [hl]

jr_00e_537d:
    nop
    rlca
    rst $38
    sub b
    ld [bc], a
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    ld [bc], a
    inc e
    rst $38
    dec b
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    nop
    nop
    rlca
    rst $38
    sub e
    ld [bc], a
    inc e
    rst $38
    dec b
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, c
    rst $38
    dec b
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    inc [hl]
    nop
    inc bc
    rst $38
    inc d
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, d
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, d
    reti


    ld bc, $0000
    rst $38
    inc de
    nop
    ld d, $54
    ld [de], a
    rst $38
    ld l, d
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld l, e
    ld [bc], a
    inc d
    rst $38
    ld a, d
    ld d, e
    rst $38
    rst $38
    ld bc, $bdff
    nop
    ld a, $54
    sub c
    ld [bc], a
    ld b, $ff
    dec b
    rst $38
    ld d, l
    ld bc, $ff03
    cp l
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    rst $38
    rst $38
    ld bc, $beff
    nop
    ld d, [hl]
    ld d, h
    sub c
    ld [bc], a
    ld b, $ff
    dec b
    rst $38
    ld d, l
    ld bc, $ff03
    cp [hl]
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    rst $38
    rst $38
    ld bc, $bfff
    nop
    ld l, [hl]
    ld d, h
    sub c
    ld [bc], a
    ld b, $ff
    dec b
    rst $38
    ld d, l
    ld bc, $ff03
    cp a
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    rst $38
    rst $38
    ld bc, $c0ff
    nop
    add [hl]
    ld d, h
    sub c
    ld [bc], a
    ld b, $ff
    dec b
    rst $38
    ld d, l
    ld bc, $ff03
    ret nz

    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $38
    ld [bc], a
    nop
    ld a, b
    nop
    rst $38
    rst $38
    ld bc, $bfff
    nop
    sbc [hl]
    ld d, h
    db $10
    rst $38
    inc bc
    nop
    ld c, b
    nop
    rst $38
    rst $38
    ld bc, $c0ff
    nop
    xor h
    ld d, h
    ld de, $04ff
    nop
    ld e, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    ld bc, $0800
    nop
    rst $38
    rst $38
    cp [hl]
    ld d, h
    adc $54
    jp nc, $d654

    ld d, h
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    sub h
    ld [bc], a
    rst $38
    rst $38
    sub l
    ld [bc], a
    rst $38
    rst $38
    sub [hl]
    ld [bc], a
    ld e, d
    rst $38
    scf
    nop
    rlca
    rst $38
    sub a
    ld [bc], a
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    ld [bc], a
    inc e
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    sbc b
    ld [bc], a
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    dec [hl]
    nop
    inc bc
    rst $38
    dec d
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, e
    reti


    ld bc, $0000
    rst $38
    dec l
    nop
    ld a, h
    ld d, l
    ld bc, $f6ff
    nop
    and b
    ld d, l
    ld bc, $f6ff
    nop
    sub [hl]
    ld d, l
    ld bc, $eeff
    nop
    adc h
    ld d, l
    inc d
    rst $38
    xor d
    ld d, l
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    inc b
    nop
    inc d
    rst $38
    xor d
    ld d, l
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld b, $00
    inc d
    rst $38
    xor d
    ld d, l
    ld [de], a
    rst $38
    ld a, [hl-]
    reti


    ld [$1400], sp
    rst $38
    xor d
    ld d, l
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ret z

    ld d, l
    ret c

    ld d, l
    ld [bc], a
    ld d, [hl]
    inc l
    ld d, [hl]
    ld c, b
    ld d, [hl]
    ld h, h
    ld d, [hl]
    ld l, b
    ld d, [hl]
    db $76
    ld d, [hl]
    add h
    ld d, [hl]
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $16ff
    nop
    cp $55
    ld bc, $c2ff
    nop
    ld a, [$0155]
    rst $38
    pop bc
    nop
    ld a, [c]
    ld d, l
    sbc c
    ld [bc], a
    inc bc
    rst $38
    pop bc
    nop
    rst $38
    rst $38
    ld de, $0303
    rst $38
    jp nz, $ff00

    rst $38
    ld [de], a
    inc bc
    rst $38
    rst $38
    inc de
    inc bc
    rst $38
    rst $38
    ld bc, $16ff
    nop
    jr z, jr_00e_565e

    ld bc, $c4ff
    nop
    inc h
    ld d, [hl]
    ld bc, $c3ff
    nop
    inc e
    ld d, [hl]
    inc d
    inc bc
    inc bc
    rst $38
    jp $ff00


    rst $38
    dec d
    inc bc
    inc bc
    rst $38
    call nz, $ff00
    rst $38
    ld d, $03
    rst $38
    rst $38
    rla
    inc bc
    rst $38
    rst $38
    ld bc, $16ff
    nop
    ld b, h
    ld d, [hl]
    ld bc, $c5ff
    nop
    ld b, b
    ld d, [hl]
    jr jr_00e_563d

    inc bc
    rst $38
    push bc

jr_00e_563d:
    nop
    rst $38
    rst $38
    add hl, de
    inc bc
    rst $38
    rst $38
    ld b, e
    ld [$ffff], sp
    ld bc, $16ff
    nop
    ld h, b
    ld d, [hl]
    ld bc, $c6ff
    nop
    ld e, h
    ld d, [hl]
    ld a, [de]
    inc bc
    inc bc
    rst $38
    add $00
    rst $38
    rst $38
    ld [hl+], a
    inc bc

jr_00e_565e:
    rst $38
    rst $38
    inc hl
    inc bc
    rst $38
    rst $38
    inc h
    inc bc
    rst $38
    rst $38
    ld bc, $16ff
    nop
    ld [hl], d
    ld d, [hl]
    dec h
    inc bc
    rst $38
    rst $38
    ld h, $03
    rst $38
    rst $38
    ld bc, $16ff
    nop
    add b
    ld d, [hl]
    daa
    inc bc
    rst $38
    rst $38
    jr z, @+$05

    rst $38
    rst $38
    ld bc, $c7ff
    nop
    ld c, d
    ld d, a
    ld bc, $c6ff
    nop
    sub h
    ld d, [hl]
    add hl, hl
    inc bc
    rst $38
    rst $38
    ld a, [hl+]
    inc bc
    inc bc
    rst $38
    rst $00
    nop
    ld e, d
    rst $38
    ld c, e
    nop
    rlca
    rst $38
    ld b, [hl]
    inc bc
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc b
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    dec b
    ld d, $19
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    ld b, a
    inc bc
    inc e
    rst $38
    dec b
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    dec b
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld [hl], $00
    inc bc
    rst $38
    ld d, $00
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, e
    reti


    ld bc, $1200
    rst $38
    ld a, h
    reti


    ld bc, $0000
    rst $38
    rla
    nop
    ld a, $57
    ld [de], a
    rst $38
    ld l, e
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    dec hl
    inc bc
    inc d
    rst $38
    sbc d
    ld d, [hl]
    rst $38
    rst $38
    ld e, h
    ld d, a
    jr jr_00e_57ae

    jp c, $b258

    ld e, c
    nop
    ld e, d
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec d
    rst $38
    push hl
    reti


    ld bc, $7400
    ld d, a
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38

jr_00e_57ae:
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $4000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    ld d, b
    nop
    dec de
    rst $38
    inc bc
    nop
    ld h, b
    nop
    dec de
    rst $38
    inc b
    nop
    ld [hl], b
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    nop
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    push hl
    reti


    nop
    nop
    rst $38
    rst $38
    ld bc, $c9ff
    nop
    call nc, $f658
    inc bc
    inc bc
    rst $38
    ret


    nop
    ld e, d
    rst $38
    ld c, l
    nop
    rlca
    rst $38
    inc e
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    dec b
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld b, $04
    inc e
    rst $38
    rlca
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    rlca
    rst $38
    dec e
    dec b
    inc e
    rst $38
    rlca
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    ld b, $00
    ld b, a
    rst $38
    rlca
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    scf
    nop
    inc bc
    rst $38
    rla
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, e
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, l
    reti


    ld bc, $0000
    rst $38
    ld d, $00
    ret z

    ld e, b
    ld [de], a
    rst $38
    ld l, e
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld h, a
    inc b
    inc d
    rst $38
    inc h
    ld e, b
    ld bc, $aaff
    nop
    or b
    ld e, c
    ld bc, $c8ff
    nop
    or b
    ld e, c
    ld b, a
    rst $38
    nop
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld b, a
    rst $38
    ld b, $00
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    ld b, $00
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld b, $00
    dec b
    nop
    add b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec e
    rst $38
    inc e
    rst $38
    ld b, $0f
    add hl, de
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld b, $00
    dec b
    nop
    nop
    nop
    dec bc
    rst $38
    ld b, $00
    ldh a, [rIE]
    add hl, bc
    rst $38
    ld [$4a00], sp
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    ld b, $00
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    dec b
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [$4800], sp
    rst $38
    ld b, $00
    rlca
    rst $38
    push af
    inc bc
    ld b, $ff
    dec bc
    rst $38
    ld b, $00
    stop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    dec c
    rst $38
    ld b, $00
    dec b
    nop
    add b
    nop
    dec e
    rst $38
    inc e
    rst $38
    ld b, $10
    add hl, de
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld b, $00
    dec b
    nop
    nop
    nop
    dec bc
    rst $38
    ld b, $00
    stop
    dec c
    rst $38
    ld b, $00
    nop
    nop
    ld b, b
    nop
    inc bc
    rst $38
    ret z

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld hl, $55ff
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0a00
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    push hl
    reti


    ld bc, $0f00
    rst $38
    scf
    nop
    ld e, b
    nop
    ld a, b
    nop
    rst $38
    rst $38

Call_00e_5a00:
Jump_00e_5a00:
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld hl, $55ff
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    ld bc, $0a00
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    push hl
    reti


    ld bc, $0f00
    rst $38
    scf
    nop
    ld e, b
    nop
    ld a, b
    nop
    rst $38
    rst $38
    ld [hl], b
    ld e, d
    ld h, $5b
    sbc $5b
    and $5b
    xor $5b
    or $5b
    cp $5b
    ld b, $5c
    ld c, $5c
    ld d, $5c
    ld e, $5c
    ld h, $5c
    ld l, $5c
    ld [hl], $5c
    ld a, $5c
    ld b, [hl]
    ld e, h
    inc c
    ld e, l
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec d
    rst $38
    push hl
    reti


    ld bc, $8800
    ld e, d
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    inc bc
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    dec de
    rst $38
    inc bc
    nop
    jr nz, jr_00e_5aea

jr_00e_5aea:
    dec de
    rst $38
    inc b
    nop
    jr nc, jr_00e_5af0

jr_00e_5af0:
    add hl, de
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    nop
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    push hl
    reti


    nop
    nop
    rst $38
    rst $38
    ld bc, $caff
    nop
    sub $5b
    ld e, $05
    inc bc
    rst $38
    jp z, Jump_00e_5a00

    rst $38
    ld c, a
    nop
    rlca
    rst $38
    jr nz, jr_00e_5b3f

    add hl, bc
    rst $38
    ld [$0d00], sp

jr_00e_5b3f:
    rst $38
    ld b, $00
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld [$1c03], sp
    rst $38
    rlca
    ld d, $19
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    ld hl, $1c05
    rst $38
    rlca
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    rlca
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    rlca
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    jr c, jr_00e_5bb4

jr_00e_5bb4:
    inc bc
    rst $38
    jr jr_00e_5bb8

jr_00e_5bb8:
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld h, b
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, [hl]
    reti


    ld bc, $0600
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    rra
    dec b
    inc d
    rst $38
    ld [hl-], a
    ld e, e
    rst $38
    rst $38
    inc h
    rst $38
    sbc h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    and h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    xor h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    or h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38

Call_00e_5c00:
    cp h
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    call nz, $145c
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    call z, $145c
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    call nc, $145c
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    call c, $145c
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $e4
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $ec
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $f4
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    db $fc
    ld e, h
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    inc h
    rst $38
    inc b
    ld e, l
    inc d
    rst $38
    ld c, [hl]
    ld e, h
    ld hl, $55ff
    nop
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    db $ed
    ret z

    ld bc, $0a00
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    push hl
    reti


    ld bc, $0f00
    rst $38
    jr c, jr_00e_5c96

jr_00e_5c96:
    adc b
    nop
    jr c, jr_00e_5c9a

jr_00e_5c9a:
    rst $38
    rst $38
    ld [$5400], sp
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld a, [bc]
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    inc c
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld b, d
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    adc d
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    sub b
    nop
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    inc b
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld b, $01
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld [$5401], sp
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld c, $01
    ld d, h
    ld d, l
    ret c

    ld d, [hl]
    ld d, a
    reti


    db $10
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    ld c, [hl]
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    add d
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    adc d
    ld bc, $5554
    ret c

    ld d, [hl]
    ld d, a
    reti


    dec d
    rst $38
    db $e4
    reti


    nop
    nop
    inc e
    ld e, l
    nop
    rst $38
    rlc b
    inc e
    ld e, l
    rst $38
    rst $38
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    dec b
    nop
    jr nc, jr_00e_5d2c

jr_00e_5d2c:
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld b, $00
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, c
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [$0a00], sp
    rst $38
    dec b
    nop
    ldh a, [rIE]
    dec bc
    rst $38
    dec b
    nop
    jr nz, jr_00e_5d6e

jr_00e_5d6e:
    ld a, [bc]
    rst $38
    dec b
    nop
    stop
    add hl, bc
    rst $38
    ld b, $00
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld b, a
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, b
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld c, d
    rst $38
    dec b
    nop
    add hl, bc
    rst $38
    ld [$0a00], sp
    rst $38
    dec b
    nop
    ldh a, [rIE]
    dec bc
    rst $38
    dec b
    nop
    ldh [rIE], a
    ld a, [bc]
    rst $38
    dec b
    nop
    jr nc, jr_00e_5dc2

jr_00e_5dc2:
    dec bc
    rst $38
    dec b
    nop
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    dec b
    nop
    stop
    inc h
    rst $38
    cp h
    ld e, h
    ld c, l
    rst $38
    ld a, [bc]
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    jr nz, jr_00e_5dde

jr_00e_5dde:
    ld c, c
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld a, [bc]
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld a, [bc]
    nop
    ld c, d
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    ld a, [bc]
    nop
    ld c, b
    rst $38
    dec b
    nop
    ld c, l
    rst $38
    inc b
    nop
    dec c
    rst $38
    dec b
    nop
    dec b
    nop
    add b
    nop
    add hl, bc
    rst $38
    ld b, $00
    ld hl, $55ff
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    stop
    ld [de], a
    rst $38
    db $e4
    reti


    ld bc, $0300
    rst $38
    rlc b
    rst $38
    rst $38
    jr nc, @+$60

    ld c, b
    ld e, [hl]
    ld c, h
    ld e, [hl]
    ld d, b
    ld e, [hl]
    jr z, jr_00e_5e8f

    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    add b
    nop
    rst $38
    rst $38
    inc hl
    dec b
    rst $38
    rst $38
    ld [hl+], a
    dec b
    rst $38
    rst $38
    nop
    rst $38
    call z, Call_00e_5c00
    ld e, [hl]
    ld bc, $cdff
    nop
    ld e, $5f
    ld bc, $cdff
    nop
    ld a, [de]
    ld e, a
    ld bc, $ccff
    nop
    ld l, h
    ld e, [hl]
    inc h
    dec b
    rst $38
    rst $38
    dec h
    dec b
    inc bc
    rst $38
    call $0200
    rst $38
    call z, Call_00e_5a00
    rst $38
    ld h, e
    nop
    rlca
    rst $38
    daa
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop

jr_00e_5e8f:
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    ld [$1c03], sp
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    jr z, jr_00e_5ecf

    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de

jr_00e_5ecf:
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    add hl, sp
    nop
    inc bc
    rst $38
    add hl, de
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, h
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld a, a
    reti


    ld bc, $0600
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    inc h
    dec b
    rst $38
    rst $38
    ld h, $05
    ld [bc], a
    rst $38
    call z, $1400
    rst $38
    db $76
    ld e, [hl]
    ld bc, $ccff
    nop
    ld c, b
    ld e, a
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    ld [$10ff], sp
    rst $38
    ld bc, $3800
    nop
    ld de, $01ff
    nop
    ld e, b
    nop
    inc bc
    rst $38
    call z, $ff00
    rst $38
    ld e, h
    ld e, a
    jr jr_00e_5fae

    jp z, $1860

    ld h, c
    jr nz, jr_00e_5fb5

    jr z, @+$63

    jr nc, jr_00e_5fb9

    jr c, jr_00e_5fbb

    ld b, b
    ld h, c
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec d
    rst $38
    push hl
    reti


    ld bc, $7400
    ld e, a
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38

jr_00e_5fae:
    ld bc, $1000
    nop
    dec de
    rst $38
    ld [bc], a

jr_00e_5fb5:
    nop
    stop
    dec de

jr_00e_5fb9:
    rst $38
    inc bc

jr_00e_5fbb:
    nop
    stop
    add hl, de
    rst $38
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $4000
    nop
    dec de
    rst $38
    ld [bc], a
    nop
    ld d, b
    nop
    dec de
    rst $38
    inc bc
    nop
    ld h, b
    nop
    dec de
    rst $38
    inc b
    nop
    ld [hl], b
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc bc
    nop
    nop
    nop
    ld b, b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    ld c, b
    rst $38
    nop
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld [de], a
    rst $38
    push hl
    reti


    nop
    nop
    rst $38
    rst $38
    add hl, hl
    dec b
    ld e, d
    rst $38
    ld a, l
    nop
    rlca
    rst $38
    ld a, [hl+]
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    dec b
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    ld bc, $ff1c
    ld b, $15
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    dec hl
    dec b
    inc e
    rst $38
    ld b, $04
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld b, $00
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld b, $00
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld b, $00
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ld a, [hl-]
    nop
    inc bc
    rst $38
    ld a, [de]
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, l
    reti


    ld bc, $1200
    rst $38
    add b
    reti


    ld bc, $0000
    rst $38
    inc e
    nop
    cp [hl]
    ld h, b
    ld [de], a
    rst $38
    ld l, l
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld hl, $55ff
    nop
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    db $ed
    ret z

    ld bc, $0a00
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld [de], a
    rst $38
    db $ed
    ret z

    rlca
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld [de], a
    rst $38
    db $ed
    ret z

    rrca
    nop
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    ld b, b
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    push hl
    reti


    ld bc, $0f00
    rst $38
    ld a, [hl-]
    nop
    jr jr_00e_6114

jr_00e_6114:
    ld a, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    ld a, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    ld e, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    jr jr_00e_612e

jr_00e_612e:
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    ld a, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    ld e, b
    nop
    rst $38
    rst $38
    db $10
    rst $38
    dec b
    nop
    jr c, jr_00e_6146

jr_00e_6146:
    rst $38
    rst $38
    ld c, h
    ld h, c
    ld e, h
    ld h, c
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $cfff
    nop
    ld l, $62
    ld bc, $ceff
    nop
    ld [hl], b
    ld h, c
    inc l
    dec b
    inc bc
    rst $38
    adc $00
    rst $38
    rst $38
    dec l
    dec b
    inc bc
    rst $38
    rst $08
    nop
    ld e, d
    rst $38
    ld a, e
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    rlca
    rst $38
    cpl
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    inc b
    inc e
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    nop
    nop
    rlca
    rst $38
    jr nc, jr_00e_61d7

    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de

jr_00e_61d7:
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    dec sp
    nop
    inc bc
    rst $38
    inc e
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, l
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    add c
    reti


    ld bc, $0000
    rst $38
    ld a, [de]
    nop
    ld [hl+], a
    ld h, d
    ld [de], a
    rst $38
    ld l, l
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld l, $05
    inc d
    rst $38
    db $76
    ld h, c
    rst $38
    rst $38
    ld c, b
    ld h, d
    ld a, [$2062]
    ld h, e
    ld b, [hl]
    ld h, e
    ld l, h
    ld h, e
    sub d
    ld h, e
    cp b
    ld h, e
    sbc $63
    inc b
    ld h, h
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld bc, $77ff
    nop
    ld a, h
    ld h, d
    ld [bc], a
    rst $38
    ld l, a
    nop
    ld [bc], a
    rst $38
    ld [hl], b
    nop
    ld [bc], a
    rst $38
    ld [hl], c
    nop
    ld [bc], a
    rst $38
    ld [hl], d
    nop
    ld [bc], a
    rst $38
    ld [hl], e
    nop
    ld [bc], a
    rst $38
    ld [hl], h
    nop
    ld [bc], a
    rst $38
    ld [hl], l
    nop
    ld [bc], a
    rst $38
    halt
    rst $38
    rst $38
    adc b
    nop
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    call nz, Call_00e_4a00
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    ld [bc], a
    ld bc, $4b4a
    ret c

    ld e, d
    ld e, e
    reti


    db $10
    ld bc, $4b4a
    ret c

    ld e, d
    ld e, e
    reti


    ld c, h
    ld bc, $4b4a
    ret c

    ld e, d
    ld e, e
    reti


    add $00
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    ld c, $01
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    add h
    nop
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ret c

    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    ld e, d
    ld e, e
    reti


    jp nz, Jump_00e_4a00

    ld c, e
    ret c

    ld e, d
    ld e, e
    ret c

    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    ld c, h
    ld bc, $4b4a
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ret c

    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ret c

    ld c, d
    ld c, e
    ret c

    ld e, d
    ld e, e
    reti


    ld bc, $77ff
    nop
    inc e
    ld h, e
    ld bc, $70ff
    nop
    inc e
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    ld a, [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], b
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    ld b, d
    ld h, e
    ld bc, $71ff
    nop
    ld b, d
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    add [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], c
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    ld l, b
    ld h, e
    ld bc, $72ff
    nop
    ld l, b
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    adc [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], d
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    adc [hl]
    ld h, e
    ld bc, $73ff
    nop
    adc [hl]
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    sub [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], e
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    or h
    ld h, e
    ld bc, $74ff
    nop
    or h
    ld h, e
    and d
    ld [bc], a
    inc h
    rst $38
    sbc [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], h
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    jp c, $0163

    rst $38
    ld [hl], l
    nop
    jp c, $a263

    ld [bc], a
    inc h
    rst $38
    and [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    ld [hl], l
    nop
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $77ff
    nop
    nop
    ld h, h
    ld bc, $76ff
    nop
    nop
    ld h, h
    and d
    ld [bc], a
    inc h
    rst $38
    xor [hl]
    ld h, d
    ld b, $ff
    inc bc
    rst $38
    ld l, a
    nop
    inc bc
    rst $38
    halt
    dec b
    rst $38
    ld e, l
    ld bc, $ffff
    and e
    ld [bc], a
    rst $38
    rst $38
    ld bc, $78ff
    nop
    ld e, h
    ld h, [hl]
    ld bc, $77ff
    nop
    ld h, h
    ld h, l
    ld bc, $6fff
    nop
    ld a, [de]
    ld h, h
    sbc [hl]
    ld [bc], a
    rst $38
    rst $38
    sbc a
    ld [bc], a
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    add hl, bc
    rst $38
    ld bc, $0d00
    rst $38
    inc bc
    nop
    dec b
    nop
    nop
    nop
    ld c, b
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    nop
    ld bc, $ff19
    add hl, bc
    rst $38
    ld [bc], a
    nop
    db $10
    rst $38
    nop
    nop
    ld e, b
    nop
    dec bc
    rst $38
    nop
    nop
    jr nc, jr_00e_6454

jr_00e_6454:
    ld a, [bc]
    rst $38
    nop
    nop
    ldh [rIE], a
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $2000
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $1000
    nop
    dec bc
    rst $38
    ld bc, $f000
    rst $38
    ld b, a
    rst $38
    nop
    nop
    dec c
    rst $38
    ld bc, $0500
    nop
    add b
    nop
    dec c
    rst $38
    inc bc
    nop
    dec b
    nop
    add b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    inc e
    rst $38
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    ld bc, $1901
    rst $38
    inc e
    rst $38
    ld bc, $1901
    rst $38
    add hl, bc
    rst $38
    ld [$1c00], sp
    rst $38
    inc bc
    ld bc, $ff19
    add hl, bc
    rst $38
    ld b, $00
    dec c
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    inc bc
    nop
    dec b
    nop
    nop
    nop
    ld c, b
    rst $38
    ld bc, $0900
    rst $38
    ld [bc], a
    nop
    inc a
    rst $38
    rlca
    rst $38
    and b
    ld [bc], a
    inc e
    rst $38
    ld bc, $1904
    rst $38
    ld [de], a
    rst $38
    or d
    ret z

    ld [$2100], sp
    rst $38
    ld h, h
    nop
    add hl, bc
    rst $38
    inc b
    nop
    ld [de], a
    rst $38
    sbc e
    ret z

    nop
    nop
    add hl, bc
    rst $38
    ld bc, $1200
    rst $38
    sbc e
    ret z

    jp nc, $0900

    rst $38
    ld bc, $1200
    rst $38
    sbc e
    ret z

    nop
    nop
    add hl, bc
    rst $38
    ld bc, $2400
    rst $38
    xor [hl]
    ld h, d
    inc h
    rst $38
    sub [hl]
    ld h, d
    inc h
    rst $38
    or [hl]
    ld h, d
    inc h
    rst $38
    ret nc

    ld h, d
    inc h
    rst $38
    sbc $62
    ld [de], a
    rst $38
    sbc e
    ret z

    jp nc, $0900

    rst $38
    ld [$0b00], sp
    rst $38
    ld bc, $1000
    nop
    ld a, [bc]
    rst $38
    ld bc, $f000
    rst $38
    dec bc
    rst $38
    ld bc, $1000
    nop
    ld a, [bc]
    rst $38
    ld bc, $f000
    rst $38
    ld c, b
    rst $38
    ld bc, $3d00
    rst $38
    rlca
    rst $38
    and c
    ld [bc], a
    ld a, [bc]
    rst $38
    ld bc, $f000
    rst $38
    dec bc
    rst $38
    ld bc, $2000
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    inc bc
    rst $38
    ld [hl], a
    nop
    ld [de], a
    rst $38
    add d
    reti


    ld bc, $ff00
    rst $38
    and h
    ld [bc], a
    inc bc
    rst $38
    ld a, b
    nop
    ld e, d
    rst $38
    ld h, l
    nop
    rlca
    rst $38
    and [hl]
    ld [bc], a
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    inc bc
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    ld [bc], a
    inc e
    rst $38
    ld [bc], a
    ld d, $19
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    nop
    nop
    rlca
    rst $38
    and a
    ld [bc], a
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    inc a
    nop
    inc bc
    rst $38
    dec e
    nop
    ld [de], a

jr_00e_65f1:
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    inc sp
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    inc [hl]
    reti


    ld bc, $1200
    rst $38
    dec [hl]
    reti


    ld bc, $1200
    rst $38
    ld [hl], $d9
    ld bc, $1200
    rst $38
    scf
    reti


    ld bc, $1200
    rst $38
    jr c, jr_00e_65f1

    ld bc, $1200
    rst $38
    ccf
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, c
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, d
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld b, e
    reti


    ld bc, $1200
    rst $38
    ld b, h
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    ld h, [hl]
    reti


    ld bc, $1200
    rst $38
    ld h, a
    reti


    ld bc, $1200
    rst $38
    ld l, h
    reti


    ld bc, $1200
    rst $38
    add d
    reti


    ld [bc], a
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    and l
    ld [bc], a
    inc d
    rst $38
    ld l, d
    ld h, l
    rst $38
    rst $38
    ld l, h
    ld h, [hl]
    call z, Call_00e_7c66
    ld h, [hl]
    call nc, $1268
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    dec c
    rst $38
    ld bc, $1800
    nop
    ld e, b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    jr jr_00e_668a

jr_00e_668a:
    ld e, b
    nop
    dec c
    rst $38
    inc bc
    nop
    jr jr_00e_6692

jr_00e_6692:
    ld e, b
    nop
    dec c
    rst $38
    inc b
    nop
    jr jr_00e_669a

jr_00e_669a:
    xor b
    nop
    dec c
    rst $38
    dec b
    nop
    jr jr_00e_66a2

jr_00e_66a2:
    ld c, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ldh a, [rIE]
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld c, c
    rst $38
    inc b
    nop
    inc de
    rst $38
    db $e3
    ret c

    dec b
    inc bc
    inc e
    rst $38
    inc b
    dec d
    inc d
    rst $38
    jr jr_00e_6733

    dec c
    rst $38
    ld bc, $1800
    nop
    ld c, b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    jr jr_00e_66da

jr_00e_66da:
    ld c, b
    nop
    dec c
    rst $38
    inc bc
    nop
    jr jr_00e_66e2

jr_00e_66e2:
    ld c, b
    nop
    dec c
    rst $38
    inc b
    nop
    jr jr_00e_66ea

jr_00e_66ea:
    ld [$0d00], sp
    rst $38
    dec b
    nop
    jr jr_00e_66f2

jr_00e_66f2:
    ld e, b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    stop
    ld b, a
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    ld c, d
    rst $38
    inc b
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    inc b
    ld d, $19
    rst $38
    ld c, b
    rst $38
    inc b
    nop
    add hl, bc
    rst $38
    ld [bc], a
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    inc bc
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    dec c
    rst $38
    dec b

jr_00e_6733:
    nop
    nop
    nop
    nop
    nop
    dec e
    rst $38
    dec de
    rst $38
    ld bc, $d000
    rst $38
    dec de
    rst $38
    inc b
    nop
    ret nc

    rst $38
    add hl, de
    rst $38
    ld e, $ff
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    dec b
    inc b
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ld hl, $55ff
    nop
    ld [hl+], a
    rst $38
    dec de
    rst $38
    ld bc, $1000
    nop
    add hl, de
    rst $38
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    ld hl, $66ff
    nop
    add hl, bc
    rst $38
    inc b
    nop
    dec bc
    rst $38
    inc b
    nop
    ld hl, sp-$01
    dec c
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    add hl, bc
    rst $38
    ld [$0700], sp
    rst $38
    ld sp, $3205
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $9c00
    ld h, a
    inc sp
    dec b
    inc d
    rst $38
    xor [hl]
    ld h, a
    inc [hl]
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ac00
    ld h, a
    dec [hl]
    dec b
    inc d
    rst $38
    xor [hl]
    ld h, a
    dec [hl]
    dec b
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    ld [bc], a
    ld [$ff19], sp
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    ld [hl], $05
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ce00
    ld h, a
    scf
    dec b
    inc d
    rst $38
    xor [hl]
    ld l, b
    jr c, jr_00e_67d5

    add hl, bc
    rst $38
    inc b
    nop
    inc e

jr_00e_67d5:
    rst $38
    ld [bc], a
    dec c
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld b, $00
    dec b
    nop
    add b
    nop
    inc e
    rst $38
    inc bc
    ld [$ff19], sp
    add hl, bc
    rst $38
    inc b
    nop
    rlca
    rst $38
    add hl, sp
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0200
    ld l, b
    ld a, [hl-]
    dec b
    inc d
    rst $38
    xor [hl]
    ld l, b
    dec sp
    dec b
    add hl, bc
    rst $38
    inc b
    nop
    inc e
    rst $38
    inc bc
    dec c
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    add b
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    ld a, [de]
    nop
    jr z, jr_00e_6822

jr_00e_6822:
    inc e
    rst $38
    ld bc, $1908
    rst $38
    add hl, bc
    rst $38
    inc b
    nop
    ccf
    rst $38
    rlca
    rst $38
    inc a
    dec b
    dec d
    rst $38
    inc a
    ret z

    nop
    nop
    ld b, b
    ld l, b
    dec a
    dec b
    inc d
    rst $38
    xor [hl]
    ld l, b
    ld a, $05
    add hl, bc
    rst $38
    inc b
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    add hl, bc
    rst $38
    ld [$0500], sp
    rst $38
    ld a, a
    nop
    ld [de], a
    rst $38
    db $e3
    reti


    dec a
    nop
    inc bc
    rst $38
    ld e, $00
    rlca
    rst $38
    ccf
    dec b
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld c, h
    reti


    inc bc
    nop
    ld [de], a
    rst $38
    add e
    reti


    ld bc, $0000
    rst $38
    ld l, $00
    sub b
    ld l, b
    ld bc, $0cff
    ld bc, $68a4
    ld bc, $0cff
    ld bc, $689a
    inc d
    rst $38
    xor [hl]
    ld l, b
    ld [de], a
    rst $38
    ld c, h
    reti


    dec b
    nop
    inc d
    rst $38
    xor [hl]
    ld l, b
    ld [de], a
    rst $38
    ld c, h
    reti


    rlca
    nop
    inc d
    rst $38
    xor [hl]
    ld l, b
    dec c
    rst $38
    ld bc, $0000
    nop
    ld b, b
    nop
    dec c
    rst $38
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    ld [de], a
    rst $38
    db $ed
    ret z

    nop
    nop
    add hl, bc
    rst $38
    ld [$0600], sp
    rst $38
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld sp, $4005
    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $ee00
    ld l, b
    ld b, d
    dec b
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld b, c
    dec b
    rst $38
    rst $38
    or $68
    ld b, $69
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $d2ff
    nop
    sbc $69
    ld bc, $d1ff
    nop
    jr z, jr_00e_697b

    ld bc, $d0ff
    nop
    jr nz, jr_00e_6981

    ld b, e
    dec b
    inc bc
    rst $38
    ret nc

    nop
    rst $38
    rst $38
    ld b, h
    dec b
    inc bc
    rst $38
    pop de
    nop
    rst $38
    rst $38
    ld b, l
    dec b
    inc bc
    rst $38
    jp nc, Jump_00e_5a00

    rst $38
    sub e
    nop
    rlca
    rst $38
    ld b, a
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    dec c
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    inc b
    inc bc
    inc e
    rst $38
    ld bc, $1915
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b

jr_00e_697b:
    rst $38
    nop
    nop
    rlca
    rst $38
    ld b, h

jr_00e_6981:
    ld [$ff1c], sp
    ld bc, $1904
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld bc, $4d00
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld bc, $4d00
    rst $38
    ld b, $00
    ld b, a
    rst $38
    ld bc, $0800
    rst $38
    ld [de], a
    rst $38
    db $e3
    reti


    ld a, $00
    inc bc
    rst $38
    rra
    nop
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, [hl]
    reti


    ld bc, $1200
    rst $38
    add h
    reti


    ld bc, $0000
    rst $38
    jr nz, jr_00e_69ca

jr_00e_69ca:
    jp nc, $1269

    rst $38
    ld l, [hl]
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld b, [hl]
    dec b
    inc d
    rst $38
    ld l, $69
    rst $38
    rst $38
    ld [$fa69], a
    ld l, c
    ld [de], a
    rst $38
    dec hl
    reti


    ld b, $00
    dec c
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $d3ff
    nop
    jp c, $486a

    dec b
    dec d
    rst $38
    inc a
    ret z

    ld bc, $0e00
    ld l, d
    ld c, c
    dec b
    rst $38
    rst $38
    ld c, d
    dec b
    inc bc
    rst $38
    db $d3
    nop
    inc de
    rst $38
    inc bc
    jp c, $0097

    inc de
    rst $38
    dec b
    jp c, $0095

    inc de
    rst $38
    rlca
    jp c, $0098

    ld [de], a
    rst $38
    ld [bc], a
    jp c, $0002

    ld e, e
    rst $38
    rlca
    rst $38
    ld c, h
    dec b
    add hl, bc
    rst $38
    ld [$0d00], sp
    rst $38
    ld bc, $0500
    nop
    nop
    nop
    dec c
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    db $e3
    ret c

    add hl, bc
    inc b
    inc e
    rst $38
    ld [bc], a
    dec d
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    nop
    nop
    rlca
    rst $38
    ld c, l
    dec b
    inc e
    rst $38
    ld [bc], a
    inc b
    add hl, de
    rst $38
    ld c, l
    rst $38
    inc b
    nop
    ld c, c
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld b, a
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    inc b
    nop
    ld c, d
    rst $38
    ld [bc], a
    nop
    ld c, l
    rst $38
    ld b, $00
    ld c, b
    rst $38
    ld [bc], a
    nop
    ld [$12ff], sp
    rst $38
    db $e3
    reti


    ccf
    nop
    inc bc
    rst $38
    jr nz, jr_00e_6ab0

jr_00e_6ab0:
    ld [de], a
    rst $38
    dec hl
    reti


    rlca
    nop
    ld [de], a
    rst $38
    ld l, [hl]
    reti


    ld [bc], a
    nop
    ld [de], a
    rst $38
    add l
    reti


    ld bc, $0000
    rst $38
    rra
    nop
    adc $6a
    ld [de], a
    rst $38
    ld l, [hl]
    reti


    inc bc
    nop
    ld b, $ff
    dec sp
    rst $38
    nop
    nop
    add sp, $00
    ld e, b
    nop
    rst $38
    rst $38
    ld c, e
    dec b
    inc d
    rst $38
    inc d
    ld l, d
    rst $38
    rst $38
    db $e4
    ld l, d
    rst $38
    rst $38
    sub $06
    sbc b
    db $d3
    ld a, [hl+]
    dec bc
    adc h
    or h
    add sp, $2b
    dec bc
    and b
    call nc, $d68c
    ld [hl-], a
    dec c
    sbc b
    jp nc, $0837

    adc h
    or h
    adc h
    push de
    jr z, jr_00e_6b07

    sbc h
    add hl, hl
    ld [$d398], sp
    ld a, [hl+]

jr_00e_6b07:
    add hl, bc
    sbc b
    or h
    or e
    rst $08
    ld l, d
    or e
    rst $18
    ld l, d
    or e
    xor $6a
    or e
    db $fd
    ld l, d
    or e
    rst $08
    ld l, d
    or e
    rst $18
    ld l, d
    or e
    xor $6a
    or e
    db $fd
    ld l, d
    ld [$0f2b], a
    sbc e
    or c
    cp a
    ld h, h
    cp l
    nop
    cp [hl]
    ld a, a
    call nc, $1439
    jp c, $1b4f

    adc h
    call nc, $0b39
    jp hl


    ld c, a
    dec de
    adc h
    ldh [$34], a
    rla
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    rst $20
    ld a, [hl-]
    ld c, $86
    push de
    inc [hl]
    dec b
    add [hl]
    ldh [rNR22], a
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    jp hl


    ld a, [hl-]
    ld c, $86
    jp c, $0534

    add [hl]
    call nc, $1439
    add [hl]
    push de
    inc [hl]
    dec b
    add [hl]
    ldh [rNR22], a
    call nc, $0b39
    adc h
    inc de
    add [hl]
    jp c, $0334

    add [hl]
    db $db
    add hl, sp
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    dec b
    add [hl]
    call nc, $0739
    rst $20
    ld a, [hl-]
    ld c, $8c
    ldh [$34], a
    rla
    call nc, $1339
    adc h
    jp c, $093a

    rst $20
    dec a
    ld de, $da86
    inc [hl]
    inc bc
    sub d
    or h
    call nc, $1439
    jp c, $1b4f

    adc h
    call nc, $0b39
    jp hl


    ld c, a
    dec de
    adc h
    ldh [$34], a
    rla
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    rst $20
    ld a, [hl-]
    ld c, $86
    push de
    inc [hl]
    dec b
    add [hl]
    ldh [rNR22], a
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    jp hl


    ld a, [hl-]
    ld c, $86
    push de
    inc [hl]
    dec b
    add [hl]
    or h
    ldh [$34], a
    rla
    call nc, $1439
    adc h
    dec bc
    adc h
    ldh [$34], a
    rla
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    adc h
    call nc, $0739
    rst $20
    ld a, [hl-]
    ld c, $86
    jp c, $0534

    add [hl]
    rst $20
    ld c, a
    rra
    adc h
    db $db
    add hl, sp
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    jp hl


    ld a, [hl-]
    ld c, $86
    jp c, $0534

    add [hl]
    or h
    call nc, $1439
    adc h
    dec bc
    db $db
    ld c, a
    dec de
    adc h
    ldh [$34], a
    rla
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    rst $20
    ld a, [hl-]
    ld c, $86
    push de
    inc [hl]
    dec b
    add [hl]
    ldh [rNR22], a
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    jp hl


    ld a, [hl-]
    ld c, $86
    jp c, $0534

    add [hl]
    or h
    call nc, $1439
    adc h
    dec bc
    db $db
    ld c, a
    dec de
    adc h
    ldh [$34], a
    rla
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    rst $20
    ld a, [hl-]
    ld c, $86
    push de
    inc [hl]
    dec b
    add [hl]
    ldh [rNR22], a
    call nc, $1339
    adc h
    jp c, $093a

    rst $20
    dec a
    ld de, $da86
    inc [hl]
    inc bc
    adc h
    dec b
    add [hl]
    or h
    call nc, $1439
    adc h
    dec bc
    db $db
    ld c, a
    dec de
    adc h
    ldh [$34], a
    rla
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    rst $20
    ld a, [hl-]
    ld c, $86
    push de
    inc [hl]
    dec b
    add [hl]
    ldh [rNR22], a
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    jp hl


    ld a, [hl-]
    ld c, $86
    push de
    inc [hl]
    dec b
    add [hl]
    or h
    or e
    db $ec
    ld l, e
    cp [hl]
    ccf
    call nc, $1439
    jp c, $1b4f

    adc h
    call nc, $0b39
    jp hl


    ld c, a
    dec de
    adc h
    ldh [$34], a
    rla
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    rst $20
    ld a, [hl-]
    ld c, $86
    push de
    inc [hl]
    dec b
    add [hl]
    ldh [rNR22], a
    call nc, $1339
    adc h
    db $db
    rlca
    jp c, $093a

    add [hl]
    inc [hl]
    inc bc
    add [hl]
    call nc, $0739
    jp hl


    ld a, [hl-]
    ld c, $86
    jp c, $0534

    add [hl]
    or h
    or e
    ld [hl], b
    ld l, e
    or e
    xor b
    ld l, e
    or e
    db $ec
    ld l, e
    or e
    daa
    ld l, h
    or e
    ld h, [hl]
    ld l, h
    or e
    sbc [hl]
    ld l, h
    or e
    db $ec
    ld l, e
    or e
    ldh [$6c], a
    or e
    ld [hl], b
    ld l, e
    or e
    xor b
    ld l, e
    or e
    db $ec
    ld l, e
    or e
    daa
    ld l, h
    or e
    ld h, [hl]
    ld l, h
    or e
    sbc [hl]
    ld l, h
    or e
    db $ec
    ld l, e
    or e
    ldh [$6c], a
    or e
    ld [hl], b
    ld l, e
    or e
    xor b
    ld l, e
    or e
    db $ec
    ld l, e
    or e
    daa
    ld l, h
    or e
    ld h, [hl]
    ld l, h
    or e
    sbc [hl]
    ld l, h
    or e
    db $ec
    ld l, e
    add e
    push de
    jr nc, jr_00e_6d7f

    adc b
    jp nc, $072c

    add h
    ld [$0788], sp
    add h
    add hl, bc
    adc b
    rlca
    add h
    push de
    jr nc, jr_00e_6d8f

jr_00e_6d7f:
    add [hl]
    jp nc, $072c

    add [hl]
    ld a, [bc]
    add a
    push de
    jr nc, jr_00e_6d97

    add l
    jp nc, $092c

    add [hl]
    rlca

jr_00e_6d8f:
    add [hl]
    add hl, bc
    adc b
    rlca
    add h
    push de
    inc h
    dec e

jr_00e_6d97:
    adc b
    jp nc, $082c

    add c
    or h
    add e
    push de
    jr nc, @+$10

    adc b
    jp nc, $072c

    add h
    ld [$0788], sp
    add h
    push de
    jr nc, jr_00e_6dbc

    adc b
    jp nc, $072c

    add h
    push de
    jr nc, @+$13

    add [hl]
    jp nc, $072c

    add [hl]
    ld a, [bc]
    add a

jr_00e_6dbc:
    push de
    jr nc, @+$0f

    add l
    jp nc, $092c

    add a
    push de
    jr nc, jr_00e_6dd5

    add l
    inc h
    dec e
    adc b
    jp nc, $072c

    add h
    ld [$d288], sp
    add c
    or h
    add e

jr_00e_6dd5:
    push de
    jr nc, jr_00e_6de7

    add [hl]
    jp nc, $082c

    add [hl]
    push de
    inc h
    dec e
    adc b
    jp nc, $072c

    add h
    ld a, [bc]
    adc b

jr_00e_6de7:
    ld [$d584], sp
    jr nc, jr_00e_6dfd

    adc b
    jp nc, $082c

    add h
    jp nc, $d288

    rlca
    add h
    push de
    jr nc, @+$0f

    add a
    inc c
    add l
    push de

jr_00e_6dfd:
    inc h
    dec e
    adc b
    jp nc, $072c

    add h
    ld [$d288], sp
    add c
    or h
    add e
    push de
    jr nc, @+$10

    adc b
    jp nc, $072c

    add h
    jp nc, $d288

    add h
    jp nc, $8709

    push de
    jr nc, jr_00e_6e2b

    add l
    jp nc, $0a2c

    add a
    call nc, $8530
    push de
    ld c, $86
    jp nc, $072c

    add [hl]

jr_00e_6e2b:
    dec bc
    add a
    push de
    jr nc, jr_00e_6e3f

    add l
    inc h
    dec e
    adc b
    jp nc, $072c

    add h
    ld [$b489], sp
    or e
    ld l, e
    ld l, l
    or e

jr_00e_6e3f:
    sbc l
    ld l, l
    or e
    call nc, $b36d
    add hl, bc
    ld l, [hl]
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or e
    ld l, e
    ld l, l
    or e
    sbc l
    ld l, l
    or e
    call nc, $b36d
    add hl, bc
    ld l, [hl]
    or e
    ld l, e
    ld l, l
    or e
    sbc l
    ld l, l
    or e
    call nc, $b36d
    add hl, bc
    ld l, [hl]
    or e
    ldh [$6c], a
    or e
    ld [hl], b
    ld l, e
    or e
    xor b
    ld l, e
    or e
    db $ec
    ld l, e
    cp [hl]
    ccf
    call nc, $1439
    jp c, $1b4f

    adc h
    call nc, $0b39
    jp hl


    ld c, a
    dec de
    sbc d
    add c
    or c
    cp a
    ld h, h
    cp l
    nop
    cp [hl]
    add hl, de
    sbc b
    call c, $0f4f
    adc h
    push de
    ld c, h
    dec c
    and h
    di
    ld c, l
    and h
    ret c

    ld c, h
    adc h
    ret c

    ld c, d
    dec bc
    adc h
    reti


    ld c, h
    dec c
    adc h
    adc h
    rst $10
    ld c, b
    ld c, $98
    ret c

    ld b, e
    inc c
    and h
    ld a, [c]
    ld b, [hl]
    dec c
    and h
    call nc, $0c45
    adc h
    ld b, c
    ld [$d58c], sp
    ld b, e
    inc c
    adc h
    sbc b
    jp c, $0f4c

    adc h
    rst $10
    ld c, b
    dec c
    and h
    di
    ld c, d
    rrca
    and h
    ret c

    ld c, l
    dec b
    adc h
    push de
    ld d, c
    dec c
    adc h
    adc $4f
    dec bc
    adc h
    or b
    adc b
    rst $08
    xor l
    sub a
    db $dd
    ld c, a
    rrca
    adc l
    push de
    ld c, h
    ld c, $a3
    add d
    di
    ld c, l
    dec c
    add d
    or h
    and e
    add d
    sub $4c
    ld c, $8d
    push de
    ld c, d
    dec bc
    adc h
    rst $10
    ld c, h
    inc c
    adc l
    or h
    adc d
    sub $48
    dec c
    sbc b
    add c
    push de
    ld b, e
    ld a, [bc]
    and h
    add c
    or h
    add l
    rst $18
    ld b, [hl]
    ld c, $95
    db $dd
    inc c
    sbc b
    ret c

    dec bc
    adc h
    push de
    ld b, l
    dec c
    adc h
    ld b, c
    ld [$438b], sp
    db $10
    adc e
    or h
    adc a
    call nc, $0b43
    adc e
    sub $4c
    dec c
    adc d
    ld c, b
    ld c, $a4
    or h
    add c
    ld a, [c]
    ld c, d
    dec c
    and e
    add c
    rst $10
    ld c, b
    adc h
    push de
    ld b, [hl]
    inc c
    adc h
    adc $48
    ld c, $8e
    or h
    xor a
    add d
    rst $08
    ld c, b
    add d
    or h
    or b
    adc h
    ret c

    ld b, e
    ld c, $8c
    push de
    ld b, l
    inc c
    adc h
    call nc, $0b48
    sbc b
    sub $43
    ld c, $9c
    ld a, [c]
    ld b, c
    rrca
    and e
    add e
    ret c

    ld b, e
    inc c
    adc e
    rst $10
    ld b, l
    adc [hl]
    ret c

    ld b, [hl]
    ld [$8c8c], sp
    sub $45
    dec c
    sbc b
    rst $10
    ld b, e
    dec bc
    sbc b
    ld a, $8c
    ld b, b
    sbc b
    rst $28
    ld a, [hl-]
    dec c
    and h
    reti


    inc a
    ld c, $8c
    db $db
    ld a, $0d
    adc h

Jump_00e_6f77:
    ld b, b
    rrca
    adc h
    adc h
    ret c

    inc a
    sbc b
    reti


    scf
    and h
    rst $28
    ld a, $09
    and h
    call c, $8c0d
    db $db
    ld b, c
    adc h
    db $db
    ld b, [hl]
    add hl, bc
    adc h
    adc h
    rst $10
    ld b, l
    ld c, $98
    ld b, e
    sbc b
    sub $48
    dec c
    sbc b
    rst $38
    ld b, [hl]
    adc h
    or b
    or e
    rst $10
    ld l, [hl]
    or e
    and $6e
    or e
    push af
    ld l, [hl]
    or e
    ld bc, $b36f
    rla
    ld l, a
    or e
    inc h
    ld l, a
    or e
    ld [hl], $6f
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    rst $20
    scf
    ld c, $98
    db $db
    ld a, $8c
    rst $20
    add hl, sp
    dec c
    sbc b
    dec sp
    sbc b
    rst $10
    ld a, $0c
    adc h
    or h
    rst $20
    dec [hl]
    inc c
    sbc b
    db $dd
    ld a, $09
    adc h
    rst $20
    add hl, sp
    dec c
    sbc b
    dec sp
    rrca
    sbc b
    rst $10
    ld a, $0c
    adc h
    or h
    or e
    cp h
    ld l, a
    or e
    adc $6f
    or e
    cp h
    ld l, a
    or e
    adc $6f
    or e
    cp h
    ld l, a
    or e
    adc $6f
    or e
    cp h
    ld l, a
    or e
    adc $6f
    or e
    cp h
    ld l, a
    or e
    adc $6f
    or e
    cp h
    ld l, a
    or e
    adc $6f
    or e
    cp h
    ld l, a
    or e
    adc $6f
    or e
    cp h
    ld l, a
    or e
    adc $6f
    or e
    cp h
    ld l, a
    or e
    adc $6f
    rst $20
    scf
    ld c, $98
    add c
    or c
    cp a
    ld h, h
    cp l
    nop
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    and e
    add e
    call c, $0f43
    sbc b
    add c
    jp c, $0e40

    adc h
    or h
    or b
    sbc a
    add e
    rst $10
    ld b, b
    dec bc
    adc l
    sub $3c
    ld c, $98
    add c
    jp c, $0b37

    adc e
    or h
    or b
    and h
    add c
    rst $18
    ld b, b
    ld c, $98
    ret c

    inc a
    adc e
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or e
    ld a, [hl+]
    ld [hl], b
    or b
    or e
    scf
    ld [hl], b
    or b
    or e
    ld a, [hl+]
    ld [hl], b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    sub h
    rst $20
    scf
    add hl, bc
    sbc b
    db $db
    ld a, $8c
    rst $20
    add hl, sp
    ld [$3b98], sp
    sub b
    adc b
    rst $10
    ld a, $08
    adc h
    rst $20
    dec [hl]
    sbc b
    db $dd
    ld a, $06
    adc h
    rst $20
    add hl, sp
    ld [$3b98], sp
    add hl, bc
    sub b
    or h
    adc b
    rst $10
    ld a, $08
    adc h
    rst $20
    scf
    add hl, bc
    sbc b
    db $db
    ld a, $8c
    rst $20
    add hl, sp
    ld [$3b98], sp
    sub b
    or h
    or e
    add d
    ld [hl], b
    or e
    sub [hl]
    ld [hl], b
    or e
    add d
    ld [hl], b
    or e
    sub [hl]
    ld [hl], b
    or e
    add d
    ld [hl], b
    or e
    sub [hl]
    ld [hl], b
    or e
    add d
    ld [hl], b
    call c, $0f47
    adc h
    db $db
    ld b, e
    adc h
    sbc $4f
    adc h
    call c, $8c4d
    rst $18
    ld b, a
    inc c
    adc h
    jp c, $8c43

    sbc $4f
    adc h
    rst $18
    ld c, l
    adc h
    or h
    jp c, $0f4a

    adc h
    db $db
    ld b, e
    adc h
    rst $18
    ld c, a
    adc h
    ldh [rKEY1], a
    adc h
    db $dd
    ld c, d
    inc c
    adc h
    call c, $8c43
    ldh [rVBK], a
    adc h
    sbc $4d
    adc h
    or h
    sbc $47
    rrca
    adc h
    reti


    ld b, e
    adc h
    rst $18
    ld c, a
    adc h
    db $dd
    ld c, l
    adc h
    rst $18
    ld b, a
    inc c
    adc h
    call c, $8c43
    ldh [rVBK], a
    adc h
    rst $18
    ld c, l
    adc h
    or h
    rst $18
    ld c, d
    rrca
    adc h
    call c, $8c43
    rst $18
    ld c, a
    adc h
    ld [c], a
    ld c, l
    adc h
    db $dd
    ld c, d
    inc c
    adc h
    db $db
    ld b, e
    adc h
    db $dd
    ld c, a
    adc h
    ret c

jr_00e_7127:
    ld c, l
    adc h
    or h
    or e
    cp [hl]
    ld [hl], b
    or e
    reti


    ld [hl], b
    or e
    db $f4
    ld [hl], b
    or e
    rrca
    ld [hl], c
    call c, $0f47
    adc h
    db $db
    ld b, e
    adc h
    or c
    inc b
    nop
    ld [hl], a
    ld l, c
    daa
    ld l, e
    add l
    ld l, [hl]
    ld e, $70
    cp l
    nop
    cp h
    dec [hl]
    cp [hl]
    ld a, [bc]
    ret nz

    ld b, b
    cp a
    ld d, e
    jp nz, $d903

    ld b, l
    inc e
    sub d
    call nc, $aa14
    rst $10
    ld c, b
    ld d, $9e
    db $db
    ld c, d
    sub d
    call nc, $8c4b
    db $d3
    ld c, d
    add [hl]
    ld c, b
    sub d
    or h
    db $db
    ld b, l
    ld d, $92
    db $d3
    ld b, e
    inc de
    xor d
    or h
    or b
    sbc b
    reti


    ld b, l
    inc e
    sub d
    call nc, $a20f
    or h
    or e
    ld e, e
    ld [hl], c
    db $db
    ld b, l
    ld d, $92
    db $d3
    ld b, e
    rrca
    xor d
    or h
    or b
    db $db
    ld c, a
    jr jr_00e_7127

    rst $10
    dec c
    sbc b
    inc c
    sbc b
    dec bc
    sbc b
    or h
    rst $10
    ld c, a
    add hl, bc
    sbc b
    ld [$0798], sp
    sbc h
    pop bc
    ld b, b
    reti


    ld c, [hl]
    ld d, $87
    pop bc
    ld d, $81
    rrca
    add c
    dec b
    add c
    nop
    add d
    or h
    or b
    or b
    sbc b
    pop bc
    ld b, b
    db $db
    ld c, a
    ld d, $a8
    or h
    xor h
    reti


    ld c, [hl]
    adc h
    reti


    ld c, d
    inc de
    sub d
    db $d3
    ld b, l
    xor d
    or h
    or b
    reti


    inc e
    sub d
    call nc, $aa0f
    or e
    ld e, e
    ld [hl], c
    or e
    ld l, e
    ld [hl], c
    or b
    or e
    ld [hl], l
    ld [hl], c
    or e
    ld e, e
    ld [hl], c
    or e
    add c
    ld [hl], c
    or b
    or e
    adc e
    ld [hl], c
    or e
    sub a
    ld [hl], c
    or b
    or b
    or e
    or c
    ld [hl], c
    xor h
    reti


    ld c, [hl]
    ld d, $8c
    or e
    cp l
    ld [hl], c
    or b
    push de
    ld d, c
    ld de, $e19e
    ld c, h
    sub d
    call nc, $8c4b
    ld c, d
    add [hl]
    ld c, b
    sub d
    pop hl
    ld b, l
    ld de, $d492
    ld c, b
    sub d
    db $d3
    ld b, e
    sub d
    ld b, l
    add [hl]
    push de
    ccf
    add [hl]
    ld a, $86
    inc a
    add [hl]
    call nc, $8c39
    reti


    inc a
    add [hl]
    or h
    sbc [hl]
    db $d3
    add hl, sp
    ld de, $d986
    ld a, $9e
    call nc, $8639
    or h
    push de
    inc a
    sub d
    scf
    add [hl]
    add hl, sp
    add [hl]
    inc a
    add [hl]
    ld a, $86
    db $d3
    ld b, b
    adc h
    db $d3
    ld b, e
    inc de
    adc h
    ld b, l
    inc d
    adc h
    pop hl
    ld c, b
    dec d
    sub d
    adc h
    push de
    ld d, c
    ld de, $d99a
    ld c, e
    adc h
    push de
    ld c, d
    add [hl]
    db $d3
    ld c, b
    add [hl]
    ld b, l
    add [hl]
    ld c, d
    add [hl]
    call nc, $9248
    or e
    rst $38
    ld [hl], c
    or e
    add hl, de
    ld [hl], d
    rst $10
    inc a
    ld de, $d392
    scf
    add [hl]
    call nc, $8639
    inc a
    add [hl]
    db $d3
    ld a, $86
    ld b, b
    adc h
    ld b, e
    adc h
    ld b, l
    adc h
    ret c

    ld b, a
    sub d
    rst $28
    ld c, d
    and b
    ld b, l
    and b
    or b
    adc h
    push de
    ld b, l
    ld de, $5186
    add [hl]
    ld c, e
    add [hl]
    ld c, d
    add [hl]
    ld c, b
    add [hl]
    ld b, l
    add [hl]

jr_00e_7286:
    ld c, d
    adc h
    push de
    add [hl]
    push de
    ld c, b
    adc h
    ld b, l
    add [hl]
    ld b, e
    add [hl]
    ld b, l
    add [hl]
    or h
    ccf
    add [hl]
    ld a, $86
    inc a
    add [hl]
    add hl, sp
    and d
    db $d3

jr_00e_729d:
    ld b, l
    add [hl]
    rst $10
    ld c, b
    sub d
    rst $28
    ld c, d
    xor b
    db $db
    ld c, h
    sub d
    rst $10
    ld c, d
    add [hl]
    or b
    or e
    ld [hl], a
    ld [hl], d
    push de
    ccf
    ld de, $3e86
    add [hl]
    inc a
    add [hl]
    add hl, sp
    xor d
    or b
    or b
    or b
    or b
    or d
    ld c, d
    ld [hl], c
    or c
    cp l
    nop
    cp [hl]
    jr c, jr_00e_7286

    ld b, b
    cp a
    ld c, [hl]
    jp nz, $d903

    ld b, b
    inc e
    sub d
    call nc, $aa14
    rst $10
    ld b, e
    ld d, $9e
    db $db
    ld b, l
    sub d
    call nc, $8c46
    db $d3
    ld b, l
    add [hl]
    ld b, e
    sub d
    or h
    db $db
    ld b, b
    ld d, $92
    db $d3
    ld a, $aa
    or h
    or b
    sbc b
    reti


    ld b, b
    inc e
    sub d
    call nc, $a20f
    or h
    or e
    jp nc, $db72

    ld b, b
    ld d, $92
    db $d3
    ld a, $0f
    xor d
    or h
    or b
    db $db
    ld c, d
    jr jr_00e_729d

    rst $10
    dec c
    sbc b
    inc c
    sbc b
    dec bc
    sbc b
    or h
    rst $10
    ld c, d
    add hl, bc
    sbc b
    ld [$0798], sp
    sbc h
    pop bc
    ld b, b
    reti


    ld d, $87
    pop bc
    ld d, $81
    rrca
    add c
    dec b
    add c
    nop
    add d
    or h
    or b
    or b
    sbc b
    pop bc
    ld b, b
    db $db
    ld c, d
    ld d, $a8
    or h
    xor h
    reti


    adc h
    reti


    ld b, l
    inc de
    sub d
    db $d3
    ld b, d
    xor d
    or h
    or b
    reti


    ld b, b
    inc e
    sub d
    call nc, $aa0f
    or e
    jp nc, $b372

    ld [c], a
    ld [hl], d
    or b
    or e
    db $eb
    ld [hl], d
    or e
    jp nc, $b372

    rst $30
    ld [hl], d
    or b
    or e
    ld bc, $b373
    dec c
    ld [hl], e
    or b
    or b
    or e
    ld h, $73
    xor h
    reti


    ld c, d
    ld d, $8c
    or e
    ld sp, $b073
    push de
    ld c, h
    ld de, $e19e
    ld b, a
    sub d
    call nc, $8c46
    ld b, l
    add [hl]
    ld b, e
    sub d
    pop hl
    ld b, b
    sbc h
    db $d3
    ld a, $92
    ld b, b
    add [hl]
    push de
    ld a, [hl-]
    add [hl]
    add hl, sp
    add [hl]
    scf
    add [hl]
    call nc, $8c34
    reti


    scf
    add [hl]
    sbc [hl]
    db $d3
    inc [hl]
    ld de, $d986
    add hl, sp
    sbc [hl]
    call nc, $8634
    or h
    push de
    scf
    sub d
    ld [hl-], a
    add [hl]
    inc [hl]
    add [hl]
    scf
    add [hl]
    add hl, sp
    add [hl]
    db $d3
    dec sp
    adc h
    db $d3
    ld a, $13
    adc h
    ld b, b
    inc d
    adc h
    pop hl
    ld b, e
    dec d
    sub d
    adc h
    push de
    ld c, h
    ld de, $d99a
    ld b, [hl]
    adc h
    push de
    ld b, l
    add [hl]
    db $d3
    ld b, e
    add [hl]
    ld b, b
    add [hl]
    ld b, l
    add [hl]
    call nc, $9243
    pop hl
    ld b, b
    sub d
    call nc, $9243
    db $d3
    ld a, $92
    ld b, b
    add [hl]
    push de
    ld a, [hl-]
    add [hl]
    add hl, sp
    add [hl]
    scf
    add [hl]
    call nc, $8c34
    reti


    scf
    add [hl]
    or e
    adc c
    ld [hl], e
    rst $10
    scf
    ld de, $d392
    ld [hl-], a
    add [hl]
    call nc, $8634
    scf
    add [hl]
    db $d3
    add hl, sp
    add [hl]
    dec sp
    adc h
    ld a, $8c
    ld b, b
    adc h
    ret c

    ld b, d
    sub d
    rst $28
    ld b, l
    and b
    ld a, $a0
    or b
    or b
    xor b
    db $d3
    ld b, b
    add [hl]
    rst $10
    ld b, e
    sub d
    rst $28
    ld b, l
    xor b
    db $db
    ld b, a
    sub d
    rst $10
    ld b, l
    add [hl]
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or d
    jp $b172


    cp l
    db $f4
    cp [hl]
    dec d
    ret nz

    ld b, b
    cp a
    ld d, l
    jp nz, $c103

    ld b, b
    sbc $39
    ld d, $92
    db $d3
    adc h
    db $d3
    inc a
    inc d
    adc h
    scf
    ld [de], a
    and d
    pop hl
    add hl, sp
    ld d, $92
    call nc, $1037
    add [hl]
    db $d3
    add hl, sp
    dec c
    add [hl]
    jp nc, $0c3c

    adc h
    db $db
    ld a, $10
    adc h
    jp nc, $0c3f

    add [hl]
    ld b, b
    dec bc
    sbc b
    pop bc
    ld b, b
    db $db
    scf
    ld d, $87
    pop bc
    dec d
    add c
    rrca
    add c
    ld b, $81
    nop
    add d
    or h
    pop bc
    ld b, b
    sbc $39
    ld d, $92
    db $d3
    adc h
    db $d3
    inc a
    inc d
    adc h
    scf
    ld [de], a
    and d
    or h
    adc h
    pop bc
    ld b, b
    ld [c], a
    add hl, sp
    inc d
    sbc b
    pop bc
    ld b, b
    rst $10
    scf
    ld d, $87
    pop bc
    ld d, $81
    rrca
    add c
    ld b, $81
    nop
    and b
    add d
    or h
    or e
    ld e, h
    ld [hl], h
    or e
    ld sp, $b374
    ld e, h
    ld [hl], h
    pop bc
    ld b, b
    pop hl
    add hl, sp
    ld d, $92
    call nc, $1037
    add [hl]
    db $d3
    add hl, sp
    dec c
    add [hl]
    jp nc, $0c3c

    adc h
    db $db
    ld a, $10
    adc h
    jp nc, $0c3f

    add [hl]
    ld b, b
    dec bc
    sbc b
    pop bc
    ld b, b
    db $db
    scf
    ld d, $87
    pop bc
    dec d
    add c
    rrca
    add c
    ld b, $81
    nop
    add d
    or h
    pop bc
    ld b, b
    pop hl
    add hl, sp
    ld d, $92
    call nc, $1037
    add [hl]
    db $d3
    add hl, sp
    dec c
    add [hl]
    jp nc, $0c3c

    adc h
    db $db
    ld a, $10
    adc h
    jp nc, $0c3f

    add [hl]
    ld b, b
    dec bc
    sbc b
    pop bc
    ld b, b
    db $db
    ld b, e
    ld de, $c187
    ld d, $81
    rrca
    add h
    or h
    or e
    adc l
    ld [hl], h
    pop bc
    ld b, b
    pop hl
    add hl, sp
    add hl, de
    sub d
    call nc, $1337
    add [hl]
    db $d3
    add hl, sp
    rrca
    add [hl]
    jp nc, $0e3c

    adc h
    db $db
    ld a, $13
    adc h
    jp nc, $0e3f

    add [hl]
    ld b, b
    dec c
    sbc b
    pop bc
    ld b, b
    db $db
    ld b, e
    inc d
    add a
    pop bc
    ld d, $81
    rrca
    add h
    or h
    pop bc
    ld b, b
    pop hl
    add hl, sp
    add hl, de
    sub d
    call nc, $1337
    add [hl]
    db $d3
    add hl, sp
    rrca
    add [hl]
    jp nc, $0e3c

    adc h
    db $db
    ld a, $13
    adc h
    jp nc, $0e3f

    add [hl]
    ld b, b
    dec c
    sbc b
    pop bc
    ld b, b
    db $db
    scf
    add hl, de
    add a
    pop bc
    dec d
    add c
    rrca
    add c
    ld b, $81
    nop
    add d
    or h
    or e
    cp d
    ld [hl], h
    or e
    adc l
    ld [hl], h
    pop bc
    ld b, b
    pop hl
    add hl, sp
    inc d
    sub d
    call nc, $1037
    add [hl]
    db $d3
    add hl, sp
    dec c
    add [hl]
    jp nc, $103c

    adc h
    db $db
    ld a, $11

jr_00e_7557:
    adc h
    jp nc, $0d3f

    add [hl]

jr_00e_755c:
    ld b, b
    rrca
    sbc b
    pop bc
    ld b, b
    db $db
    ld b, e
    ld [de], a
    add a
    pop bc
    ld d, $81
    rrca
    add c
    dec b
    add c
    nop
    add d
    or h
    or b
    or e
    ld e, h
    ld [hl], h
    or e
    ld sp, $b374
    ld e, h
    ld [hl], h
    or e
    ld l, h
    ld [hl], h
    or e
    ld e, h
    ld [hl], h
    or e
    ld sp, $b374
    ld e, h
    ld [hl], h
    or e
    adc l
    ld [hl], h
    or e
    cp d
    ld [hl], h
    or e
    adc l
    ld [hl], h
    or e
    and $74
    or e
    rrca
    ld [hl], l
    or e
    cp d
    ld [hl], h
    or e
    adc l
    ld [hl], h
    or e
    ld b, d
    ld [hl], l
    or b
    or e
    cp d
    ld [hl], h
    or e
    adc l
    ld [hl], h
    or e
    and $74
    or e
    rrca
    ld [hl], l
    or e
    cp d
    ld [hl], h
    or e
    adc l
    ld [hl], h
    or e
    and $74
    or e
    rrca
    ld [hl], l
    or e
    cp d
    ld [hl], h
    or e
    adc l
    ld [hl], h
    or e
    and $74
    or e
    rrca
    ld [hl], l
    or e
    cp d
    ld [hl], h
    or e
    adc l
    ld [hl], h
    or e
    and $74
    pop bc
    ld b, b
    push de
    inc sp
    jr jr_00e_7557

    ld [hl-], a
    add [hl]
    db $db
    jr nc, jr_00e_755c

    push de
    dec l
    xor d
    cp [hl]
    ld bc, $40c1
    pop hl
    add hl, sp
    ld d, $92
    call nc, $1037
    add [hl]
    db $d3
    add hl, sp
    dec c
    add [hl]
    jp nc, $0c3c

    adc h
    db $db
    ld a, $10
    adc h
    jp nc, $0c3f

    add [hl]
    ld b, b
    dec bc
    sbc b
    pop bc
    ld b, b
    db $db
    ld b, e
    ld de, $c187
    ld d, $81
    rrca
    add h
    or e
    adc l
    ld [hl], h
    or e
    and $74
    or e
    rrca
    ld [hl], l
    or d
    ld a, [de]
    ld [hl], h
    or c
    cp l
    nop
    cp [hl]
    ld a, a
    ret nz

    ld b, b
    cp a
    dec [hl]
    push de
    inc h
    inc e
    adc h
    push de
    adc h
    push de
    inc l
    inc d
    sbc b
    ld a, [hl+]
    ld de, $2686
    ld [$2486], sp
    inc e
    adc h
    inc l
    inc d
    add [hl]
    inc h
    sub d
    push de
    inc h
    inc e
    adc h
    push de
    adc h
    push de
    inc l
    inc d
    adc h
    ld a, [hl+]
    dec bc
    add [hl]
    inc l
    ld [de], a
    sub d
    inc h
    inc e
    adc h
    inc l
    rla
    sub d
    dec bc
    add [hl]
    or h
    push de
    inc h
    inc e
    adc h
    push de
    adc h
    push de
    inc l
    inc d
    sbc b
    ld a, [hl+]
    ld de, $2686
    ld [$2486], sp
    inc e
    adc h
    inc l
    inc d
    add [hl]
    inc h
    sub d
    or h
    push de
    inc h
    inc e
    add [hl]
    ld a, [hl+]
    ld [bc], a
    add [hl]
    inc h
    inc e
    adc h
    inc l
    inc d
    adc h
    ld a, [hl+]
    dec bc
    add [hl]
    inc l
    ld [de], a
    add [hl]
    ld a, [hl+]
    ld de, $2686
    ld [$2486], sp
    inc e
    add [hl]
    ld h, $0b
    add [hl]
    inc l
    rla
    add [hl]
    inc h
    inc e
    add [hl]
    ld a, [hl+]
    dec bc
    add [hl]
    inc l
    rrca
    add [hl]
    or h
    push de
    inc h
    inc e

jr_00e_7691:
    adc h
    push de
    adc h
    push de
    inc l
    inc d
    adc h
    ld a, [hl+]
    dec bc
    add [hl]
    inc l
    ld [de], a
    add [hl]
    ld a, [hl+]
    ld de, $2686
    ld [$2486], sp
    inc e
    adc h
    inc l
    inc d
    add [hl]
    inc h
    inc e
    add [hl]
    ld a, [hl+]
    dec bc
    add [hl]
    inc l
    ld [de], a
    add [hl]
    or h
    or e
    jr nc, jr_00e_772d

    or e
    ld c, c
    db $76
    or e
    ld h, d
    db $76
    push de
    inc h
    inc e
    adc h
    push de
    adc h
    push de
    inc l
    inc d
    adc h
    ld a, [hl+]
    dec bc
    add [hl]
    inc l
    ld [de], a
    add [hl]
    ld a, [hl+]
    ld de, $2686
    ld [$2486], sp
    inc e
    add [hl]
    ld h, $0b
    add [hl]
    inc l
    inc d
    add [hl]
    inc h
    inc e
    add [hl]
    ld a, [hl+]
    dec bc
    add [hl]
    inc l
    ld [de], a
    add [hl]
    or h
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    push de
    inc h
    rra
    add [hl]
    ld a, [hl+]
    inc bc
    add [hl]
    inc h
    rra
    adc h
    inc l
    jr jr_00e_7691

    ld a, [hl+]
    dec c
    add [hl]
    inc l
    dec d
    add [hl]
    ld a, [hl+]
    inc d
    add [hl]
    ld h, $0a
    add [hl]
    inc h
    rra
    add [hl]
    ld h, $0d
    add [hl]
    inc l
    ld a, [de]
    add [hl]
    inc h
    rra
    add [hl]
    ld a, [hl+]
    dec c
    add [hl]
    inc l
    ld [de], a
    add [hl]
    or h
    or e
    ld c, c
    db $76
    or e
    jr nc, jr_00e_77a0

    or e
    ld c, c
    db $76

jr_00e_772d:
    or e
    ld h, d
    db $76
    or e
    adc [hl]
    db $76
    or e
    jr nc, jr_00e_77ac

    or e
    ld c, c
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld hl, sp+$76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e

jr_00e_776d:
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e

jr_00e_777f:
    cp l
    db $76
    push de
    inc h
    inc e
    adc h
    push de
    adc h
    push de
    inc l
    inc d
    adc h
    ld a, [hl+]
    dec bc
    add [hl]
    inc l
    ld [de], a

jr_00e_7790:
    sub d
    db $db
    rrca
    adc h
    inc d
    adc h
    add hl, de
    adc h
    or e
    cp l
    db $76
    or e
    ld h, d
    db $76
    or e
    cp l

jr_00e_77a0:
    db $76

jr_00e_77a1:
    or e
    ld h, d
    db $76
    or d
    ld [de], a
    db $76
    or c
    inc b
    ld [bc], a
    ld c, b
    ld [hl], c

jr_00e_77ac:
    pop bc
    ld [hl], d
    jr jr_00e_7824

    db $10
    db $76
    ld c, d

jr_00e_77b3:
    ld [hl], c
    jp $1a72


jr_00e_77b7:
    ld [hl], h
    ld [de], a
    db $76
    ret nz

    ld [hl], d
    rla
    ld [hl], h
    rrca
    db $76
    and a
    ld [hl], a
    cp a
    ld h, h
    cp l
    nop
    cp h
    scf
    or b
    sbc b
    sbc b
    cp [hl]
    cpl
    jp nz, $c10a

    ld b, b
    rst $18

jr_00e_77d2:
    ld h, $1c
    sub b
    dec hl
    sub b
    reti


    dec l
    adc e
    rst $18
    jr nc, jr_00e_776d

    cpl
    sub b
    reti


    dec hl
    adc e
    rst $18
    ld h, $1c
    adc d
    add [hl]
    dec hl
    sub b
    reti


    dec l
    adc e
    rst $18
    jr nc, jr_00e_777f

    cpl
    sub c
    reti


    dec hl
    adc d
    rst $18

jr_00e_77f5:
    ld h, $91
    dec hl
    add e
    adc l
    reti


    dec l
    adc e
    rst $18
    jr nc, jr_00e_7790

    cpl
    sub b
    reti


    dec hl
    adc e
    rst $18
    ld h, $90
    dec hl
    adc l
    add e
    reti


    dec l
    adc e
    rst $18
    jr nc, jr_00e_77a1

    cpl
    sub b
    reti


    dec hl
    adc e
    rst $18
    ld h, $90
    dec hl
    sub c
    reti


    dec l
    add [hl]
    add h
    rst $18
    jr nc, jr_00e_77b3

    cpl
    sub b

jr_00e_7824:
    reti


    dec hl
    adc e
    rst $18
    ld h, $90
    dec hl
    sub b
    reti


    dec l
    adc e
    rst $18
    jr nc, jr_00e_77b7

    adc e
    cpl
    sub b
    reti


    dec hl
    adc e
    rst $18
    ld h, $90
    dec hl
    sub b
    reti


    dec l
    adc e
    rst $18
    jr nc, jr_00e_77d2

    add c
    cpl
    sub c
    reti


    dec hl
    adc d
    rst $18
    ld h, $91
    dec hl
    sub b
    reti


    dec l
    adc e
    rst $18
    jr nc, @-$6e

    cpl
    adc b
    adc b
    reti


    dec hl
    adc e
    rst $18
    ld h, $90
    dec hl
    sub b
    reti


    dec l
    adc e
    rst $18
    jr nc, jr_00e_77f5

    cpl
    sub b
    reti


    dec hl
    add d
    adc c
    or d
    ld [c], a
    ld [hl], a
    or c
    cp a
    ld h, h
    cp l
    nop
    or b
    sbc b
    sbc b
    cp [hl]
    dec b
    call $0603
    inc b
    ld [bc], a
    dec b
    inc b
    xor h
    add d
    adc d
    xor c
    rst $18
    ld b, d
    ld c, $91
    db $d3
    ld b, l
    db $10
    add e
    and [hl]
    add c
    rst $18
    ld b, d
    sub b
    db $d3
    ld b, l
    inc c
    adc l
    add e
    call nc, $8b3e
    rst $18
    ld c, b
    inc de
    sub b
    db $d3
    ld b, a
    db $10
    sub b
    call nc, $0e3e
    adc e
    rst $18
    inc a
    rrca
    sub b
    db $d3
    ld b, b
    sub c
    call nc, $0e43
    add [hl]
    add h
    rst $18
    ld b, d
    sub c
    db $d3
    ld a, $0b
    xor b
    add e
    sbc h
    add d
    rst $18
    ld c, b
    rrca
    sub b
    db $d3
    ld c, h
    sub b
    call nc, $0e4f
    adc e
    rst $18
    ld c, [hl]
    adc a
    add c
    db $d3
    ld c, d
    dec bc
    xor a
    add e
    or b
    adc c
    or d
    add c
    ld a, b
    or c
    cp a
    ld h, h
    cp l
    nop
    or b
    sbc b
    sbc b
    cp [hl]
    ld a, a
    call nc, $152a
    add l
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d986
    dec hl
    ld [de], a
    adc d
    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $8185
    reti


    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d986
    dec hl
    ld [de], a
    adc d
    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    ld [de], a
    adc c
    add d
    call nc, $152a
    add l
    call nc, $d986
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d986
    dec hl
    ld [de], a
    adc d
    call nc, $152a
    add [hl]
    call nc, $8382
    reti


    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l

jr_00e_7970:
    call nc, $d986

jr_00e_7973:
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add [hl]

jr_00e_7984:
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d986
    dec hl
    ld [de], a
    add [hl]
    add h
    call nc, $152a
    add [hl]

jr_00e_7999:
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l

jr_00e_79a3:
    call nc, $d986
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add [hl]

jr_00e_79b7:
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d986
    dec hl
    ld [de], a
    adc d
    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    ld [de], a
    adc e
    call nc, $152a
    add l
    call nc, $d986
    dec hl
    jr @-$73

    call nc, $152a
    add l
    call nc, $d985
    dec hl
    jr jr_00e_7970

    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    jr jr_00e_7973

    add a
    call nc, $152a
    add l
    call nc, $d986
    dec hl
    jr jr_00e_7984

    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    jr @-$73

    call nc, $152a
    add l
    call nc, $d986
    dec hl
    jr jr_00e_7999

    call nc, $152a
    add l
    call nc, $d985
    dec hl
    jr jr_00e_79a3

    call nc, $152a
    add e
    add e
    call nc, $d985
    dec hl
    jr @-$73

    call nc, $152a
    add l
    call nc, $d986
    dec hl
    jr jr_00e_79b7

    call nc, $152a
    add [hl]
    call nc, $d985
    dec hl
    jr @-$73

    call nc, $152a
    add l
    call nc, $d986
    dec hl
    jr @-$73

    call nc, $152a
    add l
    call nc, $d985
    dec hl
    jr @-$7c

    adc c
    or d
    dec b
    ld a, c
    or c
    inc bc
    ld [bc], a
    jp nz, Jump_00e_6f77

    ld a, b
    call nc, $e278
    ld [hl], a
    add c
    ld a, b
    dec b
    ld a, c
    ld l, [hl]
    ld a, b
    db $d3
    ld a, b
    ld c, a
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, $c0
    ld b, b
    cp a
    ld e, [hl]
    call $0f02
    inc bc
    dec bc
    inc b
    ld bc, $0705
    add $00
    push bc
    ld [bc], a
    call nz, $c305
    dec b
    db $eb

jr_00e_7a80:
    scf
    rra
    sbc h
    add d
    or c
    ld bc, $6400
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld b, c
    ret nz

    ld b, b
    cp a
    ld h, h
    jp nz, $d502

    inc h
    rra
    add [hl]
    cp [hl]
    ccf
    cp a
    ld e, [hl]
    pop hl
    ld b, b
    rla
    sub d
    or c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc d
    ret nz

    ld b, b
    cp a
    ld h, h
    jp nz, $d502

    inc h
    rra
    sbc b
    or c
    ld [bc], a
    nop
    adc c
    ld a, d
    and d
    ld a, d
    cp l
    nop
    cp h
    inc a
    cp [hl]
    jr nc, jr_00e_7a80

    ld b, b
    cp a
    ld h, h
    jp nz, $c102

    ld b, b
    db $dd
    inc h
    rra
    add l
    pop bc
    ld b, a
    add c
    ld d, d
    add c
    ld e, e
    add c
    ld h, [hl]
    add c
    ld [hl], e
    add c
    ld a, d
    add c
    ld a, a
    add h
    cp [hl]
    ld b, d
    cp a
    ld c, [hl]
    db $dd
    ld b, l
    rla
    adc [hl]
    or c
    cp l
    nop
    cp h
    inc a
    cp [hl]
    inc d
    ret nz

    ld b, b
    cp a
    ld h, h
    jp nz, $c102

    ld b, b
    db $dd
    inc h
    add hl, de
    add l
    pop bc
    ld b, a
    add c
    ld d, d
    add c
    ld e, e
    add c
    ld h, [hl]
    add c
    ld [hl], e
    add c
    ld a, d
    add c
    ld a, a
    sub d
    or c
    ld [bc], a
    nop
    cp c
    ld a, d
    db $e3
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, $c0
    ld b, b
    cp a

jr_00e_7b14:
    ld h, h
    jp nz, $d114

    scf
    rra
    add d
    pop de
    inc [hl]
    rra
    add d
    cp [hl]
    ccf
    jp nc, $0047

    add e
    cp a
    ld e, [hl]
    db $d3
    ld b, a
    dec e
    add h
    cp a
    ld c, b
    db $d3
    ld b, a
    ld [de], a
    add h
    cp a
    dec sp
    call nc, $0f47
    add c
    pop bc
    ld b, b
    add c
    ld [hl], $81
    inc l
    add c
    ld [hl+], a
    cp a

jr_00e_7b40:
    jr c, jr_00e_7b14

    ld b, l
    rrca
    add e
    rst $10
    ld b, e
    inc c
    adc b
    or c
    cp l
    nop
    cp [hl]
    inc d
    ret nz

    ld b, b
    cp a

jr_00e_7b51:
    ld c, [hl]
    jp nc, $113d

    add [hl]
    or c
    ld [bc], a
    nop
    dec bc
    ld a, e
    ld c, d
    ld a, e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc a
    ret nz

    ld b, b
    cp a
    ld h, h
    call $0f02
    inc bc
    inc c
    inc b
    ld bc, $0805
    call $6406
    rlca
    ld h, h
    add $00
    push bc
    inc d
    call nz, $c31e
    jr z, jr_00e_7b40

    inc d
    pop bc
    ld c, h
    rst $18
    scf
    rra
    sub h
    or c
    ld bc, $5d00
    ld a, e
    cp l
    nop
    cp h
    inc a
    cp [hl]
    jr nc, jr_00e_7b51

    ld b, b
    cp a
    ld h, h
    jp nz, $c102

    ld b, b
    db $dd
    inc h
    rra
    add l
    pop bc
    ld b, a
    add c
    ld d, d
    add c
    ld e, e
    add c
    ld h, [hl]
    add c
    ld [hl], e
    add c
    ld a, d
    add c
    ld a, a
    add h
    or c
    cp l
    nop
    cp h
    inc a
    cp [hl]
    inc d
    ret nz

    ld b, b
    cp a
    ld h, h
    jp nz, $c102

    ld b, b
    db $dd
    inc h
    add hl, de
    add l
    pop bc
    ld b, a
    add c
    ld d, d
    add c
    ld e, e
    add c
    ld h, [hl]
    add c
    ld [hl], e
    add c
    ld a, d
    add c
    ld a, a
    add h
    or c
    ld [bc], a
    nop
    adc d
    ld a, e
    xor h
    ld a, e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc a
    ret nz

    ld b, b
    cp a
    ld [hl], h
    call $0f02
    inc bc
    inc c
    inc b
    inc b
    dec b
    ld b, $cd
    ld b, $64
    rlca
    ld h, h
    add $00
    push bc
    inc d
    call nz, $c31e
    jr z, @-$3c

    inc d
    pop bc
    ld c, h
    rst $18
    scf
    rra
    sub h
    or c
    ld bc, $d400
    ld a, e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc a
    ret nz

    ld b, b
    cp a
    ld [hl], h
    call $0f02
    inc bc
    rrca
    inc b
    inc b
    dec b
    ld b, $c6
    nop
    push bc
    inc d
    call nz, $c31e
    jr z, @-$3c

    inc d

jr_00e_7c1e:
    pop bc
    ld c, h
    rst $10
    scf
    rra
    adc b
    or c
    ld bc, $0100
    ld a, h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, $c0
    ld b, b
    cp a
    ld a, a
    call $0f02
    inc bc
    dec bc
    inc b
    ld b, $05
    rlca
    add $00
    push bc
    ld [bc], a
    call nz, $c305
    dec b
    db $eb

jr_00e_7c45:
    scf
    rra
    sbc h
    add d
    or c
    ld bc, $2900
    ld a, h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    dec hl
    cp a
    ld e, b
    ret nz

    ld b, b
    jp nz, $d346

    ld c, l
    dec de
    add e
    pop bc
    ld b, c
    add d
    pop bc
    ld b, e
    add c
    pop bc
    ld b, l

Call_00e_7c66:
    add c
    pop bc
    ld b, a
    add [hl]
    ret nc

    inc h
    nop
    add c
    or c
    cp l
    nop
    cp [hl]
    jr nc, @-$3e

    ld b, b
    cp a
    dec sp
    add [hl]
    adc h
    or c
    ld [bc], a
    nop
    ld c, [hl]
    ld a, h
    ld l, a
    ld a, h
    cp l
    nop
    cp h
    inc a
    cp [hl]
    ld a, [hl+]
    jp nz, $bf0a

    ld c, [hl]
    ret nz

    ld b, b
    pop bc
    ld b, b
    db $dd
    ld c, h
    ld d, $81
    pop bc
    ccf
    add c
    dec sp
    add c
    dec [hl]
    add c
    cpl
    add c
    jr z, jr_00e_7c1e

    ld hl, $1b81
    add c
    ld [de], a
    add c
    ld c, $81
    add hl, bc
    add c
    ld b, $81
    ld [bc], a
    add c
    ld bc, $b181
    ld bc, $8000
    ld a, h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld [hl-], a
    cp a
    ld c, [hl]
    ret nz

    ld b, b
    jp nz, $c10a

    ld b, d
    db $eb
    ld c, b
    jr jr_00e_7c45

    pop bc
    ld a, h
    add e
    ld [hl], a
    add c
    ld h, c
    add c
    ld c, e
    add c
    ld b, b
    add c
    or c
    ld bc, $b200
    ld a, h
    cp l
    nop
    cp h
    inc a
    cp [hl]
    ld a, [de]
    ret nz

    ld b, b
    cp a
    ld c, [hl]
    pop de
    ld h, [hl]
    ld [de], a
    add e
    ld l, b
    ld de, $6b83
    rrca
    add e
    cp a
    dec [hl]
    pop de
    ld h, [hl]
    inc c
    add e
    ld l, b
    ld a, [bc]
    add e
    jp nc, $086b

    add e
    or c
    ld bc, $d400
    ld a, h
    cp l
    nop
    cp h
    sub h
    cp [hl]
    dec e
    ret nz

    ld b, b
    cp a
    ld h, c
    db $d3
    ld c, l
    rla
    add h
    ld c, a
    add h
    ld d, d
    add h
    cp a
    dec sp
    db $d3
    ld c, l
    ld [de], a
    add h
    ld c, a
    add h
    ld d, d
    add h
    or c
    ld bc, $fa00
    ld a, h
    cp l
    nop
    cp h
    sub h
    cp [hl]
    ld a, [de]
    cp a
    ld h, h
    ret nz

    ld e, $d1
    ld e, h
    rra
    add d
    pop de
    ld e, h
    add d
    pop hl
    ld [hl], h
    dec e
    sub d
    or c
    ld bc, $1b00
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    dec hl
    ret nz

    ld b, b
    cp a
    ld h, h
    jp nz, $c119

    ld b, b
    sub $44
    rra

jr_00e_7d46:
    add c
    pop bc
    ld b, l
    add c
    ld c, e
    add c
    ld d, c
    add c
    ld d, h
    add c
    ld e, [hl]

jr_00e_7d51:
    add c
    ld l, b
    add c
    or c
    ld bc, $3500
    ld a, l
    cp l
    nop
    cp h
    sub h
    cp [hl]
    ld a, [de]
    ret nz

    ld b, b
    cp a
    ld c, [hl]
    reti


    ld c, d
    rra
    adc d
    ld c, [hl]
    inc de
    adc b
    ld d, c
    adc b
    cp a
    jr z, jr_00e_7d46

    ld c, d
    rrca
    adc b
    ld c, [hl]
    adc b
    ld d, c
    adc b
    or c
    ld bc, $5900
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [bc]
    ret nz

    ld b, b
    cp a
    ld c, [hl]
    jp nz, $c609

    nop
    push bc
    ld d, b
    call nz, $c306
    jr z, jr_00e_7d51

    ld b, b
    db $ed
    jr nc, jr_00e_7da3

    sub d
    pop bc
    ld b, d
    add c
    ld b, [hl]
    add c
    ld c, l
    add c
    ld d, d
    add c
    ld e, b
    add c
    ld e, l
    add c
    ld h, e

jr_00e_7da3:
    add c
    ld l, c
    add c
    ld l, a
    add c
    ld [hl], l
    add c
    ld a, [hl]
    add c
    ld a, a
    adc l
    or c
    ld bc, $7b00
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    dec l
    cp a
    ld c, [hl]
    ret nz

    ld b, b
    add $00
    push bc
    and b
    call nz, $c302
    ld e, $c2
    ld a, [bc]
    pop bc
    ld b, d
    db $eb
    ld a, $18
    add c
    pop bc
    ld a, h
    adc h
    ld a, e
    add c
    ld a, d
    add c
    ld a, c
    add c
    ld a, b
    add c
    ld [hl], a
    add c
    ld [hl], l
    add c
    ld [hl], d
    add c
    ld l, l
    add c
    ld l, b
    add c
    ld h, a
    add c
    ld h, [hl]
    add c
    ld h, l
    add c
    ld h, h
    add c
    ld h, e
    add c
    ld h, c
    add c
    ld c, e
    add c
    ld b, b
    add c
    or c
    ld bc, $b300
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, $bf
    ld c, [hl]
    ret nz

    ld b, b
    add $00
    push bc
    and b
    call nz, $c302
    ld e, $cd
    ld [bc], a
    ld c, $03
    rrca
    inc b
    rrca
    dec b
    rrca
    jp nz, $c114

    ld h, l
    db $eb
    ld a, $18
    add c

jr_00e_7e1a:
    pop bc
    ld e, [hl]
    adc h
    ld e, h
    add c
    ld e, d
    add c
    ld e, b
    add c
    ld d, a
    add c
    ld d, a
    add c
    ld d, [hl]
    add c
    ld e, c
    add c
    ld d, a
    add c
    ld d, h
    add c
    ld d, d
    add c
    ld d, b
    add c
    ld c, [hl]
    add c
    ld d, h
    add c
    ld d, l
    add c
    ld d, d
    add c
    ld d, l
    add c
    ld d, d
    or c
    ld bc, $f700
    ld a, l
    cp l
    nop
    cp h
    ld a, b
    cp [hl]
    ld a, [de]

jr_00e_7e49:
    cp a
    ld e, [hl]
    ret nz

    ld b, b
    jp nz, $c126

    ld b, b
    reti


    jr nc, jr_00e_7e62

    add c
    pop bc
    ld d, a
    add c
    ld e, b
    add c
    ld e, c
    add c
    ld e, d
    add c
    ld e, e
    add c
    ld e, h
    add c

jr_00e_7e62:
    ld e, l
    add c
    ld d, a
    add c
    ld e, b
    add c
    ld e, c
    add c
    ld e, d
    add c
    or c
    ld bc, $4300
    ld a, [hl]
    cp l
    nop
    cp h
    inc a
    cp [hl]
    inc d
    ret nz

    ld b, b
    cp a
    ld c, [hl]
    jp nc, $1f6c

jr_00e_7e7e:
    add e
    jp nc, $b183

    ld bc, $7100
    ld a, [hl]
    cp l
    nop
    cp h
    inc a
    cp [hl]
    ld a, [de]
    ret nz

    ld b, b
    cp a
    ld h, h
    pop de
    ld e, d
    rra
    add e
    ld e, h
    jr jr_00e_7e1a

    ld e, a
    ld d, $83
    cp a
    dec [hl]
    pop de
    ld e, d
    ld de, $5c83
    rrca
    add e
    jp nc, $0d5f

    add e
    or c
    ld bc, $8600
    ld a, [hl]
    cp l
    nop
    cp h
    sub h
    cp [hl]
    ld b, e
    call $0e02
    inc bc
    ld [bc], a
    inc b
    ld bc, $0505
    cp a
    jr c, jr_00e_7e7e

    ld b, b
    push de
    inc a
    jr jr_00e_7e49

    or c
    ld bc, $ac00
    ld a, [hl]
    cp l
    nop
    cp h
    sub h
    cp [hl]
    ld b, $c0
    ld b, b
    cp a
    ld b, [hl]
    pop de
    ld e, c
    inc de
    add d
    ld e, h
    add d
    ld e, [hl]
    add d

jr_00e_7eda:
    or c
    ld bc, $c800
    ld a, [hl]
    cp l
    nop
    cp h
    sub h
    cp [hl]
    ccf
    cp a
    ld e, [hl]
    ret nz

    ld b, b
    pop de
    ld d, h
    rra
    add [hl]
    push de
    ld e, l
    add [hl]
    or c
    ld bc, $df00
    ld a, [hl]

jr_00e_7ef5:
    cp l
    nop
    cp h
    sub h
    cp [hl]
    ccf
    cp a
    ld h, c
    ret nz

    ld b, b
    pop de
    ld c, h
    rla
    add d
    or c
    ld bc, $f500
    ld a, [hl]
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc d
    cp a
    ld h, h
    ret nz

    ld b, b
    jp nz, $c10a

    ld b, d
    db $eb
    ld c, b
    rra
    add c
    pop bc
    ld c, d
    add c
    ld d, h
    add c

jr_00e_7f1f:
    ld e, a
    add c
    ld h, a
    add c
    ld [hl], b
    add c
    ld a, b
    add c
    ld a, d
    add l
    or c
    ld bc, $0800
    ld a, a
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    jr nc, jr_00e_7ef5

    ld b, b
    cp a
    ld h, h
    ld b, b
    rra
    adc h
    ld b, c
    adc h
    ld b, d
    add l
    or c
    cp l
    nop
    cp [hl]
    jr @-$3e

    ld b, b
    cp a
    ld h, h
    push de
    scf
    rra
    adc h
    jr c, jr_00e_7eda

    add hl, sp
    add l
    or c
    cp l
    nop
    cp [hl]
    inc b
    ret nz

    ld b, b
    cp a
    ld h, h
    push de
    jr nc, jr_00e_7f7b

    adc h
    ld sp, $328c
    add l
    or c
    inc bc
    nop
    ld l, $7f
    ld b, b
    ld a, a
    ld d, c
    ld a, a
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc b
    ret nz

    ld b, b
    cp a
    ld a, a
    push de
    ld d, h
    rra
    add [hl]
    ld c, a
    add [hl]
    ld d, h

jr_00e_7f7b:
    add [hl]
    ld c, a
    and d
    or c
    cp l
    nop
    ret nz

    ld b, b
    cp a
    ld a, a
    jp nz, $9805

    cp [hl]
    dec [hl]
    rst $20
    ld c, l
    rra
    adc b
    pop bc
    ld a, $81
    inc a
    add c
    add hl, sp
    add c
    ld [hl], $81
    inc sp
    add d
    jr nc, jr_00e_7f1f

    ld sp, $3084
    add d
    ld l, $81
    dec l
    pop hl
    add c
    pop bc
    dec hl
    add c
    ld a, [hl+]
    add c
    daa
    add c
    ld h, $81
    inc h
    add c
    ld [hl+], a
    add d
    jr nz, @-$7d

    rra
    add c
    dec e
    add c
    dec de
    add c
    add hl, de
    add c
    rla
    add c
    dec d
    add c
    inc d
    adc b
    or c
    cp l
    nop
    cp [hl]
    add hl, de
    ret nz

    ld b, b
    cp a
    ld a, a
    xor b
    or c
    inc bc
    nop
    ld l, d
    ld a, a
    ld a, a
    ld a, a
    jp nz, $bd7f

    nop
    cp h
    sub h
    cp [hl]
    dec e
    ret nz

    ld b, b
    cp a
    ld h, c
    db $d3
    ld e, c
    ld [$6784], sp
    sbc b
    or c
    ld bc, $d400
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
