; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld [bc], a
    dec c
    ld b, b
    sbc a
    ld c, [hl]
    inc l
    ld d, c
    sub $5f
    ld a, b
    ld l, d
    ld a, [bc]
    ld l, e
    ld a, [$d7b4]
    ld l, a
    ld a, [$d7b5]
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_002_401e

    call Call_002_4028
    jr jr_002_4027

jr_002_401e:
    inc [hl]
    inc hl
    inc hl
    inc hl
    ld [hl], $00
    call Call_002_404e

jr_002_4027:
    ret


Call_002_4028:
    ld a, [$d7b4]
    add $05
    ld l, a
    ld a, [$d7b5]
    adc $00
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    or a
    jr z, jr_002_4041

    dec a
    ld [hl-], a
    ld a, [hl]
    cp $ff
    ret


Jump_002_4041:
jr_002_4041:
    ld a, [$d7b4]
    add $03
    ld l, a
    ld a, [$d7b5]
    adc $00
    ld h, a
    inc [hl]

Call_002_404e:
    call Call_002_40b3
    ld a, b
    and c
    cp $ff
    jr nz, jr_002_4062

    ld a, [$d7b4]
    ld l, a
    ld a, [$d7b5]
    ld h, a
    ld [hl], $00
    ret


jr_002_4062:
    ld a, c
    cp $ff
    jr nz, jr_002_4067

jr_002_4067:
    ld a, c
    cp $f8
    jr c, jr_002_4086

    cp $fe
    jr nz, jr_002_407c

    ld a, b
    rst $00
    sub [hl]
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc a
    ld b, b

jr_002_407c:
    cp $fd
    jr nz, jr_002_4086

    ld a, b
    call $1b2c
    jr jr_002_4041

Jump_002_4086:
jr_002_4086:
    ld a, [$d7b4]
    add $04
    ld l, a
    ld a, [$d7b5]
    adc $00
    ld h, a
    ld a, c
    ld [hl+], a
    ld [hl], b

Jump_002_4095:
    ret


    ld bc, $ffff
    jp Jump_002_4086


    jp Jump_002_4041


    ld a, [$d7b4]
    add $03
    ld l, a
    ld a, [$d7b5]
    adc $00
    ld h, a
    ld a, $01
    ld [hl+], a
    inc hl
    inc [hl]
    jp Jump_002_4095


Call_002_40b3:
    ld a, [$d7b4]
    ld c, a
    ld a, [$d7b5]
    ld b, a
    inc bc
    ld a, [bc]
    add a
    ld hl, $40e3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc bc
    ld a, [bc]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc bc
    ld a, [bc]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ret


    and l
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    dec a
    ld b, d
    and l
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    ld h, l
    ld b, d
    pop af
    ld b, c
    pop af
    ld b, c
    xor c
    ld b, d
    call $f142
    ld b, d
    dec d
    ld b, e
    inc sp
    ld b, e
    ld d, a
    ld b, e
    ld a, e
    ld b, e
    and a
    ld b, e
    bit 0, e
    db $ed
    ld b, e
    ld de, $3544
    ld b, h
    ld e, c
    ld b, h
    ld a, l
    ld b, h
    and c
    ld b, h
    push bc
    ld b, h
    jp hl


    ld b, h
    dec c
    ld b, l
    ld b, l
    ld b, l
    ld l, c
    ld b, l
    and a
    ld b, l
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    pop af
    ld b, c
    rst $08
    ld b, l
    and l
    ld b, c
    and l
    ld b, c
    rst $28
    ld b, l
    rst $28
    ld b, l
    rrca
    ld b, [hl]
    rst $28
    ld b, l
    inc sp
    ld b, [hl]
    ld h, a
    ld b, [hl]
    pop af
    ld b, c
    rst $28
    ld b, l
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    and l
    ld b, c
    rst $28
    ld b, l
    and c
    ld b, [hl]
    cp a
    ld b, c
    push bc
    ld b, c
    bit 0, c
    pop de
    ld b, c
    rst $10
    ld b, c
    db $dd
    ld b, c
    db $e3
    ld b, c
    rst $20
    ld b, c
    db $eb
    ld b, c
    rst $28
    ld b, c
    rst $28
    ld b, c
    rst $28
    ld b, c
    rst $28
    ld b, c
    nop
    jr nz, @+$03

    jr nz, @+$01

    rst $38
    ld [bc], a
    jr nz, jr_002_41cb

    jr nz, @+$01

    rst $38

jr_002_41cb:
    inc b
    jr nz, @+$07

    jr nz, @+$01

    rst $38
    ld bc, $000b
    dec bc
    rst $38
    rst $38
    inc bc
    dec bc
    ld [bc], a
    dec bc
    rst $38
    rst $38
    dec b
    dec bc
    inc b
    dec bc
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    ld b, d
    ld de, $1742
    ld b, d
    dec e
    ld b, d
    inc hl
    ld b, d
    add hl, hl
    ld b, d
    cpl
    ld b, d
    inc sp
    ld b, d
    scf
    ld b, d
    dec sp
    ld b, d
    dec sp
    ld b, d
    dec sp
    ld b, d
    dec sp
    ld b, d
    ld bc, $0020
    jr nz, @+$01

    rst $38
    inc bc
    jr nz, jr_002_4216

    jr nz, @+$01

jr_002_4216:
    rst $38
    dec b
    jr nz, @+$06

    jr nz, @+$01

    rst $38
    ld bc, $000b
    dec bc
    rst $38
    rst $38
    inc bc
    dec bc
    ld [bc], a
    dec bc
    rst $38
    rst $38
    dec b
    dec bc
    inc b
    dec bc
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    ld b, d
    ld d, a
    ld b, d
    ld d, a
    ld b, d
    ld d, a
    ld b, d
    ld d, a
    ld b, d
    ld d, a
    ld b, d
    ld e, a
    ld b, d
    ld e, a
    ld b, d
    ld e, a
    ld b, d
    ld h, e
    ld b, d
    ld h, e
    ld b, d
    ld h, e
    ld b, d
    ld h, e
    ld b, d
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    rst $38
    rst $38
    nop
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    add l
    ld b, d
    adc a
    ld b, d
    sbc c
    ld b, d
    and c
    ld b, d
    and c
    ld b, d
    and c
    ld b, d
    and a
    ld b, d
    and a
    ld b, d
    and a
    ld b, d
    and a
    ld b, d
    nop
    ld c, $01
    ld c, $ff
    rst $38
    nop
    ld c, $01
    dec bc
    ld [bc], a
    add b
    ld bc, $ff0a
    rst $38
    nop
    ld c, $01
    dec bc
    inc bc
    add b
    ld bc, $ff0a
    rst $38
    ld bc, $0004
    ld c, $04
    add b
    rst $38
    rst $38
    nop
    ld c, $01
    ld c, $ff
    rst $38
    rst $38
    rst $38
    jp $c342


    ld b, d
    jp $c342


    ld b, d
    jp $c342


    ld b, d
    jp $c342


    ld b, d
    jp $c342


    ld b, d
    jp $c342


    ld b, d
    jp $0042


    ld [$0e01], sp
    nop
    ld [$0e02], sp
    rst $38
    rst $38
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, d
    nop
    ld [$0e01], sp
    ld [bc], a
    dec c
    ld bc, $ff0e
    rst $38
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    dec bc
    ld b, e
    nop
    ld c, $01
    ld c, $00
    ld c, $02
    ld c, $ff
    rst $38
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    cpl
    ld b, e
    nop
    rst $38
    rst $38
    rst $38
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    ld c, l
    ld b, e
    nop
    add hl, bc
    ld bc, $0203
    ld h, d
    ld bc, $ff02
    rst $38
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    nop
    ld c, $01
    ld c, $00
    ld c, $02
    ld c, $ff
    rst $38
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    sub l
    ld b, e
    nop
    ld c, $01
    dec bc
    ld [bc], a
    ld de, $0b03
    inc b
    ld c, $03
    dec bc
    ld [bc], a
    ld de, $0b01
    rst $38
    rst $38
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    nop
    ld c, $01
    ld [$0c02], sp
    ld bc, $ff08
    rst $38
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    push hl
    ld b, e
    nop
    ld a, [bc]
    ld bc, $020b
    inc c
    rst $38
    rst $38
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    rlca
    ld b, h
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $ff
    rst $38
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    nop
    inc l
    ld bc, $020b
    dec c
    ld bc, $ff0b
    rst $38
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    ld c, a
    ld b, h
    nop
    dec bc
    ld bc, $020b
    dec bc
    ld bc, $ff0b
    rst $38
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], e
    ld b, h
    nop
    ld c, $01
    ld c, $02
    ld c, $01
    ld c, $ff
    rst $38
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    sub a
    ld b, h
    nop
    ld c, $01
    ld c, $02
    ld c, $01
    ld c, $ff
    rst $38
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    nop
    ld c, $01
    ld c, $02
    ld c, $01
    ld c, $ff
    rst $38
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    rst $18
    ld b, h
    nop
    ld c, $01
    ld c, $00
    ld c, $02
    ld c, $ff
    rst $38
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld b, l
    nop
    ld c, $01
    ld c, $00
    ld c, $02
    ld c, $ff
    rst $38
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    daa
    ld b, l
    nop
    jr nz, jr_002_452b

    rlca

jr_002_452b:
    ld [bc], a
    stop
    db $10
    inc bc
    rlca
    inc b
    stop
    ld c, $05
    ld c, $00
    ld c, $05
    ld c, $00
    ld c, $06
    ld c, $00
    ld c, $06
    ld c, $ff
    rst $38
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    ld e, a
    ld b, l
    nop
    dec bc
    ld bc, $020b
    dec bc
    ld bc, $ff0b
    rst $38
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    add e
    ld b, l
    nop
    ld c, $03
    ld a, [bc]
    inc b
    ld c, $05
    ld a, [bc]
    nop
    ld c, $03
    ld a, [bc]
    inc b
    ld c, $05
    ld a, [bc]
    nop
    db $10
    ld bc, $020e
    ld c, $01
    ld c, $02
    ld c, $00
    jr nz, jr_002_45a6

    ld c, $07
    jr nz, jr_002_45aa

    ld c, $ff

jr_002_45a6:
    rst $38
    pop bc
    ld b, l
    pop bc

