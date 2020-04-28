; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    ld l, $4f
    ld b, b
    inc d
    ld b, d
    ld [hl], $42
    ld d, e
    ld b, d
    ld h, [hl]
    ld b, d
    ld a, c
    ld b, d
    adc h
    ld b, d
    sbc a
    ld b, d
    or d
    ld b, d
    push bc
    ld b, d
    ret c

    ld b, d
    db $eb
    ld b, d
    cp $42
    ld de, $7b43
    ld b, h
    ld [de], a
    ld b, l
    ld [hl], c
    ld b, l
    jp hl


    ld b, [hl]
    cp l
    ld b, a
    ret


    ld c, b
    sbc b
    ld c, c
    ld a, [c]
    ld c, d
    dec l
    ld c, e
    ld l, a
    ld c, e
    xor c
    ld c, e
    jp c, $1c4b

    ld c, h
    ld d, [hl]
    ld c, h
    sub h
    ld c, h
    push bc
    ld c, h
    inc h
    ld c, l
    ld b, l
    ld d, b
    ld h, c
    ld d, b
    ld [hl], h
    ld d, b
    ld e, b
    ld d, c
    sub h
    ld d, c
    or a
    ld d, d
    or a
    ld h, d
    sbc [hl]
    ld c, d
    nop
    inc bc
    ld bc, $ff01
    rst $38
    dec l
    rst $38
    db $10
    rst $38
    jr z, @+$01

    jr z, @+$01

    ld b, h
    rst $38
    ld a, h

Call_02e_4060:
    rst $38
    add d
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld [$5201], sp
    ld bc, $ff88
    adc b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    cp $ff
    add b
    rst $38
    add b
    rst $38
    db $fc
    ld bc, $0162
    cp $ff
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld e, l
    ld bc, $0176
    ld [hl+], a
    rst $38
    inc e
    rst $38
    nop
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld [hl], a
    rst $38
    ld a, $ff
    ld a, [hl+]
    ld bc, $0170
    ld [hl], $ff
    ld h, e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], $ff
    ld a, $ff
    ld a, $01
    db $10
    rrca
    ld e, $3c
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    sbc [hl]
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    inc a
    rst $38
    nop
    ld bc, $0162
    ld bc, $04e1
    ld bc, $006d
    ld bc, $004b
    ld b, h
    rst $38
    ld b, h
    ld bc, $0142
    db $10
    ld bc, $016e
    ld bc, $0aff
    ld bc, $004b
    add d
    rst $38
    cp $01
    db $10
    inc de
    ld bc, $00ef
    add $ff
    xor d
    rst $38
    sub d
    ld bc, $1518
    db $fc
    ld bc, HeaderDestinationCode
    ld bc, $0267
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    jr jr_02e_40fe

    ld l, [hl]

jr_02e_40fe:
    ld bc, $4101
    inc d
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    ld bc, $113c
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
    ld bc, $01fc
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
    ld [$00ff], sp
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, b
    ld bc, $015c
    ld [hl], b
    rst $38
    ld c, b
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    ld b, h
    rst $38
    ld c, b
    ld bc, $015c
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $e7ff


    ld bc, $1342
    ld bc, $129f
    rst $38
    ld bc, $03fe
    ld h, b
    ld bc, $11c0
    ld a, a
    rst $38
    ld a, a
    ld bc, $13c0
    ld b, $01
    ret nc

    ld de, $fffe
    cp $01
    ret nc

    inc de
    ld bc, $06ff
    ld bc, $14b7
    ld bc, $16b7
    ld bc, $006f
    ld bc, $0249
    ld bc, $1211
    ld a, h
    ld bc, $115e
    jr nc, @+$01

    db $10
    ld bc, $2314
    ld bc, $200d
    ld bc, $0049
    ld [bc], a
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ld b, b
    ld bc, $016c
    ld bc, $2221
    inc a
    rst $38
    ld [bc], a
    ld bc, $230a
    inc c
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    cp $ff
    inc b
    ld bc, $112e
    ld bc, $0263
    ld bc, $2439
    ld bc, $0049
    ld bc, $0065
    ld bc, $2409
    ld a, [hl]
    ld bc, $2122
    inc b
    ld bc, $1152
    ld bc, $107d
    ld bc, $0249
    ld bc, $2481
    ld bc, $14ff
    ld a, [hl]
    ld bc, $2538
    nop
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld [hl], b
    ld bc, $13c0
    ld h, b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld c, $01
    ret nc

    inc de
    ld b, $01
    xor b
    dec h
    ld [hl], b
    rst $38
    ccf
    rst $38
    rra
    rst $38
    nop
    ld bc, $25b8
    ld c, $ff
    db $fc
    rst $38
    ld hl, sp+$01
    cp [hl]
    dec d
    ld bc, $26e1
    ld bc, $24b9
    ld bc, $23b9
    ld b, b
    nop
    ld bc, $deda
    rst $18
    db $e4
    ld sp, hl
    ld sp, hl
    ldh [$db], a
    ld bc, $0201
    call c, $0101
    ld bc, $f401
    ld hl, sp-$20
    pop hl
    db $e3
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ldh [rSB], a
    jr nz, jr_02e_423c

    ld bc, $f8a0
    ld b, b
    nop
    ld bc, $e2da
    db $e3

jr_02e_423c:
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ldh [$db], a
    ld bc, $0201
    call c, $0101
    ld bc, $f401
    ld hl, sp-$20

jr_02e_424c:
    ld bc, $0f20
    nop
    ld bc, $f8a0
    stop
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $28
    jr c, jr_02e_424c

    ld d, h
    rst $38
    xor d
    xor e
    sub $83
    cp $ff
    ld a, h
    stop
    nop
    rst $30
    ld c, $ff
    inc c
    rst $38
    ld e, $f7
    db $ec
    rst $38
    cp $ff
    xor [hl]
    rst $38
    inc e
    rst $28
    ld [hl], b
    stop
    ld bc, $00ff
    rst $38
    jr @+$01

    db $db
    rst $38
    jp $3cff


    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a

jr_02e_428c:
    stop
    nop
    rst $38
    ld b, $fd
    dec bc
    rst $38
    ld d, $fd
    inc hl
    rst $20
    ld d, [hl]
    cp e
    add $f3
    or b
    rst $38
    ret nz

    stop
    nop
    rst $38
    jr jr_02e_428c

    inc h
    rst $20
    inc h
    jp $d342


    ld d, d
    rst $30
    db $76
    rst $38
    jr jr_02e_428c

    jr @+$12

    nop
    nop
    cp e
    add d
    rst $38
    ld b, h
    rst $38
    jr z, @+$01

    ld a, h
    cp e
    cp $d7
    sub d
    rst $38
    cp $ff
    ld a, h
    stop
    nop
    rst $38
    jr @+$01

    ld [hl], $eb
    ld a, [hl+]
    rst $30
    dec d
    db $eb
    dec hl
    rst $18
    ld d, [hl]
    cp a
    and b
    rst $38
    ret nz

    stop
    ld bc, $00ff
    rst $38
    ld a, h
    rst $38
    cp $ff
    sub d
    rst $38
    xor $ff
    cp $ff
    ld d, h
    rst $38
    jr c, jr_02e_42fc

    nop
    ld bc, $00ff
    rst $38
    ld a, h
    rst $00
    add $ef
    xor d
    xor e
    add d
    rst $10
    sub $ab
    xor d

jr_02e_42fc:
    rst $38
    ld a, h
    stop
    nop
    cp e
    ld a, h
    ld a, l
    add $ff
    cp d
    ld a, l
    or $bb
    ld l, h
    rst $10
    jr c, @+$01

    jr z, @-$27

    jr c, jr_02e_4312

jr_02e_4312:
    ld [bc], a
    inc bc
    rst $38
    ld hl, sp-$01
    add h
    rst $38
    add h
    rst $38
    db $fc
    rst $38
    add d
    rst $38
    add d
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    add b
    inc bc
    inc d
    ld bc, $ff42
    inc a
    rst $38
    inc bc
    rst $38
    ld a, [c]
    inc bc
    add hl, bc
    nop
    add d
    rst $38
    add h
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    cp $03
    inc d
    ld bc, $03fc
    inc d
    inc bc
    nop
    rst $38
    ld a, h
    rst $38
    db $10
    inc bc
    ld b, d
    dec b
    ld a, h
    rst $38
    nop
    rst $38
    add d
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    nop
    rst $38
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    inc bc
    ld [hl+], a
    ld bc, $ff00
    jr c, @+$01

    ld b, h
    inc bc
    inc h
    inc bc
    ld b, h
    rst $38
    jr c, @+$01

    nop
    inc bc
    ld b, $05
    adc b
    inc bc
    ld l, d
    inc bc
    ld a, b
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    ld [bc], a
    rst $38
    add d
    inc bc
    ld c, h
    ld bc, $03fe
    ld b, d
    rlca
    db $10
    inc bc
    ld c, [hl]
    ld bc, $b103
    ld b, $03
    ld c, l
    ld [bc], a
    sub d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    add $ff
    add $03
    ld e, h
    ld bc, $ffc6
    ld b, h
    rst $38
    jr z, @+$01

    db $10
    rst $38
    jr z, @+$01

    ld b, h
    rst $38
    add $03
    ld l, $01
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    cp $ff
    inc bc
    rst $28
    cp $03
    and l
    ld [$ad03], sp
    nop
    inc bc
    rrca
    ld d, $60
    rst $38
    ld h, b
    rst $38
    nop
    inc bc
    inc d
    inc bc
    adc d
    rst $38
    adc d
    rst $38
    add h
    rst $38
    db $f4
    rst $38
    nop
    rst $38
    ldh [$03], a
    inc d
    ld bc, $03ea
    ld [bc], a
    ld bc, $03ea
    ld c, $11
    inc bc
    ld c, c
    ld [bc], a
    inc bc
    xor e
    ld [bc], a
    nop
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
    inc bc
    ld h, d
    ld de, $fff3
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
    rst $38
    ld b, h
    inc bc
    sub $03
    ld a, h
    inc bc
    ld [$0301], sp
    rrca
    db $10
    inc b
    rst $38
    dec c
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec c
    rst $38
    inc b
    inc bc
    ld c, $11
    inc bc
    ld h, l
    nop
    ldh a, [rIE]
    ldh a, [rIE]
    or b
    rst $38
    sub b
    inc bc
    ld c, $11
    ld [$18ff], sp
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr @+$01

    ld [$0e03], sp
    inc bc
    ld b, d
    rst $38
    inc e
    inc bc
    ld [$0315], sp
    ld sp, $8c14
    rst $38
    adc b
    rst $38
    add sp, -$01
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    ld b, b
    inc bc
    add sp, $11
    inc bc
    and b
    db $fd
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    and b
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    rrca
    ld c, l
    ld [bc], a
    cp a
    rrca
    ld c, l
    ld [bc], a
    rra
    rra
    ld c, l
    ld [bc], a
    ld a, a
    rra
    ld c, l
    ld [bc], a
    rst $18
    rra
    ld c, l
    rst $38
    ld hl, sp-$01
    add h
    rst $38
    add d
    ld [bc], a
    ld b, h
    ld hl, $ff84
    ld hl, sp-$01
    nop
    rst $38
    cp $ff
    add b
    rst $38
    add b
    rst $38
    db $fc
    ld [bc], a
    ld d, d
    ld hl, $ff80
    nop
    rst $38
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    ld [bc], a
    ld b, d
    ld hl, $ff00
    add d
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    ld [bc], a
    ld l, h
    inc hl
    ld [bc], a
    add c
    ld h, $7c
    ld [bc], a
    ld a, [hl]
    inc hl
    ld b, h
    rst $38
    ld b, h
    rst $38
    jr z, @+$01

    jr z, @+$01

    db $10
    rst $38
    nop
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
    or d
    ld hl, $fff3
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
    ld [bc], a
    ldh [$1f], a
    ld e, $00
    inc bc
    ld bc, $a001
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    ld c, l
    ld bc, $1f1f
    ld c, l
    ld bc, $1f7f
    ld c, l
    ld bc, $1fdf
    ld c, l
    ld bc, $2f3f
    ld c, l
    ld bc, $2f60
    dec c
    rst $38
    nop
    rst $38
    inc h
    rst $38
    ld hl, sp-$01
    inc h
    rst $38
    ld a, h
    rst $38
    xor d
    rst $38
    or d
    rst $38
    ld d, h
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    cp $ff
    jr @+$01

    jr z, @+$01

    jr z, @+$01

    jr @+$01

    jr nc, @+$01

    nop
    rst $38
    jr nz, @+$01

    jr z, @+$01

    db $f4
    rst $38
    ld a, [hl+]
    rst $38
    ld c, d
    rst $38
    adc b
    ld bc, $23de
    ld c, b
    rst $38
    ld b, h
    rst $38
    ld h, h
    rst $38
    ld b, h
    rst $38
    ld [$10ff], sp
    nop
    inc bc
    rlca
    rlca
    and b
    rst $38
    ld c, l
    rlca
    ld e, a
    rrca
    ld c, l
    rlca
    and b
    rrca
    dec l
    rst $38
    ld hl, sp-$01
    add h
    rst $38
    add h
    rst $38
    db $fc
    rst $38
    add d
    rst $38
    add d
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    add b
    rlca
    inc d
    ld de, $ff42
    inc a
    rst $38
    nop
    rst $38
    cp $07
    inc d
    ld de, $07fc
    inc d
    inc de
    nop
    rst $38
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    rst $38
    add h
    rst $38
    add d
    rst $38
    nop
    rst $38
    add d
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    rlca
    inc a
    ld de, $ff38
    ld b, h
    rlca
    ld [$8211], sp
    rst $38
    ld b, h
    rst $38
    jr c, @+$01

    nop
    rlca
    ld b, $15
    adc b
    rlca
    ld a, [hl-]
    inc de
    ld a, b
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld a, h
    rlca
    ld e, $11
    db $10
    rlca
    add d
    rla
    rlca
    ccf
    db $10
    rlca
    sub c
    ld d, $07
    ld a, l
    db $10
    add d
    rst $38
    sub d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    add $ff
    add $07
    inc a
    ld de, $ff89
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
    rlca
    jp nz, $f311

    rst $38
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
    rst $18
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    call nc, $83ff
    ei
    inc c
    rst $38
    ld c, $ff
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    dec hl
    rst $38
    pop bc
    rst $38
    ld bc, $06ff
    ld sp, hl
    ld c, $f8
    rrca
    ld hl, sp+$0f
    ld sp, hl
    ld c, $ff
    inc b
    rst $38
    inc bc
    rst $38
    ldh a, [$3f]
    ret z

    rst $38
    ld [$38cf], sp
    rst $08
    jr c, @+$01

    db $10
    rra
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    jr nz, @+$01

    ld hl, sp-$01
    jr nz, @+$01

    db $fc
    rst $38
    jr nz, @+$01

    ld [hl+], a
    rst $38
    inc e
    rst $38
    nop
    rlca
    ld c, [hl]
    ld de, $ff54
    sub d
    rst $38
    sub d
    rst $38
    and d
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    ld a, $ff
    ld [hl+], a
    rst $38
    ld h, d
    rst $38
    sub d
    rst $38
    inc c
    rst $38
    ld [$70ff], sp
    rlca
    ld e, $11
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr z, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld a, [hl]
    rst $38
    ld [bc], a
    rlca
    ld h, [hl]
    inc hl
    ld a, [hl]
    rst $38
    nop
    rst $38
    jr nc, @+$01

    adc h
    rst $38
    ld d, d
    rst $38
    ld [c], a
    rst $38
    inc h
    rlca
    adc d
    inc de
    ld [$88ff], sp
    rst $38
    ld a, h
    rst $38
    ld d, d
    rst $38
    or d
    rst $38
    and d
    rst $38
    ld d, h
    rst $38
    nop
    rlca
    add d
    ld de, $ff20
    jr nc, @+$01

    ld l, b
    rst $38
    ld c, d
    rst $38
    adc h
    rlca
    and b
    rrca
    ld c, l
    nop
    inc bc
    inc bc
    inc bc
    and b
    rst $38
    ld c, l
    inc bc
    ld e, a
    rrca
    ld c, l
    inc bc
    and b
    rrca
    dec l
    rst $38
    inc bc
    rst $38
    inc c
    inc a
    rst $38
    ld b, d
    rst $38
    add b
    inc bc
    inc d
    ld de, $ff42
    inc a
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld c, l
    rst $38
    ldh a, [rIE]
    ld b, [hl]
    rst $38
    ld e, d
    rst $38
    ld b, b
    rst $38
    sub b
    rst $38
    adc [hl]
    rst $38
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    rst $38
    add h
    rst $38
    add d
    rst $38
    nop
    rst $38
    add d
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    inc bc
    inc a
    ld de, $ff38
    ld b, h
    rst $38
    add d
    inc bc
    ld d, h
    ld de, $ff44
    jr c, @+$01

    nop
    rst $38
    db $fc
    inc bc
    ld d, h
    ld de, $fffc
    adc b
    inc bc
    ld a, [hl-]
    inc de
    ld a, b
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    cp $ff
    db $10
    inc bc
    add d
    rla
    inc bc
    rst $38
    ld c, $82
    rst $38
    sub d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    add $ff
    add $03
    inc a
    ld de, $ff89
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
    inc bc
    jp nz, $f311

    rst $38
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
    inc bc
    adc [hl]
    rra
    nop
    nop
    inc bc
    inc d
    inc de
    adc d
    rst $38
    adc d
    rst $38
    add h
    rst $38
    db $f4
    inc bc
    and b
    rrca
    ld c, l
    inc bc
    ld e, a
    cpl
    ld c, l
    inc bc
    cp a
    cpl
    dec l
    nop
    inc bc
    inc bc
    inc bc
    and b
    rst $38
    ld c, l
    inc bc
    ld b, b
    rrca
    dec l
    rst $38
    ld hl, sp-$01
    add h
    rst $38
    add h
    rst $38
    db $fc
    rst $38
    add d
    rst $38
    add d
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    inc a
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    inc b
    inc bc
    or d
    ld bc, $ff08
    cp $ff
    jr @+$01

    jr z, @+$01

    jr z, @+$01

    jr @+$01

    jr nc, @+$01

    nop
    rst $38
    ld a, h
    rst $38
    ld [$b603], sp
    ld bc, $ff9a
    inc h
    rst $38
    jr jr_02e_4808

    ret nc

    inc bc
    db $10

