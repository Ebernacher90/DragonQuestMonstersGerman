; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    inc bc
    inc de
    ld b, b
    ccf
    ld b, h
    add b
    ld l, c
    and d
    ld l, c
    inc h
    ld l, [hl]
    ld h, b
    ld [hl], c
    sub b
    ld [hl], c
    or [hl]
    ld [hl], c
    inc [hl]
    ld [hl], c
    ld a, [$c864]
    bit 7, a
    jr z, jr_003_4020

    set 6, a
    ld [$c864], a
    ret


jr_003_4020:
    ld a, [$c865]
    rst $00
    inc l
    ld b, b
    ld c, l
    ld b, c
    add d
    ld b, c
    or a
    ld b, c
    call $1220
    ldh a, [rSB]
    ld b, a
    cp $f0
    jr z, jr_003_4071

    cp $f1
    jr z, jr_003_4071

    cp $f2
    jr nz, jr_003_4049

    ld a, [$c8da]
    and $7f
    cp $02
    jr z, jr_003_405e

    jr jr_003_4056

jr_003_4049:
    cp $f3
    jr nz, jr_003_4056

    ld a, [$c8da]
    and $7f
    cp $03
    jr z, jr_003_405e

jr_003_4056:
    ld a, $ff
    ld [$c8df], a
    jp Jump_003_4142


jr_003_405e:
    ld a, [$c863]
    set 0, a
    res 1, a
    ld [$c863], a
    ld a, b
    cp $f2
    jp nz, Jump_003_4107

    jp Jump_003_40c8


jr_003_4071:
    ld hl, $a002
    call $20ee
    or a
    jp z, Jump_003_4142

    ld a, [$c88a]
    or a
    jr nz, jr_003_40b5

    ld a, [$c88b]
    cp $01
    jr nz, jr_003_40b5

    ld a, [$c8d2]
    cp $01
    jr nz, jr_003_40b5

    ld a, b
    cp $f0
    jr nz, jr_003_40a2

    ld a, [$c8da]
    cp $02
    jr z, jr_003_40b8

    ld a, $02
    ld [$c8e0], a
    jr jr_003_40b5

jr_003_40a2:
    ld a, b
    cp $f1
    jr nz, jr_003_40b5

    ld a, [$c8da]
    cp $03
    jr z, jr_003_40b8

    ld a, $03
    ld [$c8e0], a
    jr jr_003_40b5

jr_003_40b5:
    jp Jump_003_4142


jr_003_40b8:
    ld a, [$c863]
    set 0, a
    set 1, a
    ld [$c863], a
    ld a, b
    cp $f0
    jp nz, Jump_003_4107

Jump_003_40c8:
    ld a, $59
    call $1b2c
    ld a, $00
    ld [$c841], a
    ld a, $01
    ld [$c86c], a
    di
    call $21b2
    ei
    ld hl, $0109
    rst $10
    ld hl, $c88a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $02
    ld [$c865], a
    xor a
    ld [$c866], a
    ld a, $00
    ld [$c867], a
    xor a
    ld [$c86d], a
    jp Jump_003_4142


Jump_003_4107:
    ld a, $59
    call $1b2c
    ld a, $00
    ld [$c841], a
    ld a, $01
    ld [$c86c], a
    di
    call $21b2
    ei
    ld hl, $c88a
    ld a, $00
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $03
    ld [$c865], a
    xor a
    ld [$c866], a
    ld a, $00
    ld [$c867], a
    xor a
    ld [$c86d], a
    jp Jump_003_4142


Jump_003_4142:
    ld a, $03
    ld [$c864], a
    ld a, $f8
    call $1275
    ret


    ld a, [$c86c]
    or a
    jr z, jr_003_415d

    ld a, [$c863]
    bit 0, a
    jr z, jr_003_415d

    call Call_003_415e

jr_003_415d:
    ret


Call_003_415e:
    ld a, [$c866]
    rst $00
    ld h, [hl]
    ld b, c
    ld l, d
    ld b, c
    call Call_003_42d5
    ret


    call Call_003_4387
    ld hl, $c8a2
    bit 7, [hl]
    res 7, [hl]
    ret nz

    call Call_003_441b
    ld hl, $5002
    rst $10
    ld hl, $c8a2
    res 1, [hl]
    ret


    ld a, [$c86c]
    or a
    jr z, jr_003_4192

    ld a, [$c863]
    bit 0, a
    jr z, jr_003_4192

    call Call_003_4193

jr_003_4192:
    ret


Call_003_4193:
    ld a, [$c866]
    rst $00
    sbc e
    ld b, c
    sbc a
    ld b, c
    call Call_003_42d5
    ret


    call Call_003_4387
    ld hl, $c8a2
    bit 7, [hl]
    res 7, [hl]
    ret nz

    call Call_003_441b
    ld hl, $1502
    rst $10
    ld hl, $c8a2
    res 1, [hl]
    ret


    ld a, [$c86c]
    or a
    jr z, jr_003_41c7

    ld a, [$c863]
    bit 0, a
    jr z, jr_003_41c7

    call Call_003_41c8

jr_003_41c7:
    ret


Call_003_41c8:
    ld a, [$c866]
    rst $00
    ret nc

    ld b, c
    call nc, $cd41
    push de
    ld b, d
    ret


    call Call_003_4387
    ld hl, $c8a2
    bit 7, [hl]
    res 7, [hl]
    ret nz

    call Call_003_441b
    ld hl, $1503
    rst $10
    ld hl, $c8a2
    res 1, [hl]
    ret


    ld a, [$c863]
    bit 1, a
    jr nz, jr_003_41fd

    ld a, $01
    ld [$c866], a
    ld a, $f9
    jp $1275


jr_003_41fd:
    ld a, [$c8a2]
    bit 1, a
    jr nz, jr_003_4226

    ldh a, [rSB]
    ld [$c86a], a
    ld a, [$c844]
    ld [$c845], a
    ld a, [$c86a]
    ld [$c844], a
    call $12ee
    call $1364
    ld a, $01
    ld [$c866], a
    ld a, [$c842]
    jp $126b


Jump_003_4226:
jr_003_4226:
    ld a, $20

jr_003_4228:
    dec a
    jr nz, jr_003_4228

    ld hl, $c8a2
    set 2, [hl]
    ld a, $01
    ld [$c866], a
    ld a, $f3
    jp $126b


    ld a, [$c863]
    bit 1, a
    jr nz, jr_003_42a6

    ld a, [$c8c7]
    or a
    jr nz, jr_003_4253

    ldh a, [rSB]
    ld [$c86a], a
    cp $f3
    jp z, Jump_003_4279

    jr jr_003_4258

jr_003_4253:
    ldh a, [rSB]
    ld [$c86a], a

jr_003_4258:
    ld hl, $c8a2
    set 1, [hl]
    ld a, [$c844]
    ld [$c845], a
    ld a, [$c86a]
    ld [$c844], a
    call $1364
    call Call_003_441b
    xor a
    ld [$c866], a
    ld hl, $c8a2
    res 1, [hl]
    ret


Jump_003_4279:
    ld a, [$c84e]
    ld [$c842], a
    ld a, [$c84f]
    ld [$c843], a
    ld a, [$c873]
    cp $ff
    jr nz, jr_003_429c

    ld a, [$c874]
    sub $01
    ld [$c874], a
    ld a, [$c875]
    sbc $00
    ld [$c875], a

jr_003_429c:
    xor a
    ld [$c866], a
    ld hl, $c8a2
    set 7, [hl]
    ret


jr_003_42a6:
    ld hl, $c8a2
    bit 2, [hl]
    jr nz, jr_003_42c1

    set 1, [hl]
    xor a
    ld [$c866], a
    ld a, $fa
    call $1275
    call Call_003_441b
    ld hl, $c8a2
    res 1, [hl]
    ret


Jump_003_42c1:
jr_003_42c1:
    ld hl, $c8a2
    res 2, [hl]
    xor a
    ld [$c866], a
    ld a, $fb
    call $1275
    ld hl, $c8a2
    set 7, [hl]
    ret


Call_003_42d5:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_003_42e6

    ld a, $01
    ld [$c866], a
    ld a, $f9
    jp $1275


jr_003_42e6:
    ld a, [$c8a2]
    bit 1, a
    jp nz, Jump_003_4226

    ld a, [$c873]
    cp $ff
    jr z, jr_003_4311

    ldh a, [rSB]
    ld [$c86a], a
    ld a, [$c86a]
    ld [$c86e], a
    call $12ee
    call $1364
    ld a, $01
    ld [$c866], a
    ld a, [$c873]
    jp $126b


jr_003_4311:
    ld hl, $c871
    ld a, [hl+]
    or [hl]
    jr z, jr_003_436c

    ld a, [$c86f]
    ld l, a
    ld a, [$c870]
    ld h, a
    ldh a, [rSB]
    ld [hl], a
    call $12ee
    call $1364
    ld a, [$c86f]
    add $01
    ld [$c86f], a
    ld a, [$c870]
    adc $00
    ld [$c870], a
    ld a, [$c871]
    sub $01
    ld [$c871], a
    ld a, [$c872]
    sbc $00
    ld [$c872], a
    ld a, [$c874]
    ld l, a
    ld a, [$c875]
    ld h, a
    push hl
    ld a, [$c874]
    add $01
    ld [$c874], a
    ld a, [$c875]
    adc $00
    ld [$c875], a
    pop hl
    ld a, $01
    ld [$c866], a
    ld a, [hl]
    jp $126b


jr_003_436c:
    ld a, $01
    ld [$c866], a
    ldh a, [rSB]
    ld [$c86a], a
    ld a, [$c86a]
    ld [$c86e], a
    call $12ee
    call $1364
    ld a, $f0
    jp $126b


Call_003_4387:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_003_4407

    ld a, [$c8c7]
    or a
    jr nz, jr_003_43a0

    ldh a, [rSB]
    ld [$c86a], a
    cp $f3
    jp z, Jump_003_4279

    jr jr_003_43a5

jr_003_43a0:
    ldh a, [rSB]
    ld [$c86a], a

jr_003_43a5:
    ld hl, $c8a2
    set 1, [hl]
    ld a, [$c873]
    cp $ff
    jr z, jr_003_43bf

    ld a, [$c86a]
    ld [$c86e], a
    call $1364
    xor a
    ld [$c866], a
    ret


jr_003_43bf:
    ld hl, $c871
    ld a, [hl+]
    or [hl]
    jr z, jr_003_43f9

    ld a, [$c86f]
    ld l, a
    ld a, [$c870]
    ld h, a
    ldh a, [rSB]
    ld [hl], a
    call $1364
    ld a, [$c86f]
    add $01
    ld [$c86f], a
    ld a, [$c870]
    adc $00
    ld [$c870], a
    ld a, [$c871]
    sub $01
    ld [$c871], a
    ld a, [$c872]
    sbc $00
    ld [$c872], a
    xor a
    ld [$c866], a
    ret


jr_003_43f9:
    ld a, [$c86a]
    ld [$c86e], a
    call $1364
    xor a
    ld [$c866], a
    ret


jr_003_4407:
    ld hl, $c8a2
    bit 2, [hl]
    jp nz, Jump_003_42c1

    set 1, [hl]
    xor a
    ld [$c866], a
    ld a, $fa
    call $1275
    ret


Call_003_441b:
    ld a, [$c825]
    or a
    jr z, jr_003_4424

    call $0618

jr_003_4424:
    call $17ec
    ld a, [$c8a4]
    add $01
    ld [$c8a4], a
    ld a, [$c8a5]
    adc $00
    ld [$c8a5], a
    xor a
    ld [$c8c8], a
    ld [$c8c9], a
    ret


    ld de, $da33
    call Call_003_4446
    ret


Call_003_4446:
    push de
    ld a, [$da31]
    ld c, $2b
    call $1dbe
    ld a, l
    add $61
    ld l, a
    ld a, h
    adc $44
    ld h, a
    pop de
    ld b, $2b

jr_003_445a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_445a

    ret


    nop
    dec l
    dec c
    ld [bc], a
    nop
    nop
    ld b, e
    ld e, h
    push de
    db $10
    ld a, [bc]
    dec c
    ld [$1014], sp
    ld bc, $0101
    nop
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld d, d
    ld a, c
    ld a, a
    ld de, $1101
    inc b
    ld de, $0008
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc b
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    ld bc, $5500
    ld e, b
    adc d
    dec c
    ld [bc], a
    dec bc
    dec bc
    jr jr_003_44ce

    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a