jr_002_45aa:
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    pop bc
    ld b, l
    nop
    inc c
    ld bc, $020c
    inc c
    inc bc
    inc c
    inc b
    inc c
    dec b
    inc c
    rst $38
    rst $38
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    jp hl


    ld b, l
    nop
    inc e
    rst $38
    inc e
    rst $38
    rst $38
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, [hl]
    dec c
    ld b, [hl]
    dec c
    ld b, [hl]
    dec c
    ld b, [hl]
    dec c
    ld b, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, hl
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    add hl, hl
    ld b, [hl]
    ld sp, $3146
    ld b, [hl]
    ld sp, $3146
    ld b, [hl]
    nop
    ld [$0801], sp
    ld [bc], a
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld h, l
    ld b, [hl]
    ld h, l
    ld b, [hl]
    ld h, l
    ld b, [hl]
    ld h, l
    ld b, [hl]
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld b, $0a
    rlca
    ld a, [bc]
    ld [$090a], sp
    ld a, [bc]
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    ld b, [hl]
    add c
    ld b, [hl]
    add c
    ld b, [hl]
    add c
    ld b, [hl]
    add c
    ld b, [hl]
    add c
    ld b, [hl]
    add l
    ld b, [hl]
    add l
    ld b, [hl]
    add l
    ld b, [hl]
    sbc a
    ld b, [hl]
    sbc a
    ld b, [hl]
    sbc a
    ld b, [hl]
    sbc a
    ld b, [hl]
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld c, $01
    ld c, $02
    ld c, $01
    ld c, $02
    ld c, $01
    ld c, $02
    ld c, $00
    ld [hl], $03
    ld c, $04
    ld c, $05
    ld c, $06
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld b, [hl]
    ld de, $4747
    ld b, a
    ld a, e
    ld b, a
    adc c
    ld b, a
    sub a
    ld b, a
    rst $00
    ld b, a
    rst $18
    ld b, a
    dec b
    ld c, b
    ld b, a
    ld c, b
    ld h, a
    ld c, b
    ld a, l
    ld c, b
    cp c
    ld c, b
    push hl
    ld c, b
    dec b
    ld c, c
    ld b, l
    ld c, c
    ld h, a
    ld c, c
    sub a
    ld c, c
    reti


    ld c, c
    push af
    ld c, c
    dec bc
    ld c, d
    daa
    ld c, d
    ld b, c
    ld c, d
    ld e, c
    ld c, d
    ld l, e
    ld c, d
    add c
    ld c, d
    sbc a
    ld c, d
    db $dd
    ld c, d
    di
    ld c, d
    dec [hl]
    ld c, e
    ld b, a
    ld c, e
    ld a, a
    ld c, e
    cp e
    ld c, e
    rst $30
    ld c, e
    cpl
    ld c, h
    ld b, c
    ld c, h
    ld d, l
    ld c, h
    add l
    ld c, h
    or a
    ld c, h
    rst $30
    ld c, h
    scf
    ld c, l
    ld e, l
    ld c, l
    sbc l
    ld c, l
    rst $18
    ld c, l
    rst $38
    ld c, l
    nop
    dec b
    db $fd
    ld [hl], h
    ld bc, $0205
    dec b
    inc bc
    dec b
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    db $76
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    rra
    ld [$0308], sp
    add hl, bc
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    inc bc
    inc c
    inc bc
    add hl, bc
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    inc bc
    inc c
    inc bc
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rra
    ld [bc], a
    rst $38
    rst $38
    ld [$fd02], sp
    db $76
    add hl, bc
    dec b
    ld a, [bc]
    dec b
    dec bc
    dec b
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    rra
    ld [$0100], sp
    ld bc, $0201
    ld bc, $0103
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    ld a, b
    ld bc, $0203
    inc bc
    cp $04
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    ld [bc], a
    db $fd
    ld a, b
    ld bc, $0202
    ld [bc], a
    cp $04
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    ld a, d
    ld bc, $0203
    ld [bc], a
    inc bc
    inc b
    inc b
    dec b
    dec b
    inc bc
    ld b, $04
    rlca
    inc bc
    ld [$0404], sp
    inc b
    dec b
    inc bc
    ld b, $04
    rlca
    inc bc
    ld [$0404], sp
    inc bc
    dec b
    inc b
    ld b, $03
    rlca
    inc b
    ld [$0903], sp
    ld [bc], a
    ld a, [bc]
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    ld a, e
    ld bc, $0202
    inc b
    inc bc
    inc b
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $1f02
    ld [bc], a
    rst $38
    rst $38
    nop
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    rra
    db $10
    inc bc
    inc b
    db $fd
    ld a, e
    inc b
    ld [bc], a
    dec b
    inc b
    ld b, $02
    rlca
    inc b
    ld [$0302], sp
    inc bc
    inc b
    ld [bc], a
    dec b
    inc bc
    ld b, $02
    rlca
    inc b
    ld [$1f02], sp
    ld [bc], a
    rst $38
    rst $38
    nop
    ld [bc], a
    db $fd
    ld a, h
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    rra
    db $10
    inc b
    dec b
    db $fd
    ld a, e
    dec b
    dec b
    ld b, $05
    rlca
    ld [bc], a
    ld [$0e02], sp
    ld [bc], a
    add hl, bc
    ld [bc], a
    rrca
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    db $10
    ld [bc], a
    dec bc
    ld [bc], a
    ld de, $0c02
    ld [bc], a
    ld [de], a
    ld [bc], a
    dec c
    ld [bc], a
    inc de
    ld [bc], a
    ld [$0e02], sp
    ld [bc], a
    add hl, bc
    ld [bc], a
    rrca
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    db $10
    ld [bc], a
    dec bc
    ld [bc], a
    ld b, $02
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    ld [bc], a
    db $fd
    ld a, [hl]
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    inc b
    dec b
    db $fd
    ld a, [hl]
    dec b
    inc b
    ld b, $05
    rlca
    ld b, $08
    dec b
    add hl, bc
    inc b
    ld a, [bc]
    dec b
    inc b
    dec b
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    ld a, a
    ld bc, $0203
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [$0903], sp
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    inc bc
    inc c
    inc bc
    dec c
    inc bc
    ld c, $03
    rrca
    inc bc
    db $10
    inc bc
    ld de, $1203
    inc bc
    inc de
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    ld d, $03
    rla
    inc bc
    jr jr_002_48b4

    add hl, de
    inc bc
    ld a, [de]

jr_002_48b4:
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    add b
    ld bc, $0203
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [$0903], sp
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    inc bc
    inc c
    inc bc
    dec c
    inc bc
    ld c, $03
    rrca
    inc bc
    db $10
    inc bc
    ld de, $1203
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    dec b
    db $fd
    add b
    ld bc, $0204
    inc b
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    rrca
    rra
    inc bc
    inc b
    inc bc
    rra
    inc bc
    inc b
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    ld b, $03
    db $fd
    add c
    rlca
    inc bc
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld bc, $010b
    inc c
    ld bc, $081f
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    ld bc, $021f
    rst $38
    rst $38
    nop
    inc b
    db $fd
    add d
    ld bc, $1f03
    ld [$0502], sp
    inc bc
    inc b
    inc b
    inc bc
    dec b
    inc bc
    ld b, $02
    rlca
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    add d
    ld bc, $0203
    ld [bc], a
    rra
    ld [$0503], sp
    inc b
    inc b
    dec b
    inc bc
    ld b, $03
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    inc b
    ld bc, $021f
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    add e
    ld bc, $0203
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $010f
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld bc, $010b
    inc c
    ld bc, $010d
    ld b, $03
    rlca
    ld [bc], a
    ld a, [bc]
    ld bc, $010b
    inc c
    ld bc, $010d
    ld [$0903], sp
    ld [bc], a
    ld a, [bc]
    ld bc, $010b
    inc c
    ld bc, $010d
    ld c, $01
    inc b
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    ld [hl], d
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc b
    inc b
    dec b
    inc b
    ld b, $04
    rlca
    inc b
    ld [$0904], sp
    inc b
    ld a, [bc]
    inc b
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    ld [hl], c
    ld bc, $0203
    inc b
    inc bc
    inc bc
    inc b
    ld [bc], a
    dec b
    ld bc, $0106
    rlca
    ld bc, $011f
    rst $38
    rst $38
    nop
    ld a, [bc]
    db $fd
    ld [hl], b
    ld bc, $0208
    rlca
    inc bc
    ld b, $04
    dec b
    dec b
    dec b
    ld b, $05
    rlca
    dec b
    ld [$0904], sp
    inc b
    ld a, [bc]
    inc b
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    ld [$73fd], sp
    ld bc, $0206
    ld [$0603], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    ld [$0408], sp
    add hl, bc
    inc b
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    ld b, $fd
    ld [hl], e
    ld bc, $0206
    ld b, $03
    ld b, $04
    ld [$0805], sp
    ld b, $04
    rlca
    inc b
    ld [$1f04], sp
    ld [bc], a
    rst $38
    rst $38
    nop
    ld b, $fd
    add h
    ld bc, $0206
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $1f
    ld [bc], a
    rst $38
    rst $38
    nop
    ld a, [bc]
    db $fd
    add l
    ld bc, $0206
    dec b
    inc bc
    inc b
    inc b
    inc b
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    add [hl]
    rra
    inc b
    nop
    inc b
    rra
    inc b
    nop
    inc b
    rra
    inc b
    nop
    inc b
    rra
    inc b
    nop
    inc b
    rra
    inc b
    nop
    inc b
    rra
    inc b
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    adc b
    ld bc, $0203
    inc bc
    rra
    ld [$0203], sp
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    ld de, $0a02
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    ld de, $1202
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    adc c
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc b
    dec b
    dec b
    inc b
    ld b, $04
    rlca
    inc b
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    ld [bc], a
    db $fd
    adc d
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    inc bc
    inc c
    dec b
    dec c
    inc b
    ld c, $03
    rrca
    inc bc
    ld c, $04
    dec c
    inc b
    ld c, $03
    dec bc
    inc bc
    inc de
    inc b
    dec bc
    inc b
    inc c
    dec b
    dec c
    inc b
    ld c, $03
    rrca
    inc b
    ld c, $03
    db $10
    inc b
    ld de, $1204
    inc b
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    adc h
    ld bc, $0204
    inc b
    inc bc
    inc bc
    inc b
    dec b
    dec b
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    adc l
    ld bc, $0204
    inc b
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0204
    inc b
    inc bc
    inc bc
    inc b
    dec b
    dec b
    inc bc
    ld b, $03
    rra
    ld [$0307], sp
    ld [$0902], sp
    inc b
    ld a, [bc]
    inc b
    dec bc
    inc b
    inc c
    inc b
    dec c
    inc b
    ld c, $03
    rrca
    inc bc
    db $10
    inc bc
    ld de, $1203
    inc bc
    inc de
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    adc [hl]
    ld bc, $0204
    inc b
    inc bc
    inc bc
    inc b
    dec b
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    inc bc
    dec bc
    inc b
    inc c
    inc bc
    dec c
    inc bc
    ld c, $02
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    ld a, [bc]
    ld bc, $021f
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    adc a
    ld bc, $0204
    inc b
    inc bc
    inc bc
    inc b
    dec b
    dec b
    inc bc
    ld b, $03
    rra
    ld [$0207], sp
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    ld de, $1202
    ld [bc], a
    inc de
    ld [bc], a
    inc d
    ld [bc], a
    dec d
    ld [bc], a
    ld d, $02
    rla
    ld [bc], a
    jr jr_002_4bf3

    add hl, de
    ld [bc], a