jr_02e_4808:
    rst $38
    ld d, h
    rst $38
    adc d
    rst $38
    adc d
    inc bc
    adc $01
    jr nz, @+$01

    jr z, @+$01

    db $f4
    rst $38
    ld a, [hl+]
    rst $38
    ld c, d
    rst $38
    adc b
    inc bc
    adc $01
    inc bc
    ld bc, $1b1f
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    rst $38
    add h
    rst $38
    add d
    rst $38
    nop
    rst $38
    add d
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    inc bc
    inc a
    ld de, $ff38
    ld b, h
    inc bc
    xor b
    ld bc, $ff82
    ld b, h
    inc bc
    or d
    ld bc, $a703
    inc b
    adc b
    inc bc
    ld a, [hl-]
    inc de
    ld a, b
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    cp $ff
    db $10
    inc bc
    add d
    rla
    inc bc
    ld bc, $821e
    rst $38
    sub d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    add $ff
    add $03
    inc a
    ld de, $ff89
    ret


    rst $38
    ret


    rst $38
    xor c
    rst $38
    sbc c

jr_02e_4884:
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
    inc bc
    jp nz, $f311

    rst $38
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
    inc bc
    ld l, $11
    inc bc
    cpl
    db $10
    inc bc
    push hl
    ld [de], a
    ld a, b
    inc bc
    xor [hl]
    ld bc, $0380
    ld a, [c]
    ld de, $eb03
    nop
    add h
    rst $38
    db $f4
    inc bc
    ld b, b
    rrca
    ld c, l
    inc bc
    ld e, a
    cpl
    ld c, l
    inc bc
    cp a
    cpl
    dec l
    nop
    inc bc
    ld bc, $a001
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    ld c, l
    ld bc, $1f1f
    ld c, l
    ld bc, $1f7f
    ld c, l
    ld bc, $1c90
    rst $38
    ld bc, $1fef
    dec e
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    rst $38
    add h
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld hl, sp+$01
    ld a, [hl+]
    ld hl, $3501
    jr nz, jr_02e_4884

    rst $38
    ld hl, sp-$01
    nop
    rst $38
    add d
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    ld bc, $212c
    ld a, b
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld a, h
    ld bc, $213e
    ld b, h
    rst $38
    jr z, @+$01

    db $10
    ld bc, $2366
    nop
    rst $38
    jr c, @+$01

    ld b, h
    ld bc, $2334
    ld b, h
    rst $38
    jr c, @+$03

    ldh a, [rNR11]
    ld a, h
    rst $38
    ld [$3cff], sp
    rst $38
    ld b, d
    rst $38
    sbc d
    rst $38
    inc h
    rst $38
    jr @+$01

jr_02e_4947:
    nop
    rst $38
    ld b, b
    ld bc, $2192
    ld b, h
    ld bc, $2198
    ld bc, $227d
    ld [$4cff], sp
    rst $38
    ld e, d
    rst $38
    ld l, d
    rst $38
    ld c, h
    ld bc, $216c
    ld [$30ff], sp
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$8001], sp
    inc hl
    db $10
    rst $38
    ld d, h
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    jr nc, @+$01

    nop
    rst $38
    jr nc, @+$01

    adc h
    rst $38
    ld d, d
    rst $38
    ld [c], a
    rst $38
    inc h
    ld bc, $236a
    ld [$88ff], sp
    rst $38
    ld a, h
    rst $38
    ld d, d
    rst $38
    or d
    rst $38
    and d
    rst $38
    ld d, h
    ld bc, $1c90
    nop
    ld [$ff02], sp
    ld [bc], a
    rst $38
    rst $38
    nop
    di
    dec bc
    db $db
    inc a
    xor a
    ld [hl], b
    ld d, a
    add sp, -$51
    ret nc

    sub a
    xor b
    ld [bc], a
    nop
    ld bc, $02ff
    nop
    ld a, [bc]
    cp a
    add b
    xor a
    jr nz, jr_02e_4947

    inc l
    add [hl]
    cpl
    add l
    dec l
    add l
    dec l
    cpl
    ld d, b
    rla
    xor b
    ld [bc], a
    ld b, b
    ld [$3c02], sp
    nop
    ld [bc], a
    ld d, b
    ld [$502f], sp
    rlca
    or a
    jr jr_02e_4a2a

    daa
    and a
    ld e, b
    ld e, b
    cp a
    cp a
    ret nz

    ret nz

    ld [bc], a
    inc h
    ld bc, $00ff
    rst $38
    ret nz

    ret nz

    nop
    rrca
    rst $38
    rst $38
    nop
    ld [bc], a
    inc hl
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld a, h
    ld [bc], a
    nop
    rst $38
    rst $38
    add l
    dec l
    add l
    db $ed
    dec b
    db $ed
    dec b
    dec e
    dec b
    db $fd
    ld sp, hl
    ld sp, hl
    ld bc, $fe01
    rst $38
    rst $38
    nop
    ret nz

    nop
    rst $18
    nop
    cp a
    nop
    rst $18
    nop
    ret nz

    ld [bc], a
    rst $38
    di
    ld [bc], a
    cp $f4
    ld [bc], a
    cp $f4
    inc bc
    nop
    ei
    nop
    db $fd
    nop
    ei
    nop
    inc bc
    ld [bc], a
    rst $38
    push af
    sbc a
    nop
    nop
    nop
    sbc a
    ld [bc], a
    rst $38

jr_02e_4a2a:
    ld sp, hl
    ld [bc], a
    cp $fa
    di
    nop
    ld bc, $f300
    ld [bc], a
    rst $38
    rst $30
    inc h
    nop
    db $db
    nop
    and l
    nop
    db $db
    nop
    inc h
    ld [bc], a
    rst $38
    ldh a, [$1f]
    rst $38
    db $10
    ld [bc], a
    ld [de], a
    rla
    ldh a, [rSC]
    ld [de], a
    add hl, de
    db $10
    rst $38
    rra
    ld [bc], a
    nop
    ld [bc], a
    ld de, $dd02
    rlca
    ld [bc], a
    ld b, c
    rra
    ld c, l
    ld [bc], a
    and c
    rra
    ld c, l
    ld [bc], a
    ld bc, $4d2f
    ld [bc], a
    ld h, c
    cpl
    ld c, l
    ld [bc], a
    pop bc
    cpl
    ld c, l
    ld [bc], a
    ld hl, $4d3f
    ld [bc], a
    add c
    ccf
    ld c, l
    ld [bc], a
    pop hl
    ccf
    ld c, l
    ld [bc], a
    ld b, c
    ld c, a
    ld c, l
    ld [bc], a
    and c
    ld c, a
    ld c, l
    ld [bc], a
    ld bc, $4d5f
    ld [bc], a
    ld h, c
    ld e, a
    ld c, l
    ld [bc], a
    pop bc
    ld e, a
    ld c, l
    ld [bc], a
    ld hl, $4d6f
    ld [bc], a
    add c
    ld l, a
    ld c, l
    ld [bc], a
    pop hl
    ld l, a
    ld c, l
    ld [bc], a
    ld b, c
    ld a, a
    ld c, l
    ld [bc], a
    and c
    ld a, a
    ld c, e
    ld [hl], b
    nop
    ld bc, $feff
    rst $38
    db $10
    ld bc, $0702
    ld bc, $f0ff
    add b
    rst $38
    add b
    rst $38
    db $fc
    ld bc, $0112
    cp $ff
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    ld bc, $0112
    add b
    rst $38
    ld b, d
    rst $38
    inc a
    rst $38
    nop
    rst $38
    add d
    ld bc, $0130
    cp $01
    jr nc, jr_02e_4ad0

    ld bc, $002f

jr_02e_4ad0:
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38

jr_02e_4ad8:
    add [hl]
    ld bc, $013c
    ld a, h
    ld bc, $0702
    ld a, h
    rst $38
    nop
    rst $38
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    rst $38
    add h
    ld bc, $003c
    ld b, b
    nop
    ld bc, $ff01
    ldh a, [$0e]
    nop
    rrca
    inc b
    rra
    ld b, $19
    rrca
    ld a, [de]
    dec c
    ld e, $05
    ld bc, $f0ff
    ld a, h
    nop
    db $fc
    jr c, jr_02e_4ad8

    ld hl, sp+$2c
    ret c

    ld e, h
    or b
    jr @-$0e

    inc c
    rlca
    ld c, $03
    rra
    dec b
    ccf
    ld [$103c], sp
    jr c, jr_02e_4b20

    rst $38

jr_02e_4b20:
    pop af
    jr c, @-$1e

    call c, $9c30
    ld hl, sp-$04
    ld h, b
    ldh a, [rSB]
    and b
    di
    ld b, b
    nop
    dec b
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    ld bc, $0107
    rlca
    ld [bc], a
    rlca
    ld bc, $030f
    nop
    nop
    ret nz

    nop
    ldh [$80], a
    ldh [rLCDC], a
    ldh a, [$c0]
    or b
    ld h, b
    ld [hl], b
    ret nz

    ld hl, sp+$60
    rra
    inc b
    rra
    ld [$0a1d], sp
    inc e
    dec bc
    rra
    inc b
    rrca
    inc bc
    rlca
    nop
    nop
    nop
    call c, $ec30
    jr jr_02e_4b6a

    ld [hl-], a
    nop
    call c, $f830

jr_02e_4b6a:
    ldh [$f0], a
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $ff01
    or $07
    nop
    rrca
    inc bc
    ld a, l
    ld b, $00
    nop
    inc a
    nop
    ld a, [hl]
    jr jr_02e_4bf8

    inc l
    and $3c
    cp $58
    db $fc
    and b
    ld [hl], b
    ret nz

    ei
    inc a
    rst $18
    ld h, b
    sbc $71
    cp a
    ld l, c
    ld [hl], a
    dec a
    ld a, c
    rra
    scf
    ld c, $0f
    nop
    ldh [rLCDC], a
    ld h, b
    ret nz

    ldh [$80], a
    ret nz

jr_02e_4ba2:
    nop
    add b
    ld bc, $0137
    nop
    nop
    ld b, b
    nop
    ld bc, $ff01
    db $f4
    rlca
    nop
    rrca

jr_02e_4bb2:
    inc bc
    inc e
    rlca
    dec sp
    inc c
    ld bc, $f4ff
    ret nz

    nop
    ldh [$80], a
    ld [hl], b
    ret nz

    jr c, jr_02e_4ba2

    inc [hl]
    dec de
    ld a, [hl-]
    dec c
    inc e
    rlca
    rrca
    inc bc
    rlca
    ld bc, $f3ff
    ld e, b
    or b
    jr c, jr_02e_4bb2

    ld [hl], b
    ret nz

    ldh [$80], a
    ret nz

    ld bc, $f3a0
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    ldh a, [$03]
    nop
    rlca
    ld bc, $0306
    ld c, $03
    inc a
    rlca
    ld a, b
    rra
    inc e
    nop
    ld a, $08
    rst $38
    inc d
    rst $38
    jp nc, $ec3f

    ld e, $f0

jr_02e_4bf8:
    inc c
    ld hl, sp+$0c
    ld hl, sp+$60
    ccf
    ld h, b
    ccf
    ld a, b
    rra
    db $fc
    scf
    db $fc
    ld c, a
    rst $38
    dec hl
    ld a, a
    db $10
    jr c, jr_02e_4c0c

jr_02e_4c0c:
    inc c
    ld hl, sp+$3c
    ldh a, [$78]
    ret nz

    ldh [$80], a
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    ldh a, [rSB]
    nop
    inc bc
    nop
    inc bc
    ld bc, $0103
    inc bc
    nop
    rlca
    nop
    nop
    nop
    db $fc
    nop
    cp $78
    add a
    db $fc
    inc hl
    cp $f3
    sbc $f3
    ld e, $e3
    cp $1f
    inc bc
    inc a
    rrca
    ld [hl], c
    rra
    ld h, a
    ld a, $7f
    jr jr_02e_4c85

    ld [bc], a
    rst $38
    pop af
    rlca
    db $fc
    ld a, [hl]
    ld hl, sp-$04
    add b
    ret nz

    ld [bc], a
    and b
    push af
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    ldh a, [$03]
    nop
    rlca
    ld bc, $030e
    rra
    inc b
    ld e, $09
    ld e, $09
    ld a, b
    nop
    call nc, Call_02e_7c38
    add sp, -$16
    sbc h
    xor $34
    cp d
    call z, $b874