jr_003_44ce:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc b
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    inc e
    ld l, c
    ld l, d
    dec c
    dec bc
    ld [$110e], sp
    ld de, $0000
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    inc b
    nop
    ld e, $08
    ld [bc], a
    nop
    nop
    inc c
    inc [hl]
    ld d, d
    dec bc
    ld a, [bc]
    ld de, $1414
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    nop
    jr z, @+$11

    ld [bc], a
    nop
    nop
    ld e, $2b
    ld c, d
    ld c, $01
    rrca
    ld c, $14
    ld c, $01
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    dec l
    inc c
    ld [bc], a
    nop
    nop
    jr jr_003_45d2

    ld [hl], h
    ld de, $1107
    ld [$0d0e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    nop
    ld e, $3c
    dec bc
    ld a, [bc]
    ld c, $13
    ld c, $0d
    nop
    nop
    ld bc, $0000
    ld bc, $0202
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    jr z, jr_003_45cc

    ld [bc], a
    nop
    nop
    inc bc
    ld h, [hl]
    ld [hl], e
    ld d, $0b
    ld c, $11
    dec bc
    dec c
    nop
    nop
    nop
    nop

jr_003_45cc:
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_003_45d2:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld e, $2b
    ld l, $0b
    rrca
    dec bc
    dec bc
    inc d
    ld [de], a
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    nop
    nop
    nop
    inc bc
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld b, c
    ld d, d
    ld a, l
    add hl, de
    ld bc, $0d12
    inc d
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0500
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld b, d
    ld e, e
    adc [hl]
    dec c
    ld a, [bc]
    ld c, $17
    db $10
    ld c, $00
    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld d, a
    ld e, d
    sub b
    ld [de], a
    dec bc
    inc d
    rrca
    ld c, $0d
    ld bc, $0001
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld [hl], a
    ld a, e
    ld a, [hl]
    rrca
    rlca
    ld c, $08
    dec d
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0400
    nop
    jr z, jr_003_46c7

    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld l, b
    sub d
    ld [de], a
    dec bc
    ld [de], a

jr_003_46c7:
    dec bc
    inc d
    rrca
    ld bc, $0101
    nop
    nop
    ld bc, $0203
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    nop
    jr z, jr_003_46f5

    ld [bc], a
    nop
    nop
    inc h
    dec hl
    jr nc, jr_003_4702

    ld c, $0f
    ld c, $14
    rrca

jr_003_46f5:
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc

jr_003_4702:
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0500
    nop
    inc d
    add hl, de
    ld [bc], a
    nop
    ld bc, $0c00
    ld [de], a
    nop
    ld e, $0b
    ld e, $1f
    dec c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld b, $00
    jr z, jr_003_475a

    ld [bc], a
    nop
    ld bc, $0603
    inc d
    nop
    ld e, $0e
    rra
    rra
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_003_475a:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld b, $00
    inc a
    dec e
    ld [bc], a
    nop
    ld bc, $2a0f
    ld h, h
    nop
    rra
    rrca
    rra
    rra
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    ld bc, $0600
    nop
    ld d, b
    rra
    ld [bc], a
    nop
    nop
    add hl, sp
    ld h, l
    add c
    nop
    rra
    inc de
    rra
    rra
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld [bc], a
    nop
    ld b, $01
    add hl, de
    rlca
    ld [bc], a
    nop
    nop
    ld e, h
    ld l, d
    adc h
    ld a, [bc]
    inc bc
    ld de, $0502
    dec b
    ld bc, $0202
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $1123
    ld [bc], a
    nop
    nop
    daa
    ld a, [hl+]
    ld e, d
    rrca
    dec bc
    ld [de], a
    ld b, $07
    dec c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    nop
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0001
    inc b
    ld bc, $1023
    ld [bc], a
    ld bc, $0300
    ld e, b
    adc d
    ld c, $0b
    ld [de], a
    ld [bc], a
    inc d
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld bc, $1232
    ld [bc], a
    ld bc, $1400
    ld [hl-], a
    dec a
    ld de, $0d0f
    dec bc
    rlca
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    inc b
    ld bc, $0f1e
    ld [bc], a
    ld bc, $1800
    ld l, d
    ld a, c
    add hl, bc
    dec c
    ld de, $0e10
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    ld bc, $1428
    ld [bc], a
    nop
    nop
    ld b, b
    ld c, d
    reti


    ld de, $130a
    dec c
    dec b
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $132d
    ld [bc], a
    nop
    nop
    ld h, a
    ld l, h
    ld a, c
    dec d
    db $10
    rrca
    dec c
    rlca
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $1432
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld d, a
    sub b
    add hl, bc
    inc bc
    rla
    ld b, $01
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $1428
    ld [bc], a
    nop
    nop
    ld b, h
    ld e, h
    adc a
    ld de, $1401
    db $10
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $1023
    ld [bc], a
    nop
    nop
    inc a
    ld d, d
    ld [hl], d
    ld c, $08
    ld de, $120e
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld bc, $0300
    ld bc, $1323
    ld [bc], a
    nop
    nop
    ccf
    ld b, b
    ld a, b
    inc de
    nop
    dec d
    dec b
    ld [$0200], sp
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0201
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    nop
    dec b
    ld bc, $1123
    ld [bc], a
    ld bc, $4600
    ld c, h
    ld h, a
    ld c, $02
    ld de, $0f10
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0102
    nop
    inc b
    ld bc, $1332
    ld [bc], a
    nop
    nop
    add hl, de
    ld l, c
    ld l, e
    ld de, $0b12
    ld b, $08
    dec c
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0300
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $101e
    ld [bc], a
    ld bc, $0300
    ld e, b
    ld e, h
    dec bc
    dec bc
    ld de, $0d11
    dec b
    ld bc, $0202
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    ld bc, $1632
    ld [bc], a
    nop
    nop
    add hl, bc
    jr jr_003_4a8c

    dec d
    rrca
    inc de
    ld de, $0c13
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    dec b
    ld bc, $1428
    ld [bc], a
    nop
    nop
    ld h, a
    ld l, a
    ld [hl], c
    ld [de], a
    ld [$0d10], sp
    inc de
    dec bc
    ld bc, $0202
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0002
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $131e
    ld [bc], a
    nop
    nop
    dec a
    ld a, $5b
    inc d
    ld [$1813], sp
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    inc bc
    nop

jr_003_4a8c:
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    dec b
    ld bc, $173c
    ld [bc], a
    nop
    nop
    ld b, a
    ld h, b
    adc a
    dec d
    dec b
    rla
    ld c, $10
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0302
    ld bc, $0201
    ld bc, $0301
    nop
    inc bc
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $01
    inc hl
    ld [de], a
    ld [bc], a
    nop
    nop
    rla
    ld h, a
    push de
    ld c, $04
    rrca
    dec b
    inc de
    ld [$0202], sp
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    inc bc
    ld bc, $142d
    ld bc, $0000
    ld b, d
    ld d, l
    ld l, h
    rrca
    ld [$1114], sp
    ld c, $0b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    inc b
    ld bc, $173c
    ld [bc], a
    nop
    nop
    ld b, $40
    ld b, l
    add hl, de
    ld c, $14
    ld d, $12
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld bc, $0101
    ld bc, $0301
    ld bc, $0103
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld b, $01
    inc a
    ld d, $02
    nop
    nop
    ld b, h
    ld d, b
    ld e, h
    jr jr_003_4b5c

    jr @+$17

    dec bc
    ld [$0202], sp
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_003_4b5c:
    ld bc, $0301
    ld bc, $0301
    nop
    inc bc
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld b, $01
    inc a
    ld d, $02
    nop
    nop
    ld b, b
    ld c, b
    ld e, h
    rla
    db $10
    ld a, [de]
    inc d
    ld de, $0210
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $01
    inc hl
    ld [de], a
    inc bc
    ld bc, $4300
    ld c, a
    ld e, h
    rrca
    dec bc
    inc d
    ld c, $12
    ld [$0201], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    ld bc, $0201
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld bc, $1c50
    inc bc
    ld bc, $6000
    ld h, l
    sub e
    ld a, [de]
    add hl, de
    inc e
    jr jr_003_4be7

    rla
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0203
    ld [bc], a

jr_003_4be7:
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    jr z, @+$0e

    ld [bc], a
    nop
    nop
    ld l, b
    ld l, d
    ld a, c
    ld c, $05
    rrca
    inc c
    dec bc
    stop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    dec l
    dec c
    ld [bc], a
    nop
    nop
    dec d
    dec a
    ld b, c
    ld [de], a
    dec b
    ld c, $09
    rrca
    inc b
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    inc hl
    ld a, [bc]
    ld [bc], a
    ld bc, $1700
    jr nz, jr_003_4cc4

    dec bc
    ld a, [bc]
    dec c
    ld [$0e12], sp
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    ld [bc], a
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    inc a
    ld d, d
    ld [hl], a
    ld c, $11
    ld [$1308], sp
    dec c
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    jr z, jr_003_4ca8

    ld [bc], a
    nop
    nop
    ld e, $56
    ld l, e
    db $10
    dec b
    add hl, bc

jr_003_4ca8:
    ld de, $0d00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0202
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc

jr_003_4cc4:
    inc bc
    nop
    inc bc
    ld [bc], a
    dec l
    dec c
    ld [bc], a
    nop
    nop
    inc a
    ccf
    ld a, l
    jr jr_003_4cd3

    ld a, [de]

jr_003_4cd3:
    dec c
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    dec l
    inc c
    ld [bc], a
    nop
    nop
    ld b, c
    ld c, c
    ld l, [hl]
    ld c, $0a
    dec bc
    ld [$0210], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0202
    ld bc, $0000
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld [hl-], a
    inc c
    ld [bc], a
    nop
    nop
    add hl, bc
    inc c
    ld b, [hl]
    dec c
    inc d
    dec c
    rrca
    rrca
    dec c
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    jr z, jr_003_4d53

    ld [bc], a
    nop
    nop
    ld c, b
    ld d, l
    ld a, c
    ld c, $07

jr_003_4d53:
    ld de, $090b
    dec bc
    nop
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    dec l
    add hl, bc
    ld [bc], a
    nop
    nop
    ld [hl], c
    ld a, a
    sub h
    ld [de], a
    rlca
    dec c
    inc c
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    dec l
    ld a, [bc]
    ld [bc], a
    nop
    nop
    daa
    adc b
    adc [hl]
    ld [de], a
    dec b
    ld de, $0217
    dec bc
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0200
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    inc hl
    dec bc
    ld [bc], a
    nop
    nop
    inc c
    ld a, b
    sub d
    ld c, $0b
    db $10
    ld c, $14
    ld [$0000], sp
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc b
    ld [bc], a
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld a, $40
    ld b, c
    ld de, $1113
    dec bc
    ld de, $000a
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    jr z, jr_003_4e30

    ld [bc], a
    nop
    nop
    dec sp
    ld d, l
    ld a, e
    inc d
    nop
    dec de
    rlca
    add hl, bc
    ld bc, $0101

jr_003_4e30:
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    dec b
    ld [bc], a
    jr z, @+$0f

    ld [bc], a
    nop
    nop
    inc c
    ld b, a
    ld a, l
    ld [de], a
    dec bc
    rrca
    add hl, bc
    ld a, [bc]
    ld [$0101], sp
    ld bc, $0101
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [hl-], a
    inc c
    ld [bc], a
    nop
    nop
    ld b, c
    ld c, e
    ld c, l
    ld c, $0d
    ld de, $0809
    dec bc
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    dec l
    dec bc
    ld [bc], a
    ld bc, $1800
    jr nz, @-$28

    inc c
    dec b
    dec c
    ld c, $11
    rlca
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0202
    ld bc, $0100
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld [hl-], a
    ld c, $02
    nop
    nop
    dec hl
    jr nc, @+$35

    inc de
    dec d
    ld c, $0d
    inc c
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld bc, $0201
    inc bc
    inc bc
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld b, $02
    jr z, jr_003_4f04

    ld [bc], a
    nop
    nop
    inc bc
    jr nz, jr_003_4f69

    inc de
    add hl, bc
    ld de, $110d

jr_003_4f04:
    inc bc
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    inc hl
    dec c
    ld [bc], a
    nop
    nop
    dec sp
    ld d, d
    ld a, e
    dec c
    ld bc, $0a14
    ld [$0004], sp
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    ld [hl-], a
    ld c, $02
    nop
    nop
    dec a
    ld [hl], d
    ld a, l
    ld de, $1508
    ld de, $0d0e
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0302

jr_003_4f69:
    ld bc, $0000
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $02
    ld b, [hl]
    rrca
    ld [bc], a
    nop
    nop
    inc bc
    ld d, b
    ld h, b
    inc d
    ld c, $18
    rla
    ld de, $010e
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    inc bc
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    ld bc, $0102
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $02
    ld [hl-], a
    dec c
    ld [bc], a
    nop
    nop
    dec d
    rla
    ld d, [hl]
    ld de, $1304
    ld [de], a
    ld a, [bc]
    inc c
    ld bc, $0001
    nop
    nop
    ld bc, $0201
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    nop
    ld b, $02
    jr z, jr_003_4fdc

    ld [bc], a
    nop
    nop
    ld b, [hl]
    ld d, l
    ld a, e
    rrca
    rlca
    ld [de], a
    ld c, $11
    dec bc

jr_003_4fdc:
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld bc, $0001
    ld bc, $0300
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    jr z, jr_003_5006

    ld [bc], a
    nop
    nop
    inc c
    dec hl
    ld h, b
    ld c, $08
    ld c, $0b
    rlca

jr_003_5006:
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0003
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    jr z, @+$06

    ld [bc], a
    nop
    nop
    jr jr_003_5047

    rst $10
    dec bc
    inc c
    ld c, $08
    ld [de], a
    dec c
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop

jr_003_5047:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    dec l
    ld b, $02
    ld bc, $1500
    dec hl
    ld h, b
    ld de, $130d
    dec bc
    db $10
    inc d
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    inc hl
    dec b
    ld [bc], a
    nop
    nop
    inc a
    ld b, c
    ret c

    ld c, $08
    ld de, $0609
    inc b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc b
    inc bc
    ld [hl-], a
    dec b
    ld [bc], a
    ld bc, $2200
    ld c, d
    sub l
    ld b, $12
    inc c
    inc bc
    dec d
    inc de
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    ld e, $03
    ld [bc], a
    ld bc, $1500
    add hl, de
    ld l, a
    dec bc
    dec bc
    add hl, bc
    inc c
    ld [de], a
    rlca
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    jr z, jr_003_5101

    ld [bc], a
    nop
    nop
    add hl, bc

jr_003_5101:
    inc e
    ld b, [hl]
    add hl, bc
    rlca
    inc d
    ld c, $17
    dec c
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    dec l
    dec b
    ld [bc], a
    ld bc, $4200
    ld c, c
    adc d
    ld b, $0e
    ld de, $120c
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    ld [hl-], a
    dec b
    ld [bc], a
    ld bc, $1800
    inc h
    ld [hl], h
    inc c
    ld de, $0f08
    ld d, $0d
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    jr z, @+$04

    ld [bc], a
    ld bc, $1500
    ld a, [de]
    inc sp
    dec bc
    inc b
    ld [$110d], sp
    dec bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    jr z, @+$05

    ld [bc], a
    ld bc, $4600
    ld [hl], d
    adc h
    ld [$0e05], sp
    inc c
    ld de, $0008
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    jr z, jr_003_51da

    ld [bc], a
    nop
    nop
    dec h
    ld d, a
    rst $10

jr_003_51da:
    db $10
    inc c
    inc d
    inc d
    ld c, $0b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    inc hl
    rlca
    ld [bc], a
    nop
    nop
    add hl, bc
    ld b, l
    ld [hl], a
    rrca
    ld a, [bc]
    dec d
    dec c
    dec bc
    ld [de], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0202
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    inc bc
    ld e, $05
    ld [bc], a
    ld bc, $1900
    ld [hl], l
    ld a, b
    ld de, $1106
    rrca
    inc d
    ld [$0000], sp
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    inc b
    inc bc
    ld [hl-], a
    ld b, $02
    ld bc, $0300
    ld l, $4f
    ld c, $0b
    ld [de], a
    inc c
    ld de, $010d
    ld bc, $0200
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    ld bc, $0001
    nop
    ld [bc], a
    nop
    ld bc, $0002
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    ld [hl-], a
    rlca
    inc bc
    ld bc, $1200
    ld b, a
    ld h, b
    inc d
    rlca
    dec bc
    ld de, $0b13
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0000
    ld bc, $0100
    inc bc
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    ld [hl-], a
    rlca
    ld bc, $0001
    ld d, l
    ld e, h
    adc d
    db $10
    dec c
    inc de
    ld [$0c13], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0300
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    ld [hl-], a
    rlca
    ld [bc], a
    ld bc, $4500
    ld e, d
    ld h, h
    inc d
    rlca
    inc de
    ld de, $0c16
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0000
    ld bc, $0002
    ld [bc], a
    nop
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    inc a
    rrca
    ld [bc], a
    ld bc, $2a00
    add e
    add h
    dec de
    inc de
    inc c
    inc d
    rla
    rla
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld bc, $0001
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $03
    ld [hl-], a
    dec b
    ld [bc], a
    nop
    nop
    ld l, [hl]
    sub h
    sub [hl]
    ld c, $14
    ld [$1009], sp
    inc d
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    ld bc, $0200
    ld bc, $0101
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld b, $03
    ld b, [hl]
    jr jr_003_5359

    nop

jr_003_5359:
    nop
    ld h, [hl]
    add c
    adc [hl]
    add hl, de
    dec de
    rrca
    jr @+$14

    jr jr_003_5366

    ld [bc], a
    ld [bc], a

jr_003_5366:
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0301
    ld bc, $0301
    ld bc, $0302
    ld bc, $0102
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $04
    jr z, jr_003_538c

    ld [bc], a
    nop
    nop
    inc e
    jr nz, @+$36

    rrca
    jr @+$0d

    dec c

jr_003_538c:
    ld b, $12
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    dec l
    rrca
    ld [bc], a
    nop
    nop
    nop
    dec [hl]
    ld l, e
    ld c, $1a
    ld a, [bc]
    inc c
    dec b
    ld de, $0101
    ld bc, $0202
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    inc hl
    rlca
    ld [bc], a
    nop
    nop
    inc bc
    inc sp
    ld [hl], $11
    inc d
    ld b, $09
    ld [bc], a
    inc de
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    inc hl
    rlca
    ld [bc], a
    ld bc, $3200
    scf
    ld c, l
    inc c
    inc d
    ld b, $0b
    ld c, $07
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    ld e, $06
    ld [bc], a
    nop
    nop
    ld b, d
    ld l, c
    ld [hl], l
    ld [de], a
    ld [de], a
    inc c
    rrca
    add hl, bc
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    inc b
    inc b
    jr z, jr_003_5464

    ld [bc], a
    nop
    nop
    add hl, bc
    dec d
    ld l, b
    db $10
    ld de, $0609
    ld [bc], a

jr_003_5464:
    ld c, $01
    ld bc, $0201
    ld [bc], a
    ld bc, $0000
    ld bc, $0202
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    dec l
    add hl, bc
    ld [bc], a
    nop
    nop
    ld l, b
    ld l, d
    sub d
    ld c, $12
    ld [$0d09], sp
    dec c
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc b
    ld [hl-], a
    inc c
    ld [bc], a
    nop
    nop
    inc h
    dec h
    ld h, $0c
    jr jr_003_54c0

    ld de, $0a0c
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a

jr_003_54c0:
    ld bc, $0000
    ld bc, $0202
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    jr z, @+$0a

    ld [bc], a
    nop
    nop
    dec d
    scf
    ld c, l
    ld de, $040b
    ld [bc], a
    add hl, bc
    ld c, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc b
    inc hl
    add hl, bc
    ld [bc], a
    nop
    nop
    ld a, [de]
    ld b, c
    ld l, d
    dec c
    inc d
    ld c, $0b
    inc bc
    stop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    inc b
    inc b
    ld [hl-], a
    inc c
    ld [bc], a
    nop
    nop
    ld [hl], c
    ld [hl], a
    ld a, b
    dec bc
    dec d
    rlca
    ld b, $14
    dec bc
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    dec b
    inc b
    jr z, jr_003_5566

    ld [bc], a
    nop
    nop
    inc c
    dec hl
    ld [hl], $0f
    ld [de], a
    ld [$0c03], sp

jr_003_5566:
    rrca
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    dec l
    add hl, bc
    ld [bc], a
    nop
    nop
    rla
    ld l, a
    ld [hl], l
    inc c
    inc d
    dec bc
    ld [$110a], sp
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld b, $04
    jr z, jr_003_55be

    ld [bc], a
    nop
    nop
    ld d, h
    ld l, a
    sub c
    inc de
    ld de, $0a07
    rrca
    rla
    nop

jr_003_55be:
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $04
    inc hl
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld a, [de]
    dec h
    jr c, @+$10

    rrca
    inc c
    ld c, $0f
    add hl, bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0202
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    ld e, $06
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld l, c
    ld [hl], e
    ld [$080b], sp
    dec b
    ld bc, $0103
    ld bc, $0301
    inc bc
    ld bc, $0000
    ld bc, $0202
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc b
    ld [hl-], a
    add hl, bc
    ld [bc], a
    nop
    nop
    ld c, c
    ld d, [hl]
    ld l, d
    ld c, $0c
    inc de
    rlca
    ld a, [bc]
    ld b, $01
    ld bc, $0201
    ld [bc], a
    ld bc, $0000
    ld bc, $0303
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    dec b
    inc b
    inc a
    dec bc
    ld [bc], a
    nop
    nop
    rla
    ld d, d
    ld d, a
    ld de, $140e
    dec c
    ld a, [bc]
    db $10
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $04
    ld d, b
    jr jr_003_568c

    nop
    nop
    ld d, b

jr_003_568c:
    add d
    sub b
    jr @+$20

    rla
    dec d
    ld [de], a
    ld [de], a
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0102
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $04
    ld d, b
    nop
    ld [bc], a
    nop
    nop
    add hl, sp
    ld a, [hl]
    ld a, a
    ld a, [bc]
    dec de
    dec bc
    ld c, $18
    ld e, $02
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $05
    inc hl
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, c
    ld a, [hl]
    adc h
    dec bc
    ld [$090e], sp
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0103
    ld bc, $0301
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    jr z, @+$06

    ld [bc], a
    nop
    nop
    ld e, $6c
    add e
    dec c
    dec b
    dec bc
    ld c, $0b
    add hl, bc
    ld bc, $0101
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    dec b
    ld e, $01
    ld [bc], a
    nop
    nop
    ld [de], a
    daa
    ld d, d
    ld b, $0b
    ld c, $12
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    dec b
    dec b
    ld e, $00
    ld [bc], a
    ld bc, $1800
    ld d, d
    ld l, a
    dec bc
    ld [bc], a
    dec c
    rlca
    inc c
    ld [$0000], sp
    nop
    ld bc, $0001
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    nop
    inc b
    dec b
    dec l
    inc b
    ld [bc], a
    nop
    nop
    ld a, [de]
    inc h
    ld h, $11
    dec c
    ld a, [bc]
    inc c
    dec b
    inc de
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    nop
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    inc hl
    ld b, $02
    nop
    nop
    scf
    ld c, d
    ld [hl], l
    dec c
    ld [$0810], sp
    dec c
    ld c, $01
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    jr z, jr_003_57e4

    ld [bc], a
    nop
    nop
    ld l, b

jr_003_57e4:
    ld [hl], b
    ld a, c
    inc c
    ld [$0909], sp
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0103
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    dec b
    dec l
    inc bc
    ld [bc], a
    nop
    nop
    dec d
    ld e, h
    ld a, e
    dec c
    rlca
    db $10
    inc d
    add hl, bc
    rlca
    ld bc, $0001
    nop
    nop
    ld bc, $0200
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    inc hl
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, $52
    ld l, b
    ld [$0b04], sp
    ld de, $010d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    dec b
    inc hl
    nop
    ld [bc], a
    nop
    nop
    ld a, [de]
    ld b, c
    ld d, d
    dec bc
    inc b
    ld [$0e0e], sp
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    dec l
    dec b
    ld [bc], a
    nop
    nop
    ld b, a
    ld l, h
    ld [hl], e
    inc c
    ld a, [bc]
    db $10
    dec bc
    ld c, $05
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    nop
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    ld e, $06
    ld [bc], a
    nop
    nop
    ld e, $25
    dec sp
    rrca
    ld a, [bc]
    ld de, $0b14
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    nop
    inc b
    dec b
    dec l
    inc b
    ld [bc], a
    ld bc, $0300
    dec hl
    jr c, @+$0b

    dec bc
    ld b, $03
    ld a, [bc]
    add hl, bc
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    ld e, $02
    ld [bc], a
    ld bc, $5800
    ld l, c
    ld [hl], e
    ld c, $09
    db $10
    inc c
    inc d
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    nop
    dec b
    dec b
    jr z, jr_003_593d

    ld [bc], a
    nop
    nop
    jr nz, jr_003_5974

jr_003_593d:
    ret c

    ld de, $0f0a
    db $10
    rlca
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0103
    ld bc, $0300
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    jr z, jr_003_5969

    ld [bc], a
    nop
    nop
    ld e, $48
    ld d, d

jr_003_5969:
    db $10
    ld [$130e], sp
    dec b
    ld bc, $0000
    nop
    nop
    nop

jr_003_5974:
    nop
    ld bc, $0103
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    dec b
    dec b
    jr z, jr_003_5995

    ld [bc], a
    ld bc, $6700
    ld l, c
    adc d
    inc d

jr_003_5995:
    dec b
    inc de
    dec c
    inc d
    inc b
    ld bc, $0101
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    nop
    dec b
    dec b
    ld [hl-], a
    rlca
    ld [bc], a
    nop
    nop
    ld b, l
    ld c, h
    ld e, e
    dec d
    inc de
    rla
    inc d
    inc c
    ld c, $02
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld b, $05
    inc a
    jr jr_003_59e7

    nop
    nop

jr_003_59e7:
    ld b, b
    ld c, l
    ld d, a
    ld d, $14
    jr jr_003_5a05

    rrca
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0203
    ld bc, $0301
    ld bc, $0301
    ld bc, $0202
    inc bc
    inc bc
    inc bc

jr_003_5a05:
    ld bc, $0101
    inc bc
    inc bc
    nop
    ld b, $05
    ld [hl-], a
    dec bc
    ld [bc], a
    nop
    nop
    ld [hl-], a
    adc [hl]
    adc a
    jr @+$0c

    inc de
    ld a, [de]
    ld bc, $010f
    ld bc, $0001
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld b, $06
    jr z, @+$15

    ld [bc], a
    nop
    nop
    ld [hl+], a
    dec h
    inc sp
    dec bc
    rlca
    rrca
    ld [$040f], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $2d
    inc d
    ld [bc], a
    nop
    nop
    ld b, $45
    ld c, e
    ld c, $0d
    ld de, $070c
    dec d
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld bc, $0400
    ld b, $23
    db $10
    ld [bc], a
    nop
    nop
    inc bc
    inc d
    ld l, d
    db $10
    dec bc
    ld [de], a
    inc c
    db $10
    inc de
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0400
    ld b, $19
    dec c
    ld [bc], a
    nop
    nop
    nop
    ld b, h
    ld h, b
    dec c
    ld bc, $0405
    add hl, bc
    inc d
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0400
    ld b, $32
    ld [de], a
    ld [bc], a
    ld bc, $4800
    ld l, e
    ld [hl], e
    dec bc
    ld [de], a
    ld a, [bc]
    db $10
    add hl, bc
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    ld bc, $0000
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    inc bc
    ld b, $23
    db $10
    ld [bc], a
    nop
    nop
    daa
    ld a, [hl+]
    ld a, l
    db $10
    ld de, $0e0e
    dec c
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0002
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc b
    ld b, $2d
    ld [de], a
    ld [bc], a
    nop
    nop
    ld b, h
    ld d, a
    ld a, e
    ld de, $110b
    dec c
    rrca
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0301
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld b, $32
    inc d
    ld [bc], a
    nop
    nop
    inc bc
    ld a, [hl+]
    ld h, b
    db $10
    ld a, [bc]
    inc d
    ld d, $04
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc bc
    nop
    nop
    inc bc
    ld bc, $0101
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $19
    dec c
    ld [bc], a
    ld bc, $0000
    inc bc
    inc c
    ld a, [bc]
    ld bc, $0905
    add hl, bc
    ld de, $0101
    ld bc, $0202
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $19
    dec c
    ld [bc], a
    ld bc, $0300
    rla
    dec hl
    dec c
    rlca
    ld [$0204], sp
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $23
    inc de
    ld [bc], a
    ld bc, $1800
    inc e
    ret c

    dec bc
    dec c
    ld c, $0f
    ld [$020b], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0002
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0001
    inc b
    ld b, $2d
    dec d
    ld [bc], a
    nop
    nop
    add hl, bc
    ld l, $46
    rrca
    dec bc
    ld c, $0f
    inc c
    inc de
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0101
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $23
    ld d, $02
    nop
    nop
    ld b, $09
    inc c
    inc d
    dec bc
    ld de, $0b0d
    inc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld b, $32
    ld de, $0002
    nop
    inc e
    jr nc, @+$4d

    inc de
    rlca
    inc de
    dec c
    dec c
    ld [de], a
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0001
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    ld b, $23
    inc de
    ld [bc], a
    nop
    nop
    ccf
    ld c, b
    ld d, a
    rrca
    ld [$0c14], sp
    ld a, [bc]
    inc c
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0500
    ld b, $32
    rla
    ld [bc], a
    nop
    nop
    nop
    ld c, [hl]
    add e
    ld [de], a
    inc c
    ld [de], a
    ld c, $0a
    ld c, $02
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0500
    ld b, $32
    ld d, $02
    nop
    nop
    dec h
    ld b, [hl]
    ld d, l
    ld de, $140c
    dec bc
    inc d
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0300
    ld bc, $0001
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $3c
    inc d
    ld [bc], a
    nop
    nop
    ld b, h
    ld c, c
    adc b
    rla
    ld bc, $1812
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld d, b
    ld e, $02
    nop
    nop
    ld b, $54
    ld h, b
    jr jr_003_5d66

    rla
    dec d
    ld [de], a
    dec d
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    ld bc, $0203
    ld bc, $0301
    nop
    ld [bc], a
    ld bc, $0200
    nop
    ld bc, $0000
    nop
    nop

jr_003_5d66:
    nop
    ld b, $06
    ld [hl-], a
    rla
    ld [bc], a
    nop
    nop
    ccf
    ld c, d
    reti


    ld de, $1209
    inc d
    ld a, [bc]
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0301
    nop
    ld bc, $0101
    ld bc, $0003
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    dec b
    ld b, $23
    ld d, $02
    nop
    nop
    ld b, b
    ld b, c
    ld c, l
    dec de
    nop
    dec de
    rlca
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0003
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0500
    ld b, $2d
    rla
    ld [bc], a
    nop
    nop
    rla
    ld b, h
    ld d, a
    inc d
    ld bc, $1518
    ld [de], a
    inc de
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0003
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, $06
    ld e, $16
    ld [bc], a
    nop
    nop
    ld b, h
    ld b, l
    ld c, c
    db $10
    ld bc, $1d11
    dec b
    dec c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    inc bc
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0000
    ld bc, $0001
    ld b, $06
    inc a
    dec d
    ld [bc], a
    nop
    nop
    nop
    ld d, b
    adc d
    jr jr_003_5e28

    dec d
    jr @+$19

    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc

jr_003_5e28:
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0001
    ld b, $06
    ld b, [hl]
    inc e
    ld [bc], a
    nop
    nop
    ld c, c
    ld c, e
    ld e, b
    add hl, de
    jr jr_003_5e62

    rrca
    ld de, $0214
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    inc bc
    ld bc, $0202
    ld bc, $0301
    ld bc, $0101
    inc bc
    inc bc

jr_003_5e62:
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld b, $07
    jr z, @+$0d

    ld [bc], a
    ld bc, $7300
    ld a, c
    sub d
    dec bc
    inc c
    dec c
    ld [$0f12], sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0301
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    dec l
    dec c
    ld [bc], a
    nop
    nop
    dec sp
    ld b, a
    ld h, b
    ld b, $01
    rla
    rrca
    inc b
    ld b, $01
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    inc hl
    ld b, $02
    nop
    nop
    inc e
    jr nz, jr_003_5ef0

    ld de, $110d
    ld [$040b], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    inc b
    rlca
    inc hl
    dec b
    ld [bc], a
    nop

jr_003_5ef0:
    nop
    ld a, $45
    ld e, d
    ld c, $08
    inc c
    dec bc
    ld [de], a
    add hl, bc
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    inc b
    rlca
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld b, b
    ld d, d
    ld l, c
    rrca
    ld de, $090c
    inc b
    ld [$0000], sp
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    inc b
    rlca
    ld e, $08
    ld [bc], a
    nop
    nop
    ld h, $2a
    scf
    inc c
    ld [$140f], sp
    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0001
    inc b
    rlca
    dec l
    dec c
    ld [bc], a
    nop
    nop
    dec hl
    dec [hl]
    ld [hl], $11
    rlca
    inc de
    add hl, bc
    inc c
    ld [$0101], sp
    ld bc, $0101
    ld bc, $0202
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    ld [hl-], a
    inc c
    ld [bc], a
    ld bc, $6000
    ld [hl], c
    add e
    add hl, bc
    ld b, $06
    inc d
    ld [$000c], sp
    nop
    nop
    nop
    nop
    ld bc, $0202
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    jr z, @+$0a

    ld [bc], a
    nop
    nop
    ld l, h
    ld [hl], h
    ld a, c
    ld de, $100d
    ld [$0a0b], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    ld e, $0a
    ld [bc], a
    nop
    nop
    ld [de], a
    dec hl
    jr nc, jr_003_5ffd

    ld a, [bc]
    dec bc
    ld de, $0e07
    nop

jr_003_5ffd:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0201
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    rlca
    inc hl
    inc c
    ld [bc], a
    ld bc, $5800
    ld e, d
    ld e, h
    ld de, $0a04
    inc bc
    rrca
    add hl, bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    inc bc
    rlca
    ld [hl-], a
    dec c
    ld [bc], a
    ld bc, $6a00
    ld [hl], e
    add e
    ld c, $0c
    rrca
    inc c
    db $10
    ld a, [bc]
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0301
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    inc b
    rlca
    inc hl
    add hl, bc
    ld [bc], a
    ld bc, $0900
    inc h
    ld [hl], $10
    inc de
    inc de
    inc c
    dec c
    ld b, $00
    nop
    nop
    inc bc
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    inc bc
    rlca
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    ld bc, $4c00
    ld l, a
    ld [hl], h
    inc de
    inc bc
    dec d
    ld de, $0613
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0303
    inc bc
    ld bc, $0001
    ld bc, $0001
    inc bc
    rlca
    ld [hl-], a
    db $10
    ld [bc], a
    nop
    nop
    ld [de], a
    ld l, $84
    dec d
    ld [bc], a
    ld a, [de]
    inc de
    rrca
    dec c
    ld bc, $0101
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld bc, $0201
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld b, $07
    ld b, [hl]
    add hl, de
    ld [bc], a
    nop
    nop
    add hl, bc
    rrca
    add hl, sp
    inc d
    jr @+$10

    inc d
    rrca
    dec de
    ld bc, $0201
    inc bc
    ld bc, $0203
    ld [bc], a
    inc bc
    ld bc, $0301
    ld bc, $0301
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld b, $07
    jr z, @+$0c

    ld [bc], a
    nop
    nop
    ld b, $45
    ld c, e
    ld c, $0d
    ld de, $070c
    ld bc, $0000
    nop
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    inc a
    inc c
    ld [bc], a
    nop
    nop
    inc e
    ld c, e
    ld d, b
    db $10
    dec bc
    ld [de], a
    inc c
    db $10
    inc de
    nop
    nop
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0201
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld d, b
    inc d
    ld [bc], a
    nop
    nop
    nop
    inc c
    ld d, h
    rla
    dec d
    add hl, de
    ld [de], a
    rrca
    inc d
    ld bc, $0301
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    ld bc, $0301
    ld bc, $0301
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld b, $07
    jr z, jr_003_619f

    ld [bc], a

jr_003_619f:
    ld bc, $2900
    ld [hl], l
    ld a, a
    dec bc
    inc d
    ld bc, $1502
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    dec b
    ld [$0c28], sp
    ld [bc], a
    nop
    nop
    inc bc
    rla
    add hl, de
    dec c
    dec bc
    add hl, bc
    ld [de], a
    ld de, $000f
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0301
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$0e32], sp
    ld [bc], a
    ld bc, $3500
    jr c, @+$62

    ld c, $0f
    ld de, $090c
    dec c
    ld bc, $0101
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$0a23], sp
    ld [bc], a
    nop
    nop
    nop
    ld d, [hl]
    ld a, [hl]
    inc c
    ld a, [bc]
    ld c, $06
    ld de, $020c
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc b
    ld [$0823], sp
    ld [bc], a
    nop
    nop
    inc [hl]
    dec [hl]
    adc a
    db $10
    dec c
    dec b
    ld c, $0e
    rlca
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld [$0c32], sp
    ld [bc], a
    nop
    nop
    add hl, bc
    inc d
    sub l
    ld [$0b17], sp
    inc c
    inc bc
    inc de
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    inc bc
    ld [$081e], sp
    ld [bc], a
    nop
    nop
    inc d
    ld b, d
    sub $09
    dec c
    ld c, $11
    rlca
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0002
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    ld [$0e2d], sp
    ld [bc], a
    nop
    nop
    daa
    add hl, hl
    jr c, jr_003_62e1

    dec bc
    ld [$0b06], sp
    inc de
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    inc bc
    nop