jr_002_4bf3:
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    sub b
    ld bc, $0204
    inc b
    inc bc
    inc bc
    inc b
    dec b
    dec b
    inc bc
    ld b, $03
    rra
    ld [$0507], sp
    ld [$0904], sp
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    inc bc
    ld a, [bc]
    inc b
    dec bc
    ld [$031f], sp
    dec bc
    ld [bc], a
    rra
    ld [bc], a
    dec bc
    ld bc, $011f
    dec bc
    ld bc, $011f
    dec bc
    ld bc, $011f
    dec bc
    ld bc, $021f
    rst $38
    rst $38
    nop
    ld b, $fd
    sub d
    ld bc, $0205
    dec b
    inc bc
    inc bc
    inc b
    inc b
    dec b
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    sub e
    ld bc, $0204
    inc b
    inc bc
    inc bc
    inc b
    dec b
    dec b
    inc bc
    ld b, $02
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    ld b, $fd
    sub e
    ld bc, $0205
    dec b
    inc bc
    dec b
    inc b
    inc bc
    dec b
    inc bc
    ld b, $08
    rlca
    inc bc
    ld b, $03
    rlca
    inc bc
    ld b, $03
    rlca
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld b, $02
    rlca
    ld bc, $0106
    rlca
    ld bc, $0106
    rlca
    ld bc, $0106
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    dec b
    db $fd
    adc h
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    dec b
    ld [bc], a
    rlca
    ld [bc], a
    ld [$0702], sp
    ld [bc], a
    rra
    ld [bc], a
    ld [$1f02], sp
    ld [bc], a
    rlca
    ld bc, $011f
    ld [$1f01], sp
    ld bc, $0107
    rra
    ld bc, $0108
    rra
    ld bc, $021f
    rst $38
    rst $38
    nop
    inc b
    db $fd
    sub h
    ld bc, $0205
    dec b
    inc bc
    inc b
    inc b
    inc b
    dec b
    ld b, $06
    inc b
    rlca
    inc b
    ld [$0703], sp
    ld [bc], a
    ld [$0602], sp
    ld [bc], a
    ld [$0903], sp
    inc bc
    ld [$0902], sp
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    ld a, [bc]
    ld bc, $010b
    ld a, [bc]
    ld bc, $011f
    dec bc
    ld bc, $011f
    ld a, [bc]
    ld bc, $011f
    dec bc
    ld bc, $021f
    rst $38
    rst $38
    nop
    ld bc, $95fd
    ld bc, $0201
    ld bc, $0203
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [$0903], sp
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    sub [hl]
    rra
    ld bc, $0301
    rra
    ld bc, $0302
    rra
    ld bc, $0303
    rra
    ld bc, $0304
    dec b
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    sub a
    ld bc, $0004
    inc bc
    ld bc, $0203
    inc b
    ld bc, $0204
    inc bc
    ld bc, $0303
    inc b
    ld [bc], a
    inc b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    inc b
    inc b
    inc bc
    ld b, $03
    dec b
    inc b
    rlca
    inc b
    db $10
    inc b
    dec bc
    inc b
    ld de, $0c04
    inc b
    ld [de], a
    inc b
    dec c
    inc b
    inc de
    inc b
    rlca
    inc bc
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    sbc c
    ld bc, $0205
    inc b
    inc bc
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    rlca
    inc bc
    ld [$1f03], sp
    ld [$0209], sp
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    ld de, $1202
    ld [bc], a
    inc de
    ld [bc], a
    inc d
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    dec d
    ld [bc], a
    ld d, $02
    rla
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    db $fd
    sbc e
    ld bc, $0204
    inc b
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$0502], sp
    ld [bc], a
    ld b, $02
    rlca
    ld [bc], a
    ld [$1f02], sp
    ld [bc], a
    rst $38
    rst $38
    nop
    inc b
    ld bc, $0203
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $06
    ld b, $07
    ld b, $08
    ld b, $09
    ld b, $1f
    ld [bc], a
    rst $38
    rst $38
    inc hl
    ld c, [hl]
    add hl, hl
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld h, c
    ld c, [hl]
    ld h, a
    ld c, [hl]
    sbc c
    ld c, [hl]
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $00fe
    nop
    inc b
    ld b, $01
    nop
    inc b
    ld b, $01
    ld bc, $0604
    ld bc, $0401
    ld b, $01
    ld [bc], a
    inc b
    ld b, $01
    ld [bc], a
    dec b
    ld b, $01
    inc bc
    dec b
    ld b, $01
    inc bc
    dec b
    ld b, $01
    inc b
    dec b
    ld b, $01
    inc b
    ld b, $06
    ld bc, $0605
    ld b, $01
    dec b
    ld b, $06
    ld bc, $ffff
    nop
    ld [bc], a
    ld b, $01
    cp $00
    ld bc, $0602
    ld bc, $00fe
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    ld [bc], a
    ld b, $01
    inc bc
    ld [bc], a
    ld b, $01
    inc bc
    ld [bc], a
    ld b, $01
    inc bc
    ld [bc], a
    ld b, $01
    inc b
    ld [bc], a
    ld b, $01
    inc b
    ld [bc], a
    ld b, $01
    inc b
    ld [bc], a
    ld b, $01
    dec b
    ld [bc], a
    ld b, $01
    dec b
    ld [bc], a
    ld b, $01
    dec b
    ld [bc], a
    ld b, $01
    rst $38
    rst $38
    ld bc, $0202
    ld bc, $00fe
    call $1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld a, $02
    call $1ae1
    ld a, [$c88b]
    rst $00
    cp a
    ld c, [hl]
    add l
    ld c, a
    ld [de], a
    ld d, b
    sbc a
    ld d, b
    ld a, $fc
    call $1688
    ld de, $5b17
    ld hl, $9000
    call $14cf
    ld de, $5b18
    ld hl, $8600
    call $14cf
    ld de, $5b19
    ld hl, $8640
    call $14cf
    ld de, $5b1a
    ld hl, $8670
    call $14cf
    ld de, $2f00
    ld hl, $8800
    call $14cf
    ld de, $310d
    ld hl, $8a00
    call $14cf
    ld de, $310e
    ld hl, $8b00
    call $14cf
    ld de, $3110
    ld hl, $8c00
    call $14cf
    ld de, $6df0
    ld hl, $9800
    call Call_002_5c6d
    ld de, $7092
    ld hl, $9c00
    call Call_002_5c6d
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld a, $02
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld hl, $1702
    rst $10
    ld a, $01
    ldh [rVBK], a
    ld de, $3f04
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld de, $3f04
    ld hl, $9c00
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld a, $00
    ldh [rVBK], a
    ld a, $00
    ldh [$b7], a
    ld a, $70
    ldh [$bb], a
    ld a, $00
    ldh [$b5], a
    ld a, $00
    ldh [$b6], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $03
    ld [$c8a1], a
    call $122f
    call $1417
    call $ff80
    ld a, $01
    jp $11cb


    ld a, $fc
    call $1688
    ld de, $5b1b
    ld hl, $9000
    call $14cf
    ld de, $5b1c
    ld hl, $8800
    call $14cf
    ld de, $ff00
    ld hl, $8ff0
    ld bc, $0008
    call Call_002_6a5b
    ld de, $720e
    ld hl, $9800
    call Call_002_5c6d
    ld a, $ff
    ld hl, $9c00
    ld bc, $0040
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld a, $03
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f06
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld a, $00
    ldh [rVBK], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    ld a, $00
    ldh [$b7], a
    ld a, $70
    ldh [$bb], a
    ld a, $00
    ldh [$b5], a
    ld a, $00
    ldh [$b6], a
    ld a, $03
    ld [$c8a1], a
    call $122f
    call $1417
    call $ff80
    xor a
    ld [$c892], a
    ld a, $01
    jp $11cb


    ld a, $fc
    call $1688
    ld de, $5b1b
    ld hl, $9000
    call $14cf
    ld de, $5b1c
    ld hl, $8800
    call $14cf
    ld de, $ff00
    ld hl, $8ff0
    ld bc, $0008
    call Call_002_6a5b
    ld de, $720e
    ld hl, $9800
    call Call_002_5c6d
    ld a, $ff
    ld hl, $9c00
    ld bc, $0040
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld a, $03
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f06
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld a, $00
    ldh [rVBK], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    ld a, $00
    ldh [$b7], a
    ld a, $70
    ldh [$bb], a
    ld a, $07
    ldh [$b5], a
    ld a, $80
    ldh [$b6], a
    ld a, $03
    ld [$c8a1], a
    call $122f
    call $1417
    call $ff80
    xor a
    ld [$c892], a
    ld a, $01
    jp $11cb


    ld a, $fc
    call $1688
    ld de, $5b1d
    ld hl, $9000
    call $14cf
    ld de, $5b1e
    ld hl, $8800
    call $14cf
    ld de, $ff00
    ld hl, $8ff0
    ld bc, $0008
    call Call_002_6a5b
    ld de, $74b0
    ld hl, $9800
    call Call_002_5c6d
    ld a, $ff
    ld hl, $9c00
    ld bc, $0040
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld a, $04
    ld [$c81e], a
    ld hl, $170b
    rst $10
    ld de, $3f07
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld a, [$c81d]
    or a
    call nz, $14cf
    ld a, $00
    ldh [rVBK], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    ld a, $00
    ldh [$b7], a
    ld a, $70
    ldh [$bb], a
    ld a, $07
    ldh [$b5], a
    ld a, $80
    ldh [$b6], a
    ld a, $03
    ld [$c8a1], a
    call $122f
    call $1417
    call $ff80
    xor a
    ld [$c892], a
    ld a, $01
    jp $11cb


    ld a, [$c88b]
    rst $00
    jr c, jr_002_5183

    ld b, $5d
    sbc b
    ld e, [hl]
    ld [hl], b
    ld e, a
    call Call_002_5ca2
    call Call_002_517e
    ld a, [$c0fc]
    rst $00
    ld c, b
    ld e, h
    inc h
    ld d, d
    ld e, b
    ld e, h
    adc d
    ld d, d
    ld c, b
    ld e, h
    ld sp, $3853
    ld e, h
    ret c

    ld d, e
    jr c, jr_002_51b0

    ld a, a
    ld d, h
    jr z, @+$5e

    ld h, $55
    ret c

    ld d, l
    adc e
    ld d, [hl]
    ld [hl-], a
    ld d, a
    rra
    ld e, b
    rrca
    ld e, c
    ld hl, sp+$5b
    or [hl]
    ld e, c
    ld [$5d5c], sp
    ld e, d
    jr @+$5e

    and $5a
    dec [hl]
    ld e, e
    jr z, @+$5e

    add b
    ld e, e
    adc [hl]
    ld e, e
    or [hl]
    ld e, e
    ld e, b
    ld e, h
    push de
    ld e, e

Call_002_517e:
    ld a, [$c0fc]
    cp $00

jr_002_5183:
    jr z, jr_002_5188

    cp $01
    ret nz

jr_002_5188:
    ld hl, $ffc3
    ld a, $48
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $f0
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $0e
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $b0
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0500
    rst $10
    ld hl, $ffc3
    ld a, $58
    ld [hl+], a
    ld a, $00
    ld [hl+], a

jr_002_51b0:
    ld a, $f0
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $a0
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0500
    rst $10
    ld hl, $ffc3
    ld a, $68
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $f0
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0402
    rst $10
    ld hl, $ffc3
    ld a, $28
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0500
    rst $10
    ld hl, $ffc3
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0500
    rst $10
    ret


    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $03
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $ffbb
    dec [hl]
    ldh a, [$bb]
    or a
    ret nz

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $80
    ld [$c0d9], a
    ld a, $00
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $50
    ld [$c0e0], a
    ld a, $30
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $e0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $40
    jr nz, jr_002_52d7

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_52d7:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $40
    ld [$c0d9], a
    ld a, $00
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $20
    ld [$c0e0], a
    ld a, $20
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $e0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $10
    jr nz, jr_002_537e

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_537e:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $a0
    ld [$c0d9], a
    ld a, $30
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $80
    ld [$c0e0], a
    ld a, $50
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $28
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $70
    jr nz, jr_002_5425

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_5425:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $80
    ld [$c0d9], a
    ld a, $00
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $70
    ld [$c0e0], a
    ld a, $10
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $e0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $60
    jr nz, jr_002_54cc

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_54cc:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $40
    ld [$c0d9], a
    ld a, $00
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $20
    ld [$c0e0], a
    ld a, $20
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $e0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $10
    jr nz, jr_002_5573

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_5573:
    ld a, [$c0d9]
    or a
    jr nz, jr_002_557e

    ld a, $01
    ld [$c0d8], a

jr_002_557e:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $a0
    ld [$c0d9], a
    ld a, $30
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $80
    ld [$c0e0], a
    ld a, $50
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $28
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $70
    jr nz, jr_002_5625

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_5625:
    ld a, [$c0d9]
    cp $38
    jr nz, jr_002_5631

    ld a, $01
    ld [$c0d8], a