jr_02e_4c76:
    call c, $1e68
    add hl, bc
    inc e
    dec bc
    inc e
    dec bc
    dec a
    dec bc
    ld a, [hl-]
    rla
    dec sp
    ld d, $3f

jr_02e_4c85:
    inc c
    ld e, $00
    call c, $f8b0
    ld h, b
    or b
    ret nz

    ret nz

    nop
    add b
    ld [bc], a
    and b
    di

jr_02e_4c94:
    ld b, b
    nop
    ld bc, $ff01
    db $f4
    rlca
    nop
    rrca
    inc bc
    rra
    inc b
    inc e
    dec bc
    ld bc, $f4ff
    ldh [rP1], a
    ldh a, [$c0]
    cp b
    ld h, b
    ld e, b
    or b
    dec e
    ld a, [bc]
    inc e
    dec bc
    rra
    inc b
    rrca
    inc bc
    rlca
    ld bc, $f3ff
    ret c

    jr nc, jr_02e_4c94

    jr nc, jr_02e_4c76

    ld h, b
    ldh a, [$c0]
    ldh [rSB], a
    and b
    di
    add b
    nop
    ld [bc], a
    nop
    nop
    rst $38
    rst $38
    ret c

    and a
    jp c, $d9a5

    and [hl]
    cp $81
    db $fd
    cp $fb
    add [hl]
    ld [bc], a
    nop
    nop
    dec de
    push hl
    ld e, e
    and l
    sbc e
    ld h, l
    ld a, a
    add c
    cp a
    ld a, a
    rst $18
    ld h, c
    add $b9
    res 6, h
    ld hl, sp-$79
    call z, $ffb3
    add b
    rst $38
    rst $38
    ld [bc], a
    cp $f0
    ld h, e
    sbc l
    db $d3
    dec l
    rra
    pop hl
    inc sp
    call $01ff
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    rst $38
    ld [bc], a
    ld bc, $fd01
    add d
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    add b
    ld [bc], a
    ld b, b
    nop
    dec de
    push hl
    cp a
    ld b, c
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    ld bc, $2002
    rrca
    dec c
    nop
    ld [$ff03], sp
    ld a, h
    rst $38
    add d
    inc bc
    ld [bc], a
    dec b
    ld a, h
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    db $10
    inc bc
    inc d
    inc bc
    inc bc
    dec c
    nop
    inc bc
    ld bc, $0200
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    cp $03
    ld e, $05
    inc a
    rst $38
    ld [bc], a
    inc bc
    ld a, [bc]
    inc bc
    inc c
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    cp $ff
    inc b
    rst $38
    nop

jr_02e_4d61:
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $fc
    inc bc
    jr c, jr_02e_4d71

    inc bc
    ld bc, $0300
    ld d, l

jr_02e_4d71:
    nop
    inc bc
    add hl, bc
    inc b
    ld a, [hl]
    inc bc
    ld [hl+], a
    ld bc, $ff04
    inc b
    rst $38
    ld [$08ff], sp
    inc bc
    ld e, $03
    inc bc
    dec bc
    nop
    inc bc
    add hl, bc
    inc b
    inc bc
    ld bc, $7e02
    inc bc
    ld e, b
    add hl, bc
    inc bc
    dec b
    rrca
    add hl, hl
    inc bc
    rst $18
    rrca
    ld c, l
    inc bc
    ccf
    rra
    ld c, l
    inc bc
    sbc a
    rra
    ld c, l
    inc bc
    pop hl
    rra
    dec l
    db $10
    rst $38
    jr z, @+$01

    jr z, @+$01

    ld b, h
    inc bc
    nop
    inc bc
    nop
    rst $38
    ld hl, sp-$01
    add h
    rst $38
    add h
    inc bc
    ld h, [hl]
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld b, d
    inc bc
    ld d, d
    ld bc, $ff80
    ld b, d
    rst $38
    inc a
    inc bc
    ld c, [hl]
    inc hl
    inc bc
    inc bc
    ld [bc], a
    add h
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    cp $03
    ld d, d
    inc bc
    inc bc
    ld d, e
    nop
    inc bc
    dec l
    nop
    inc bc
    add c
    jr z, jr_02e_4d61

    inc bc
    ld e, [hl]
    dec h
    sbc [hl]
    rst $38
    add d
    inc bc
    ld l, d
    inc hl
    inc bc
    inc bc
    ld [bc], a
    cp $03
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    dec d
    inc b
    inc bc
    dec de
    ld [bc], a
    ld a, [hl]
    inc bc
    ld a, d
    ld bc, $ff08
    adc b
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    ret z

    inc bc
    ld [hl], d
    ld hl, $0300
    ld h, h
    inc hl
    inc bc
    ld h, l
    ld [hl+], a
    inc bc
    dec l
    nop
    add d
    rst $38
    add $ff
    xor d
    rst $38
    sub d
    inc bc
    cp b
    dec h
    add d
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    inc bc
    ld c, h
    ld hl, $ff38
    ld b, h
    inc bc
    ld [bc], a
    inc bc
    ld b, h
    rst $38
    jr c, @+$05

jr_02e_4e40:
    ld c, [hl]
    ld bc, $5903
    ld [hl+], a
    inc bc
    sbc c
    inc h
    inc bc
    ld hl, $8a34
    rst $38
    ld b, h
    rst $38
    ld a, [hl-]
    inc bc
    ld l, $37
    adc b
    inc bc
    ld [$7823], a
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld a, h
    inc bc
    jr c, jr_02e_4e66

    cp $03
    jp nz, $1027

jr_02e_4e66:
    inc bc
    xor [hl]
    dec h
    inc bc
    rlca
    ld b, $03
    daa
    ld [hl-], a
    ld b, h
    inc bc
    ld b, d
    ld hl, $7d03
    ld [hl-], a
    sub d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    add $ff
    add $03
    ld c, h
    ld hl, $03c6
    sub [hl]
    ld sp, $4103
    jr nz, jr_02e_4ece

    rst $38
    add $03
    xor [hl]
    ld hl, $b303
    ld [hl-], a
    inc bc
    ld a, c
    inc [hl]
    inc bc
    ld c, e
    nop
    ld [$10ff], sp
    rst $38
    jr nz, jr_02e_4ea1

    ld a, [hl+]
    inc bc
    inc bc

jr_02e_4ea1:
    pop hl
    db $10
    ld a, b
    rst $38
    inc b
    rst $38
    ld a, h
    rst $38
    add h
    rst $38
    ld a, [hl]
    inc bc
    xor $25
    inc bc
    ld d, c
    ld [hl+], a
    inc bc
    ld a, l
    jr nz, jr_02e_4eb9

    pop hl
    ld [hl-], a
    inc bc

jr_02e_4eb9:
    ld h, e
    jr nc, jr_02e_4e40

    rst $38
    ld a, b
    rst $38

jr_02e_4ebf:
    nop
    inc bc
    db $76
    ld bc, $e703
    ld [hl-], a
    add h
    inc bc
    call c, $0305
    ld h, c
    jr nc, jr_02e_4ed1

jr_02e_4ece:
    ld d, c
    nop
    inc bc

jr_02e_4ed1:
    dec c
    nop
    jr @+$01

    inc h
    rst $38
    jr nz, @+$01

    db $fc
    rst $38
    jr nz, jr_02e_4ee0

    jr c, jr_02e_4f20

    inc bc

jr_02e_4ee0:
    pop hl
    ld [de], a
    inc bc
    rla
    ld b, h
    inc b
    rst $38
    ld hl, sp+$03
    ldh a, [$39]
    add h
    inc bc
    inc a
    inc hl
    inc bc
    rrca
    nop
    inc bc
    ld a, c
    inc [hl]
    inc bc
    ld h, c
    ld c, d
    ld h, b
    inc bc
    ld d, d
    ld bc, $ff8c
    or b
    rst $38
    ret nz

    rst $38
    or b
    rst $38
    adc h
    inc bc
    ld h, h
    ld b, a
    inc bc
    ld l, c
    ld b, [hl]
    nop
    rst $38
    db $ec
    rst $38
    sub d
    inc bc
    and [hl]
    ld b, e
    inc bc
    pop hl
    ld [de], a
    inc bc
    ld d, a
    ld b, h
    inc bc
    ld e, l
    ld b, d
    inc bc
    ld e, a
    ld [hl-], a
    inc bc

jr_02e_4f20:
    ld d, e
    jr nz, jr_02e_4f26

    dec c
    ld b, b
    inc bc

jr_02e_4f26:
    or c
    ld b, [hl]
    inc bc
    ld c, a
    ld b, d
    inc bc
    ld b, c
    ld c, d
    inc bc
    ld c, l
    nop
    nop
    rst $38
    sbc h
    rst $38
    and b
    rst $38
    ret nz

    inc bc
    call c, $0345
    ld e, a
    jr nc, jr_02e_4ebf

    inc bc
    db $e4
    ld sp, $fd03
    ld [hl-], a
    inc bc
    dec [hl]
    ld b, [hl]
    inc e
    inc bc
    ldh [rNR13], a
    inc bc
    or a
    ld b, h
    inc bc
    call $0344
    ld e, c
    ld b, d
    ld c, b
    rst $38
    jr nc, jr_02e_4f5c

    ldh [rNR13], a
    inc bc

jr_02e_4f5c:
    and c
    jr nc, jr_02e_4f62

    and e
    jr nc, jr_02e_4fa6

jr_02e_4f62:
    inc bc
    ld e, $55
    inc bc
    dec sp
    ld d, b
    ld c, b
    inc bc
    cp h
    ld b, l
    inc bc
    ld e, c
    ld b, d
    inc bc
    ld c, e
    ld b, d
    inc bc
    pop hl
    db $10
    db $fc
    rst $38
    ld [$2803], sp
    ld bc, $5d03
    jr nz, jr_02e_4fc3

    inc bc
    or [hl]
    inc sp
    inc bc
    ld c, c
    inc h
    inc bc
    ld c, l
    ld d, b
    inc bc
    ld bc, $0304
    adc l
    ld [hl-], a
    inc bc
    ld a, a
    ld [hl], $03
    dec c
    nop
    inc bc
    ld c, l
    ld d, b
    inc bc
    push hl
    jr c, jr_02e_4fe3

    inc bc
    jp nz, $034b

    ld e, l
    ld b, b
    inc bc
    dec h
    ld e, b
    ld e, $ff

jr_02e_4fa6:
    ld de, $21ff
    rst $38
    ld h, $ff
    ld b, d
    rst $38
    ld [hl], d
    rst $38
    ld c, h
    inc bc
    xor $21
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [$03], a
    ld hl, sp+$41
    inc bc
    pop hl
    inc d
    ld h, b
    rst $38

jr_02e_4fc3:
    ld h, b
    inc bc
    ret c

    ld sp, $e103
    jr jr_02e_4fce

    rlca
    ld h, b
    inc bc

jr_02e_4fce:
    rst $38
    ld d, [hl]
    inc bc
    dec b
    ld h, b
    inc bc
    dec a
    ld b, h
    inc bc
    pop hl
    ld [de], a
    call z, $ccff
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38

jr_02e_4fe3:
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    inc c
    inc bc
    ld a, h
    ld bc, $7503
    jr c, jr_02e_4ff4

    ld a, l
    jr nc, jr_02e_4ff7

jr_02e_4ff4:
    ld h, c
    jr nz, jr_02e_5039

jr_02e_4ff7:
    rst $38
    inc e
    inc bc
    ld e, b
    ld h, l
    inc bc
    ld h, l
    ld [hl+], a
    adc d

Call_02e_5000:
    rst $38
    adc d
    rst $38
    add h
    rst $38
    db $f4
    inc bc
    inc b
    ld l, a
    nop
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
    inc bc
    and d
    ld h, c
    di
    rst $38
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
    inc bc
    ldh [$1f], a
    ld c, l

jr_02e_5039:
    inc bc
    inc e
    ld a, a
    ld c, l
    inc bc
    ld a, h
    ld a, a
    ld c, l
    inc bc
    and b
    ld a, a
    rrca
    nop
    ld [bc], a
    ld bc, $01ff
    rst $38
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0fbf
    ld c, l
    ld bc, $1f1f
    ld c, l
    ld bc, $1f7f
    ld c, l
    ld bc, $1f9f
    inc c
    ld b, b
    nop
    ld bc, $00ff
    rst $38
    ld bc, $0002
    ld bc, $f0ff
    ld bc, $0407
    ld bc, $0f03
    ld a, [de]
    nop
    ld [$ff02], sp
    ld [bc], a
    nop
    ld c, $87
    rst $38
    cp e
    rst $38
    cp l
    ld [bc], a
    ld d, $01
    cp e
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    add e
    ld [bc], a
    ld d, $01
    add e
    rst $38
    or a
    ld [bc], a
    inc d
    ld bc, $ffff
    rst $28
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    cp e
    rst $38
    add e
    rst $38
    ld a, l
    rst $38
    ld a, l
    ld [bc], a
    db $10
    ld bc, $ff7b
    ld a, a
    rst $38
    ld h, c
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    jp $1602


    inc bc
    ld [bc], a
    rla
    nop
    jp $ffff


    rst $38
    cp l
    rst $38
    sbc l
    rst $38
    xor l
    rst $38
    or l
    rst $38
    cp c
    ld [bc], a
    ld d, $01
    ld [bc], a
    ld b, c
    ld [bc], a
    ld [bc], a
    ld [hl], l
    nop
    ld b, e
    rst $38
    add hl, sp
    rst $38
    add l
    ld [bc], a
    ld h, b
    ld bc, $5502
    ld a, [bc]
    add e
    rst $38
    cp a
    rst $38
    cp a
    ld [bc], a
    sub d
    dec b
    ld [bc], a
    ld d, c
    ld [bc], a
    cp a
    rst $38
    jp $fdff


    ld [bc], a
    ld e, h
    inc bc
    ld bc, $efff
    ld [bc], a
    or h
    rlca
    rst $38
    rst $38
    ld a, l
    rst $38
    add hl, sp
    rst $38
    ld d, l
    rst $38
    ld l, l
    ld [bc], a
    inc a
    ld bc, $3f02
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    sbc a
    nop
    ld [bc], a
    nop
    ld bc, $a002
    rst $38
    ld c, l
    ld [bc], a
    ccf
    rra
    ld c, l
    ld [bc], a
    sbc a
    rra
    ld c, l
    ld [bc], a
    rst $38
    rra
    ld c, l
    ld [bc], a
    ld e, a
    cpl
    ld c, l
    ld [bc], a
    cp a
    cpl
    ld c, l
    ld [bc], a
    rra
    ccf
    ld c, l
    ld [bc], a
    ld a, a
    ccf
    ld c, l
    ld [bc], a
    rst $18
    ccf
    ld c, l
    ld [bc], a
    ccf
    ld c, a
    ld c, l
    ld [bc], a
    sbc a
    ld c, a
    ld c, l
    ld [bc], a
    rst $38
    ld c, a
    ld c, l
    ld [bc], a
    ld e, a
    ld e, a
    ld c, l
    ld [bc], a
    cp a
    ld e, a
    ld c, l
    ld [bc], a
    rra
    ld l, a
    ld c, l
    ld [bc], a
    ld a, a
    ld l, a
    ld c, l
    ld [bc], a
    rst $18
    ld l, a
    ld c, l
    ld [bc], a
    ccf
    ld a, a
    ld c, l
    ld [bc], a
    sbc a
    ld a, a
    ld c, l
    ld b, b
    ld [bc], a
    ld c, $0e
    rst $38
    rst $38
    ld bc, $0eff
    inc d
    rlca
    ld c, $00
    rrca
    ld c, l
    ld c, $60
    rrca
    ld c, l
    ld c, $ff
    ldh a, [rSB]
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $00
    rlca
    ld [$0a09], sp
    dec bc
    ld c, $70
    rrca
    ld [hl+], a
    dec c
    inc c
    dec b
    ld b, $0a
    dec bc
    add hl, bc
    ld [bc], a
    ld a, [bc]
    dec c
    ld c, $6f
    rrca
    ld c, l
    ld c, $6f
    rra
    ld c, l
    ld c, $cf
    rra
    ld a, $00
    ld [bc], a
    ld bc, $0003
    rrca
    inc bc
    rra
    rrca
    ccf
    ld e, $7f
    inc a
    ld a, a
    jr c, @+$01

    ld [hl], b
    rst $38
    ld a, h
    ret nz

    nop
    ldh a, [$c0]
    ld hl, sp-$10
    db $fc
    ld a, b
    cp $3c
    cp $1c
    rst $38
    ld c, $ff
    ld a, $01
    nop
    inc bc
    rra
    ld a, a
    inc a
    ld a, a
    inc a
    rst $38
    ld a, h
    ld bc, $050e
    ld hl, sp-$02
    inc a
    cp $3c
    rst $38
    ld a, $01
    ld e, $07
    dec a
    ld a, a
    add hl, sp
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    ld bc, $0530
    db $fc
    cp $fc
    rst $38
    ld c, $ff
    ld c, $01
    jr nz, jr_02e_51e7

    ccf
    ld a, a
    ccf
    rst $38
    ld [hl], b