jr_003_62e1:
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$0c2d], sp
    ld [bc], a
    nop
    nop
    dec hl
    ld b, b
    ld c, b
    ld c, $04
    inc d
    dec d
    ld a, [bc]
    dec c
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0301
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [$0828], sp
    ld [bc], a
    nop
    nop
    ld d, d
    ld a, e
    adc h
    ld [$0b0d], sp
    ld c, $07
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [$0b23], sp
    ld [bc], a
    nop
    nop
    jr jr_003_636a

    inc e
    ld c, $11
    inc c
    inc c
    ld [$000e], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0002
    nop
    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld [bc], a

jr_003_636a:
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0001
    inc b
    ld [$0f2d], sp
    ld [bc], a
    nop
    nop
    ccf
    ld e, e
    ld [hl], d
    ld [de], a
    dec c
    inc d
    rla
    add hl, bc
    ld a, [bc]
    ld bc, $0101
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0203
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    inc hl
    dec c
    ld [bc], a
    nop
    nop
    ld b, $0f
    ld c, a
    dec d
    dec bc
    rla
    dec d
    ld [de], a
    inc de
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld bc, $0201
    ld bc, $0200
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld b, $08
    ld e, $0b
    ld [bc], a
    ld bc, $1a00
    ld c, h
    ld l, c
    ld [$0903], sp
    dec bc
    inc c
    ld b, $00
    nop
    ld bc, $0001
    ld [bc], a
    nop
    ld bc, $0102
    ld bc, $0001
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    inc b
    ld [$0932], sp
    ld [bc], a
    ld bc, $1e00
    ld [hl+], a
    dec h
    inc c
    ld [de], a
    add hl, bc
    inc de
    dec c
    rrca
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0002
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld [$0d28], sp
    ld [bc], a
    nop
    nop
    ld d, b
    ld d, l
    ld d, a
    inc c
    dec b
    dec d
    ld d, $18
    ld de, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [$0b28], sp
    ld [bc], a
    ld bc, $1200
    dec d
    ccf
    ld [de], a
    inc de
    rrca
    ld [de], a
    add hl, bc
    inc de
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0301
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [$0928], sp
    ld [bc], a
    ld bc, $4300
    ld e, h
    ld h, b
    dec c
    rrca
    dec bc
    ld c, $14
    ld [de], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0002
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$0d28], sp
    ld [bc], a
    nop
    nop
    nop
    ld e, h
    adc b
    ld [de], a
    inc c
    ld de, $0418
    rlca
    inc bc
    inc bc
    ld bc, $0002
    ld bc, $0000
    inc bc
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    jr z, @+$0f

    ld [bc], a
    nop
    nop
    inc c
    ld h, b
    adc [hl]
    db $10
    ld b, $12
    jr jr_003_64de

    rlca
    ld bc, $0101