jr_002_5631:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $40
    ld [$c0d9], a
    ld a, $00
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $20
    ld [$c0e0], a
    ld a, $20
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $e0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $10
    jr nz, jr_002_56d8

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_56d8:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $80
    ld [$c0d9], a
    ld a, $00
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $30
    ld [$c0e0], a
    ld a, $50
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $e0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $20
    jr nz, jr_002_577f

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_577f:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $a0
    ld [$c0d9], a
    ld a, $30
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $80
    ld [$c0e0], a
    ld a, $50
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0e6], a
    ld a, $40
    ld [$c0e7], a
    ld a, $00
    ld [$c0e8], a
    ld a, $00
    ld [$c0e9], a
    ld a, $00
    ld [$c0ea], a
    ld a, $02
    ld [$c0eb], a
    ld a, $00
    ld [$c0ec], a
    ld a, $01
    ld [$c0ed], a
    ld a, $20
    ld [$c0ee], a
    ld a, $20
    ld [$c0ef], a
    ld a, $00
    ld [$c0f0], a
    ld a, $00
    ld [$c0f1], a
    ld a, $04
    ld [$c0f2], a
    ld a, $00
    ld [$c0f3], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, [$c0e7]
    cp $e0
    jr nz, jr_002_583f

    ld a, $01
    ld [$c0e6], a
    ld a, $02
    ldh [$ca], a

jr_002_583f:
    ld hl, $c0e6
    call Call_002_6a80
    ld hl, $c0e7
    dec [hl]
    ld hl, $c0e8
    inc [hl]
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0ed
    call Call_002_6a80
    ld a, [$c0e7]
    cp $10
    jr nz, jr_002_586b

    ld a, $00
    ld [$c0ed], a

jr_002_586b:
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $28
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $70
    jr nz, jr_002_58b0

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_58b0:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld a, [$c0e6]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $80
    ld [$c0d9], a
    ld a, $00
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $50
    ld [$c0e0], a
    ld a, $30
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $e0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $40
    jr nz, jr_002_595c

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_595c:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $40
    ld [$c0d9], a
    ld a, $00
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $20
    ld [$c0e0], a
    ld a, $20
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $e0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $10
    jr nz, jr_002_5a03

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_5a03:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $a0
    ld [$c0d9], a
    ld a, $30
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $01
    ld [$c0df], a
    ld a, $80
    ld [$c0e0], a
    ld a, $50
    ld [$c0e1], a
    ld a, $00
    ld [$c0e2], a
    ld a, $00
    ld [$c0e3], a
    ld a, $04
    ld [$c0e4], a
    ld a, $00
    ld [$c0e5], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$c7], a
    ld a, $60
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld hl, $c0d9
    dec [hl]
    ld hl, $c0da
    inc [hl]
    ld a, [$c0d9]
    cp $28
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $64
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0df
    call Call_002_6a80
    ld a, [$c0d9]
    cp $70
    jr nz, jr_002_5aaa

    ld a, $00
    ld [$c0df], a
    ld a, $5d
    call $1b2c

jr_002_5aaa:
    ld a, [$c0d8]
    or a
    ret z

    ld a, [$c0df]
    or a
    ret z

    ld a, $02
    call $1ae1
    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $50
    ld [$c0d9], a
    ld a, $90
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $00
    ld [$c0fd], a
    ret


    ld a, $02
    ldh [$c7], a
    ld a, $67
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0fd]
    cp $78
    jr c, jr_002_5b30

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $50
    ld [$c0d9], a
    ld a, $90
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $00
    ld [$c0fd], a
    ret


jr_002_5b30:
    ld hl, $c0fd
    inc [hl]
    ret


    ld a, $03
    ldh [$c7], a
    ld a, $67
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0fd]
    cp $78
    jr c, jr_002_5b7b

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0d8], a
    ld a, $50
    ld [$c0d9], a
    ld a, $88
    ld [$c0da], a
    ld a, $00
    ld [$c0db], a
    ld a, $00
    ld [$c0dc], a
    ld a, $02
    ld [$c0dd], a
    ld a, $00
    ld [$c0de], a
    ld a, $00
    ld [$c0fd], a
    ret


jr_002_5b7b:
    ld hl, $c0fd
    inc [hl]
    ret


    ld a, $8b
    ld [$c8a1], a
    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, $04
    ldh [$c7], a
    ld a, $67
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0fd]
    cp $24
    jr c, jr_002_5bb1

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0fd], a
    ret


jr_002_5bb1:
    ld hl, $c0fd
    inc [hl]
    ret


    ld a, [$c0fd]
    or a
    jr z, jr_002_5bcb

    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0fc
    inc [hl]
    ld a, $00
    ld [$c0fd], a
    ret


jr_002_5bcb:
    ld hl, $c0fd
    inc [hl]
    ld a, $04
    call $1688
    ret


    ld a, $01
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c8ea
    set 7, [hl]
    ld hl, $c88e
    inc [hl]
    ld a, $83
    ld [$c8a1], a
    ret


    ld a, [$c0fd]
    cp $18
    jr c, jr_002_5c68

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    cp $28
    jr c, jr_002_5c68

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    cp $40
    jr c, jr_002_5c68

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    cp $3c
    jr c, jr_002_5c68

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    cp $78
    jr c, jr_002_5c68

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    cp $b4
    jr c, jr_002_5c68

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    cp $f0
    jr c, jr_002_5c68

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


jr_002_5c68:
    ld hl, $c0fd
    inc [hl]
    ret


Call_002_5c6d:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    add hl, bc
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a

jr_002_5c7c:
    ld a, [de]
    inc de
    cp $d8
    jr z, jr_002_5c88

    cp $d9
    ret z

    ld [hl+], a
    jr jr_002_5c7c

jr_002_5c88:
    ld a, [$c0fe]
    ld l, a
    ld a, [$c0ff]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a
    jr jr_002_5c7c

Call_002_5ca2:
    ld hl, $c0fb
    inc [hl]
    ld a, [$c0fb]
    cp $18
    ret nz

    xor a
    ld [$c0fb], a
    ld hl, $c0fa
    inc [hl]
    ld a, [$c0fa]
    cp $05
    jr nz, jr_002_5cbf

    xor a
    ld [$c0fa], a

jr_002_5cbf:
    ld hl, $5cfc
    ld a, [$c0fa]
    call Call_002_6aff
    ld e, l
    ld d, h
    ld a, $10
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld b, $10

jr_002_5cd4:
    di
    call $1aa6
    ld a, [de]
    ei
    ld [$c0f9], a
    di
    call $1aa6
    ld a, [hl]
    ei
    push af
    di
    call $1aa6
    pop af
    ld [de], a
    ei
    ld a, [$c0f9]
    push af
    di
    call $1aa6
    pop af
    ld [hl], a
    ei
    inc de
    inc hl
    dec b
    jr nz, jr_002_5cd4

    ret


    add b
    sub c
    and b
    sub c
    ret nz

    sub c
    ldh [$91], a
    nop
    sub d
    call Call_002_5df7
    ld a, [$c0fc]
    rst $00
    rla
    ld e, l
    ld [hl], $5d
    ld c, e
    ld e, l
    ld l, c
    ld e, l
    ld a, [hl]
    ld e, l
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $05
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $ffbb
    dec [hl]
    ldh a, [$bb]
    or a
    ret nz

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    cp $b4
    jr nc, jr_002_5d42

    ld hl, $c0fd
    inc [hl]
    ret


jr_002_5d42:
    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    or a
    jr z, jr_002_5d5f

    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0fc
    inc [hl]
    xor a
    ld [$c0fd], a
    ret


jr_002_5d5f:
    ld hl, $c0fd
    inc [hl]
    ld a, $04
    call $1688
    ret


    ld a, [$c0fd]
    cp $78
    jr nc, jr_002_5d75

    ld hl, $c0fd
    inc [hl]
    ret


jr_002_5d75:
    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, $01
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $0004
    ld a, l
    ld [$c96d], a
    ld a, h
    ld [$c96e], a
    ld hl, $00f8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0038
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    xor a
    ldh [$90], a
    xor a
    ld [$d8d7], a
    ld hl, $c8eb
    res 0, [hl]
    ld hl, $cab9
    ld a, [$ca8d]
    ld [hl+], a
    ld a, [$ca8e]
    ld [hl+], a
    ld a, [$ca8f]
    ld [hl+], a
    ld a, [$ca90]
    ld [hl+], a
    ld a, [$ca91]
    ld [hl+], a
    ld a, [$ca92]
    ld [hl+], a
    ld a, [$ca93]
    ld [hl+], a
    xor a
    ld [$ca8d], a
    ld a, $ff
    ld [$ca8e], a
    ld [$ca8f], a
    ld [$ca90], a
    ld hl, $c88e
    inc [hl]
    ret


Call_002_5df7:
    ld hl, $c0f9
    inc [hl]
    ld a, [$c0f9]
    cp $19
    jr z, jr_002_5e45

    cp $32
    ret nz

    xor a
    ld [$c0f9], a
    xor a
    ld [$c0fa], a

jr_002_5e0d:
    ld a, [$c0fa]
    ld hl, $5e8c
    call Call_002_6aff
    ld e, l
    ld d, h
    ld a, $10
    add e

jr_002_5e1b:
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_002_5e20:
    ld b, $10

jr_002_5e22:
    di
    call $1aa6
    ld a, [de]
    ld [$c0fb], a
    call $1aa6
    ld a, [hl]
    ld [de], a
    ld a, [$c0fb]
    ld [hl], a
    ei
    inc de
    inc hl
    dec b
    jr nz, jr_002_5e22

    ld hl, $c0fa
    inc [hl]
    ld a, [$c0fa]
    cp $02
    jr nz, jr_002_5e0d

    ret


jr_002_5e45:
    xor a
    ld [$c0fa], a

jr_002_5e49:
    ld a, [$c0fa]
    ld hl, $5e90
    call Call_002_6aff
    ld e, l
    ld d, h
    ld a, $20
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld b, $20

jr_002_5e5e:
    di
    call $1aa6
    ld a, [de]
    ld [$c0fb], a
    ei
    di
    call $1aa6
    ld a, [hl]
    ld [de], a
    ei
    di
    call $1aa6
    ld a, [$c0fb]
    ld [hl], a
    ei
    inc de
    inc hl
    dec b
    jr nz, jr_002_5e5e

    ld hl, $c0fa
    inc [hl]
    ld hl, $c0fa
    inc [hl]
    ld a, [$c0fa]
    cp $04
    jr nz, jr_002_5e49

    ret


    nop
    adc c
    nop
    adc d
    jr nz, jr_002_5e1b

    jr nc, @-$75

    jr nz, jr_002_5e20

    jr nc, jr_002_5e22

    call Call_002_5df7
    ld a, [$c0fc]
    rst $00
    xor c
    ld e, [hl]
    ret


    ld e, [hl]
    rst $20
    ld e, [hl]
    inc h
    ld e, a
    dec a
    ld e, a
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $04
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $ffbb
    dec [hl]
    ldh a, [$bb]
    cp $08
    ret nz

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    cp $78
    jr nc, jr_002_5ed5

    ld hl, $c0fd
    inc [hl]
    ret


jr_002_5ed5:
    xor a
    ld [$c0d8], a
    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld a, $68
    call $1b2c
    ret


    ld a, [$c0fd]
    cp $f0
    jr nc, jr_002_5f19

    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    and $03
    cp $03
    ret nz

    ld hl, $c0d8
    inc [hl]
    ld a, [$c0d8]
    cp $02
    jr nz, jr_002_5f09

    xor a
    ld [$c0d8], a

jr_002_5f09:
    ld a, [$c0d8]
    ld hl, $5f22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ldh [$bb], a
    ret


jr_002_5f19:
    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld [$fa00], sp
    db $fd
    ret nz

    cp $3c
    jr nc, jr_002_5f30

    ld hl, $c0fd
    inc [hl]
    ret