jr_02e_51e7:
    rst $38
    ld [hl], b
    ld bc, $0530
    cp h
    cp $9c
    rst $38
    ld c, $ff
    ld b, $01
    jr nz, jr_02e_51fb

    jr nc, @+$81

    jr nc, jr_02e_51fb

    ld l, h

jr_02e_51fb:
    add hl, bc
    inc a
    cp $7c
    rst $38
    ld a, [hl]
    ld bc, $091e
    ld a, $ff
    ld a, [hl]
    ld bc, $072e
    inc c
    cp $0c
    ld bc, $0d5c
    db $76
    ld bc, $076e
    sbc h
    ld bc, $01ba
    ld e, $01
    jr nz, jr_02e_5221

    add hl, sp
    ld bc, $018a
    ld a, b

jr_02e_5221:
    ld bc, $0950
    ld l, [hl]
    rst $38
    ld c, $01
    inc l
    nop
    ld bc, $0028
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    ld bc, $003c
    ld bc, $0038
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    ld a, a
    jr c, jr_02e_52c9

    inc a
    ccf
    ld e, $01
    ld a, [bc]
    dec d
    ld c, $fe
    inc e
    cp $3c
    db $fc
    ld a, b
    ld bc, $131a
    ld h, b
    rst $38
    ld [hl], b
    ld a, a
    add hl, sp
    ld a, a
    dec a
    ld bc, $1508
    ld c, $ff
    ld c, $01
    ld e, b
    nop
    ld bc, $1518
    ld [hl], b
    rst $38
    ld [hl], b
    ld bc, $0068
    ld bc, $1508
    ld b, $ff
    ld c, $fe
    sbc h
    cp $bc
    ld bc, $1758
    db $76
    ld bc, $1964
    ld e, $ff
    ld c, $fe
    inc c
    cp $9c
    ld bc, $1518
    ld a, b
    rst $38
    ld [hl], b
    ld a, a
    jr nc, jr_02e_5313

    add hl, sp
    ld bc, $1748
    ld l, [hl]
    ld bc, $1d54
    jr nc, jr_02e_531d

    jr nc, @+$03

    ld [$7e17], sp
    cp $7c
    ld bc, $1916
    ld a, [hl]
    ld a, a
    ld a, $01
    ld b, $17
    ld bc, $1051
    inc c
    cp $0c
    ld bc, $1418
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02e_52c9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    xor d
    ld d, l
    rst $38
    nop
    xor d
    ld d, l
    rst $38
    nop
    xor d
    ld d, l
    rst $38
    nop
    xor d
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_5313:
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d

jr_02e_531d:
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, d
    ld e, a
    ld b, d
    ld e, l
    ld [hl-], a
    dec a
    db $76
    add hl, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$a0ff]
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld [hl-], a
    dec a
    ld [hl-], a
    dec a
    db $76
    add hl, hl
    ld [hl-], a
    dec a
    ld [hl-], a
    dec a
    db $76
    add hl, hl
    ld [hl-], a
    dec a
    ld [hl-], a
    dec a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $76
    add hl, hl

Jump_02e_5439:
    ld [hl-], a
    dec a
    ld [hl-], a
    dec a
    db $76
    add hl, hl
    ld [hl], $39
    add hl, sp
    ld [hl-], a
    ld d, c
    inc h
    ld b, l
    and d
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    call z, $cff3
    ldh a, [$8f]
    ldh a, [$7f]
    add b
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$08
    ldh a, [$09]
    ldh a, [$0e]
    ldh a, [rIF]
    ldh a, [$f1]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld h, b
    rst $38
    nop
    nop
    db $fc
    ld b, $f8
    adc b
    ld [hl], b
    ld [hl], h
    nop
    sub b
    nop
    add hl, hl
    ld bc, $187f
    ld b, c
    ld bc, $fcff
    rst $38
    add sp, -$01
    ld [hl], b
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
    inc b
    ld a, [c]
    ld [bc], a
    db $10
    sub d
    nop
    xor h
    and b
    inc a
    db $10
    pop af
    ld de, $0080
    ld b, h
    ld d, h
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    nop
    ld e, a
    nop
    rst $28
    nop
    xor $1f
    rst $38
    ccf
    xor e
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$08
    rst $28
    cpl
    add $46
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ret nc

    rst $38
    cp c
    rst $38
    rst $38
    rst $38
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
    cp $02
    ldh [rNR41], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    ld b, h
    add b
    add b
    ld bc, $0001
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    cp $ff
    rra
    rst $38
    ldh [rNR44], a
    add b
    add c
    ld bc, $1f01
    rra
    add h
    add a
    jr jr_02e_5542

    add b
    add b
    ret nz

    ldh a, [$dc]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff

jr_02e_552d:
    ldh [rIE], a
    ld a, b
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    rrca
    rst $38
    pop bc
    ld b, c
    ld e, c
    sbc c
    jr nc, jr_02e_552d

    ld bc, $0ff1
    rst $08
    nop

jr_02e_5542:
    nop
    add d
    cp $23
    ccf
    cp [hl]
    rst $38
    ld h, [hl]
    rst $38
    rrca
    rst $38
    ld c, $ff
    jr nc, @+$01

    rst $38
    rst $38
    ld bc, $c0ff
    rst $38
    ld h, b
    ld h, b
    inc h
    inc a
    add e
    adc a
    adc b
    adc a
    ld hl, sp-$01
    ld b, b
    ld a, a
    ld c, $2f
    add e
    add e
    sbc a
    rst $38
    jp Jump_02e_70ff


    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ld a, h
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, [hl]
    xor d
    and b
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, l
    add $80
    add b
    ld bc, $0001
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    cp $ff
    rra
    rst $38
    ld h, b
    and e
    add b
    add c
    ld bc, $1f01
    rra
    add h
    add a
    jr jr_02e_55e2

    add b
    add b
    ret nz

    ldh a, [$dc]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff

jr_02e_55cd:
    ldh [rIE], a
    ld a, b
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    rrca
    rst $38
    ld b, c
    pop bc
    add hl, de
    reti


    jr nc, jr_02e_55cd

    ld bc, $0ff1
    rst $08
    nop

jr_02e_55e2:
    nop
    add d
    cp $23
    ccf
    cp [hl]
    rst $38
    ld h, [hl]
    rst $38
    rrca
    rst $38
    ld c, $ff
    jr nc, @+$01

    rst $38
    rst $38
    ld bc, $c0ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld b, b
    rrca
    ld [$0101], sp
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    pop de
    ld l, e
    sbc [hl]
    ld l, $c0
    add d
    nop
    ld b, h
    inc d
    dec [hl]
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rlca
    rst $38
    ccf
    ret nz

    push bc
    nop
    ld b, b
    nop
    ld a, h
    nop
    add h
    add b
    rst $38
    jr nz, @+$01

    ld hl, sp-$01
    ldh [rIE], a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    xor b
    nop
    add c
    ld bc, $87c7
    ldh a, [$50]
    db $fc
    ld a, h
    ld [hl], h
    inc b
    ret nz

    ld a, [bc]
    db $e4
    inc b
    rst $38
    nop
    cp $00
    ld a, b
    inc bc

jr_02e_566d:
    xor a
    rra
    add e
    jr nz, jr_02e_566d

    nop
    push af
    nop
    ei
    nop
    ld a, $02
    ret nz

    ld b, b
    inc b
    inc [hl]
    ret nz

    ret nz

    ld l, b
    jr z, jr_02e_5682

jr_02e_5682:
    nop
    ld bc, $1607
    rla
    db $fd
    inc bc
    cp a
    ld a, a
    set 7, h
    ccf
    add b
    rst $30
    nop
    rst $38
    nop
    ld hl, sp+$00
    add sp, $00
    ld bc, $300f
    scf
    adc d
    ld a, [$1212]
    inc b
    inc b
    add [hl]
    and a
    ret z

    ld sp, hl
    cp h
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    dec b
    ld hl, sp-$13
    nop
    ei
    nop
    ld e, b
    nop
    ld b, $00
    nop
    nop
    cp $02
    db $fc
    inc c
    db $fc
    inc b
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
    db $fd
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $c700
    ld bc, $ff7f
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    jr c, @+$01

    add b
    rst $38
    rst $38
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
    ldh a, [$c6]
    cp $e3
    rst $38
    ldh a, [rIF]
    ld hl, sp+$0f
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rrca

jr_02e_5708:
    rst $38
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add $fe
    jp $9cff


    rst $38
    nop
    rst $38
    jr jr_02e_5708

    ld a, $c1
    rst $38
    nop
    rst $38
    nop
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    ld a, a
    add c
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld [$fef7], sp
    ld bc, $00ff
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$feff], sp
    rst $38
    rst $38
    rst $38
    pop bc
    pop bc
    ldh [$e0], a
    cp a
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld a, $ff
    rra
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
    ldh [rIE], a
    nop
    ld bc, $c700
    ld bc, $007f
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    cp $ff
    jr c, @+$01

    add b
    rst $38
    rst $38
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
    ldh a, [$c6]
    cp $e3
    rst $38
    nop
    rst $38
    ld e, b
    xor a
    ld bc, $55ff
    xor d
    nop
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_57b7:
    add $fe
    jp $9cff


    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    ld a, a
    add c
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld d, h
    xor e
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$feff], sp
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04e1
    rla
    jr nc, @+$01

    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $eb
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    ld c, e
    ld a, d
    ld a, [de]
    ld d, h
    inc d
    sub c
    sub c
    and c
    ld bc, $0044
    xor b
    jr z, jr_02e_57b7

    nop
    db $fc
    nop
    push af
    nop
    db $eb
    nop
    xor $00
    cp $00
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    ld sp, $4400
    inc b
    inc b
    inc b
    nop
    inc bc
    add b
    add e
    jr jr_02e_584b

    ld b, a
    db $10
    add b
    ld b, l
    rst $38
    nop
    ei
    nop

jr_02e_584b:
    ei
    nop
    db $fc
    nop
    ld a, h
    nop
    rst $30
    nop
    rst $28
    nop
    cp d
    nop
    add b
    ld b, $10
    ld a, [de]
    db $10
    cp $64
    rlca
    jr jr_02e_58c8

    dec e
    ld a, l
    add h
    db $f4
    ld l, h
    sub b
    ld sp, hl
    nop
    push hl
    nop
    ld bc, $f800
    nop
    sbc b
    nop
    add d
    nop
    dec bc
    nop
    ld l, a
    nop
    inc hl
    inc hl
    adc a
    xor a
    dec b
    push bc
    ld [hl+], a
    ld a, [c]
    add c
    pop bc

jr_02e_5881:
    nop
    nop
    ld [de], a
    ld [bc], a
    ld hl, sp+$1a
    call c, Call_02e_5000
    nop
    ld a, [hl-]
    nop
    dec c
    nop
    ld a, $00
    rst $38
    nop
    db $fd
    nop
    push hl
    nop
    scf
    rst $38
    nop
    di
    ld b, b
    ld h, [hl]
    inc h
    ccf
    jr nz, @-$3f

    inc d
    cp a
    ld b, h
    ld l, a
    sbc b
    ei
    nop
    nop
    inc c
    nop
    sbc c
    nop
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
    sub b
    nop
    inc b
    nop
    rst $38
    nop
    xor d
    ld d, l
    rst $38
    nop
    xor d
    ld d, l
    ld hl, sp+$08
    xor a
    ld l, a
    add $46
    add b
    nop
    rst $38

jr_02e_58c8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ret nc

    rst $38
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    adc $e5
    ld sp, $6c97
    add a
    sub h
    ld a, [hl+]
    pop de
    inc b
    ld b, d
    inc b
    inc [hl]
    add b
    rst $38
    ld d, l
    rst $38
    inc b
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
    and $ed
    ld b, l
    push de
    db $f4
    jr z, jr_02e_5881

    add hl, sp
    ld d, h
    dec bc
    xor c
    db $10
    ld [bc], a
    ld de, $00d7
    rst $38
    db $e4
    rst $38
    ld b, h
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
    ld c, a
    rst $10
    ld [hl], $98
    inc hl
    ld [bc], a
    inc [hl]
    ld d, b
    ld a, [bc]
    ld a, [de]

jr_02e_5922:
    ld bc, $916c
    inc h
    ld e, e
    rst $38
    ld c, a
    rst $38
    ld b, $ff
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
    or $ed
    ld h, l
    db $dd
    ld [hl], l
    add hl, hl
    jp Jump_02e_5439


    adc e
    reti


    ld h, b
    ld d, l
    ld h, b
    dec bc
    sub b
    rst $38
    db $e4
    rst $38
    ld b, h
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
    xor d
    ld a, e
    and a
    adc [hl]
    db $eb
    ld [hl], $e1
    add hl, hl
    ld d, h
    xor e