jr_003_64de:
    ld [bc], a
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    jr z, @+$0d

    ld [bc], a
    ld bc, $0000
    ld [de], a
    scf
    add hl, de
    ld a, [bc]
    inc d
    inc c
    ld bc, $0014
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0301
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    jr z, jr_003_652d

    ld [bc], a
    nop
    nop
    ld [hl], l
    ld [hl], a
    sub h
    inc c
    inc bc

jr_003_652d:
    dec c
    ld c, $01
    rrca
    nop
    nop
    ld bc, $0001
    inc bc
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$1228], sp
    ld [bc], a
    nop
    nop
    ld b, c
    ld d, [hl]
    adc [hl]
    ld de, $0c04
    dec d
    inc b
    ld b, $00
    nop
    ld bc, $0001
    inc bc
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    dec b
    ld [$0f32], sp
    ld [bc], a
    nop
    nop
    adc b
    adc a
    sub e
    jr jr_003_658d

    rla
    jr @+$03

    ld c, $01
    ld bc, $0101
    nop
    inc bc

jr_003_658d:
    ld bc, $0301
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    ld bc, $0003
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $08
    ld [hl-], a
    ld c, $02
    nop
    nop
    inc d
    ld [hl-], a
    sub e
    rrca
    dec bc
    ld de, $0014
    dec c
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0103
    ld bc, $0101
    ld bc, $0003
    ld bc, $0102
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    dec b
    ld [$1250], sp
    ld bc, $0000
    ld h, l
    add c
    add h
    jr @+$17

    jr @+$1d

    ld de, $0217
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld b, $09
    ld [hl-], a
    jr jr_003_65fd