jr_002_5f30:
    xor a
    ld [$c0d8], a
    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c0fd]
    or a
    jr z, jr_002_5f66

    ld a, [$c850]
    or a
    ret nz

    ld a, $01
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c8ea
    set 7, [hl]
    ld hl, $c88e
    inc [hl]
    ret


jr_002_5f66:
    ld hl, $c0fd
    inc [hl]
    ld a, $04
    call $1688
    ret


    ld a, [$c0fc]
    rst $00
    xor c
    ld e, [hl]
    ret


    ld e, [hl]
    rst $20
    ld e, [hl]
    inc h
    ld e, a
    ld a, [hl]
    ld e, a
    ld a, [$c0fd]
    or a
    jr z, jr_002_5f66

    ld a, [$c850]
    or a
    ret nz

    ld a, $01
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c8ea
    set 7, [hl]
    ld hl, $c88e
    inc [hl]
    ret


Call_002_5fa7:
    ld de, $5b18
    ld hl, $8700
    call $1577
    ld de, $5b19
    ld hl, $8740
    call $1577
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    call Call_002_6a37
    call Call_002_6a3d
    call Call_002_6a43
    call Call_002_6a49
    call Call_002_6a4f
    call Call_002_6a55
    ret


    ld a, [$c0fc]
    rst $00
    ld hl, sp+$5f
    ld l, $60
    ld c, l
    ld h, b
    xor c
    ld h, b
    dec b
    ld h, c
    ld l, d
    ld h, c
    dec sp
    ld h, d
    adc h
    ld h, h
    sbc a
    ld h, h
    call z, $0d64
    ld h, l
    xor e
    ld h, [hl]
    db $ec
    ld h, a
    rra
    ld l, b
    add [hl]
    ld l, b
    ld a, [$c0fd]
    ld b, a
    ld a, [$c0d8]
    or b
    call z, Call_002_5fa7
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $f0
    ret c

    xor a
    ld [$c0fd], a
    ld a, [$c0d8]
    cp $01
    jr nz, jr_002_601d

    ld hl, $c0d8
    inc [hl]
    ret


jr_002_601d:
    xor a
    ld [$c0fd], a
    xor a
    ld [$c0d8], a
    xor a
    ld [$d9cb], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $78
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld hl, $c0d8
    call Call_002_68a1
    ld hl, $c0de
    call Call_002_68eb
    ret


    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0d9]
    sub $02
    ld [$c0d9], a
    ld a, [$c0da]
    add $02
    ld [$c0da], a
    ld a, [$c0d9]
    cp $60
    call z, Call_002_6a19
    ld a, [$c0d9]
    or a
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $78
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld hl, $c0d8
    call Call_002_6937
    ret


    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0d9]
    sub $02
    ld [$c0d9], a
    ld a, [$c0da]
    add $02
    ld [$c0da], a
    ld a, [$c0d9]
    cp $10
    call z, Call_002_6a19
    ld a, [$c0d9]
    or a
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $78
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld hl, $c0d8
    call Call_002_6981
    ret


    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0d9]
    sub $02
    ld [$c0d9], a
    ld a, [$c0da]
    add $02
    ld [$c0da], a
    ld a, [$c0d9]
    cp $70
    call z, Call_002_6a19
    ld a, [$c0d9]
    or a
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $3c
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld hl, $c0d8
    call Call_002_6937
    ld hl, $c0e4
    call Call_002_6981
    call Call_002_6a43
    ret


    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0d9]
    sub $02
    ld [$c0d9], a
    ld a, [$c0da]
    add $02
    ld [$c0da], a
    ld a, [$c0d9]
    cp $10
    call z, Call_002_6a19
    ld a, [$c0d9]
    or a
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld a, [$c0fd]
    cp $10
    jr c, jr_002_61fc

    jr nz, jr_002_61b9

    call Call_002_6a1f

jr_002_61b9:
    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0e4
    call Call_002_6a80
    ld a, [$c0e5]
    sub $02
    ld [$c0e5], a
    ld a, [$c0e6]
    add $02
    ld [$c0e6], a
    ld a, [$c0e5]
    cp $70
    call z, Call_002_6a25
    ld a, [$c0e5]
    or a
    call z, Call_002_6a43
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0ea
    call Call_002_6a80

jr_002_61fc:
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $c8
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld hl, $c0d8
    call Call_002_6937
    ld hl, $c0e4
    call Call_002_68a1
    ld hl, $c0ea
    call Call_002_68eb
    ld hl, $c0f0
    call Call_002_6981
    call Call_002_6a43
    call Call_002_6a4f
    call Call_002_6a13
    ld hl, $d9cb
    inc [hl]
    xor a
    ld [$c8a6], a
    ld [$c8a7], a
    ret


    ld a, [$c0fd]
    cp $40
    ld hl, $c0d8
    call z, Call_002_6937
    ld a, [$c0fd]
    cp $60
    ld hl, $c0e4
    call z, Call_002_6981
    ld a, [$c0fd]
    cp $70
    ld hl, $c0f0
    call z, Call_002_68a1
    ld a, [$c0fd]
    cp $70
    ld hl, $c0f6
    call z, Call_002_6911
    ld a, [$c0fd]
    cp $40
    call z, Call_002_6a37
    ld a, [$c0fd]
    cp $60
    call z, Call_002_6a43
    ld a, [$c0fd]
    cp $70
    call z, Call_002_6a4f
    ld a, [$c0fd]
    cp $10
    call z, Call_002_6a1f
    ld a, [$c0fd]
    cp $20
    call z, Call_002_6a2b
    ld a, [$c0fd]
    cp $40
    call z, Call_002_6a13
    ld a, [$c0fd]
    cp $60
    call z, Call_002_6a1f
    ld a, [$c0fd]
    cp $70
    call z, Call_002_6a2b
    ld a, [$c0fd]
    cp $80
    jp nc, Jump_002_63eb

    cp $70
    jp nc, Jump_002_63a0

    cp $60
    jp nc, Jump_002_6354

    cp $40
    jp nc, Jump_002_6309

    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0d9]
    sub $02
    ld [$c0d9], a
    ld a, [$c0da]
    add $02
    ld [$c0da], a
    ld a, [$c0d9]
    cp $10
    call z, Call_002_6a19
    ld a, [$c0d9]
    or a
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld a, [$c0fd]
    cp $10
    jp c, Jump_002_6479

Jump_002_6309:
    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0e4
    call Call_002_6a80
    ld a, [$c0e5]
    sub $02
    ld [$c0e5], a
    ld a, [$c0e6]
    add $02
    ld [$c0e6], a
    ld a, [$c0e5]
    cp $60
    call z, Call_002_6a25
    ld a, [$c0e5]
    or a
    call z, Call_002_6a43
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0ea
    call Call_002_6a80
    ld a, [$c0fd]
    cp $20
    jp c, Jump_002_6479

Jump_002_6354:
    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0f0
    call Call_002_6a80
    ld a, [$c0f1]
    sub $02
    ld [$c0f1], a
    ld a, [$c0f2]
    add $02
    ld [$c0f2], a
    ld a, [$c0f1]
    cp $70
    call z, Call_002_6a31
    ld a, [$c0f1]
    cp $30
    call z, Call_002_6a4f
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0f6
    call Call_002_6a80
    ld a, [$c0fd]
    cp $30
    jp c, Jump_002_6479

Jump_002_63a0:
    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0d9]
    sub $02
    ld [$c0d9], a
    ld a, [$c0da]
    add $02
    ld [$c0da], a
    ld a, [$c0d9]
    cp $10
    call z, Call_002_6a19
    ld a, [$c0d9]
    or a
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld a, [$c0fd]
    cp $50
    jp c, Jump_002_6479

Jump_002_63eb:
    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0e4
    call Call_002_6a80
    ld a, [$c0e5]
    sub $02
    ld [$c0e5], a
    ld a, [$c0e6]
    add $02
    ld [$c0e6], a
    ld a, [$c0e5]
    cp $70
    call z, Call_002_6a25
    ld a, [$c0e5]
    cp $30
    call z, Call_002_6a43
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0ea
    call Call_002_6a80
    ld a, [$c0fd]
    cp $60
    jr c, jr_002_6479

    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0f0
    call Call_002_6a80
    ld a, [$c0f1]
    sub $02
    ld [$c0f1], a
    ld a, [$c0f2]
    add $02
    ld [$c0f2], a
    ld a, [$c0e5]
    cp $20
    call z, Call_002_6a31
    ld a, [$c0f1]
    or a
    call z, Call_002_6a4f
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0f6
    call Call_002_6a80

Jump_002_6479:
jr_002_6479:
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $b4
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $aa
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c8a6]
    ld l, a
    ld a, [$c8a7]
    ld h, a
    ld c, l
    ld b, h
    add hl, hl
    add hl, bc
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    and $1f
    ret nz

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c8a6]
    ld l, a
    ld a, [$c8a7]
    ld h, a
    ld c, l
    ld b, h
    add hl, hl
    add hl, bc
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    and $1f
    cp $0f
    ret nz

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld hl, $c0d8
    call Call_002_695c
    ld hl, $c0e4
    call Call_002_6937
    call Call_002_6a43
    call Call_002_6a13
    ret


    ld a, [$c0fd]
    cp $30
    ld hl, $c0d8
    call z, Call_002_68c6
    ld a, [$c0fd]
    cp $40
    ld hl, $c0e4
    call z, Call_002_68a1
    ld a, [$c0fd]
    cp $30
    call z, Call_002_6a37
    ld a, [$c0fd]
    cp $40
    call z, Call_002_6a43
    ld a, [$c0fd]
    cp $30
    ld hl, $c0de
    call z, Call_002_6924
    ld a, [$c0fd]
    cp $40
    ld hl, $c0ea
    call z, Call_002_6911
    ld a, [$c0fd]
    cp $10
    call z, Call_002_6a1f
    ld a, [$c0fd]
    cp $30
    call z, Call_002_6a13
    ld a, [$c0fd]
    cp $40
    call z, Call_002_6a1f
    ld a, [$c0fd]
    cp $40
    jp nc, Jump_002_6604

    cp $30
    jr nc, jr_002_65b9

    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $22
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0d9]
    add $02
    ld [$c0d9], a
    ld a, [$c0da]
    add $02
    ld [$c0da], a
    ld a, [$c0d9]
    cp $90
    call z, Call_002_6a19
    ld a, [$c0d9]
    cp $b0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $22
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld a, [$c0fd]
    cp $10
    jp c, Jump_002_6692

jr_002_65b9:
    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0e4
    call Call_002_6a80
    ld a, [$c0e5]
    sub $02
    ld [$c0e5], a
    ld a, [$c0e6]
    add $02
    ld [$c0e6], a
    ld a, [$c0e5]
    cp $10
    call z, Call_002_6a25
    ld a, [$c0e5]
    or a
    call z, Call_002_6a43
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0ea
    call Call_002_6a80
    ld a, [$c0fd]
    cp $30
    jp c, Jump_002_6692

Jump_002_6604:
    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $22
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0d9]
    add $02
    ld [$c0d9], a
    ld a, [$c0da]
    add $02
    ld [$c0da], a
    ld a, [$c0d9]
    cp $80
    call z, Call_002_6a19
    ld a, [$c0d9]
    cp $b0
    call z, Call_002_6a37
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $22
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld a, [$c0fd]
    cp $40
    jr c, jr_002_6692

    ld a, $00
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0e4
    call Call_002_6a80
    ld a, [$c0e5]
    sub $02
    ld [$c0e5], a
    ld a, [$c0e6]
    add $02
    ld [$c0e6], a
    ld a, [$c0e5]
    cp $20
    call z, Call_002_6a25
    ld a, [$c0e5]
    or a
    call z, Call_002_6a43
    ld a, $01
    ldh [$c7], a
    ld a, $74
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0ea
    call Call_002_6a80