jr_02e_5962:
    nop
    ld h, d
    add b
    sub h
    jp hl


    rst $38
    xor d
    rst $38
    jr nz, @+$01

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
    ld c, b
    ret c

    ld sp, hl
    add b
    and $00
    ld a, c
    and b
    ld l, b
    nop
    and a
    ld b, b
    add sp, $00
    ld [hl], c
    add b
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
    nop
    ld c, c
    ld h, $44
    pop af
    ld bc, $8039
    ld b, [hl]
    jr nc, jr_02e_5922

    nop
    ld b, $20
    pop de
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
    rst $38
    nop
    dec bc
    inc h
    add [hl]
    ld hl, $1259
    dec d
    inc b
    ld d, a
    nop
    dec b
    ld [c], a
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    ld a, c
    ld c, c
    ld h, [hl]
    ld b, l
    pop bc
    ld bc, $8039
    ld b, [hl]
    jr nc, jr_02e_5962

    nop
    ld b, $20
    pop de
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
    rst $38
    nop
    ld [hl], c
    nop
    rra
    nop
    ld [bc], a
    ld [bc], a
    adc h
    inc c
    rrc e
    add hl, de
    add hl, de
    adc d
    adc b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    di
    nop
    db $f4
    nop
    and $00
    ld [hl], a
    nop
    rst $38
    nop
    nop
    nop
    sub h
    sub h
    scf
    daa
    ret nz

    ret nz

    cp $fe
    rst $00
    rst $00
    jr nz, @+$22

    rla
    nop
    rst $38
    nop
    ld l, e
    ldh a, [$d8]
    ldh [$3f], a
    nop
    ld bc, $3800
    nop
    rst $18
    nop
    rst $38
    nop
    inc b
    inc b
    ld c, b
    ld c, b
    db $fc
    db $fc
    jr c, jr_02e_5a77

    ld hl, sp+$78
    or b
    or b
    ld a, [$e4fe]
    ld h, $fb
    rlca
    or a
    ld a, a
    inc bc
    call z, $00c7
    add a
    nop
    ld c, a
    nop
    ld bc, $d900
    nop
    dec e
    db $10
    or e
    add e
    inc l
    inc c
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld l, b
    ld l, e
    sub b
    cp e
    sbc a
    sbc a
    rst $28
    ldh a, [$7c]
    add b
    di
    nop
    db $fd
    nop
    db $fc
    nop
    sub h
    nop
    ld b, h
    nop
    ld h, b
    nop

jr_02e_5a77:
    db $e4
    ld [hl], h
    or $f7
    add $ef
    ld c, b
    rst $08
    ld c, d
    ei
    scf
    ld a, a
    ld [bc], a
    ei
    or [hl]
    or b
    adc e
    nop
    ld [$1000], sp
    nop
    jr nc, jr_02e_5a8f

jr_02e_5a8f:
    inc b
    nop
    add b
    nop
    inc b
    nop
    ld c, a
    nop
    or b
    cp [hl]
    and h
    and $21
    db $fd
    ld h, e
    rst $30
    inc l
    rst $38
    ld e, d
    rst $38
    dec de
    rst $38
    jp hl


    pop af
    ld b, c
    nop
    add hl, de
    nop
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld d, [hl]
    xor d
    inc c
    db $fc
    ld d, h
    xor h
    nop
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    ld d, l
    xor d
    nop
    rst $38
    db $fd
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
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

    nop
    call c, $3300
    nop
    ld l, $00
    add a
    inc b
    adc [hl]
    ld c, $1f
    ld h, $0e
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    pop af
    nop
    ret nz

    add hl, sp
    nop
    rst $38
    ld a, [c]
    ld [bc], a
    db $e4
    inc b
    inc de
    db $10
    ld d, [hl]
    db $10
    cp b
    db $10
    ret z

    jr c, jr_02e_5b34

    adc $7f
    rst $38
    db $fd
    nop
    ei
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    add a
    ld [hl], b
    nop
    rst $38
    nop
    rst $38
    sbc a
    inc bc
    push hl
    add l
    rst $38
    nop
    dec d
    nop
    ld bc, $1f00
    nop
    ld a, [hl-]
    ld b, b
    ret nz

    ldh a, [$fc]
    nop
    ld a, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra

jr_02e_5b34:
    ldh [rIF], a
    ldh a, [rSC]
    ld [bc], a
    ld l, a
    rrca
    ld e, $1e
    rst $20
    db $e3
    ld a, [$fe72]
    ld l, [hl]
    ld e, h
    ld b, b

jr_02e_5b45:
    daa
    jr nz, jr_02e_5b45

    nop
    ldh a, [rP1]
    pop hl
    nop
    inc e
    nop
    adc l
    nop
    sub c
    nop
    cp a
    nop
    rst $18
    nop
    dec [hl]
    dec b
    inc de
    inc bc
    sbc e
    dec bc
    ld [bc], a
    ld [bc], a
    dec c
    inc b
    add b
    nop
    inc bc
    nop
    jr nz, jr_02e_5b67

jr_02e_5b67:
    ld a, [$fc00]
    nop
    db $f4
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    inc bc
    push af
    push bc
    rst $38
    add b
    dec [hl]
    nop
    ld h, c
    nop
    ld a, a
    inc b
    ld [hl], e
    inc de
    dec de
    dec bc
    db $fc
    nop
    ld a, [hl-]
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    db $ec
    nop
    db $f4
    nop
    ld a, $3e
    ld h, c
    ld h, c
    sbc a
    sbc a
    ld l, b
    ld l, b
    xor [hl]
    adc [hl]
    rlca
    rlca
    db $e3
    jp $0666


    pop bc
    nop
    sbc [hl]
    nop
    ld h, b
    nop
    sub a
    nop
    ld [hl], c
    nop
    ld hl, sp+$00
    inc a
    nop
    ld sp, hl
    nop
    xor a
    cpl
    ei
    ei
    add hl, sp
    add hl, sp
    add $06
    ccf
    dec a
    rst $20
    and $ff
    rlca
    pop af
    pop hl
    ret nc

    nop
    inc b
    nop
    add $00
    ld sp, hl
    nop
    jp nz, $1900

    nop
    ld hl, sp+$00
    ld e, $00
    ld sp, $1101
    ld bc, $099b
    nop
    nop
    add hl, bc
    nop
    add b
    nop
    inc bc
    nop
    jr nz, jr_02e_5be7

jr_02e_5be7:
    cp $00
    cp $00
    or $00
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
    ld c, h
    ld c, h
    rlca
    dec b
    rlca
    inc bc
    scf
    inc de
    ld a, l
    ld h, c
    ld h, b
    ld b, b
    ld a, d
    ld l, d
    ret nz

    nop
    or e
    nop
    ld a, [$fc00]
    nop
    xor $00
    sbc [hl]
    nop
    cp a
    nop
    push af
    nop
    rst $38
    nop
    rlca
    dec b
    ld a, $16
    db $fc
    ret z

    db $fd
    dec b
    ld [hl], b

jr_02e_5c20:
    ld h, b
    dec l
    jr z, jr_02e_5c20

    db $e4
    rst $18
    call nc, $00fa
    db $fd
    nop
    ld [hl], a
    nop
    ld a, [$9f00]
    nop
    rst $38
    nop
    dec de
    nop
    dec hl
    nop
    ret nc

    ret nc

    ld a, e
    ld a, a
    daa
    daa
    ld [hl], l
    ld d, $fc
    inc hl
    call nz, $0184
    inc bc
    inc h
    rlca
    cpl
    nop
    add b
    nop
    ret c

    nop
    jp hl


    nop
    call c, Call_02e_7b00
    nop
    db $fc
    nop
    ld hl, sp+$00
    adc $fe
    ld a, [de]
    ld hl, sp-$3b
    ldh [$9f], a
    ld a, c
    ld b, $b8
    dec c
    ld [de], a
    and a
    sub e
    rrca
    db $ec
    ld bc, $0700
    nop
    rra
    nop
    add [hl]
    nop
    ld b, a
    nop
    db $ed
    nop
    ld l, h
    nop
    inc de
    nop
    rst $38
    ret nz

    ld h, [hl]
    ld [bc], a
    db $f4
    inc b
    di
    inc bc
    call z, $5b05
    inc bc
    ld a, a
    add hl, hl
    rst $38
    inc h
    ccf
    nop
    db $fd
    inc bc
    ei
    rlca
    db $fc
    rrca
    ei
    jr nc, @+$01

    nop
    or $00
    db $db
    nop
    ei
    ld a, e
    ld sp, $0239
    adc [hl]
    ld hl, $ece5
    and $75
    inc bc
    call $3fbe
    add $84
    ld e, $c6
    cp a
    ld [hl], c
    rst $38
    ld a, [de]
    ldh [rNR24], a
    nop
    db $fc
    nop
    ld b, c
    nop
    add hl, sp
    nop
    dec bc
    rst $30
    ld a, a
    ld a, h
    ld a, a
    ccf
    ld a, a
    ld a, l
    sbc a
    sub e
    db $fc
    adc a
    di
    ld e, $bf
    db $fc
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
    rst $38
    jp c, $2f2d

    rra
    di
    rrca
    dec e
    jp $e182


    push bc
    or b
    rst $30
    add sp, -$19
    ld a, b
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
    rst $38
    rst $30
    rst $38
    or b
    cp $c0
    rst $38
    ld h, b
    rst $38
    sbc a
    ld l, a
    db $e3
    rra
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld l, b
    rst $30
    rst $38
    rst $38
    cp [hl]
    rst $38
    cpl
    rst $38
    ei
    inc a
    ld [hl], e
    call z, Call_02e_77f8
    ld hl, sp-$01
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
    rst $38
    inc sp
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ldh [$f9], a
    rlca
    rst $20
    rra
    rlca
    rst $38
    ld a, a
    sbc [hl]
    inc c
    di
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
    ld [hl], b
    nop
    ld e, a
    ld b, b
    ld a, [$f53d]
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f9
    rst $38
    ld a, h
    rrca
    ldh a, [rP1]
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
    inc bc
    ld bc, $0036
    ld d, b
    inc b
    and b
    ldh a, [$d8]
    cp h
    add sp, -$01
    ld d, a
    ld hl, sp-$64
    db $e3
    cp $00
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    ld [hl], e
    inc bc
    ld c, a
    inc bc
    inc sp
    nop
    db $fd
    nop
    db $76
    add b
    jr c, @-$3c

    ldh [rP1], a
    nop
    nop
    db $fc
    nop
    ld a, h
    add b
    rra
    ldh [rP1], a
    cp $00
    rst $28
    nop
    rst $20
    ld a, h
    ld a, h
    add [hl]
    add [hl]
    ld sp, hl
    ld sp, hl
    ld d, $16
    ld [hl], l
    ld [hl], c
    ldh [$60], a
    rst $00
    add e
    ld h, [hl]
    ld h, b
    add e
    nop
    ld a, c
    nop
    ld b, $00
    jp hl


    nop
    adc [hl]
    nop
    sbc a
    nop
    ld a, h
    nop
    rra
    add b
    db $76
    rst $38
    xor e
    xor e
    jp nz, $0ccb

    adc $7e
    cp $00
    ld e, b
    adc b
    xor $8c
    xor [hl]
    nop
    nop
    ld d, h
    nop
    inc [hl]
    nop
    ld sp, $0100
    nop
    and a
    nop
    ld de, $5100
    nop
    scf
    rla
    inc e
    inc e
    ld d, l
    ld d, l
    xor d
    xor d
    rst $30
    rst $30
    cp e
    ei
    rrca
    rst $38
    and h
    rst $38
    add sp, $00
    db $e3
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$0400], sp
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld h, a
    ld h, a
    ld [hl+], a
    jr nz, jr_02e_5e87

    ld l, c
    ld a, [c]
    ld a, [c]
    ld a, a
    rst $38
    dec sp
    rst $38
    inc de
    rst $38
    rlca
    nop
    sbc b
    nop
    rst $18
    nop
    sub [hl]
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc a
    rst $10
    rst $10
    rst $18
    rst $18
    ld a, a
    ld a, a
    ld a, [$f7fd]
    cp $f0
    db $f4
    ld a, c
    ld a, [$0070]
    jr z, jr_02e_5e4b

jr_02e_5e4b:
    jr nz, jr_02e_5e4d

jr_02e_5e4d:
    add b
    nop
    ld [bc], a
    nop
    ld bc, $0b00
    nop
    dec b
    nop
    ld a, h
    db $e4
    ld a, h
    ld [hl], h
    ld [hl-], a
    ret nz

    ld c, [hl]
    ret z

    ld bc, $1701
    rla
    ld c, c
    add hl, sp
    inc bc
    inc sp
    dec de
    nop
    adc e
    nop
    ccf
    nop
    scf
    nop
    cp $00
    add sp, $00
    add $00
    call z, $fb00
    inc l
    ld hl, sp+$65
    ld b, b
    ld c, [hl]
    rlca
    rlca
    ld de, $9813
    sbc a
    xor $ef
    rst $38
    rst $38

jr_02e_5e87:
    rst $38
    nop
    sbc [hl]
    nop
    or c
    nop
    ld hl, sp+$00
    db $ec
    nop
    ld h, b
    nop
    stop
    nop
    nop
    ld a, e
    swap c
    inc sp
    inc hl
    inc hl
    add d
    db $e3
    rrca
    ccf
    rst $00
    rst $38
    ld [bc], a
    rst $38
    ret nz

    rst $38
    inc [hl]
    nop
    call z, $dc00
    nop
    inc e
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    rst $30
    ld a, a
    ld a, h
    ld a, a
    ccf
    ld a, a
    ld a, l
    sbc a
    sub e
    db $fc
    adc a
    di
    ld e, $bf
    db $fc
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
    rst $38
    rst $30
    rst $38
    or b
    cp $c0
    rst $38
    ld h, b
    rst $38
    sbc a
    ld l, a
    db $e3
    rra
    rst $38
    rst $38
    rst $38
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
    rst $38
    dec bc
    rst $30
    ld a, a
    ld a, h
    ld a, a
    ccf
    ld a, a
    ld a, l
    sbc a
    sub e
    db $fc
    adc a
    di
    ld e, $bf
    db $fc
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
    rst $38
    ld l, b
    rst $30
    rst $38
    rst $38
    cp [hl]
    rst $38
    cpl
    rst $38
    ei
    inc a
    ld [hl], e
    call z, Call_02e_77f8
    ld hl, sp-$01
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
    rst $38
    rst $38
    ld a, e
    rst $28
    ld a, a
    call nz, $80fe
    call nc, $f8d4
    rst $30
    ld hl, sp-$21
    ldh a, [rTAC]
    ret nc

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$01
    cp $fe
    rst $38
    db $fc
    ld hl, sp-$71
    nop
    adc a
    nop
    db $d3
    nop
    ld sp, hl
    nop
    sbc a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld l, $00
    ld b, $00
    ld h, b
    cp $01
    ld a, c
    ld c, $9c
    nop
    ldh [rP1], a
    nop
    nop