jr_003_65fd:
    nop
    nop
    inc bc
    sub e
    push de
    inc d
    ld e, $15
    inc d
    rla
    rla
    ld bc, $0001
    nop
    nop
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $09
    ld d, b
    add hl, de
    nop
    nop
    nop
    ccf
    ld e, h
    add c
    dec d
    ld e, $18
    dec d
    rla
    dec d
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $09
    ld b, [hl]
    jr jr_003_6653

jr_003_6653:
    nop
    nop
    inc bc
    ld b, $84
    inc de
    ld e, $14
    dec d
    rla
    rla
    ld bc, $0101
    ld bc, $0100
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld b, $09
    ld d, b
    add hl, de
    nop
    ld bc, $5c00
    ld h, b
    ld h, h
    jr @+$20

    jr jr_003_669c

    rla
    rla
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    inc bc

jr_003_669c:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0600
    add hl, bc
    ld b, [hl]
    jr jr_003_66a9

jr_003_66a9:
    nop
    nop
    ld b, $5b
    ld h, h
    inc d
    ld e, $14
    inc d
    ld d, $15
    ld bc, $0101
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $09
    ld d, b
    add hl, de
    nop
    nop
    nop
    ld h, b
    ld h, l
    add b
    jr @+$20

    ld a, [de]
    dec d
    rla
    rla
    ld bc, $0302
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0600
    add hl, bc
    ld b, [hl]
    jr jr_003_66ff

jr_003_66ff:
    nop
    nop
    ld d, b
    ld e, h
    ld h, h
    dec d
    ld e, $1a
    dec d
    rla
    rla
    ld bc, $0101
    ld bc, $0200
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0600
    add hl, bc
    ld d, b
    rra
    nop
    nop
    nop
    ld d, a
    add b
    reti


    dec e
    ld e, $1a
    jr jr_003_674b

    rla
    ld bc, $0202
    ld [bc], a
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0102
    inc bc
    ld [bc], a
    inc bc
    inc bc

jr_003_674b:
    inc bc
    inc bc
    ld bc, $0001
    ld b, $09
    ld b, [hl]
    ld e, $00
    nop
    nop
    nop
    ld b, $0f
    dec d
    ld e, $1a
    dec d
    rla
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $09
    ld d, b
    rra
    nop
    nop
    nop
    ld b, e
    ld e, h
    add b
    dec e
    ld e, $1a
    dec d
    rla
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld b, $09
    ld b, [hl]
    inc e
    nop
    nop
    nop
    ld e, h
    ld h, b
    ld l, h
    dec d
    ld e, $1a
    jr jr_003_67cc

    rla
    ld bc, $0101
    inc bc
    nop
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc

jr_003_67cc:
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $09
    inc a
    dec de
    nop
    ld bc, $6400
    ld h, l
    add h
    dec d
    ld e, $1a
    dec d
    rla
    rla
    ld bc, $0202
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    ld b, $09
    ld b, [hl]
    dec e
    nop
    nop
    nop
    inc a
    ld e, h
    add d
    jr @+$20

    ld a, [de]
    dec d
    rla
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0600
    add hl, bc
    ld d, b
    rra
    nop
    ld bc, $5400
    ld h, l
    add b
    dec e
    ld e, $1e
    jr jr_003_684d

    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc

jr_003_684d:
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld b, $09
    ld d, b
    ld e, $00
    nop
    nop
    rrca
    ld e, h
    ld h, b
    rra
    ld e, $1f
    jr jr_003_6878

    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc

jr_003_6878:
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0100
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0201
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0001
    inc bc
    nop
    ld bc, $0000
    ld bc, $0001
    rlca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0700
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0100
    ld bc, $0001
    nop
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    rlca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    inc bc
    nop
    ld bc, $0202
    inc bc
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0700
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rlca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
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
    inc bc
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    nop
    rlca

Call_003_6980:
    ld de, $da62
    call Call_003_6987
    ret


Call_003_6987:
    push de
    ld a, [$da5e]
    ld c, $0c
    call $1dbe
    ld a, l
    add $da
    ld l, a
    ld a, h
    adc $71
    ld h, a
    pop de
    ld b, $0c

jr_003_699b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_699b

    ret


    ld a, [$da5e]
    cp $ff
    ret z

    ld a, [$da5e]
    rst $00
    inc b
    ld l, d
    dec b
    ld l, d
    dec b
    ld l, d
    inc l
    ld l, d
    inc l
    ld l, d
    add hl, hl
    ld l, e
    add hl, hl
    ld l, e
    ld d, b
    ld l, e
    ld h, [hl]
    ld l, e
    ld a, h
    ld l, e
    sub d
    ld l, e
    xor b
    ld l, e
    cp [hl]
    ld l, e
    ret nc

    ld l, e
    db $e4
    ld l, e
    ld hl, sp+$6b
    inc c
    ld l, h
    jr nz, @+$6e

    inc [hl]
    ld l, h
    ld c, b
    ld l, h
    ld c, b
    ld l, h
    ld c, b
    ld l, h
    ld c, b
    ld l, h
    ld c, b
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld c, l
    ld l, h
    ld h, e
    ld l, h
    ld a, b
    ld l, h
    adc [hl]
    ld l, h
    and e
    ld l, h
    cp c
    ld l, h
    adc $6c
    rst $08
    ld l, h
    ret nz

    ld l, l
    call $df6d
    ld l, l
    rst $18
    ld l, l
    ld [$c96d], a
    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb13
    call $224f
    push bc
    ld a, [$da60]
    ld hl, $cb11
    call $224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$ca8d]
    or a
    jp z, Jump_003_6ab9

    ld a, $00
    ld hl, $cb0b
    call $224a
    bit 7, a
    jr nz, jr_003_6a5b

    ld a, $00
    ld hl, $cb13
    call $224f
    push bc
    ld a, $00
    ld hl, $cb11
    call $224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_003_6abf

jr_003_6a5b:
    ld a, [$ca8d]
    cp $01
    jr z, jr_003_6ab9

    ld a, $01
    ld hl, $cb0b
    call $224a
    bit 7, a
    jr nz, jr_003_6a8a

    ld a, $01
    ld hl, $cb13
    call $224f
    push bc
    ld a, $01
    ld hl, $cb11
    call $224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_003_6abf

jr_003_6a8a:
    ld a, [$ca8d]
    cp $02
    jr z, jr_003_6ab9

    ld a, $02
    ld hl, $cb0b
    call $224a
    bit 7, a
    jr nz, jr_003_6ab9

    ld a, $02
    ld hl, $cb13
    call $224f
    push bc
    ld a, $02
    ld hl, $cb11
    call $224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_003_6abf

Jump_003_6ab9:
jr_003_6ab9:
    ld a, $ff
    ld [$da5e], a
    ret


jr_003_6abf:
    ld d, $00
    ld a, $00
    call Call_003_6ad7
    ld a, $01
    call Call_003_6ad7
    ld a, $02
    call Call_003_6ad7
    ld a, $26
    add d
    ld [$da6a], a
    ret


Call_003_6ad7:
    ld [$da60], a
    ld hl, $ca8d
    cp [hl]
    ret nc

    push de
    ld hl, $cb0b
    call $224a
    bit 7, a
    pop de
    ret nz

    push de
    ld a, [$da60]
    ld hl, $cb13
    call $224f
    push bc
    ld a, [$da60]
    ld hl, $cb11
    call $224f
    pop hl
    pop de
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret z

    push de
    ld a, d
    swap a
    ld hl, $c1b0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$da60]
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    pop hl
    call $0c80
    pop de
    inc d
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb17
    call $224f
    push bc
    ld a, [$da60]
    ld hl, $cb15
    call $224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call $224a
    bit 2, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call $224a
    bit 3, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call $224a
    bit 4, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call $224a
    bit 0, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call $224a
    bit 1, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call $224a
    bit 7, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb13
    call $224f
    ld hl, $03e7
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb17
    call $224f
    ld hl, $03e7
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb19
    call $224f
    ld hl, $03e7
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb1b
    call $224f
    ld hl, $03e7
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb1d
    call $224f
    ld hl, $01ff
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb1f
    call $224f
    ld hl, $00ff
    call Call_003_7110
    ret


    call Call_003_6e11
    ret nz

    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb25
    call $224a
    cp $ff
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb25
    call $224a
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb26
    call $224a
    cp $ff
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb26
    call $224a
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb28
    call $224a
    cp $ff
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb28
    call $224a
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ret


    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    and $f0
    ld l, a
    ld a, [$c966]
    ld e, a
    ld a, [$c967]
    ld d, a
    ld a, e
    and $f0
    ld e, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_003_6cf7

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_003_6cf7:
    ldh a, [$92]
    ld e, a
    ldh a, [$93]
    ld d, a
    ld a, e
    and $f0
    ld e, a
    ld a, [$c964]
    ld c, a
    ld a, [$c965]
    ld b, a
    ld a, c
    and $f0
    ld c, a
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    jr nc, jr_003_6d1f

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_003_6d1f:
    push hl
    push de
    ld a, h
    or a
    jr nz, jr_003_6d44

    ld a, d
    or a
    jr nz, jr_003_6d44

    ld a, l
    cp $20
    jr nz, jr_003_6d37

    ld a, e
    cp $50
    jr c, jr_003_6d44

    ld b, $00
    jr jr_003_6d64

jr_003_6d37:
    cp $10
    jr nz, jr_003_6d44

    ld a, e
    cp $30
    jr c, jr_003_6d44

    ld b, $00
    jr jr_003_6d64

jr_003_6d44:
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, [$c966]
    ld e, a
    ld a, [$c967]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld b, $06
    jr c, jr_003_6d64

    ld a, h
    or l
    ld b, $03
    jr nz, jr_003_6d64

    ld b, $00

jr_003_6d64:
    pop de
    pop hl
    ld a, h
    or a
    jr nz, jr_003_6d89

    ld a, d
    or a
    jr nz, jr_003_6d89

    ld a, e
    cp $20
    jr nz, jr_003_6d7c

    ld a, l
    cp $50
    jr c, jr_003_6d89

    ld a, $00
    jr jr_003_6da9

jr_003_6d7c:
    cp $10
    jr nz, jr_003_6d89

    ld a, l
    cp $30
    jr c, jr_003_6d89

    ld a, $00
    jr jr_003_6da9

jr_003_6d89:
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, [$c964]
    ld e, a
    ld a, [$c965]
    ld d, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, $02
    jr c, jr_003_6da9

    ld a, h
    or l
    ld a, $01
    jr nz, jr_003_6da9

    ld a, $00

jr_003_6da9:
    add b
    add $3a
    ld l, a
    ld h, $02
    ld de, $c1b0
    call $097a
    ld a, [$c969]
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$c969]
    or a
    jr z, jr_003_6dc7

    ret


jr_003_6dc7:
    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$c93e]
    bit 1, a
    jr nz, jr_003_6dd9

    ld a, [$c969]
    or a
    ret nz

jr_003_6dd9:
    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$c969]
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


    ld a, [$c969]
    or a
    ret nz

    ld a, [$c968]
    cp $53
    jr c, jr_003_6e0b

    cp $5a
    jr z, jr_003_6e0b

    cp $5b
    jr z, jr_003_6e0b

    cp $5c
    jr z, jr_003_6e0b

    cp $5d
    jr z, jr_003_6e0b

    cp $60
    jr z, jr_003_6e0b

    ret


jr_003_6e0b:
    ld a, $ff
    ld [$da5e], a
    ret