Jump_002_6692:
jr_002_6692:
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $b4
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld hl, $c0d8
    call Call_002_69a6
    ret


    ld a, [$c0de]
    or a
    jr nz, jr_002_66df

    ld a, $05
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0de
    call Call_002_6a80
    ld a, [$c0e0]
    sub $02
    ld [$c0e0], a
    ld a, [$c0fd]
    cp $14
    jr nz, jr_002_66d5

    call Call_002_6a31

jr_002_66d5:
    ld a, [$c0e0]
    cp $f0
    jr c, jr_002_66df

    call Call_002_6a3d

jr_002_66df:
    ld a, [$c0f6]
    or a
    jr nz, jr_002_6713

    ld a, $05
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0f6
    call Call_002_6a80
    ld a, [$c0f8]
    sub $02
    ld [$c0f8], a
    ld a, [$c0fd]
    cp $28
    jr nz, jr_002_6709

    call Call_002_6a25

jr_002_6709:
    ld a, [$c0f8]
    cp $f0
    jr c, jr_002_6713

    call Call_002_6a55

jr_002_6713:
    ld a, [$c0ea]
    or a
    jr nz, jr_002_6747

    ld a, $05
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0ea
    call Call_002_6a80
    ld a, [$c0ec]
    sub $02
    ld [$c0ec], a
    ld a, [$c0fd]
    cp $3c
    jr nz, jr_002_673d

    call Call_002_6a1f

jr_002_673d:
    ld a, [$c0ec]
    cp $f0
    jr c, jr_002_6747

    call Call_002_6a49

jr_002_6747:
    ld a, [$c0e4]
    or a
    jr nz, jr_002_677b

    ld a, $05
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0e4
    call Call_002_6a80
    ld a, [$c0e6]
    sub $02
    ld [$c0e6], a
    ld a, [$c0fd]
    cp $50
    jr nz, jr_002_6771

    call Call_002_6a2b

jr_002_6771:
    ld a, [$c0e6]
    cp $f0
    jr c, jr_002_677b

    call Call_002_6a43

jr_002_677b:
    ld a, [$c0f0]
    or a
    jr nz, jr_002_67af

    ld a, $05
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0f0
    call Call_002_6a80
    ld a, [$c0f2]
    sub $02
    ld [$c0f2], a
    ld a, [$c0fd]
    cp $64
    jr nz, jr_002_67a5

    call Call_002_6a13

jr_002_67a5:
    ld a, [$c0f2]
    cp $f0
    jr c, jr_002_67af

    call Call_002_6a4f

jr_002_67af:
    ld a, [$c0d8]
    or a
    jr nz, jr_002_67d9

    ld a, $05
    ldh [$c7], a
    ld a, $70
    ldh [$c9], a
    ld a, $02
    ldh [$ca], a
    ld hl, $c0d8
    call Call_002_6a80
    ld a, [$c0da]
    sub $02
    ld [$c0da], a
    ld a, [$c0da]
    cp $f0
    jr c, jr_002_67d9

    call Call_002_6a37

jr_002_67d9:
    ld hl, $c0fd
    inc [hl]
    ld a, [$c0fd]
    cp $b4
    ret c

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    ld a, [$c8a6]
    ld l, a
    ld a, [$c8a7]
    ld h, a
    ld c, l
    ld b, h
    add hl, hl
    add hl, bc
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    and $1f
    cp $10
    ret nz

    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ld hl, $d9cb
    inc [hl]
    ret


    ld hl, $c0fd
    inc [hl]
    ld a, $00
    ld [$c89b], a
    ld a, $ff
    ld [$c89c], a
    ld a, [$c0fd]
    cp $06
    ret c

    ld a, $c1
    ld [$c89b], a
    ld a, $d2
    ld [$c89c], a
    ld a, [$c0fd]
    cp $0c
    ret c

    ld a, $00
    ld [$c89b], a
    ld a, $ff
    ld [$c89c], a
    ld a, [$c0fd]
    cp $12
    ret c

    ld a, $c1
    ld [$c89b], a
    ld a, $d2
    ld [$c89c], a
    ld a, [$c0fd]
    cp $18
    ret c

    ld a, $00
    ld [$c89b], a
    ld a, $ff
    ld [$c89c], a
    ld a, [$c0fd]
    cp $1e
    ret c

    ld a, $c1
    ld [$c89b], a
    ld a, $d2
    ld [$c89c], a
    xor a
    ld [$c0fd], a
    ld hl, $c0fc
    inc [hl]
    ret


    xor a
    ld [$c0fc], a
    xor a
    ld [$c0d8], a
    ld a, $03
    call $1688
    ld hl, $c88f
    inc [hl]
    xor a
    ld [$d9cb], a
    ld a, $08
    ld [$d951], a
    ret


Call_002_68a1:
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_68c6:
    ld a, $00
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_68eb:
    ld a, $01
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


    ld a, $01
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_6911:
    ld a, $01
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_6924:
    ld a, $01
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_6937:
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_695c:
    ld a, $00
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_6981:
    ld a, $00
    ld [hl+], a
    ld a, $a0
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_69a6:
    ld a, $01
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $90
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld a, $90
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    ld a, $90
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $90
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $88
    ld [hl+], a
    ld a, $90
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $98
    ld [hl+], a
    ld a, $90
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ret


Call_002_6a13:
    ld a, $00
    ld [$c0d8], a
    ret


Call_002_6a19:
    ld a, $00
    ld [$c0de], a
    ret


Call_002_6a1f:
    ld a, $00
    ld [$c0e4], a
    ret


Call_002_6a25:
    ld a, $00
    ld [$c0ea], a
    ret


Call_002_6a2b:
    ld a, $00
    ld [$c0f0], a
    ret


Call_002_6a31:
    ld a, $00
    ld [$c0f6], a
    ret


Call_002_6a37:
    ld a, $01
    ld [$c0d8], a
    ret


Call_002_6a3d:
    ld a, $01
    ld [$c0de], a
    ret


Call_002_6a43:
    ld a, $01
    ld [$c0e4], a
    ret


Call_002_6a49:
    ld a, $01
    ld [$c0ea], a
    ret


Call_002_6a4f:
    ld a, $01
    ld [$c0f0], a
    ret


Call_002_6a55:
    ld a, $01
    ld [$c0f6], a
    ret


Call_002_6a5b:
jr_002_6a5b:
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_002_6a5b

    ret


Call_002_6a65:
    ld de, $6a6c
    call $0d91
    ret


    ld c, h
    ld l, e
    xor c
    ld l, h
    ld [c], a
    ld l, l
    ld [c], a
    ld l, l
    ld [c], a
    ld l, l
    ld c, h
    ld l, e
    ld a, [$c0fc]
    ld l, a
    ld a, [$c0fd]
    ld h, a

Call_002_6a80:
    ld a, l
    ld [$c0fe], a
    ld a, h
    ld [$c0ff], a
    ld a, [hl+]
    or a
    ret nz

    xor a
    ldh [$c4], a
    ldh [$c6], a
    ldh [$d3], a
    ld a, [hl+]
    ldh [$c3], a
    ld a, [hl+]
    ldh [$c5], a
    ld a, [hl+]
    ldh [$c8], a
    call Call_002_6a65
    ld a, [$c0fe]
    ld l, a
    ld a, [$c0ff]
    ld h, a
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, l
    ld d, h
    ld a, [de]
    dec a
    ld [de], a
    or a
    ret nz

    dec de
    ld a, [de]
    inc a
    ld [de], a
    ld hl, $4e17
    ldh a, [$c7]
    call Call_002_6aff
    ld a, [de]
    dec de
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_002_6ada

    cp $fe
    jr z, jr_002_6ae6

    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    ld a, [hl]
    ld [de], a
    ret


jr_002_6ada:
    ld a, [$c0fe]
    ld l, a
    ld a, [$c0ff]
    ld h, a
    ld a, $01
    ld [hl], a
    ret


jr_002_6ae6:
    ld hl, $4e17
    ldh a, [$c7]
    call Call_002_6aff
    xor a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Call_002_6aff:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld a, [$d7b4]
    ld c, a
    ld a, [$d7b5]
    ld b, a
    ld hl, $40e3
    ld a, [bc]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc bc
    ld a, [bc]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc bc
    ld a, [bc]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ldh [$c8], a
    ret


    ld hl, sp-$08
    nop
    nop
    rst $30
    nop
    ld bc, $8000
    ldh a, [$f8]
    ld [bc], a
    nop
    ld hl, sp-$08
    inc bc
    nop
    add b
    add b
    add hl, sp
    ld l, e
    ld b, d
    ld l, e
    ld c, e
    ld l, e
    add sp, $18
    ld [bc], a
    nop
    ld hl, sp+$18
    ld [bc], a
    nop
    ldh a, [rNR10]
    nop
    nop
    ld [$0210], sp
    nop
    db $f4
    jr @+$04

    nop
    or $1d
    ld [bc], a
    nop
    rst $38
    dec d
    ld [bc], a
    nop
    ldh a, [$08]
    ld [bc], a
    nop
    stop
    ld [bc], a
    nop
    nop
    ld [$0001], sp
    nop
    ld [bc], a
    ld bc, $0800
    ld [$0002], sp
    inc c
    inc b

jr_002_6b84:
    ld [bc], a
    nop
    jr @+$0a

    ld bc, $0000
    ld hl, sp+$02
    nop
    db $10
    ldh a, [rSB]
    nop
    jr nz, jr_002_6b84

    ld [bc], a
    nop
    ld d, $f3
    ld [bc], a
    nop
    dec hl
    ld a, [c]
    ld [bc], a
    nop
    inc c
    db $f4
    nop
    nop
    rlca
    ldh a, [rSC]
    nop
    dec e
    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8000
    ld hl, sp+$18
    ld [bc], a
    nop
    ld [$0218], sp
    nop
    jr @+$12

    ld [bc], a
    nop
    inc b
    jr @+$04

    nop
    ld b, $1d
    ld [bc], a
    nop
    rrca
    dec d
    ld [bc], a
    nop
    nop
    ld [$0002], sp
    jr nz, jr_002_6bcd

jr_002_6bcd:
    ld [bc], a
    nop
    db $10
    ld [$0001], sp
    db $10
    ld [bc], a
    ld bc, $1800
    ld [$0002], sp
    inc e
    inc b
    ld [bc], a
    nop
    jr z, jr_002_6be9

    ld bc, $1000
    ld hl, sp+$02
    nop
    jr nz, @-$0e

jr_002_6be9:
    ld bc, $3000
    ldh a, [rSC]
    nop
    ld h, $f3
    ld [bc], a
    nop
    dec sp
    ld a, [c]
    ld [bc], a
    nop
    rla
    ldh a, [rSC]
    nop
    dec l
    ld hl, sp+$01
    nop
    ld [$0100], sp
    nop
    inc e
    db $f4
    ld bc, $0000
    db $10
    ld bc, $8000
    ld [$0218], sp
    nop
    jr z, jr_002_6c22

    ld [bc], a
    nop
    inc d
    jr @+$04

    nop
    ld d, $1d
    ld [bc], a
    nop
    db $10
    ld [$0002], sp
    jr nc, jr_002_6c22

jr_002_6c22:
    ld [bc], a
    nop
    jr nz, @+$0a

    ld bc, $2000
    ld [bc], a

jr_002_6c2a:
    ld bc, $2800
    ld [$0002], sp
    jr c, jr_002_6c3a

    ld bc, $2000
    ld hl, sp+$02
    nop
    jr nc, jr_002_6c2a