jr_02e_5f81:
    ld de, $7102
    ld c, $80
    ld e, $00
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
    xor $00
    adc [hl]
    nop
    ld a, a
    dec d
    ld a, [$7e8d]
    add [hl]
    ld a, h
    inc b
    ret nc

    call nz, Call_02e_6ff8
    ldh a, [rIF]
    ldh a, [rNR22]
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$53
    inc de
    ld b, h
    dec [hl]
    ld [hl], e
    inc c
    db $f4
    inc bc
    ld a, c
    ld [bc], a
    sub b
    ld l, a
    ld b, b
    ccf
    db $10
    rrca
    inc l
    add b
    ld a, [bc]
    add b
    inc sp
    add b
    nop
    ld [$8600], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    ld a, h
    add [hl]
    add [hl]
    ld a, c
    ld sp, hl
    inc d
    ld d, a
    db $10
    rst $30
    jr nz, jr_02e_5f81

    inc de
    rst $28
    ld [bc], a
    db $f4
    add e
    nop
    ld a, c
    nop
    ld b, $00
    xor b
    nop
    ld [$0100], sp
    ret nz

    nop
    ldh [$03], a
    ld hl, sp+$04
    rst $38
    pop bc
    rst $38
    and e
    rst $38
    cp $fe
    xor b

Jump_02e_6000:
    db $fc
    db $fd
    db $fd
    xor e
    rst $38
    cp $ff
    nop
    nop
    pop bc
    pop bc
    or d
    or d
    rst $38
    cp $f7
    db $f4
    ld a, [$f4f8]
    db $f4
    ldh a, [$f0]
    ld bc, $c1ff
    rst $38
    ld h, b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    add b
    add b
    ret nz

    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $d8fd

    pop hl
    ld [$0ff7], sp
    ldh a, [rP1]
    rst $38
    nop
    db $fd
    nop
    rst $38
    ld [$02ff], sp
    nop
    ld e, $00
    ld [$0f00], sp
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $81cf
    dec bc
    inc bc
    ld a, a
    ld [de], a
    scf
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    inc b
    rst $38
    jr nc, jr_02e_6069

jr_02e_6069:
    db $f4
    nop
    add b
    nop
    ret z

    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld de, $00ff
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
    inc h
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    daa
    ld hl, sp+$07
    ld hl, sp-$73
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
    ld [bc], a
    ld a, c
    cp a
    rst $38
    ldh [$d1], a
    add h
    ld c, $00
    nop
    nop
    ld d, e
    nop
    ld a, a
    nop
    ld a, a
    nop
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
    xor h
    nop
    add b
    nop
    add b
    xor b
    rst $10
    ld a, a
    ldh a, [$c2]
    dec [hl]
    ld a, $00
    jr nc, jr_02e_60e1

jr_02e_60e1:
    ld d, e
    nop
    ld h, [hl]
    nop
    ld a, a
    nop
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
    cp h
    nop
    sbc c
    nop
    add b
    rst $38
    ccf
    rst $38
    cp $10
    db $e4
    rrca
    nop
    inc a
    nop
    pop af
    nop
    ld a, c
    nop
    ccf
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    jp $0e00


    nop
    add [hl]
    nop
    jp $e0ff


    rst $38
    nop
    ld a, e
    rlca
    ccf
    rst $38
    ld [hl], a
    ld a, a
    or e
    ld c, a
    ldh [$33], a
    db $fc
    ld b, b
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
    rst $38
    ld e, $60
    ld l, a
    ld h, b
    ld e, a
    ldh [$7f], a
    ret nz

    sbc a
    ret nz

    sbc a
    ret nz

    rst $38
    nop
    ld a, a
    nop
    nop
    pop af
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    add b
    rst $38
    nop
    ld a, a
    nop
    jr nc, @+$09

    or b
    rlca
    ret nc

    ld b, $f1
    inc b
    ld hl, sp+$01
    db $fc
    ld bc, $fe00
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld c, $00
    rlca
    nop
    inc bc
    inc hl
    ld e, h
    rlca
    ld hl, sp+$0b
    call nc, $3843
    ld b, a
    jr nc, jr_02e_6189

    ldh [$1f], a
    add b
    dec a
    ret nz

    nop
    rst $38

jr_02e_6189:
    nop
    cp $00
    db $f4
    nop
    cp h
    nop
    cp b
    nop
    ld hl, sp+$00
    ldh [rP1], a
    jp nz, $00ff

    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $28
    nop
    rst $18

jr_02e_61a2:
    nop
    ld a, e
    nop
    rra
    nop
    nop
    stop
    nop
    nop
    stop
    jr nc, jr_02e_61b0

jr_02e_61b0:
    stop
    jr nz, jr_02e_61b4

jr_02e_61b4:
    add h
    nop
    ldh [$e8], a
    rlca
    ld [hl], d
    ld bc, $0041
    rlca
    nop
    db $fc
    nop
    and b
    nop
    pop bc
    nop
    daa
    nop
    nop
    ccf
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    cp a
    nop
    sbc $03
    rst $30
    jr c, jr_02e_61a2

    db $fc
    inc bc
    dec de
    inc b
    ld a, [hl]
    ld [bc], a
    ldh a, [rP1]
    ld h, d
    sbc b
    inc bc
    rst $38
    nop
    ld hl, sp+$00
    ret nz

    nop
    ldh [rP1], a
    ldh [rSB], a
    ret nz

    rrca
    nop
    rlca
    nop
    nop
    nop
    db $fc
    rst $38
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
    ld hl, sp-$08
    db $f4
    db $f4
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $84ff
    rst $38
    ld a, [c]
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    or b
    or b
    add sp, -$18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    ld b, d
    rst $38
    inc bc
    rst $38
    push hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push de
    push de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    jr c, @+$01

    ldh [rIE], a
    dec b
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    add c
    add c
    ld h, e
    ld h, e
    rst $38
    rst $38
    cp e
    rst $38
    ld e, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    xor c
    rst $38
    pop bc
    cp $87
    cp $c1
    cp $00
    nop
    ld d, $16
    xor e
    xor e
    db $f4
    db $f4
    xor b
    xor b
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    adc a
    ldh a, [rIE]
    nop
    cp a
    nop
    cp a
    nop
    cp e
    nop
    xor l
    nop
    sbc l
    nop
    sbc l
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld d, d
    nop
    ld h, d
    nop
    ld h, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $28
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    stop
    nop
    nop
    ld [bc], a
    nop
    add b
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld c, a
    nop
    rst $00
    nop
    jp $c100


    nop
    ld [hl], c
    nop
    nop
    nop
    nop
    jr nc, jr_02e_62ec

jr_02e_62ec:
    jr nc, jr_02e_62ee

jr_02e_62ee:
    or b
    nop
    jr c, jr_02e_62f2

jr_02e_62f2:
    inc a
    nop
    ld a, $00
    adc [hl]
    ccf
    nop
    cp a
    nop
    pop af
    inc b
    add e
    nop
    add c
    nop
    or $00
    ld a, e
    inc b
    inc hl
    inc c
    nop
    rst $08
    nop
    ld c, a
    nop
    rra
    nop
    ld a, a
    nop
    ld a, a
    nop
    rrca
    nop
    add [hl]
    nop
    call c, $00ff
    ccf
    nop
    ldh a, [rDIV]
    ldh [rP1], a
    ldh [rSB], a
    ldh a, [$03]
    ld [hl], e
    dec b
    db $fd
    ld bc, $ff00
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
    adc a
    nop
    inc bc
    rst $38
    nop
    rst $38
    nop

jr_02e_633b:
    rst $38
    nop
    rst $08
    nop
    rst $28
    nop
    rst $18
    nop
    ld a, e
    nop
    rra
    nop
    nop
    stop
    nop
    nop
    stop
    jr nc, jr_02e_6350

jr_02e_6350:
    stop
    jr nz, jr_02e_6354

jr_02e_6354:
    add h
    nop
    ldh [$fe], a
    ld bc, $01fe
    ldh a, [rTAC]
    ldh a, [rSB]
    ldh [rP1], a
    pop hl
    nop
    reti


    nop
    sbc l
    nop
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld e, $00
    ld h, $00
    ld h, d
    dec a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    halt
    ld [hl], a
    nop
    di
    nop
    db $f4
    nop
    nop
    jp nz, $8000

    nop
    add b
    nop
    add b
    nop
    adc c
    nop
    adc b
    nop
    inc c
    nop
    rrca
    ld a, [hl]
    nop
    ld c, a
    jr nz, jr_02e_633b

    ld h, b
    cp a
    ld b, b
    rra
    ret nz

    sbc a
    ld b, b
    rst $38
    nop
    ld a, a
    nop
    nop
    pop af
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    add b
    inc sp
    nop
    sbc [hl]
    ld bc, $031c
    jr c, jr_02e_63c6

    ld [hl], b
    rrca
    and b
    rra
    ld b, b
    ccf
    ret nz

jr_02e_63c6:
    ld a, a
    nop
    call z, $e000
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    jr nz, @+$01

    dec b
    cp a
    inc d
    cp $04
    ld e, h
    inc d
    cp l
    nop
    ld a, h
    ld [de], a
    sbc d
    inc b
    inc d
    nop
    nop
    ld b, b
    nop
    ld bc, $a300
    nop
    ld b, d
    nop
    add e
    nop
    ld h, l
    nop
    db $eb
    nop
    cp a
    cp e
    rst $18
    rst $18
    cp c
    cp c
    inc [hl]
    inc b
    db $fc
    cp h
    ld a, a
    ccf
    ld e, $16
    rst $38
    rst $38
    ld b, h
    nop
    jr nz, jr_02e_640b

jr_02e_640b:
    ld b, [hl]
    nop
    ei
    nop
    ld b, e
    nop
    ret nz

    nop
    jp hl


    nop
    nop
    nop
    jr nz, @+$01

    ld bc, $04bf
    cp $04
    ld a, h
    inc d
    db $fd
    nop
    db $fc
    ld [de], a
    jp c, $d404

    nop
    nop
    ld b, b
    nop
    ld bc, $8300
    nop
    ld [bc], a
    nop
    inc bc
    nop
    dec h
    nop
    dec hl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $18
    nop
    ld e, a
    nop
    ld e, a
    nop
    rst $28
    nop
    db $eb
    nop
    cp $80
    sub $80
    push de
    nop
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    stop
    inc d
    add b
    sub l
    add b
    xor c
    nop
    ld a, [hl+]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$f0ff], a
    rst $38
    ld hl, sp-$09
    ldh a, [$fe]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$f0ea], a
    ldh a, [$f8]
    ld hl, sp-$10
    ld sp, hl
    push de
    nop
    sub $80
    cp $00
    db $eb
    nop
    rst $28
    nop
    ld e, a
    nop
    ld e, a
    nop
    rst $18
    nop
    nop
    ld a, [hl+]
    add b
    xor c
    nop
    dec d
    nop
    inc d
    nop
    stop
    and b
    nop
    and b
    nop
    and b
    db $fd
    nop
    rst $38
    nop
    ld a, h
    nop
    ld l, b
    nop
    ld c, b
    nop
    ld e, c
    nop
    ld a, c
    nop
    ld e, $00
    nop
    inc bc
    nop
    ld bc, $8300
    nop
    sub a
    nop
    or a
    nop
    and [hl]
    nop
    add [hl]
    nop
    pop hl
    db $fd
    nop
    rst $38
    nop
    ld a, h
    nop
    ld l, b
    nop
    ld c, b
    nop
    ld e, c
    nop
    ld a, c
    nop
    ld e, $00
    nop
    inc bc
    nop
    ld bc, $8300
    nop
    sub a
    nop
    or a
    nop
    and [hl]
    nop
    add [hl]
    nop
    pop hl
    ld [hl], a
    nop
    rrca
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, d
    nop
    push de
    nop
    db $fd
    nop
    inc e
    nop
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add l
    nop
    ld a, [hl+]
    nop
    ld [bc], a
    nop
    db $e3
    rst $28
    nop
    rst $18
    nop
    sub [hl]
    nop
    ld b, $00
    ld b, $00
    ld d, l
    nop
    ld a, l
    nop
    inc e
    nop
    nop
    add hl, de
    nop
    add hl, sp
    nop
    ld a, c
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    xor d
    nop
    add d
    nop
    db $e3
    ld a, a
    nop
    rra
    nop
    ld d, h
    nop
    inc b
    nop
    inc b
    nop
    ld d, l
    nop
    ld a, c
    nop
    inc e
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ei
    nop
    ei
    nop
    ei
    nop
    xor d
    nop
    add [hl]
    nop
    db $e3
    cp a
    nop
    rst $38
    nop
    rst $30
    nop
    push af
    nop
    ld a, e
    nop
    ld [hl], e
    nop
    ld a, c
    nop
    ld a, h
    nop
    nop
    ld c, h
    nop
    inc c
    nop
    ld [$0a00], sp
    nop
    add h
    nop
    adc h
    nop
    add [hl]
    nop
    add e
    rst $38
    nop
    db $ed
    nop
    db $eb
    nop
    cp $00
    call c, $d100
    nop
    ld a, e
    nop
    rra
    nop
    nop
    ld c, $00
    ld e, $00
    inc e
    nop
    add hl, de
    nop
    inc sp
    nop
    ld l, $00
    add h
    nop
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    rst $38
    inc bc
    ld a, [$fe02]
    ld b, $fc
    nop
    rst $20
    jr nz, jr_02e_65a8

jr_02e_65a8:
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld bc, $1f00
    nop
    rra
    nop
    ld e, $ce
    cp a
    rst $38
    cp l
    pop hl
    cp b
    ret c

    cp [hl]
    jp nz, $ff3f

    ld a, h
    ret c

    sbc c
    add hl, bc
    ld sp, $0000
    nop
    ld e, $00
    daa
    nop
    dec a
    nop
    nop
    nop
    daa
    nop
    or $00
    or e
    ld de, $30f5
    rst $38
    nop
    dec e
    nop
    rst $20
    nop
    ld a, a
    nop
    ld [hl-], a
    nop
    stop
    xor $00
    rst $08
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
    ld d, l
    sbc $e5
    ld [hl], c
    rst $10
    ld l, h
    add a
    sub h
    ld a, [hl+]
    push de
    nop
    ld b, b
    nop
    ld h, $80
    rst $38
    ld d, l
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh [$1f], a
    ld l, a
    or a
    and [hl]
    cp e
    xor [hl]
    sub h
    jp $2a9c


    pop de
    sbc a
    nop
    and c
    nop
    rlca
    nop
    rst $18
    daa
    rst $18
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rNR34], a
    nop
    ld hl, sp-$05
    cp $ea
    ld a, l
    jr z, @-$09

    ld b, c
    inc l
    rrca
    ld b, b
    ld [hl], h
    nop
    call $1a00
    nop
    rst $38
    ld a, [$60ff]
    rst $38
    jr nz, @+$01

    nop
    ldh [rNR10], a
    ld b, b
    adc e
    nop
    scf
    nop
    db $ed
    db $fd
    ld l, l
    call z, $3f36
    add b
    ld a, c
    ld [$003f], sp
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, c
    rst $38
    nop
    ldh [rP1], a
    add b
    ld c, $00
    pop hl
    nop
    adc e
    nop
    sbc d
    nop
    inc d
    ld e, a
    ldh [$fe], a
    nop
    db $fc
    nop
    ei
    nop
    add a
    nop
    cp a
    nop
    rst $30
    nop
    sbc a
    nop
    ldh [rSCX], a
    add b
    rlca
    nop
    rlca
    nop
    inc c
    nop
    ld hl, sp+$00
    pop bc
    nop
    ld [$6200], sp
    ld e, a
    nop
    ld e, e
    nop
    db $db
    nop
    sbc e
    nop
    cp e
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    nop
    and b
    nop
    and h
    nop
    inc h
    nop
    ld l, h
    nop
    call z, RST_00
    nop
    xor b
    nop
    jr z, jr_02e_66f8

    ld b, b
    or $f0
    ld a, b
    ld a, b
    rst $20
    rst $00
    ld e, a
    ld c, [hl]
    ld a, a
    db $76
    ld a, [hl-]
    ld [bc], a
    db $e4
    inc b
    cp a
    nop
    rrca
    nop
    add a
    nop
    jr c, jr_02e_66cf