Call_003_6e11:
    ld a, [$da60]
    ld hl, $cb0b
    call $224a
    bit 7, a
    ret z

    ld a, $ff
    ld [$da5e], a
    or a
    ret


    ld a, [$da5e]
    cp $ff
    ret z

    call Call_003_6980
    ld a, [$da5e]
    rst $00
    adc c
    ld l, [hl]
    adc d
    ld l, [hl]
    adc d
    ld l, [hl]
    xor b
    ld l, [hl]
    rst $18
    ld l, [hl]
    ld de, $2f6f
    ld l, a
    ld b, l
    ld l, a
    ld d, h
    ld l, a
    ld h, e
    ld l, a
    ld [hl], d
    ld l, a
    add c
    ld l, a
    sub b
    ld l, a
    or l
    ld l, a
    push bc
    ld l, a
    push de
    ld l, a
    push hl
    ld l, a
    push af
    ld l, a
    dec b
    ld [hl], b
    dec d
    ld [hl], b
    dec d
    ld [hl], b
    dec d
    ld [hl], b
    dec h
    ld [hl], b
    ld b, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, c
    ld [hl], b
    ld d, d
    ld [hl], b
    ld d, e
    ld [hl], b
    ld d, h
    ld [hl], b
    ld d, l
    ld [hl], b
    ld e, c
    ld [hl], b
    ld e, d
    ld [hl], b
    ld l, d
    ld [hl], b
    ld a, d
    ld [hl], b
    adc d
    ld [hl], b
    sbc d
    ld [hl], b
    xor d
    ld [hl], b
    cp d
    ld [hl], b
    cp e
    ld [hl], b
    cp a
    ld [hl], b
    jp $cc70


    ld [hl], b
    and $70
    push af
    ld [hl], b
    ret


    call $12d0
    ld a, [$c899]
    ld b, a
    ld a, $0b
    call $1dfb
    ld b, a
    ld a, [$da6b]
    add b
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $22a0
    call Call_003_7134
    ret


    ld a, $00
    ld [$da60], a
    call Call_003_6ec4
    ld a, $01
    ld [$da60], a
    call Call_003_6ec4
    ld a, $02
    ld [$da60], a
    call Call_003_6ec4
    call Call_003_7134
    ret


Call_003_6ec4:
    call $12d0
    ld a, [$c899]
    ld b, a
    ld a, $0b
    call $1dfb
    ld b, a
    ld a, [$da6b]
    add b
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $22a0
    ret


    ld a, $00
    call Call_003_6ef2
    ld a, $01
    call Call_003_6ef2
    ld a, $02
    call Call_003_6ef2
    call Call_003_7134
    ret


Call_003_6ef2:
    ld hl, $ca8d
    cp [hl]
    ret nc

    ld [$da60], a
    call Call_003_6e11
    ret nz

    ld a, [$da60]
    ld hl, $cb13
    call $224f
    ld a, [$da60]
    ld hl, $cb11
    call $225d
    ret


    call $12d0
    ld a, [$c899]
    ld b, a
    ld a, $0b
    call $1dfb
    ld b, a
    ld a, [$da6b]
    add b
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $22d2
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb17
    call $224f
    ld a, [$da60]
    ld hl, $cb15
    call $225d
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call $2229
    res 2, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call $2229
    res 3, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call $2229
    res 4, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call $2229
    res 0, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call $2229
    res 1, [hl]
    call Call_003_7134
    ret


    ld a, [$da60]
    ld hl, $cb0b
    call $2229
    ld [hl], $00
    ld a, [$da60]
    ld hl, $cb13
    call $224f
    ld a, [$da60]
    ld hl, $cb11
    call $225d
    ld hl, $0103
    rst $10
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $23e6
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2400
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2304
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $231e
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2338
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2352
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2379
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2379
    ld a, [$da60]
    ld hl, $cb0b
    call $2229
    set 2, [hl]
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2379
    call Call_003_7134
    ret


    ret


    ret


    ret


    ret


    ret


    call Call_003_7134
    ret


    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2386
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $2392
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $23ce
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $23da
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $239e
    call Call_003_7134
    ret


    ld a, [$da6b]
    ld l, a
    ld h, $00
    ld a, [$da60]
    call $23aa
    call Call_003_7134
    ret


    ret


    call Call_003_7134
    ret


    call Call_003_7134
    ret


    ld hl, $c93e
    set 1, [hl]
    call Call_003_7134
    ret


    ld hl, $010b
    rst $10
    ld hl, $c8eb
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $00
    ld [$da09], a
    ld hl, $c90d
    inc [hl]
    call Call_003_7134
    ret


    ld hl, $c950
    ld bc, $0010
    ld a, $01
    call $12c7
    call Call_003_7134
    ret


    ld a, [$c83c]
    or a
    jr nz, jr_003_710f

    call Call_003_7134
    di
    call $2128
    ei
    ld a, $59
    call $1b2c
    ld h, $0d
    ld l, $2f
    call $096d

jr_003_710f:
    ret


Call_003_7110:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr z, jr_003_712e

    ld a, h
    or a
    ld a, [$da6b]
    jr nz, jr_003_7127

    cp l
    jr z, jr_003_7127

    jr c, jr_003_7127

    ld a, l

jr_003_7127:
    ld hl, $c1b0
    call $09a4
    ret


jr_003_712e:
    ld a, $ff
    ld [$da5e], a
    ret


Call_003_7134:
    call $12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $64
    call $1e0d
    ld hl, $da65
    cp [hl]
    ret nc

    ld a, $ff
    ld [$da5e], a
    ld a, [$da5f]
    ld hl, $ca51
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $ff
    call Call_003_7160
    ret


Call_003_7160:
    ld hl, $c0d8
    ld de, $ca51
    ld b, $14

jr_003_7168:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_003_7168

    ld hl, $ca51
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $ca51
    ld b, $14

jr_003_7181:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_718c

    cp $00
    jr z, jr_003_718c

    ld [de], a
    inc de

jr_003_718c:
    dec b
    jr nz, jr_003_7181

    ret


    ld a, [$da5e]
    cp $00
    ret z

    cp $ff
    ret z

    ld hl, $ca51
    ld b, $14

jr_003_719e:
    ld a, [hl]
    cp $00
    jr z, jr_003_71b1

    cp $ff
    jr z, jr_003_71b1

    inc hl
    dec b
    jr nz, jr_003_719e

    ld a, $ff
    ld [$da5e], a
    ret


jr_003_71b1:
    ld a, [$da5e]
    ld [hl], a
    ret


    ld a, [$da5e]
    cp $00
    ret z

    cp $ff
    ret z

    ld hl, $ca51
    ld b, $14

jr_003_71c4:
    ld a, [$da5e]
    cp [hl]
    jr z, jr_003_71d4

    inc hl
    dec b
    jr nz, jr_003_71c4

    ld a, $ff
    ld [$da5e], a
    ret


jr_003_71d4:
    ld [hl], $ff
    call Call_003_7160
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$6400], sp
    nop
    inc b
    nop
    inc bc
    inc b
    ld e, $28
    nop
    nop
    ld d, b
    nop
    ld h, h
    nop
    inc b
    ld bc, $0403
    inc a
    ld b, [hl]
    nop
    nop
    add sp, $03
    inc d
    ld [bc], a
    dec b
    nop
    dec b
    inc b
    dec l
    scf
    nop
    nop
    db $f4
    ld bc, $0064
    dec b
    ld bc, $0406
    rst $38
    rst $38
    nop
    nop
    ret z

    nop
    ld h, h
    nop
    inc b
    ld bc, $0703
    inc d
    ld e, $00
    nop
    ret nc

    rlca
    ld h, h
    nop
    inc b
    ld bc, $0703
    rst $38
    rst $38
    nop
    ld bc, $000a
    ld h, h
    nop
    inc b
    nop
    inc bc
    ld [$0000], sp
    nop
    ld bc, $001e
    ld h, h
    nop
    inc b
    nop
    inc bc
    add hl, bc
    nop
    nop
    nop
    ld bc, $0032
    ld h, h
    nop
    inc b
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    nop
    ld bc, $0050
    ld h, h
    nop
    inc b
    ld b, $06
    dec bc
    nop
    nop
    nop
    ld bc, $0032
    ld h, h
    nop
    inc b
    ld bc, $0c03
    nop
    nop
    nop
    ld bc, $03e8
    ld h, h
    nop
    inc b
    nop
    inc bc
    dec c
    nop
    nop
    nop
    ld [bc], a
    ld a, [de]
    nop
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    ld c, $05
    nop
    nop
    ld [bc], a
    ld e, $00
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    rrca
    dec b
    nop
    nop
    ld [bc], a
    ld d, $00
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    db $10
    inc bc
    nop
    nop
    ld [bc], a
    ld d, $00
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    ld de, $0003
    nop
    ld [bc], a
    ld [de], a
    nop
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    ld [de], a
    inc bc
    nop
    nop
    ld [bc], a
    rrca
    nop
    ld h, h
    nop
    inc b
    inc bc
    inc bc
    inc de
    inc bc
    nop
    nop
    inc bc
    inc d
    nop
    ld h, h
    nop
    inc b
    inc b
    inc d
    dec d
    dec b
    ld a, [bc]
    nop
    inc bc
    ld d, b
    nop
    ld h, h
    nop
    inc b
    inc b
    inc d
    dec d
    ld a, [bc]
    ld e, $00
    inc bc
    inc l

jr_003_72d8:
    ld bc, $0064
    inc b
    inc b
    inc d
    dec d
    inc d
    ld h, h
    nop
    inc bc
    inc d
    nop
    ld h, h
    nop
    inc b
    inc b
    inc d
    ld d, $05
    dec b
    ld bc, $e803
    inc bc
    ld h, h
    nop
    inc b
    inc b
    inc d
    dec d
    ld h, h
    rst $38
    nop
    inc b
    cp b
    dec bc
    inc d
    ld [bc], a
    inc bc
    dec b
    rla
    jr jr_003_7327

    ld [hl-], a
    nop
    inc b
    call c, $0a05
    ld [bc], a
    inc bc
    dec b
    rla
    add hl, de
    ld [$0018], sp
    inc b
    cp h
    ld [bc], a
    inc d
    ld [bc], a
    inc bc
    dec b
    rla
    ld a, [de]
    nop
    nop
    nop
    inc b
    ret nc

    rlca
    inc d
    ld [bc], a
    inc bc
    dec b
    rla
    dec de

jr_003_7327:
    ld e, $2a
    nop
    inc b
    and b
    rrca
    inc d
    ld [bc], a
    inc bc
    dec b
    rla
    inc e
    ld a, b
    adc h
    nop
    dec b
    ld h, h
    nop
    ld h, h
    ld bc, $0607
    dec e
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    ld h, h
    inc bc
    rlca
    rlca
    ld e, $00
    nop
    nop
    dec b
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    jr nz, jr_003_72d8

    add b
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    ld hl, $8080
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    ld [hl+], a
    add b
    add b
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    inc hl
    add b
    add b
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    inc h
    add b
    add b
    nop
    ld [bc], a
    adc b
    inc de
    ld h, h
    ld bc, $0000
    rra
    dec h
    add b
    add b
    nop
    inc b
    adc b
    inc de
    inc d
    ld [bc], a
    ld [bc], a
    dec b
    rla
    ld h, $b4
    ret z

    nop
    rlca
    sub b
    ld bc, $0100
    ld bc, $1e07
    ld a, [hl+]
    nop
    nop
    inc b
    rlca
    ld h, h
    nop
    ld h, h
    ld bc, $0701
    ld e, $00
    nop
    nop
    inc b
    rlca
    ret z

    nop
    ld h, h
    ld bc, $0701
    ld e, $2b
    nop
    nop
    nop
    rlca
    cp b
    dec bc
    nop
    ld bc, $0701
    inc l
    nop
    nop
    nop
    inc b
    rlca
    ld b, [hl]
    nop
    ld h, h
    ld bc, $0701
    ld e, $2d
    nop
    nop
    nop
    rlca
    ld h, h
    nop
    ld h, h
    ld bc, $0707
    ld e, $2e
    nop
    nop
    inc b
    ld b, $07
    rlca
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add c
    ld b, $07
    dec b
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $05
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add d
    inc b
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
    ld b, $05
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $04
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $04
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $04
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $04
    inc c
    nop
    nop
    add e
    ld hl, sp+$30
    db $fd
    add hl, bc
    cp $88
    jr nc, @+$52

    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc c
    rst $38
    add e

jr_003_74d7:
    ld sp, hl
    jr nc, jr_003_74d7

    add hl, bc
    cp $88
    jr nc, jr_003_74d7

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38
    add e
    ld hl, sp+$30
    db $fd
    add hl, bc
    cp $88
    jr nc, @-$05

    inc sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc sp
    inc c
    rst $38
    add e

jr_003_74f9:
    ld sp, hl
    jr nc, jr_003_74f9

    add hl, bc
    cp $83
    jr nc, jr_003_74f9

    ld a, [hl+]
    inc b
    rst $38
    add c
    dec l
    inc c
    rst $38
    add e
    ld hl, sp+$30
    db $fd
    add hl, bc
    cp $83
    jr nc, @-$05

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c
    rst $38
    add e

jr_003_7519:
    ld sp, hl
    jr nc, jr_003_7519

    add hl, bc
    cp $83
    jr nc, jr_003_7519

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c
    rst $38
    add h
    ld hl, sp+$30
    db $fd
    cp $06
    ld a, l
    add l
    cp $fe
    jr nc, @-$05

    inc l
    inc b
    rst $38
    add c
    cpl
    inc c
    rst $38
    sub h