jr_002_6c3a:
    ld bc, $4000
    ldh a, [rSC]
    nop
    ld [hl], $f3
    ld [bc], a
    nop
    ld c, e
    ld a, [c]
    ld [bc], a
    nop
    daa
    ldh a, [rSC]
    nop
    dec a
    ld hl, sp+$01
    nop
    inc l
    db $f4
    ld bc, $8000
    jr c, jr_002_6c67

    ld [bc], a
    nop
    inc h
    jr @+$04

    nop
    jr nz, jr_002_6c67

    ld [bc], a

jr_002_6c60:
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    jr nc, jr_002_6c6f

jr_002_6c67:
    ld bc, $4800
    ld [$0001], sp
    jr nc, jr_002_6c67

jr_002_6c6f:
    ld [bc], a
    nop
    ld d, b
    ldh a, [rSC]
    nop
    ld e, e
    ld a, [c]
    ld [bc], a
    nop
    scf
    ldh a, [rSC]
    nop
    ld c, l
    ld hl, sp+$01
    nop
    add b
    ld d, b
    nop
    ld [bc], a
    nop
    ld e, b
    ld [$0001], sp
    ld b, b
    ld hl, sp+$02
    nop
    ld h, b
    ldh a, [rSC]
    nop
    ld l, e
    ld a, [c]
    ld [bc], a
    nop
    ld b, a
    ldh a, [rSC]

jr_002_6c99:
    nop
    ld e, l
    ld hl, sp+$01
    nop
    add b
    ld [hl], e
    ld a, [c]
    ld [bc], a
    nop
    ld h, l
    ld hl, sp+$01
    nop
    add b
    add b
    ld d, d
    ld l, e
    xor a
    ld l, e
    inc c
    ld l, h
    ld d, l
    ld l, h
    add d
    ld l, h
    sbc a
    ld l, h
    xor b
    ld l, h
    ldh a, [$f0]
    inc bc
    nop
    ldh a, [$f8]
    inc b
    nop
    ld hl, sp-$18
    dec b
    nop
    ld hl, sp-$10
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ldh a, [$08]
    inc bc
    jr nz, @-$0e

jr_002_6cd0:
    nop
    inc b
    jr nz, @-$06

    db $10
    dec b
    jr nz, jr_002_6cd0

    ld [$2006], sp
    ld hl, sp+$00
    rlca
    jr nz, jr_002_6c60

    ldh a, [$e8]
    ld [$f000], sp
    ldh a, [$09]
    nop
    ldh a, [$f8]
    ld a, [bc]
    nop
    ld hl, sp-$20
    dec bc
    nop
    ld hl, sp-$18
    inc c
    nop
    ld hl, sp-$10
    rlca
    nop
    ld hl, sp-$08
    rlca
    nop
    ldh a, [rNR10]
    ld [$f020], sp

jr_002_6d01:
    ld [$2009], sp
    ldh a, [rP1]
    ld a, [bc]
    jr nz, jr_002_6d01

jr_002_6d09:
    jr jr_002_6d16

    jr nz, @-$06

    db $10
    inc c
    jr nz, jr_002_6d09

    ld [$2007], sp
    ld hl, sp+$00

jr_002_6d16:
    rlca
    jr nz, jr_002_6c99

    ldh [$f0], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    db $e4
    ret c

    nop
    nop
    ld [$0007], a
    nop
    add sp, $18
    nop
    nop
    ldh [$f8], a
    ld bc, $e000
    ld [$0001], sp
    ld hl, sp-$18
    ld bc, $f800
    db $10
    ld bc, $8000
    ldh [$08], a
    ld bc, $f800
    db $10
    ld bc, $d800
    call RST_00
    sub $07
    nop
    nop
    adc $f5
    ld bc, $f000
    dec h
    nop
    nop
    rst $30
    push de
    ld bc, $de00
    ld hl, sp+$00
    nop
    xor $e7
    ld [bc], a
    nop
    db $e3
    rst $18
    ld [bc], a
    nop
    rst $10
    xor $02
    nop
    db $e4
    dec d
    ld [bc], a
    nop
    db $e3
    inc h
    ld [bc], a
    nop
    add b
    db $d3
    call nz, RST_00
    call nz, $01ec
    nop
    ld a, [c]
    call z, $0001
    call nc, $00ef
    nop
    jp hl


    sbc $02
    nop
    sbc $d6
    ld [bc], a
    nop
    call $02e5
    nop
    call $010d
    nop
    ld [$0115], a
    nop
    jp $000c


    nop
    ld [c], a
    ld a, [hl+]
    nop
    nop
    sub $1a
    ld [bc], a
    nop
    ret nc

    add hl, hl
    ld [bc], a
    nop
    add b
    jp hl


    or [hl]
    nop
    nop
    jp c, $01de

    nop
    ld [$01be], sp
    nop
    ld [$00e1], a
    nop
    rst $38
    ret nc

    ld [bc], a
    nop
    db $f4
    ret z

    ld [bc], a
    nop
    db $e3
    rst $10
    ld [bc], a
    nop
    and $1a
    ld bc, $0300
    ld [hl+], a
    ld bc, $dc00
    add hl, de
    nop
    nop
    ei
    scf
    nop
    nop
    rst $28
    daa
    ld [bc], a
    nop
    jp hl


    ld [hl], $02
    nop
    add b
    add b
    or a
    ld l, h
    ldh [$6c], a
    add hl, de
    ld l, l
    ld b, d
    ld l, l
    ld [hl], a
    ld l, l
    xor h
    ld l, l
    pop hl
    ld l, l
    nop
    nop
    ld c, $1e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $1e
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld c, $0e
    ld c, $0e
    jr jr_002_6e20

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e

jr_002_6e20:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr @+$10

    ret c

    ld c, $0e
    jr jr_002_6e43

    ld c, $18
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $18
    ld c, $0e
    ld c, $0e

jr_002_6e43:
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $1e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $20
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $1c
    ld c, $0e
    ld c, $d8
    ld c, $1a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $1c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr nz, @+$10

    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    inc e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr jr_002_6edd

    ld c, $1a
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $d8
    ld c, $0e
    ld c, $0e

jr_002_6edd:
    ld c, $0e
    inc e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld a, [de]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr nz, jr_002_6f1e

    ld c, $18
    ld c, $0e
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld c, $0e

jr_002_6f1e:
    ld c, $20
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    inc e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    jr jr_002_6f41

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr nz, jr_002_6f4d

    ld c, $0e

jr_002_6f41:
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    inc e

jr_002_6f4d:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld e, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld c, $d8
    ld c, $1a
    ld c, $0e
    ld c, $0e
    ld c, $1a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $1c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $20
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $18
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $1a
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $1e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $20
    ld c, $18
    ld c, $0e
    ld c, $0e
    ld c, $18
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $1a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    jr @+$10

    ld c, $0e
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    inc c
    dec c
    ld c, $0e
    inc e
    ld c, $0e
    ld e, $d8
    ld c, $0e
    ld c, $0e
    ld c, $04
    db $10
    ld de, $0706
    ld a, [bc]
    dec bc
    db $10
    ld de, $0e05
    ld c, $0e
    ld c, $0e
    ret c

    inc e
    ld c, $0c
    dec c
    inc c
    inc bc
    inc d
    dec d
    ld [$1409], sp
    dec d
    inc d
    dec d
    ld [bc], a
    dec c
    inc c
    dec c
    ld c, $0e
    ret c

    ld c, $04
    db $10
    ld de, $1310
    ld d, $17
    ld d, $17
    ld d, $17
    ld d, $17
    ld [de], a
    ld de, $1110
    dec b
    ld c, $d8
    inc c
    inc bc
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    ld [bc], a
    ld bc, $12d8
    inc de
    ld d, $17
    ld d, $17
    ld d, $17
    ld d, $17
    ld d, $17
    ld d, $17
    ld d, $17
    ld d, $17
    ld [de], a
    ld de, $00d9
    nop
    ld c, $1e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $1e
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld c, $0e
    ld c, $0e
    jr jr_002_70c2

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e

jr_002_70c2:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr @+$10

    ret c

    ld c, $0e
    jr jr_002_70e5

    ld c, $18
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $18
    ld c, $0e
    ld c, $0e

jr_002_70e5:
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $1e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $20
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $1c
    ld c, $0e
    ld c, $d8
    ld c, $1a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $1c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr nz, @+$10

    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    inc e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr jr_002_717f

    ld c, $1a
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $d8
    ld c, $0e
    ld c, $0e

jr_002_717f:
    ld c, $0e
    inc e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ret c

    ld c, $0e
    ld a, [de]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr nz, jr_002_71c0

    ld c, $18
    ld c, $0e
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld c, $0e

jr_002_71c0:
    ld c, $20
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    inc e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    jr @+$10

    ld c, $22
    inc hl
    inc h
    dec hl
    inc l
    dec l
    ld c, $0e
    ld c, $20
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec h
    ld h, $27
    ld a, [hl+]
    ld a, [hl+]
    ld l, $2f
    jr nc, jr_002_7201

    ld c, $0e
    ld c, $0e
    ld c, $d8
    ld c, $0e
    ld c, $0e
    ld e, $28
    add hl, hl
    ld a, [hl+]

jr_002_7201:
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld sp, $0e32
    ld c, $0e
    ld a, [de]
    ld c, $d9
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ret c

    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ret c

    inc d
    dec d
    dec d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc d
    dec d
    dec d
    ld d, $17
    ld c, a
    ret c

    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    dec h
    ld h, $27
    ld e, a
    ret c

    jr nz, jr_002_7287

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr nz, jr_002_728f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ret c

    ld [bc], a
    inc bc
    ld [$0a09], sp
    dec bc
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    adc l

jr_002_7287:
    adc [hl]
    adc a
    add e
    add h
    add l
    ld [hl], $d8
    dec b

jr_002_728f:
    dec b
    jr jr_002_72ab

    ld a, [de]
    dec de
    dec b
    dec b
    dec b
    sub d
    sub e
    dec b
    dec b
    sbc l
    sbc [hl]
    sbc a
    ld l, $2f
    dec b
    dec b
    ret c

    dec b
    scf
    dec b
    add hl, hl
    ld a, [hl+]
    dec hl
    dec b
    dec l

jr_002_72ab:
    dec b
    and d
    and e
    dec b
    dec b
    xor l
    xor [hl]
    xor a
    ld a, $39
    dec b
    dec b
    ret c

    dec b
    dec b
    dec b
    dec b
    ld a, [hl-]
    dec sp
    dec b
    dec a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    adc e
    adc h
    ccf
    dec b
    dec b
    dec b
    ret c

    add hl, sp
    dec b
    dec b
    dec b
    inc c
    dec c
    dec b
    sub b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec bc
    sbc h
    dec b
    dec b
    dec b
    scf
    ret c

    dec b
    dec b
    jr c, jr_002_72eb

    inc e
    dec e
    dec b
    and b
    dec b

jr_002_72eb:
    dec b
    dec b
    sub b
    dec b
    ld e, b
    dec de
    xor h
    dec b
    dec b
    dec b
    dec b
    ret c

    ld b, a
    ld c, b
    ld c, c
    ld c, b
    ld b, d
    ld b, e
    dec b
    dec b
    dec b
    dec b
    dec b
    and b
    dec b
    ld l, b
    adc c
    adc d
    dec b
    dec b
    dec b
    dec b
    ret c

    ld b, $07