jr_02e_66cf:
    or c
    nop
    adc c
    nop
    db $fd
    nop
    ei
    nop
    sbc a
    inc bc
    push af
    push bc
    rst $38
    add b
    dec [hl]
    nop
    ld h, c
    nop
    ld a, a
    inc b
    ld [hl], e
    inc de
    dec de
    dec bc
    db $fc
    nop
    ld a, [hl-]
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    db $ec
    nop
    db $f4
    nop
    cp l

jr_02e_66f8:
    or c
    sbc b
    sbc c
    ret c

    sbc c
    ld [$9809], sp
    jr jr_02e_673e

    dec a
    cp h
    ccf
    xor c
    cp a
    ld c, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    or $00
    rst $20
    nop
    jp nz, $c000

    nop
    ld b, b
    nop
    adc h
    adc [hl]
    ld b, d
    ld d, a
    ld l, b
    ld l, e
    inc h
    db $fd
    ld [hl], $bf
    inc de
    rst $18
    inc sp
    rst $38
    ld h, e
    rst $38
    ld [hl], c
    nop
    xor b
    nop
    sub h
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    jr nz, jr_02e_6733

jr_02e_6733:
    nop
    nop
    nop
    nop
    inc de
    rlca
    db $e3
    rst $08
    sub e
    sbc a
    ld [hl-], a

jr_02e_673e:
    ld [hl], $90
    sub [hl]
    add hl, de
    rst $38
    inc bc
    cp $00
    rst $38
    ld hl, sp+$00
    jr nc, jr_02e_674b

jr_02e_674b:
    ld h, b
    nop
    ret


    nop
    ld l, c
    nop
    nop
    nop
    ld bc, $0000
    nop
    rst $30
    rst $30
    reti


    reti


    db $eb
    dec hl
    sub e
    sub e
    ld [hl], a
    ld [hl], a
    ccf
    dec a
    sbc [hl]
    sbc a
    pop hl
    cp $08
    nop
    ld h, $00
    call nc, Call_02e_6c00
    nop
    adc b
    nop
    jp nz, Jump_02e_6000

    nop
    ld bc, $2000
    rst $38
    ld bc, $04bf
    cp $04
    ld a, h
    inc d
    db $fd
    nop
    db $fc
    ld [de], a
    jp c, $d404

    nop
    nop
    ld b, b
    nop
    ld bc, $8300
    nop
    ld [bc], a
    nop
    inc bc
    nop
    dec h
    nop
    dec hl
    nop
    cp $7e
    adc a
    adc h
    rst $08
    call z, Call_02e_4060
    db $e4
    add h
    adc d
    ld [bc], a
    sbc l
    ld de, $21a3
    add c
    nop
    ld [hl], e
    nop
    inc sp
    nop
    cp a
    nop
    ld a, e
    nop
    db $fd
    nop
    xor $00
    sbc $00
    or e
    ld de, $30f5
    rst $38
    nop
    dec e
    nop
    rst $20
    nop
    ld a, a
    nop
    ld [hl-], a
    nop
    stop
    xor $00
    rst $08
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
    cp d
    or d
    sbc d
    sbc d
    res 3, d
    dec h
    dec a
    or $36
    sub e
    ld [de], a
    or h
    or a
    ld l, l
    rst $28
    ld c, l
    nop
    ld h, l
    nop
    ld h, l
    nop
    jp nz, $c900

    nop
    db $ed
    nop
    ld c, b
    nop
    stop
    ld c, a
    nop
    ccf
    ld c, a
    inc e
    cp h
    add hl, bc
    ret c

    inc bc
    pop bc
    dec c
    nop
    scf
    inc c
    push hl
    dec c
    ret nz

    ccf
    add b
    rrca
    ld b, b
    rra
    jr nz, jr_02e_681e

    jr nz, jr_02e_682e

    add b
    ld a, a
    nop
    ldh a, [rNR12]
    ldh [$ce], a
    nop
    jr c, jr_02e_681b

jr_02e_681b:
    rst $38
    ld h, b
    pop af

jr_02e_681e:
    nop
    add e
    nop
    dec bc
    nop
    ccf
    inc bc
    rst $08
    add [hl]
    nop
    ld sp, $df00
    nop
    ei
    nop

jr_02e_682e:
    xor $00
    db $fc
    nop
    db $f4
    nop
    jp $3f00


    ld a, c
    nop
    di
    ld bc, $01af
    ld a, [hl]
    nop
    rst $30
    nop
    rst $20
    nop
    jp $8780


    nop
    nop
    sub $00
    adc l
    nop
    ld d, a
    nop
    add a
    nop
    ld [$7800], sp
    nop
    db $fc
    nop
    ld hl, sp-$09
    ret nz

    sbc $00
    stop
    ld [hl], c
    nop
    ld h, d
    nop
    adc $00
    rra
    nop
    ld a, a
    ld h, d
    nop
    ret z

    nop
    pop hl
    nop
    rst $28
    nop
    adc [hl]
    nop
    sbc l
    nop
    ld sp, $f300
    add b
    rlca
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    or $00
    or $00
    rst $38
    ld b, b
    rst $18
    nop
    sbc e
    add b
    nop
    call nz, $8900
    nop
    adc e
    nop
    dec de
    nop
    add hl, hl
    nop
    ld h, b
    nop
    ldh [rDIV], a
    ldh [$f7], a
    nop
    and a
    nop
    ld [hl], d
    nop
    ld h, e
    ld bc, $02e4
    and $03
    db $f4
    ld bc, $05cc
    nop
    adc b
    nop
    jp c, $9f00

    nop
    cp h
    ld bc, $003c
    jr c, @+$04

    ld [$3002], sp
    di
    sub e
    or h
    or h
    sub d
    sbc d
    reti


    db $dd
    xor b
    xor [hl]
    ret z

    rst $18
    and e
    cp a
    nop
    rst $38
    ld l, h
    nop
    ld c, e
    nop
    ld h, l
    nop
    ld [hl+], a
    nop
    ld d, c
    nop
    jr nz, jr_02e_68d3

jr_02e_68d3:
    ld b, b
    nop
    nop
    nop
    ld h, c
    ld a, e
    ld hl, sp-$01
    ret z

    rst $28
    db $10
    ccf
    add c
    db $fd
    add hl, de
    ld sp, hl
    ld [bc], a
    ld a, [c]
    nop
    ret nz

    add h
    nop
    nop
    nop
    stop
    ret nz

    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    dec c
    nop
    ccf
    pop hl
    rst $38
    call z, $94fe
    or $94
    call nc, $c080
    nop
    add b
    add hl, bc
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    ld bc, $0900
    nop
    dec hl
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    add [hl]
    rst $38
    add d
    db $d3
    add b
    add b
    nop
    nop
    ld d, b
    inc b
    rra
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $76
    rst $38
    ld h, h
    db $fc
    inc e
    add b
    ld [bc], a
    nop
    add hl, sp
    nop
    inc e
    nop
    dec sp
    inc b
    cp a
    nop
    nop
    nop
    nop
    inc bc
    inc e
    ld h, e
    add hl, bc
    or $09
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    cp c
    inc l
    ld b, b
    ld c, c
    ld bc, $00ac
    ld d, c
    nop
    xor c
    jr z, @+$46

    inc b
    sub [hl]
    ld d, $06
    ld b, b
    ccf
    add b
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    ei
    nop
    ld l, c
    add b
    ld e, $ce
    cp a
    rst $38
    cp l
    pop hl
    cp b
    ret c

    cp [hl]
    jp nz, $ff3f

    ld a, h
    ret c

    sbc c
    add hl, bc
    ld sp, $0000
    nop
    ld e, $00
    daa
    nop
    dec a
    nop
    nop
    nop
    daa
    nop
    or $00
    cp e
    dec hl
    ld l, a
    cpl
    ld a, [hl]
    xor [hl]
    ld [hl], a
    or $d3
    or e
    adc l
    or e
    adc $1f
    jr z, jr_02e_69e6

    call nc, $d000
    nop
    ld d, c
    nop
    add hl, bc
    nop
    ld c, h
    nop
    ld c, h
    nop
    ldh [rP1], a
    ret nz

    nop
    ld b, b
    ld b, b
    or $f0
    ld a, b
    ld a, b
    rst $20
    rst $00
    ld e, a
    ld c, [hl]
    ld a, a
    db $76
    ld a, [hl-]
    ld [bc], a
    db $e4
    inc b
    cp a
    nop
    rrca
    nop
    add a
    nop
    jr c, jr_02e_69cf

jr_02e_69cf:
    or c
    nop
    adc c
    nop
    db $fd
    nop
    ei
    nop
    ld b, b
    ld b, b
    or $f0
    ld a, b
    ld a, b
    rst $20
    rst $00
    ld e, a
    ld c, [hl]
    ld a, a
    db $76
    ld a, [hl-]
    ld [bc], a
    db $e4

jr_02e_69e6:
    inc b
    cp a
    nop
    rrca
    nop
    add a
    nop
    jr c, jr_02e_69ef

jr_02e_69ef:
    or c
    nop
    adc c
    nop
    db $fd
    nop
    ei
    nop
    add c
    ld c, l
    db $10
    jp hl


    nop
    ld e, e
    add b
    rst $30
    jr z, @+$01

    db $10
    ld a, [hl]
    adc b
    xor $34
    rst $30
    ld [hl-], a
    add b
    ld d, $00
    and h
    nop
    ld [$0000], sp
    nop
    add c
    nop
    ld de, $0800
    nop
    inc [hl]
    and h
    dec a
    ld sp, $ded8
    ld d, a
    rst $18
    or h
    cp $00
    ld a, a
    and h
    cp $12
    cp $40
    rrca
    ret nz

    ld b, $21
    nop
    jr nz, jr_02e_6a2f

jr_02e_6a2f:
    ld bc, $8000
    nop

jr_02e_6a33:
    ld bc, $0100
    nop
    db $76
    dec d
    jp nc, $085f

    ld a, a
    xor h
    rst $38
    ld [hl+], a
    rst $30
    ld e, b
    db $fd
    inc c
    db $ec
    adc h
    xor a
    ld a, [bc]
    add b
    jr nz, jr_02e_6a4b

jr_02e_6a4b:
    add b
    nop
    nop
    nop
    ld [$0200], sp
    nop
    inc de
    nop
    ld d, b
    nop
    ld a, l
    pop af
    sub a
    pop af
    ld [$24fb], sp
    db $fd
    ld [hl-], a
    rst $38
    add b
    rst $28
    ret z

    ei
    ld [c], a
    ld a, [c]
    nop
    inc bc
    inc c
    ld bc, $0004
    ld [bc], a
    nop
    nop
    nop
    stop
    inc b
    nop
    dec c
    nop
    sbc a
    rlca
    or c
    dec d
    db $fd
    ld e, l
    ld [bc], a
    sbc [hl]
    dec de
    rst $38
    or d
    rst $38
    nop

jr_02e_6a84:
    rst $38
    jr jr_02e_6a84

    nop
    ldh [$0a], a
    ret nz

    ld [bc], a
    nop
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ldh a, [$0b]
    scf
    ld d, [hl]
    pop af
    rst $38
    ld c, b
    ld a, c
    ld b, h
    sbc $a4
    db $fd
    ld b, h
    ld a, [c]
    ld [bc], a
    sbc [hl]
    inc b
    jr nz, jr_02e_6a33

    nop
    nop
    nop
    add [hl]
    nop
    ld hl, $0200
    nop
    dec c
    nop
    ld h, c
    nop
    or b
    rst $38
    dec l
    db $fd
    inc hl
    pop hl
    add h
    add h
    ld l, e
    ld h, d
    or e
    inc sp
    rla
    inc d
    inc a
    inc e
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    dec bc
    ld [hl], b
    sbc l
    nop
    call z, $eb00
    nop
    db $e3
    nop
    inc d
    inc d
    ld h, [hl]
    inc b
    ld c, a
    ld c, $ef
    rrca
    adc c
    add hl, bc
    ld a, l
    ld [hl], l
    cpl
    daa
    xor e
    dec hl
    ld [$f8e3], sp
    inc bc
    ldh a, [rSB]
    ldh a, [rP1]
    or $00
    adc d

jr_02e_6af2:
    nop
    ret c

    nop
    call nc, $3a00
    nop
    inc a
    add b
    daa
    jr @-$13

    add hl, bc
    sub e
    inc bc
    or d
    inc sp
    ld sp, $9111
    sub e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    ld [c], a
    ld a, h
    add b
    ld c, h
    add b
    xor $00
    ld l, h
    nop
    ei
    inc b
    cp h
    ld b, e
    rst $38
    nop
    cp $00
    ei
    ld bc, $81f7
    ld a, c
    ret nz

    or b
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$f00e]
    ld c, $70
    rrca
    jr nc, jr_02e_6b45

    jr nc, @+$01

    nop
    rst $30
    add hl, bc
    db $fd
    ld bc, $04b4
    db $fc
    cp h
    rst $38
    cp a
    sbc $d6

jr_02e_6b45:
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $02
    db $fc
    ld a, e
    add b
    ld b, e
    nop
    ld b, b
    nop
    add hl, hl
    nop
    nop
    nop
    dec a
    dec c
    or l
    dec h
    sbc e
    add hl, bc
    ld b, b
    ld b, b
    add hl, sp
    jr nc, jr_02e_6af2

    db $10
    dec bc
    ld [$0828], sp
    ld a, [c]
    nop
    ld e, d
    add b
    or $00
    cp a
    nop
    rst $08
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    inc c
    adc [hl]
    ld [bc], a
    rla
    ld l, b
    ld l, e
    inc h
    ld a, l
    inc h
    ccf
    ld [$384f], sp
    ld a, e
    jr nc, jr_02e_6bb9

    ld [hl], c
    nop
    add sp, $00
    sub h
    nop
    add d
    nop
    ret nz

    nop
    or b
    nop
    add h
    nop
    call $9f00
    inc bc
    push af
    push bc
    rst $38
    add b
    dec [hl]
    nop
    ld h, c
    nop
    ld a, a
    inc b
    ld [hl], e
    inc de
    dec de
    dec bc
    db $fc
    nop
    ld a, [hl-]
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    db $ec
    nop
    db $f4
    nop
    cp d
    or d

jr_02e_6bb9:
    sbc d
    sbc d
    res 3, d
    dec h
    dec a
    or $36
    sub e
    ld [de], a
    or h
    or a
    ld l, l
    rst $28
    ld c, l
    nop
    ld h, l
    nop
    ld h, l
    nop
    jp nz, $c900

    nop
    db $ed
    nop
    ld c, b
    nop
    stop
    ld b, b
    ld b, b
    or $f0
    ld a, b
    ld a, b
    rst $20
    rst $00
    ld e, a
    ld c, [hl]
    ld a, a
    db $76
    ld a, [hl-]
    ld [bc], a
    db $e4
    inc b
    cp a
    nop
    rrca
    nop
    add a
    nop
    jr c, jr_02e_6bef