jr_003_753c:
    ld sp, hl
    jr nc, jr_003_753c

    ld a, [hl]
    rra
    db $10
    inc h
    ld [hl+], a
    inc d
    ld c, l
    ld l, [hl]
    cp $30
    ld hl, sp+$33
    dec c
    ld c, $0e
    rrca
    inc sp
    inc c
    rst $38
    add l
    ld hl, sp+$30
    db $fd
    cp $6f
    dec b
    ld l, l
    adc d
    ld a, a
    cp $30
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07
    inc c
    rst $38
    add e

jr_003_7568:
    ld sp, hl
    jr nc, jr_003_7568

    add hl, bc
    cp $87
    jr nc, @+$01

    ld [hl+], a
    ld [de], a
    ld e, $21
    inc d
    dec c
    rst $38
    add e
    ld hl, sp+$30
    db $fd
    add hl, bc
    cp $81
    jr nc, jr_003_7593

    rst $38
    add e

jr_003_7582:
    ld sp, hl
    jr nc, jr_003_7582

    add hl, bc
    cp $88
    jr nc, jr_003_7582

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38
    add e

jr_003_7593:
    ld hl, sp+$30
    db $fd
    add hl, bc
    cp $86
    jr nc, @+$01

    inc hl
    jr jr_003_75ba

    inc d
    ld c, $ff
    add e

jr_003_75a2:
    ld sp, hl
    jr nc, jr_003_75a2

    add hl, bc
    cp $81
    jr nc, jr_003_75ad

    rst $38
    add c
    ld e, l

jr_003_75ad:
    rrca
    rst $38
    add e
    ld hl, sp+$30
    db $fd
    add hl, bc
    cp $88
    jr nc, @-$05

    ld hl, sp-$07

jr_003_75ba:
    ld hl, sp-$07
    ld hl, sp-$07
    inc c
    rst $38
    add e

jr_003_75c1:
    ld sp, hl
    jr nc, jr_003_75c1

    add hl, bc
    cp $87
    jr nc, @+$01

    dec de
    jr @+$1f

    inc d
    ld [hl+], a
    dec c
    rst $38
    add e
    ld hl, sp+$30
    db $fd
    add hl, bc
    cp $81
    jr nc, jr_003_75ec

    rst $38
    add e

jr_003_75db:
    ld sp, hl
    jr nc, jr_003_75db

    add hl, bc
    cp $88
    jr nc, jr_003_75db

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38
    nop

jr_003_75ec:
    add c
    inc b
    inc c
    ld b, $07
    rlca
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $07
    dec b
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    nop
    inc b
    inc b
    dec c
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    nop
    inc b
    inc b
    dec c
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    nop
    inc b
    inc b
    dec c
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    nop
    inc b
    inc b
    dec c
    nop
    add c
    inc b
    ld [$8106], sp
    inc bc
    inc bc
    ld b, $82
    dec b
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $04
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $04
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $04
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $04
    inc c
    nop
    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, jr_003_7703

    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    add d
    jr nc, @+$46

    ld b, $45
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, jr_003_7701

    inc sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc sp
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    add e
    jr nc, jr_003_7711

    ld a, [hl+]
    inc b
    rst $38
    add c
    dec l
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    add e
    jr nc, jr_003_7720

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c
    nop
    add d
    ld sp, $0a30
    ei
    add e
    jr nc, jr_003_772f

    dec hl
    inc b
    rst $38
    add c

jr_003_7701:
    ld l, $0c

jr_003_7703:
    nop
    add d
    ld sp, $0a30
    ei
    add e
    jr nc, jr_003_773e

    inc l
    inc b
    rst $38
    add c
    cpl

jr_003_7711:
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, @+$34

    inc sp
    dec c
    ld c, $0e
    rrca

jr_003_7720:
    inc sp
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    add d
    jr nc, jr_003_775d

    ld b, $fc
    inc c
    nop

jr_003_772f:
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, jr_003_7778

    ld [hl+], a
    ld [de], a
    ld e, $21
    inc d
    ld b, e
    inc c

jr_003_773e:
    nop
    add d
    ld sp, $0a30
    ei
    add c
    jr nc, jr_003_774e

    rst $38
    inc c
    nop
    add d
    ld sp, $0a30

jr_003_774e:
    ei
    add d
    jr nc, jr_003_77a0

    dec b
    dec a
    add c
    ld c, a
    inc c
    nop
    add d
    ld sp, $0a30
    ei

jr_003_775d:
    adc b
    jr nc, jr_003_7797

    inc hl
    jr @+$1e

    inc d
    rst $38
    jr c, jr_003_7773

    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, @+$39

    rst $38
    rst $38
    ld h, [hl]

jr_003_7773:
    rst $38
    rst $38
    jr c, jr_003_7783

    nop

jr_003_7778:
    add d
    ld sp, $0a30
    ei
    add d
    jr nc, jr_003_77bc

    dec b
    dec a
    add c

jr_003_7783:
    ld a, $0c
    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, @+$39

    dec de
    jr jr_003_77ae

    inc d
    ld [hl+], a
    jr c, jr_003_77a1

    nop
    add d

jr_003_7797:
    ld sp, $0a30
    ei
    add d
    jr nc, jr_003_77d5

    dec b
    rst $38

jr_003_77a0:
    add c

jr_003_77a1:
    jr c, jr_003_77af

    nop
    add d
    ld sp, $0a30
    ei
    add d
    jr nc, jr_003_77e5

    dec b
    ld a, [hl-]

jr_003_77ae:
    add c

jr_003_77af:
    dec sp
    inc c
    nop
    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, jr_003_780b

    ld d, c

jr_003_77bc:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    add d
    jr nc, @+$46

    ld b, $45
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    adc b

jr_003_77d5:
    jr nc, jr_003_7809

    inc sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc sp
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    add e

jr_003_77e5:
    jr nc, jr_003_7819

    ld a, [hl+]
    inc b
    rst $38
    add c
    dec l
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    add e
    jr nc, jr_003_7828

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c
    nop
    add d
    ld sp, $0a30
    ei
    add e
    jr nc, jr_003_7837

    dec hl
    inc b
    rst $38
    add c

jr_003_7809:
    ld l, $0c

jr_003_780b:
    nop
    add h
    ld sp, $fb30
    ld e, l
    ld b, $5e
    add l
    ld e, a
    ei
    jr nc, @+$34

    inc l

jr_003_7819:
    inc b
    rst $38
    add c
    cpl
    inc c
    nop
    sub h
    ld sp, $fb30
    ld l, l
    rra
    db $10
    inc h
    ld [hl+], a

jr_003_7828:
    inc d
    ld c, l
    ld l, [hl]
    ei
    jr nc, jr_003_7860

    inc sp
    dec c
    ld c, $0e
    rrca
    inc sp
    inc c
    nop
    add l

jr_003_7837:
    ld sp, $fb30
    ld a, l
    ld a, [hl]
    dec b
    ld a, a
    add h
    ld l, a
    ei
    jr nc, jr_003_7875

    ld b, $fc
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, jr_003_7890

    ld [hl+], a
    ld [de], a
    ld e, $21
    inc d
    ld b, e
    inc c
    nop
    add d
    ld sp, $0a30
    ei
    add c
    jr nc, jr_003_7866

    rst $38

jr_003_7860:
    inc c
    nop
    add d
    ld sp, $0a30

jr_003_7866:
    ei
    add d
    jr nc, jr_003_78b8

    dec b
    dec a
    add c
    ld c, a
    inc c
    nop
    add d
    ld sp, $0a30
    ei

jr_003_7875:
    adc b
    jr nc, jr_003_78af

    inc hl
    jr @+$1e

    inc d
    rst $38
    jr c, jr_003_788b

    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, @+$39

    rst $38
    rst $38
    ld h, [hl]

jr_003_788b:
    rst $38
    rst $38
    jr c, jr_003_789b

    nop

jr_003_7890:
    add d
    ld sp, $0a30
    ei
    add d
    jr nc, jr_003_78d4

    dec b
    dec a
    add c

jr_003_789b:
    ld a, $0c
    nop
    add d
    ld sp, $0a30
    ei
    adc b
    jr nc, jr_003_78dd

    dec de
    jr jr_003_78c6

    inc d
    ld [hl+], a
    jr c, jr_003_78b9

    nop
    add d

jr_003_78af:
    ld sp, $0a30
    ei
    add d
    jr nc, jr_003_78ed

    dec b
    rst $38

jr_003_78b8:
    add c

jr_003_78b9:
    jr c, jr_003_78c7

    nop
    add d
    ld sp, $0a30
    ei
    add d
    jr nc, jr_003_78fd

    dec b
    ld a, [hl-]

jr_003_78c6:
    add c

jr_003_78c7:
    dec sp
    inc c
    nop
    nop
    add d
    add sp, $30
    ld a, [bc]
    ei
    adc b
    jr nc, jr_003_7923

    ld d, c

jr_003_78d4:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc c
    rst $38

jr_003_78db:
    add d
    jp hl


jr_003_78dd:
    jr nc, @+$0c

    ei
    adc b
    jr nc, jr_003_78db

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38
    add d

jr_003_78ec:
    jp hl


jr_003_78ed:
    jr nc, jr_003_78f9

    ei
    adc b
    jr nc, jr_003_78ec

    inc sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc sp

jr_003_78f9:
    inc c
    rst $38

jr_003_78fb:
    add d
    jp hl


jr_003_78fd:
    jr nc, jr_003_7909

    ei
    add e
    jr nc, jr_003_78fb

    ld a, [hl+]
    inc b
    rst $38
    add c
    dec l
    inc c

jr_003_7909:
    rst $38
    add d

jr_003_790b:
    jp hl


    jr nc, jr_003_7918

    ei
    add e
    jr nc, jr_003_790b

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c

jr_003_7918:
    rst $38

jr_003_7919:
    add d
    jp hl


    jr nc, jr_003_7927

    ei
    add e
    jr nc, jr_003_7919

    dec hl
    inc b

jr_003_7923:
    rst $38
    add c
    ld l, $0c

jr_003_7927:
    rst $38
    add d

jr_003_7929:
    jp hl


    jr nc, jr_003_7936

    ei
    add e
    jr nc, jr_003_7929

    inc l
    inc b
    rst $38
    add c
    cpl
    inc c

jr_003_7936:
    rst $38

jr_003_7937:
    add d
    jp hl


    jr nc, jr_003_7945

    ei
    adc b
    jr nc, jr_003_7937

    inc sp
    dec c
    ld c, $0e
    rrca
    inc sp

jr_003_7945:
    inc c
    rst $38
    add d

jr_003_7948:
    jp hl


    jr nc, jr_003_7955

    ei
    adc b
    jr nc, jr_003_7948

    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07

jr_003_7955:
    inc c
    rst $38
    add d
    jp hl


    jr nc, jr_003_7965

    ei
    add a
    jr nc, @+$01

    ld [hl+], a
    ld [de], a
    ld e, $21
    inc d
    dec c

jr_003_7965:
    rst $38
    add d
    jp hl


    jr nc, jr_003_7974

    ei
    add c
    jr nc, jr_003_7981

    rst $38

jr_003_796f:
    add d
    jp hl


    jr nc, @+$0c

    ei

jr_003_7974:
    adc b
    jr nc, jr_003_796f

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38
    add d
    jp hl


jr_003_7981:
    jr nc, jr_003_798d

    ei
    add [hl]
    jr nc, @+$01

    inc hl
    jr jr_003_79a6

    inc d
    ld c, $ff

jr_003_798d:
    add d
    jp hl


    jr nc, jr_003_799b

    ei
    add c
    jr nc, jr_003_7998

    rst $38
    add c
    ld e, l

jr_003_7998:
    rrca
    rst $38
    add d

jr_003_799b:
    jp hl


    jr nc, jr_003_79a8

    ei
    adc b
    jr nc, jr_003_799b

    ld hl, sp-$07
    ld hl, sp-$07

jr_003_79a6:
    ld hl, sp-$07

jr_003_79a8:
    inc c
    rst $38
    add d
    jp hl


    jr nc, jr_003_79b8

    ei
    add a
    jr nc, @+$01

    dec de
    jr jr_003_79d2

    inc d
    ld [hl+], a
    dec c

jr_003_79b8:
    rst $38
    add d
    jp hl


    jr nc, jr_003_79c7

    ei
    add c
    jr nc, jr_003_79d4

    rst $38

jr_003_79c2:
    add d
    ld [$0a30], a
    ei

jr_003_79c7:
    adc b
    jr nc, jr_003_79c2

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38

jr_003_79d2:
    nop
    add d

jr_003_79d4:
    inc b
    ld b, $0a
    rlca
    add c
    ld b, $07
    rlca
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add c
    ld b, $07
    dec b
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $05
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $05
    nop
    inc b
    ld b, $0d
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $05
    nop
    inc b
    ld b, $0d
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $05
    nop
    inc b
    ld b, $0d
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $05
    nop
    inc b
    ld b, $0d
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add e
    ld b, $05
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $04
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $04
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $04
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $06
    inc c
    nop
    add d
    inc b
    ld b, $0a
    rlca
    add d
    ld b, $05
    ld b, $04
    inc c
    nop
    nop
    add e
    add sp, $30
    db $fd
    add hl, bc
    cp $88
    jr nc, @+$52

    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc c
    rst $38
    add e

jr_003_7ac6:
    jp hl


    jr nc, jr_003_7ac6

    add hl, bc
    cp $88
    jr nc, jr_003_7ac6

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38
    add e

jr_003_7ad7:
    jp hl