jr_002_730e:
    dec b
    dec b
    dec b
    add [hl]
    add a
    adc b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc sp
    inc [hl]
    dec [hl]
    dec b
    ld [hl], $05
    dec b
    ret c

    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, h
    ld b, l
    ld b, [hl]
    dec b
    dec b
    jr c, jr_002_730e

    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld e, a
    dec b
    dec b
    sub b
    dec b
    dec b
    dec b
    ld d, h
    dec b
    ld d, [hl]
    dec b
    dec b
    dec b
    ret c

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    dec b
    dec b
    dec b
    and b
    dec b
    dec b
    dec b
    ld h, h
    inc l
    ld h, [hl]
    dec b
    dec b
    dec b
    ret c

    inc bc
    ld [$0a09], sp
    dec bc
    dec b
    dec a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, d
    ld a, $39
    dec b
    dec b
    ret c

    dec b
    jr jr_002_7391

    ld a, [de]
    dec de
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, b
    dec b
    ld e, d
    ld e, e
    dec b
    dec b
    dec b
    ret c

    scf
    dec b
    add hl, hl
    ld a, [hl+]
    dec hl
    ld d, d
    dec b

jr_002_7391:
    dec b
    dec b
    sub b
    dec b
    dec b
    dec b
    ld l, b
    dec b
    ld l, d
    ld l, e
    dec b
    dec b
    dec b
    ret c

    dec b
    dec b
    dec b
    ld a, [hl-]
    dec sp
    sbc l
    dec b
    dec b
    dec b
    and b
    dec b
    dec b
    dec b
    dec b
    ld a, c
    ld a, d
    ld a, e
    dec b
    scf
    dec b
    ret c

    dec b
    dec b
    dec b
    inc c
    dec c
    xor l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc sp
    inc [hl]
    dec [hl]
    dec b
    dec b
    dec b
    ret c

    dec b
    dec b
    jr c, jr_002_73e9

    dec e
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    sub b
    dec b
    ld b, h
    ld b, l
    ld b, [hl]
    dec b
    dec b
    ret c

    dec b
    dec b
    dec b
    jr nc, jr_002_7414

    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_002_73e9:
    dec b
    dec b
    and b
    dec b
    ld d, h
    dec b
    ld d, [hl]
    dec b
    dec b
    ret c

    jr c, jr_002_73fa

    dec b
    ld b, b
    ld b, c
    dec b
    sub b

jr_002_73fa:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, h
    ld h, l
    ld h, [hl]
    dec b
    add hl, sp
    ret c

    dec b
    dec b
    dec b
    ld d, b
    ld d, c
    ld d, d
    and b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_002_7414:
    dec b
    dec b
    dec b
    ld d, d
    ld c, l
    ld c, [hl]
    dec b
    dec b
    ret c

    dec b
    add hl, sp
    dec b
    ld h, b
    ld h, c
    ld h, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, d
    ld e, l
    ld e, [hl]
    dec b
    dec b
    ret c

    dec b
    dec b
    dec b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    rrca
    ld d, d
    dec b
    dec b
    dec b
    dec b
    dec b
    rrca
    dec b
    ld [hl], d
    ld l, l
    ld l, [hl]
    ld l, a
    dec b
    ret c

    dec b
    dec b
    nop
    add b
    add c
    add d
    rra
    ld h, d
    dec b
    dec b
    dec b
    dec b
    dec b
    rra
    dec b
    add d
    ld a, l
    ld a, [hl]
    ld a, a
    dec b
    ret c

    ld c, $1e
    ld c, $28
    ld bc, $5532
    ld c, $0e
    ld e, $0e
    ld e, $0e
    ld [hl-], a
    ld e, $55
    ld c, $55
    ld c, $1e
    ret c

    ld bc, $9601
    sub a
    sbc b
    sbc c
    and [hl]
    and a
    xor b
    xor c
    xor d
    ld bc, $0101
    ld bc, $0101
    sub [hl]
    sub a
    sbc b
    ret c

    sbc b
    sbc c
    and [hl]
    sbc d
    sbc e
    xor e
    ld bc, $0101
    ld bc, $9601
    sub a
    sbc b
    sbc c
    and [hl]
    and a
    ld bc, $9b9a
    ret c

    sbc e
    xor e
    ld bc, $a9a8
    xor d
    sub [hl]
    sub a
    sbc b
    sbc c
    and [hl]
    and a
    sbc d
    sbc e
    xor e
    ld bc, $a801
    xor c
    xor d
    reti


    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    rlca
    ld [$0202], sp
    rlca
    ld [$02d8], sp
    rlca
    ld [$0902], sp
    ld a, [bc]
    dec bc
    rlca
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    ret c

    ld a, [bc]
    dec bc
    rlca
    ld [$0202], sp
    add hl, bc
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    dec bc
    rlca
    ld [$0807], sp
    add hl, bc
    inc c
    dec c
    ld e, d
    ret c

    inc de
    inc d
    dec d
    ld d, $0c
    dec c
    db $10
    ld de, $1012
    ld de, $0c12
    dec c
    ld c, h
    ld c, l
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ret c

    inc hl
    inc h
    dec h
    ld h, $0e
    rrca
    jr nz, jr_002_752f

    ld [hl+], a
    jr nz, jr_002_7532

    ld [hl+], a
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    adc h
    adc l
    adc [hl]
    adc a
    ret c

    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $30
    ld sp, $0132
    ld bc, $0101
    ld bc, $5453
    ld d, l
    ld d, [hl]
    add d
    add e
    add h
    ret c

jr_002_752f:
    or b
    or b
    rla

jr_002_7532:
    jr jr_002_7574

    ld b, c
    ld b, d
    ld bc, $0501
    ld b, $01
    ld bc, $6564
    ld h, [hl]
    sub d
    sub e
    ret c

    or b
    or b
    daa
    jr z, @+$52

    ld d, c
    ld d, d
    ld bc, $0101
    ld bc, $0101
    ld [hl], h
    ld [hl], l
    db $76
    and a
    ret c

    or b
    or b
    or b
    or b
    ld h, b
    ld h, c
    ld h, d
    ld bc, $0101
    ld bc, $0101
    ld e, e
    ld [hl], b
    ld [hl], c
    xor b
    ld a, [de]
    dec de
    add hl, de
    ret c

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc b
    ld bc, $0101

jr_002_7574:
    ld bc, $0101
    add b
    add c
    xor c
    ld a, [hl+]
    dec hl
    add hl, hl
    ret c

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld bc, $0101
    ld bc, HeaderLogo
    sbc l
    sbc [hl]
    sbc a
    ret c

    scf
    jr c, jr_002_75c9

    jr c, jr_002_75cd

    ld a, [hl-]
    ld bc, $0101
    ld bc, $5b01
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add hl, de
    ld a, [de]
    dec de
    inc e
    ret c

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec sp
    inc a
    dec a
    ld bc, $6a01
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    ret c

    dec bc
    rlca
    ld [$0202], sp
    add hl, bc
    ld [HeaderManufacturerCode], sp
    ld bc, $0101
    ld bc, $8501
    add [hl]

jr_002_75c9:
    ld h, e
    ret c

    inc d
    dec d

jr_002_75cd:
    ld d, $0c
    dec c
    db $10
    ld a, $4f
    ld bc, $0401
    ld bc, $0401
    sub l
    sub [hl]
    ld [hl], e
    ret c

    inc h
    dec h
    ld h, $0e
    rrca
    jr nz, jr_002_7632

    ld bc, $0101
    ld bc, $0101
    ld bc, $a6a5
    ld [hl], d
    ret c

    inc [hl]
    dec [hl]
    ld [hl], $30
    ld sp, $0132
    ld bc, $0101
    ld bc, $0101
    ld bc, $9001
    sub c
    ret c

    or b
    rla
    jr @+$42

    ld b, c
    ld b, d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    and b
    and c
    ret c

    or b
    daa
    jr z, jr_002_7667

    ld d, c
    ld d, d
    ld bc, $0101
    inc b
    ld bc, $0101
    ld bc, $9e9d
    sbc a
    ret c

    or b
    or b
    or b
    ld h, b
    ld h, c
    ld h, d
    ld bc, $0101
    ld bc, $0101
    ld e, e

jr_002_7632:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [de]
    dec de
    inc e
    ret c

    add hl, de
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $0101
    ld bc, $6a01
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, [hl+]
    dec hl
    inc l
    ret c

    add hl, hl
    dec hl
    inc l
    dec l
    ld l, $2f
    ld bc, $0101
    ld bc, $0101
    ld bc, HeaderLogo
    add l
    add [hl]
    ld h, e
    ret c

    or b
    or b
    or b
    ld c, b
    ld c, c

jr_002_7667:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $9695
    ld [hl], e
    ret c

    or b
    or b
    or b
    ld e, b
    ld e, c
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld bc, $a6a5
    ld [hl], d
    ret c

    or b
    or b
    or b
    ld l, b
    ld l, c
    ld b, a
    ld bc, $0101
    ld bc, $0101
    ld bc, $5c5b
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [de]
    dec de
    ret c

    or b
    or b
    or b
    ld a, b
    ld a, c
    ld d, a
    ld bc, $0101
    ld b, a
    ld bc, $4701
    ld bc, $6d01
    ld l, [hl]
    ld l, a
    ld a, [hl+]
    dec hl
    ret c

    or b
    or b
    or b
    adc b
    adc c
    ld h, a
    ld b, a
    ld a, e
    ld b, a
    ld d, a
    ld bc, $5701
    ld bc, $7b01
    sbc d
    sbc e
    ret c

    or b
    or b
    add a
    sbc b
    sbc c
    ld [hl], a
    ld d, a
    adc e
    ld d, a
    ld h, a
    ld b, a
    ld bc, $4767
    ld bc, $aa8b
    xor e
    xor h
    ret c

    and d
    and e
    and h
    ld c, d
    ld c, e
    ld e, l
    ld c, e
    ld c, d
    ld c, e
    ld e, l
    ld c, d
    sbc h
    ld c, e
    ld c, d
    sbc h
    ld e, l
    ld c, d
    ld c, e
    sub h
    and d
    ret c

    inc bc
    ld a, d
    xor [hl]
    xor a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    adc d
    xor [hl]
    ld a, d
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret c

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    adc d
    xor l
    xor [hl]
    xor a
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    adc d
    xor l
    xor [hl]
    xor a
    inc bc
    ret c

    ld a, d
    adc d
    xor l
    xor [hl]
    xor a
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    adc d
    xor l
    xor [hl]
    xor a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    reti


    add c
    ld b, $07
    rlca
    inc c
    nop
    add d
    dec b
    ld b, $0a
    rlca
    adc b
    ld b, $05
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $04
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add d
    dec b
    ld b, $0a
    rlca
    add e
    ld b, $05
    nop
    inc b
    inc b
    dec c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $04
    nop
    inc b
    inc b
    dec c
    nop
    add d
    dec b
    ld b, $0a
    rlca
    add e
    ld b, $05
    nop
    inc b
    inc b
    dec c
    nop
    add e
    inc b
    ld b, $07
    ld [$8400], sp
    rlca
    ld b, $04
    nop
    inc b
    inc b
    dec c
    nop
    add h
    dec b
    ld b, $07
    nop
    dec b
    ld b, $86
    inc bc
    nop
    rlca
    ld b, $05
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add e
    inc b
    ld b, $07
    ld [$8900], sp
    rlca
    ld b, $04
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    inc c
    nop
    add d
    dec b
    ld b, $0a
    rlca
    add d
    ld b, $04
    dec b
    ld b, $81
    inc b
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    ld [$0c06], sp
    nop
    add d
    dec b
    ld b, $0a
    rlca
    adc b
    ld b, $04
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    inc bc
    nop
    add e
    ld b, $06
    dec b
    inc c
    nop
    add d
    dec b
    ld b, $0a
    rlca
    adc b
    ld b, $04
    ld b, $06
    nop
    ld b, $06
    inc b
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    adc b
    ld b, $05
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc c
    nop
    add d
    dec b
    ld b, $0a
    rlca
    add d
    ld b, $04
    dec b
    ld b, $81
    inc b
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    dec b
    ld b, $81
    dec b
    inc c
    nop
    add d
    dec b
    ld b, $0a
    rlca
    adc b
    ld b, $04
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