jr_02e_6bef:
    or c
    nop
    adc c
    nop
    db $fd
    nop
    ei
    nop
    jr nz, @+$01

    dec b
    cp a
    inc d
    cp $04
    ld e, h
    inc d

Call_02e_6c00:
    cp l
    nop
    ld a, h
    ld [de], a
    sbc d
    inc b
    inc d
    nop
    nop
    ld b, b
    nop
    ld bc, $a300
    nop
    ld b, d
    nop
    add e
    nop
    ld h, l
    nop
    db $eb
    nop
    ld h, [hl]
    db $fd
    jp z, $0a8b

    db $eb
    ld c, $cf
    ld d, $97
    nop
    db $dd
    adc h
    db $ec
    adc b
    xor c
    ld [bc], a
    nop
    ld [hl], h
    nop
    inc d
    nop
    jr nc, jr_02e_6c2f

jr_02e_6c2f:
    ld l, b
    nop
    ld [hl+], a
    nop
    inc de
    nop
    ld d, [hl]
    nop
    ld a, h
    cp $56
    ld b, a
    add sp, $6b
    inc h
    ld a, l
    ld h, $3f
    ld [$205f], sp
    rst $38

jr_02e_6c45:
    jr nc, jr_02e_6c45

    ld bc, $b800
    nop
    sub h
    nop
    add d
    nop
    ret nz

    nop
    and b
    nop
    nop
    nop
    ld bc, $6000
    ld sp, hl
    add c
    push af

jr_02e_6c5b:
    sub l
    push af
    db $10

jr_02e_6c5e:
    sub h
    jr jr_02e_6c5e

    jr nc, jr_02e_6c5b

    nop
    add hl, de
    ldh a, [$f9]
    ld b, $00
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld l, e
    nop
    ld [bc], a
    nop
    rlca
    nop
    and $00
    ld b, $00
    add d
    rst $38
    scf
    cp $49
    cp a
    ld c, b
    ld a, c
    call nz, $e4de
    db $fd
    add $f2
    ld b, $9e
    nop
    nop
    ld bc, $4000
    nop
    add [hl]
    nop
    ld hl, $0200
    nop
    dec c
    nop
    ld h, c
    nop
    ld a, [c]
    di
    ld [hl], a
    db $76
    ld sp, hl
    cp a
    ld c, b
    ld a, c
    call nz, $e4de
    db $fd
    add [hl]
    or d
    ld b, $bf
    inc c
    nop
    adc c
    nop
    ld b, b
    nop
    add [hl]
    nop
    ld hl, $0200
    nop

jr_02e_6cb3:
    ld c, l
    nop
    ld b, b
    nop
    inc de
    rra
    ld h, [hl]
    ld a, a
    add d
    db $d3
    add h
    add h
    ld [hl+], a
    ld [hl+], a
    ret nc

    ret nz

    jp c, $2f98

    cpl
    ldh [rP1], a
    add b
    nop
    nop
    inc l
    nop
    ld a, e
    db $dd
    nop
    ccf
    nop
    ld h, a
    nop
    ret nc

    nop
    ret z

    ld hl, sp+$66
    cp $41
    sla c
    ld hl, $4040
    nop
    nop
    ld e, c
    add hl, de
    db $f4
    db $f4
    rlca
    nop
    ld bc, $0000
    inc [hl]
    nop
    sbc $80
    ccf
    ldh a, [rIF]
    ldh [rTMA], a
    dec bc
    nop

jr_02e_6cf7:
    ld [hl], d
    ld [hl], e
    cp $ff
    add a
    add a
    add hl, de
    add hl, de
    ld a, a
    ld c, b
    db $fc
    db $fc
    ccf
    rra

jr_02e_6d05:
    sbc c
    sub b
    adc h
    nop
    nop
    nop
    ld a, b
    nop
    and $00
    or a
    nop
    inc bc
    nop
    ldh [rP1], a
    ld l, a
    nop
    inc [hl]
    ret nz

    ld [hl], $c0
    jr c, jr_02e_6d05

    cp e
    db $e3
    ld e, a
    ld h, [hl]
    ld e, a
    db $76
    ld e, $32
    cp $40
    rrca
    jr nc, jr_02e_6d39

    jr nc, @+$09

    db $10
    inc c
    db $10
    add c
    jr jr_02e_6cb3

    ld [$08c5], sp
    add a
    jr c, jr_02e_6cf7

    cp e

jr_02e_6d39:
    rst $18
    rst $18
    cp c
    cp c
    inc [hl]
    inc b
    db $fc
    cp h
    ld a, a
    ccf
    ld e, $16
    rst $38
    rst $38
    ld b, h
    nop
    jr nz, jr_02e_6d4b

jr_02e_6d4b:
    ld b, [hl]
    nop
    ei
    nop
    ld b, e
    nop
    ret nz

    nop
    jp hl


    nop
    nop
    nop
    cp a
    cp e
    rst $18
    rst $18
    cp c
    cp c
    inc [hl]
    inc b
    db $fc
    cp h
    ld a, a
    ccf
    ld e, $16
    rst $38
    rst $38
    ld b, h
    nop
    jr nz, jr_02e_6d6b

jr_02e_6d6b:
    ld b, [hl]
    nop
    ei
    nop
    ld b, e
    nop
    ret nz

    nop
    jp hl


    nop
    nop
    nop
    cp a
    cp e
    rst $18
    rst $18
    cp c
    cp c
    inc [hl]
    inc b
    db $fc
    cp h
    ld a, a
    ccf
    ld e, $16
    rst $38
    rst $38
    ld b, h
    nop
    jr nz, jr_02e_6d8b

jr_02e_6d8b:
    ld b, [hl]
    nop
    ei
    nop
    ld b, e
    nop
    ret nz

    nop
    jp hl


    nop
    nop
    nop
    ld h, c
    ld a, e
    ld hl, sp-$01
    ret z

    rst $28
    db $10
    ccf
    add c
    db $fd
    add hl, de
    ld sp, hl
    ld [bc], a
    ld a, [c]
    nop
    ret nz

    add h
    nop
    nop
    nop
    stop
    ret nz

    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    dec c
    nop
    ccf
    pop hl
    rst $38
    call z, $94fe
    or $94
    call nc, $c080
    nop
    add b
    ld a, h
    nop
    cp a
    nop
    nop
    nop
    nop
    ld bc, $0900
    nop
    dec hl
    nop
    ccf
    nop
    ld a, a
    nop
    add e
    ccf
    ld a, a
    db $e3
    rst $38
    add [hl]
    rst $38
    add d
    db $d3
    add b
    add b
    nop
    nop
    ld e, a
    nop
    cp a
    nop
    di
    inc c
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    ld a, a
    nop
    rst $38
    nop
    ldh [$3f], a
    ld a, a
    rst $38
    rst $38
    db $76
    rst $38
    ld h, h
    db $fc
    nop
    add b
    inc bc
    nop
    dec c
    nop
    rst $18
    nop
    db $fc
    inc bc
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, [c]
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    adc [hl]
    ld [bc], a
    rla
    ld l, b
    ld l, e
    inc h
    ld a, l
    inc h
    ccf
    ld [$384f], sp
    ld a, e
    jr nc, jr_02e_6e59

    ld [hl], c
    nop
    add sp, $00
    sub h
    nop
    add d
    nop
    ret nz

    nop
    or b
    nop
    add h
    nop
    call $0200
    nop
    rra
    nop
    ld [hl], l
    ld [bc], a
    cp h
    inc bc
    ld a, h
    inc bc
    rst $38
    nop
    ld e, $e1
    nop
    rst $38
    nop
    db $fd
    inc bc
    ei
    rlca
    adc a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_02e_6e59:
    ei
    inc b
    di
    inc c
    pop af
    ld c, $30
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, $e1
    ld hl, sp+$07
    inc bc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add b
    ld a, a
    inc bc
    rst $38
    ld e, $ff
    db $fd
    rst $38
    sbc $ff
    ld l, [hl]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    call z, $94fe
    or $94
    call nc, $c080
    nop
    add b
    rrca
    nop
    ccf
    nop
    nop
    nop
    nop
    ld bc, $0900
    nop
    dec hl
    nop
    ccf
    nop
    ld a, a
    nop
    ld hl, sp+$07
    rst $20
    db $76
    rst $38

jr_02e_6ed9:
    ld h, h
    db $fc
    nop
    add b
    nop
    nop
    ccf
    nop
    ld a, a
    nop
    cp $01
    ld hl, sp+$07
    nop
    nop
    nop
    inc bc
    nop
    ld a, a
    nop
    rst $38
    nop
    ldh [$1f], a
    sbc a
    ld a, a
    ld a, a
    rst $38
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
    rra
    rst $38
    rst $38
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_6f2c:
    rst $38
    rst $38
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
    rst $30
    jr nz, jr_02e_6ed9

    inc de
    rst $28
    ld [bc], a
    db $f4
    db $76
    rst $38
    xor e
    xor e
    jp nz, $0ccb

    adc $08
    nop
    ld bc, $00c0
    ldh [$03], a
    ld hl, sp+$00
    nop
    ld d, h
    nop
    inc [hl]
    nop
    ld sp, $0000
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    db $eb
    jr z, jr_02e_6f2c

    db $10
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb

jr_02e_6f72:
    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $e3
    rlca
    ld hl, sp+$01
    cp $02
    db $fd
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    add sp, -$01
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_02e_6f72

    and e
    inc e
    ld e, a
    and b
    pop hl
    ld e, $80
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $1efe
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld e, $ff
    ld a, b
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    nop
    ld a, a
    nop
    rst $28
    ret nz

    dec sp
    ld a, b
    add [hl]
    cpl
    ret nc

    ld h, c
    sbc [hl]
    add b
    ld a, a
    nop
    rst $38
    cp a
    rst $38
    rla
    rst $38
    rlca
    rst $38
    ld bc, $d0ff
    rst $38
    sbc [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $9807
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    cp $ff
    ld h, b
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

Call_02e_6ff8:
    rst $38
    nop
    rst $38
    nop
    rrca
    ld a, b
    add a
    adc a
    ld [hl], b
    ld b, $f9
    inc bc
    db $fc
    inc b
    ei
    rst $38
    rst $38
    xor a
    rst $38
    push af
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    nop
    rst $38
    ld b, l
    rst $00
    ld de, $3c91
    cp [hl]
    inc d
    sub h
    ld e, d
    sbc $05
    rst $10
    ld h, e
    ld [c], a
    nop
    rst $38
    jr c, @+$01

    ld l, [hl]
    rst $38
    ld b, c
    rst $38
    ld l, e
    rst $38
    ld hl, $28ff
    rst $38
    inc e
    rst $38
    ld bc, $b6ff
    cp $48
    ret z

    add b
    add b
    inc h
    inc h
    rla
    rla
    cp c
    cp a
    rst $38
    nop
    nop

jr_02e_7048:
    rst $38
    ld bc, $37ff
    rst $38
    ld a, a
    rst $38
    db $db
    rst $38
    add sp, -$01
    ld b, b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    jr c, jr_02e_709a

    ld h, $26
    jr nz, @+$22

    push bc
    push bc
    sub [hl]
    sub [hl]
    db $fd
    rst $38
    rst $38
    nop
    nop
    rst $38
    ret nz

    rst $38
    reti


    rst $38
    rst $18
    rst $38
    ld a, [hl-]
    rst $38
    ld l, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    inc d
    rla
    ld bc, $3001
    jr nc, jr_02e_7048

    add $84
    add l
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    cp $ff
    rst $08
    rst $38
    add hl, sp
    rst $38
    ld a, d
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $e3
    ld e, c

jr_02e_709a:
    reti


    sub c
    sub c
    sub b
    sbc b
    inc l
    inc l
    ld h, c
    ld h, c
    reti


    ld sp, hl
    rst $38
    nop
    inc e
    rst $38
    ld h, $ff
    ld l, [hl]
    rst $38
    ld h, a
    rst $38
    db $d3
    rst $38
    sbc [hl]
    rst $38
    ld b, $ff
    nop
    rst $38
    inc b
    db $fc
    db $10
    ldh a, [$98]
    sbc b
    ld [bc], a
    ld [bc], a
    ld c, a
    ld c, a
    db $10
    sub b
    ldh [$e0], a
    rst $38
    nop
    inc bc
    rst $38
    rrca
    rst $38
    ld h, a
    rst $38
    db $fd
    rst $38
    or b
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc h
    inc a
    ld d, c
    ld d, c
    jp c, $0eda

    ld c, $1a
    dec de
    ret


    ld sp, hl
    rst $38
    nop
    nop
    rst $38
    jp $aeff


    rst $38
    dec h
    rst $38
    pop af
    rst $38
    db $e4
    rst $38
    ld b, $ff
    nop
    rst $38
    ld d, e
    ld a, [c]
    ld hl, $4be0
    jp z, $c647

Jump_02e_70ff:
    inc hl
    ld [c], a
    ld c, l
    adc $45
    add $87
    add [hl]
    inc c
    rst $38
    ld e, $ff
    inc [hl]
    rst $38
    jr c, @+$01

    inc e
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    adc a
    adc [hl]
    adc e
    adc d
    di
    ld a, [c]
    ld b, a
    add $43
    jp nz, $ee2f

    dec h
    and $0b
    jp z, $ff70

    ld [hl], h
    rst $38
    inc c
    rst $38
    jr c, @+$01

    inc a
    rst $38
    db $10
    rst $38
    jr @+$01

    inc [hl]
    rst $38
    ld b, a
    add $45
    call nz, $c849
    add hl, hl
    add sp, $41
    ret nz

    daa
    and $05
    db $e4
    ld de, $38f2
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl], $ff
    ld d, $ff
    ld a, $ff
    jr @+$01

    ld a, [de]
    rst $38
    inc c
    rst $38
    inc sp
    ld a, [c]
    ld b, a
    add $8d
    adc [hl]
    ld [hl], e
    ld [hl], d
    ld c, e
    ld e, d
    add hl, bc
    ld [$8081], sp
    ld h, a
    and $0c
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    adc h
    rst $38
    and h
    rst $38
    or $ff
    ld a, [hl]
    rst $38
    jr @+$01

    inc hl
    and $0b
    jp z, $c203

    ld h, l
    db $e4
    add hl, hl
    xor b
    adc c
    adc b
    add hl, de
    jr jr_02e_718f

    ld [$ff18], sp
    inc [hl]
    rst $38
    inc a
    rst $38
    ld a, [de]
    rst $38

jr_02e_718f:
    ld d, [hl]
    rst $38
    db $76
    rst $38
    and $ff
    or $ff
    sub e
    sub d
    inc sp
    or d
    ld b, c
    jp nz, $f635

    rra
    sbc $49
    ret z

    dec e
    sbc h
    inc hl
    and [hl]
    ld l, h
    rst $38
    ld c, h
    rst $38
    inc a
    rst $38
    ld [$20ff], sp
    rst $38
    ld [hl], $ff
    ld h, d
    rst $38
    ld e, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02e_77f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02e_7b00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02e_7c38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