jr_003_7ad8:
    jr nc, jr_003_7ad7

    add hl, bc
    cp $88
    jr nc, jr_003_7ad8

    inc sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc sp
    inc c
    rst $38
    add e

jr_003_7ae8:
    jp hl


    jr nc, jr_003_7ae8

    add hl, bc
    cp $83
    jr nc, jr_003_7ae8

    ld a, [hl+]
    inc b
    rst $38
    add c
    dec l
    inc c
    rst $38
    add e

jr_003_7af8:
    jp hl


jr_003_7af9:
    jr nc, jr_003_7af8

    add hl, bc
    cp $83
    jr nc, jr_003_7af9

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c
    rst $38
    add e

jr_003_7b08:
    jp hl


    jr nc, jr_003_7b08

    add hl, bc
    cp $83
    jr nc, jr_003_7b08

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c
    rst $38
    add h

jr_003_7b18:
    jp hl


    jr nc, jr_003_7b18

    cp $06
    ld a, l
    add l
    cp $fe
    jr nc, @-$05

    inc l
    inc b
    rst $38
    add c
    cpl
    inc c
    rst $38
    sub h

jr_003_7b2b:
    jp hl


    jr nc, jr_003_7b2b

    ld a, [hl]
    rra
    db $10
    inc h
    ld [hl+], a
    inc d
    ld c, l
    ld l, [hl]
    cp $30
    ld hl, sp+$33
    dec c
    ld c, $0e
    rrca
    inc sp
    inc c
    rst $38
    add l

jr_003_7b42:
    jp hl


    jr nc, jr_003_7b42

    cp $6f
    dec b
    ld l, l
    adc d
    ld a, a
    cp $30
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07
    inc c
    rst $38
    add e

jr_003_7b57:
    jp hl


    jr nc, jr_003_7b57

    add hl, bc
    cp $87
    jr nc, @+$01

    ld [hl+], a
    ld [de], a
    ld e, $21
    inc d
    dec c
    rst $38
    add e

jr_003_7b67:
    jp hl


    jr nc, jr_003_7b67

    add hl, bc
    cp $81
    jr nc, jr_003_7b82

    rst $38
    add e

jr_003_7b71:
    jp hl


    jr nc, jr_003_7b71

    add hl, bc
    cp $88
    jr nc, jr_003_7b71

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38
    add e

jr_003_7b82:
    jp hl


    jr nc, jr_003_7b82

    add hl, bc
    cp $86
    jr nc, @+$01

    inc hl
    jr jr_003_7ba9

    inc d
    ld c, $ff
    add e

jr_003_7b91:
    jp hl


    jr nc, jr_003_7b91

    add hl, bc
    cp $81
    jr nc, jr_003_7b9c

    rst $38
    add c
    ld e, l

jr_003_7b9c:
    rrca
    rst $38
    add e

jr_003_7b9f:
    jp hl


jr_003_7ba0:
    jr nc, jr_003_7b9f

    add hl, bc
    cp $88
    jr nc, jr_003_7ba0

    ld hl, sp-$07

jr_003_7ba9:
    ld hl, sp-$07
    ld hl, sp-$07
    inc c
    rst $38
    add e

jr_003_7bb0:
    jp hl


    jr nc, jr_003_7bb0

    add hl, bc
    cp $87
    jr nc, @+$01

    dec de
    jr @+$1f

    inc d
    ld [hl+], a
    dec c
    rst $38
    add e

jr_003_7bc0:
    jp hl


    jr nc, jr_003_7bc0

    add hl, bc
    cp $81
    jr nc, jr_003_7bdb

    rst $38
    add e

jr_003_7bca:
    ld [$fd30], a
    add hl, bc
    cp $88
    jr nc, jr_003_7bca

    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp+$0c
    rst $38
    nop

jr_003_7bdb:
    add c
    inc b
    inc c
    ld b, $07
    rlca
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $07
    dec b
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    nop
    inc b
    ld b, $0d
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    nop
    inc b
    ld b, $0d
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    nop
    inc b
    ld b, $0d
    nop
    add c
    inc b
    inc c
    ld b, $82
    dec b
    nop
    inc b
    ld b, $0d
    nop
    add c
    inc b
    ld [$8106], sp
    inc bc
    inc bc
    ld b, $82
    dec b
    ld b, $04
    nop
    add c
    ld b, $0c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $04
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $04
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $04
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $06
    inc c
    nop
    add c
    inc b
    inc c
    ld b, $81
    dec b
    ld b, $04
    inc c
    nop
    nop
    add d
    add sp, $30
    ld a, [bc]
    ei
    adc b
    jr nc, jr_003_7ce5

    rst $38
    ld d, b
    ld d, c
    db $76
    rst $38
    ld d, d
    inc c
    nop
    add d
    jp hl


    jr nc, jr_003_7cb8

    ei
    add d
    jr nc, @+$46

    ld b, $45
    inc c
    nop
    add d
    jp hl


jr_003_7cb8:
    jr nc, jr_003_7cc4

    ei
    adc b
    jr nc, jr_003_7cf0

    inc sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc sp

jr_003_7cc4:
    inc c
    nop
    add d
    jp hl


    jr nc, jr_003_7cd4

    ei
    add e
    jr nc, jr_003_7d00

    ld a, [hl+]
    inc b
    rst $38
    add c
    dec l
    inc c

jr_003_7cd4:
    nop
    add d
    jp hl


    jr nc, jr_003_7ce3

    ei
    add e
    jr nc, jr_003_7d0f

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c

jr_003_7ce3:
    nop
    add d

jr_003_7ce5:
    jp hl


    jr nc, jr_003_7cf2

    ei
    add e
    jr nc, jr_003_7d1e

    dec hl
    inc b
    rst $38
    add c

jr_003_7cf0:
    ld l, $0c

jr_003_7cf2:
    nop
    add d
    jp hl


    jr nc, jr_003_7d01

    ei
    add e
    jr nc, jr_003_7d2d

    inc l
    inc b
    rst $38
    add c
    cpl

jr_003_7d00:
    inc c

jr_003_7d01:
    nop
    add d
    jp hl


    jr nc, jr_003_7d10

    ei
    adc b
    jr nc, @+$34

    inc sp
    dec c
    ld c, $0e
    rrca

jr_003_7d0f:
    inc sp

jr_003_7d10:
    inc c
    nop
    add d
    jp hl


    jr nc, jr_003_7d20

    ei
    add d
    jr nc, jr_003_7d4c

    ld b, $fc
    inc c
    nop

jr_003_7d1e:
    add d
    jp hl


jr_003_7d20:
    jr nc, jr_003_7d2c

    ei
    adc b
    jr nc, jr_003_7d67

    ld [hl+], a
    ld [de], a
    ld e, $21
    inc d
    ld b, d

jr_003_7d2c:
    inc c

jr_003_7d2d:
    nop
    add d
    jp hl


    jr nc, @+$0c

    ei
    add c
    jr nc, jr_003_7d3d

    rst $38
    inc c
    nop
    add d
    jp hl


    jr nc, jr_003_7d47

jr_003_7d3d:
    ei
    add d
    jr nc, jr_003_7d8f

    dec b
    dec a
    add c
    ld c, a
    inc c
    nop

jr_003_7d47:
    add d
    jp hl


    jr nc, @+$0c

    ei

jr_003_7d4c:
    adc b
    jr nc, jr_003_7d86

    inc hl
    jr @+$1e

    inc d
    rst $38
    jr c, jr_003_7d62

    nop
    add d
    jp hl


    jr nc, @+$0c

    ei
    adc b
    jr nc, @+$39

    rst $38
    rst $38
    ld h, [hl]

jr_003_7d62:
    rst $38
    rst $38
    jr c, jr_003_7d72

    nop

jr_003_7d67:
    add d
    jp hl


    jr nc, jr_003_7d75

    ei
    add d
    jr nc, jr_003_7dab

    dec b
    dec a
    add c

jr_003_7d72:
    ld a, $0c
    nop

jr_003_7d75:
    add d
    jp hl


    jr nc, @+$0c

    ei
    adc b
    jr nc, jr_003_7db4

    dec de
    jr jr_003_7d9d

    inc d
    ld [hl+], a
    jr c, jr_003_7d90

    nop
    add d

jr_003_7d86:
    jp hl


    jr nc, jr_003_7d93

    ei
    add d
    jr nc, jr_003_7dc4

    dec b
    rst $38

jr_003_7d8f:
    add c

jr_003_7d90:
    jr c, jr_003_7d9e

    nop

jr_003_7d93:
    add d
    ld [$0a30], a
    ei
    add d
    jr nc, jr_003_7dd4

    dec b
    ld a, [hl-]

jr_003_7d9d:
    add c

jr_003_7d9e:
    dec sp
    inc c
    nop
    nop
    add d
    add sp, $30
    ld a, [bc]
    ei
    adc b
    jr nc, jr_003_7ded

    rst $38

jr_003_7dab:
    ld d, b
    ld d, c
    db $76
    rst $38
    ld d, d
    inc c
    nop
    add d
    jp hl


jr_003_7db4:
    jr nc, jr_003_7dc0

    ei
    add d
    jr nc, @+$46

    ld b, $45
    inc c
    nop
    add d
    jp hl


jr_003_7dc0:
    jr nc, jr_003_7dcc

    ei
    adc b

jr_003_7dc4:
    jr nc, jr_003_7df8

    inc sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc sp

jr_003_7dcc:
    inc c
    nop
    add d
    jp hl


    jr nc, jr_003_7ddc

    ei
    add e

jr_003_7dd4:
    jr nc, jr_003_7e08

    ld a, [hl+]
    inc b
    rst $38
    add c
    dec l
    inc c

jr_003_7ddc:
    nop
    add d
    jp hl


    jr nc, jr_003_7deb

    ei
    add e
    jr nc, jr_003_7e17

    dec hl
    inc b
    rst $38
    add c
    ld l, $0c

jr_003_7deb:
    nop
    add d

jr_003_7ded:
    jp hl


    jr nc, jr_003_7dfa

    ei
    add e
    jr nc, jr_003_7e26

    dec hl
    inc b
    rst $38
    add c

jr_003_7df8:
    ld l, $0c

jr_003_7dfa:
    nop
    add h
    jp hl


    jr nc, jr_003_7dfa

    ld e, l
    ld b, $5e
    add l
    ld e, a
    ei
    jr nc, @+$34

    inc l

jr_003_7e08:
    inc b
    rst $38
    add c
    cpl
    inc c

jr_003_7e0d:
    nop
    sub h
    jp hl


    jr nc, jr_003_7e0d

    ld l, l
    rra
    db $10
    inc h
    ld [hl+], a

jr_003_7e17:
    inc d
    ld c, l
    ld l, [hl]
    ei
    jr nc, jr_003_7e4f

    inc sp
    dec c
    ld c, $0e
    rrca
    inc sp
    inc c

jr_003_7e24:
    nop
    add l

jr_003_7e26:
    jp hl


    jr nc, jr_003_7e24

    ld a, l
    ld a, [hl]
    dec b
    ld a, a
    add h
    ld l, a
    ei
    jr nc, jr_003_7e64

    ld b, $fc
    inc c
    nop
    add d
    jp hl


    jr nc, jr_003_7e44

    ei
    adc b
    jr nc, jr_003_7e7f

    ld [hl+], a
    ld [de], a
    ld e, $21
    inc d
    ld b, d

jr_003_7e44:
    inc c
    nop
    add d
    jp hl


    jr nc, @+$0c

    ei
    add c
    jr nc, jr_003_7e55

    rst $38

jr_003_7e4f:
    inc c
    nop
    add d
    jp hl


    jr nc, jr_003_7e5f

jr_003_7e55:
    ei
    add d
    jr nc, jr_003_7ea7

    dec b
    dec a
    add c
    ld c, a
    inc c
    nop

jr_003_7e5f:
    add d
    jp hl


    jr nc, @+$0c

    ei

jr_003_7e64:
    adc b
    jr nc, jr_003_7e9e

    inc hl
    jr @+$1e

    inc d
    rst $38
    jr c, jr_003_7e7a

    nop
    add d
    jp hl


    jr nc, @+$0c

    ei
    adc b
    jr nc, @+$39

    rst $38
    rst $38
    ld h, [hl]

jr_003_7e7a:
    rst $38
    rst $38
    jr c, jr_003_7e8a

    nop

jr_003_7e7f:
    add d
    jp hl


    jr nc, jr_003_7e8d

    ei
    add d
    jr nc, jr_003_7ec3

    dec b
    dec a
    add c

jr_003_7e8a:
    ld a, $0c
    nop

jr_003_7e8d:
    add d
    jp hl


    jr nc, @+$0c

    ei
    adc b
    jr nc, jr_003_7ecc

    dec de
    jr jr_003_7eb5

    inc d
    ld [hl+], a
    jr c, jr_003_7ea8

    nop
    add d

jr_003_7e9e:
    jp hl


    jr nc, jr_003_7eab

    ei
    add d
    jr nc, jr_003_7edc

    dec b
    rst $38

jr_003_7ea7:
    add c

jr_003_7ea8:
    jr c, jr_003_7eb6

    nop

jr_003_7eab:
    add d
    ld [$0a30], a
    ei
    add d
    jr nc, jr_003_7eec

    dec b
    ld a, [hl-]

jr_003_7eb5:
    add c

jr_003_7eb6:
    dec sp
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

jr_003_7ec3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_7ecc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_7edc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_7eec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
