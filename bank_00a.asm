; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld a, [bc]
    inc bc
    ld b, b
    ld a, [$c8ef]
    rst $00
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    dec l
    ld b, h
    jp $954b


    ld h, b
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    ld h, c
    ld l, c
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    daa
    ld b, b
    ret


Call_00a_4028:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_00a_4035:
    push af
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
    pop af
    ret


Call_00a_4044:
    ld a, [$c909]
    add l
    ld l, a
    ld a, [$c90a]
    adc h
    and $03
    ld h, a
    ld a, [$c90a]
    and $fc
    or h
    ld h, a
    ret


Call_00a_4058:
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_00a_4061:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_00a_4044
    ld a, b
    and $1f
    jr z, jr_00a_4076

    ld b, a

jr_00a_4070:
    call Call_00a_4035
    dec b
    jr nz, jr_00a_4070

jr_00a_4076:
    pop bc
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_00a_4061
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_00a_4087:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00a_40ac

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
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
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_00a_4087

jr_00a_40ac:
    call $1aad
    call Call_00a_4035
    jr jr_00a_4087

Call_00a_40b4:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_00a_4058
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_00a_40c3:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_00a_40e2

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_00a_40c3

jr_00a_40e2:
    ld [hl+], a
    jr jr_00a_40c3

Call_00a_40e5:
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    ld de, $c500
    ld c, $12

jr_00a_40f2:
    ld b, $20
    push hl

jr_00a_40f5:
    ld a, [de]
    call $1aad
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
    jr nz, jr_00a_40f5

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
    jr nz, jr_00a_40f2

    ret


Call_00a_411a:
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_4153:
    push hl
    ld hl, $c180
    call $0c80
    pop hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0401
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_41ef:
    ld hl, $c500
    ld de, $c300
    ld bc, $0200

jr_00a_41f8:
    ld a, [de]
    inc de
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_41f8

    ld de, $c1c0
    ld c, $02

jr_00a_4205:
    ld b, $14

jr_00a_4207:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_00a_4207

    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_00a_4205

    ret


    ld hl, $c500
    ld bc, $0240

jr_00a_4227:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_4227

    ret


    ld hl, $9800
    ld bc, $0400

jr_00a_4236:
    ld a, $e0
    call $1ab9
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_4236

    ret


Call_00a_4241:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_00a_42a8

    ld a, [$c847]
    bit 5, a
    jr z, jr_00a_426e

    inc hl
    ld a, [hl]
    dec a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call $1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_00a_428c

    ld a, c
    dec a
    jr jr_00a_428c

jr_00a_426e:
    ld a, [$c847]
    bit 4, a
    jr z, jr_00a_42a8

    inc hl
    ld a, [hl]
    inc a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call $1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_00a_428c

    ld a, $00

jr_00a_428c:
    ld [hl-], a
    dec c
    cp c
    jr nz, jr_00a_42eb

    ld a, [$c8e1]
    ld c, a
    push de
    push bc
    ld a, b
    ld b, c
    call $1dfb
    pop bc
    pop de
    or a
    jr z, jr_00a_42eb

    dec a
    cp [hl]
    jr nc, jr_00a_42eb

    ld [hl], a
    jr jr_00a_42eb

Jump_00a_42a8:
jr_00a_42a8:
    push bc
    push de
    push hl
    call Call_00a_4387
    pop hl
    pop de
    pop bc
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call $1dfb
    ld [$c8e1], a
    ld a, b
    pop bc
    pop de
    ld c, a
    inc hl
    ld a, [hl-]
    cp c
    jr nz, jr_00a_42ca

    ld a, [$c8e1]
    inc a
    ld b, a

Call_00a_42ca:
jr_00a_42ca:
    res 7, [hl]
    ld a, [$c847]
    bit 6, a
    jr z, jr_00a_42dc

    ld a, [hl]
    dec a
    cp b
    jr c, jr_00a_42ea

    dec b
    ld a, b
    jr jr_00a_42ea

jr_00a_42dc:
    ld a, [$c847]
    bit 7, a
    jr z, jr_00a_42f3

    ld a, [hl]
    inc a
    cp b
    jr c, jr_00a_42ea

    ld a, $00

jr_00a_42ea:
    ld [hl], a

jr_00a_42eb:
    xor a
    ld [$c90c], a
    push hl
    push de
    pop de
    pop hl

jr_00a_42f3:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_42fc

    set 7, [hl]

jr_00a_42fc:
    ld a, [hl]
    call Call_00a_4328
    ret


    res 7, [hl]
    ld a, [$c847]
    bit 5, a
    jr z, jr_00a_4313

    ld a, [hl]
    dec a
    cp b
    jr c, jr_00a_42ea

    dec b
    ld a, b
    jr jr_00a_42ea

jr_00a_4313:
    ld a, [$c847]
    bit 4, a
    jr z, jr_00a_42f3

    ld a, [hl]
    inc a
    cp b
    jr c, jr_00a_42ea

    ld a, $00
    jr jr_00a_42ea

Call_00a_4323:
    xor a
    ld [$c90c], a
    ret


Call_00a_4328:
    ld c, a
    bit 7, a
    jr nz, jr_00a_433d

    ld a, [$c90c]
    and $0f
    push af
    ld a, [$c90c]
    inc a
    ld [$c90c], a
    pop af
    ld a, c
    ret nz

jr_00a_433d:
    ld c, a
    ld b, $00

jr_00a_4340:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_00a_4061
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_00a_4370

    ld a, $e9
    bit 7, c
    jr nz, jr_00a_4370

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_00a_4370

    ld a, $e8

jr_00a_4370:
    call $1aad
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_00a_4340

Call_00a_4387:
    ld a, b
    cp c
    ret nc

    inc hl
    ld c, [hl]
    dec de
    dec de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    dec hl
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_00a_4061
    pop bc
    pop de
    ld a, c
    and $7f
    add $f1
    call $1aad
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_00a_43c0:
    ld a, [hl+]
    push af
    push hl
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, b
    cp c
    ld a, $ee
    jr nc, jr_00a_43d9

    ld a, $e7

jr_00a_43d9:
    ld [hl-], a
    pop bc
    jr nc, jr_00a_43e1

    ld a, [bc]
    add $f1
    ld [hl], a

jr_00a_43e1:
    pop af

Call_00a_43e2:
    ld c, a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_00a_4061
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_00a_440d

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_00a_440d

    ld a, $e8

jr_00a_440d:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_00a_441f:
    ld a, [$c8f0]
    add l
    ld l, a
    ld a, [$c8f1]
    adc h
    ld h, a
    call $0ad9
    ret


    ld a, [$c905]
    rst $00
    dec sp
    ld b, h
    adc d
    ld b, h
    or [hl]
    ld b, h
    ld c, $45
    ld d, $45
    ld hl, $ffb7
    call Call_00a_4028
    ld hl, $ffbb
    call Call_00a_4028
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_00a_41ef
    ld de, $2e11
    ld hl, $8800
    call $1577
    call Call_00a_4323
    ld a, $78
    ldh [$d4], a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    ld a, $5c
    call $1b2c
    call Call_00a_41ef
    call Call_00a_449d
    call Call_00a_40e5
    ret


Call_00a_449d:
    ld de, $6f37
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4508
    ld a, [$c8da]
    call Call_00a_43e2
    ret


    ld de, $4508
    ld hl, $c8da
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    and $0a
    jr z, jr_00a_44d2

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_00a_4507

jr_00a_44d2:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_4507

    ld a, $59
    call $1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    set 7, [hl]
    ld a, [hl]
    ld [$c907], a
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    jr jr_00a_4507

jr_00a_4507:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld a, [$c907]
    rst $00
    jr c, jr_00a_4559

    ld d, $45
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    xor a
    ld [$c8ec], a
    ld a, $80
    ldh [$d3], a
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ld hl, $0103
    rst $10
    ret


    ld a, [$c906]
    rst $00
    ld e, [hl]
    ld b, l
    jp nc, $9d45

    ld b, a
    dec hl
    ld c, b
    ld [hl], $48
    ld a, l
    ld c, b
    ld a, [de]
    ld c, c
    dec h
    ld c, c
    ld c, c
    ld c, c
    adc [hl]
    ld c, c
    xor e
    ld c, c
    rst $08
    ld c, c
    db $10
    ld c, d
    db $d3
    ld c, d
    dec de

jr_00a_4559:
    ld c, e
    ld b, [hl]
    ld c, e
    add c
    ld c, e
    call Call_00a_4572
    call Call_00a_459c
    call Call_00a_4ba2
    ld hl, $0002
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4572:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_4579:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_458b

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_458b

    inc c

jr_00a_458b:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00a_4579

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_459c:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_45b1:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_45c4

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_45c4

    ld [hl], c
    inc hl

jr_00a_45c4:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_45b1

    ret


    ld a, [$c825]
    or a
    ret nz

    call $46c9
    call Call_00a_4610
    call Call_00a_45e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_45e5:
    call Call_00a_41ef
    call Call_00a_449d
    ld de, $7723
    call Call_00a_40b4
    call Call_00a_474b
    ld de, $7404
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $481f
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    call Call_00a_40e5
    ret


Call_00a_4610:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8800
    call Call_00a_462a
    call Call_00a_462a
    call Call_00a_462a

Call_00a_462a:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_4657

    push de
    ld hl, $cb24
    call $223b
    pop de
    ld a, [hl]
    or a
    jr nz, jr_00a_4671

    ld a, [de]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_00a_4153
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_4657:
    ld b, $20

jr_00a_4659:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_4659

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_4671:
    ld a, $0e
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld de, $0401
    pop hl
    push hl
    call Call_00a_411a
    pop hl
    ld a, l
    add $30
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    push de
    push hl
    ld a, [de]
    ld hl, $cacb
    call $223b
    ld a, [hl]
    add a
    ld hl, $46b5
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    push hl
    call $1577
    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    inc bc
    ld l, $04
    ld l, $05
    ld l, $06
    ld l, $07
    ld l, $08
    ld l, $09
    ld l, $0a
    ld l, $0b
    ld l, $0c
    ld l, $fa
    db $e3
    ret z

    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $9780
    call Call_00a_4153
    pop af
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld hl, $97c0
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_474b:
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld hl, $cb0c
    call $223b
    ld c, [hl]
    ld b, $00
    ld hl, $0161
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $e0
    ld [hl-], a
    call $6027
    pop af
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    jr nz, jr_00a_4793

    ld hl, $0169
    call Call_00a_4058
    ld a, $e3
    ld [hl], a
    ret


jr_00a_4793:
    ld hl, $0169
    call Call_00a_4058
    ld a, $e0
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $481f
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    ld hl, $c8e2
    cp [hl]
    jr z, jr_00a_47c6

    call $46c9
    call Call_00a_474b
    call Call_00a_40e5

jr_00a_47c6:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_47d9

    call $46c9
    call Call_00a_4610
    call Call_00a_474b
    call Call_00a_45e5

jr_00a_47d9:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_47f0

    call Call_00a_4ba2
    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_481e

jr_00a_47f0:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_481e

    ld a, $59
    call $1b2c
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    xor a
    ld [$c8dc], a
    ld hl, $c906
    inc [hl]

Jump_00a_481e:
jr_00a_481e:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    ld hl, $0005
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4843
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4843:
    call Call_00a_41ef
    call Call_00a_449d
    ld de, $7723
    call Call_00a_40b4
    call Call_00a_474b
    ld de, $7404
    call Call_00a_40b4
    ld de, $481f
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ld de, $745e
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4914
    ld a, [$c8dc]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


    ld de, $4914
    ld hl, $c8dc
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_48ad

    call Call_00a_45e5
    call Call_00a_4ba2
    ld hl, $0002
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_4913

jr_00a_48ad:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4913

    ld a, $59
    call $1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_00a_48cf

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $0e
    ld [$c906], a
    jr jr_00a_4913

jr_00a_48cf:
    ld a, [$cac0]
    ld hl, $cb0c
    call $223b
    ld a, [hl]
    cp $0a
    jr nc, jr_00a_48ea

    ld hl, $0003
    call Call_00a_441f
    ld a, $10
    ld [$c906], a
    jr jr_00a_4913

jr_00a_48ea:
    ld a, [$ca8d]
    cp $02
    jr z, jr_00a_490b

    cp $03
    jr z, jr_00a_490b

    ld a, [$ca8e]
    ld hl, $cac0
    cp [hl]
    jr nz, jr_00a_490b

    ld hl, $0004
    call Call_00a_441f
    ld a, $10
    ld [$c906], a
    jr jr_00a_4913

jr_00a_490b:
    ld hl, $c906
    inc [hl]
    xor a
    ld [$c8dd], a

Jump_00a_4913:
jr_00a_4913:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    ld hl, $0006
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    ld de, $6f37
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4988
    ld a, [$c8de]
    call Call_00a_43e2
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


    ld de, $4988
    ld hl, $c8de
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_496b

jr_00a_495b:
    call Call_00a_4ba2
    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_4987

jr_00a_496b:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4987

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_00a_495b

    xor a
    ld [$c8df], a
    ld hl, $c906
    inc [hl]

Jump_00a_4987:
jr_00a_4987:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld de, $7488
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_4b9e
    call Call_00a_40e5
    ld hl, $0007
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    ld de, $6f37
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4a0a
    ld a, [$c8df]
    call Call_00a_43e2
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


    ld de, $4a0a
    ld hl, $c8df
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_49f1

jr_00a_49e1:
    call Call_00a_4ba2
    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_4a09

jr_00a_49f1:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4a09

    ld a, $59
    call $1b2c
    ld a, [$c8df]
    cp $81
    jr z, jr_00a_49e1

    ld hl, $c906
    inc [hl]

Jump_00a_4a09:
jr_00a_4a09:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld hl, $0008
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld a, [hl]
    add $10
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld de, $d665
    call Call_00a_57b0
    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld [hl], $00
    ld a, [$c8f7]
    ld c, a
    ld a, [$c8f8]
    ld b, a
    ld a, c
    ld [$da12], a
    ld a, b
    ld [$da13], a
    ld a, $15
    ld [$da14], a
    ld hl, $1402
    rst $10
    ld a, [$d670]
    xor $01
    ld [$d705], a
    ld a, $15
    ld hl, $caca
    call $223b
    ld a, [hl]
    add $10
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld hl, $0105
    rst $10
    ld hl, HeaderLogo
    rst $10
    ld hl, $1600
    rst $10
    ld a, [$c8eb]
    push af
    xor a
    ld [$c8eb], a
    ld a, [$c905]
    push af
    xor a
    ld [$c905], a
    ld a, [$d8d7]
    push af
    xor a
    ld [$d8d7], a
    ld a, [$c8ec]
    push af
    xor a
    ld [$c8ec], a
    ld a, [$d951]
    push af
    xor a
    ld [$d951], a
    di
    call $2128
    ei
    pop af
    ld [$d951], a
    pop af
    ld [$c8ec], a
    pop af
    ld [$d8d7], a
    pop af
    ld [$c905], a
    pop af
    ld [$c8eb], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8eb
    res 4, [hl]
    res 0, [hl]
    xor a
    ld [$c905], a
    ld a, $08
    ld [$c96d], a
    ld a, $00
    ld [$c96e], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $04
    ld [$d951], a
    xor a
    ld [$d8d7], a
    ld a, $03
    call $1688
    ld hl, $c88f
    inc [hl]
    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0702
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld a, [$c8e2]
    and $80
    ld b, a
    ld a, [$c934]
    and $03
    or b
    ld [$c8e2], a
    ld a, [$c934]
    srl a
    srl a
    ld [$c8e3], a
    ld de, $2e11
    ld hl, $8800
    call $1577
    call $46c9
    call Call_00a_4610
    ld hl, $0005
    call Call_00a_441f
    call Call_00a_4843
    xor a
    ld [$c8ec], a
    ld a, $05
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4572
    call Call_00a_459c
    call Call_00a_4ba2
    ld hl, $0002
    call Call_00a_441f
    call Call_00a_45e5
    ld a, $01
    ld [$c906], a
    ret


Call_00a_4b9e:
    call Call_00a_5e1e
    ret


Call_00a_4ba2:
    ld a, [$c8f7]
    ld c, a
    ld a, [$c8f8]
    ld b, a
    ld a, c
    ld [$da12], a
    ld a, b
    ld [$da13], a
    ld hl, $1400
    rst $10
    ld a, [$da18]
    ld l, a
    ld h, $05
    ld de, $c180
    call $097a
    ret


    ld a, [$c905]
    rst $00
    pop de
    ld c, e
    inc a
    ld c, h
    add c
    ld c, h
    db $d3
    ld c, h
    ld [c], a
    ld c, h
    ld hl, $ffb7
    call Call_00a_4028
    ld hl, $ffbb
    call Call_00a_4028
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld de, $2e12
    ld hl, $8800
    call $1577
    ld a, $02
    ld [$c822], a
    ld a, $10
    ld [$c823], a
    ld hl, $9400
    ld de, $0801
    call Call_00a_411a
    call Call_00a_4323
    ld a, $40
    ldh [$d4], a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_00a_41ef
    call Call_00a_4c4a
    call Call_00a_40e5
    ret


Call_00a_4c4a:
    ld de, $6f81
    call Call_00a_40b4
    ld a, [$ca4b]
    ldh [$d5], a
    ld a, [$ca4c]
    ldh [$d6], a
    ld a, [$ca4d]
    ldh [$d7], a
    ld hl, $002e
    call Call_00a_4058
    call $1fb9
    ld de, $759d
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $4ccb
    ld a, [$c8da]
    call Call_00a_43e2
    ret


    ld de, $4ccb
    ld hl, $c8da
    ld b, $03
    call Call_00a_42ca
    ld a, [$c846]
    and $0a
    jr z, jr_00a_4c95

    jr jr_00a_4cdd

jr_00a_4c95:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_4cca

    ld a, $59
    call $1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    set 7, [hl]
    ld a, [hl]
    ld [$c907], a
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    jr jr_00a_4cca

jr_00a_4cca:
    ret


    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38
    ld a, [$c907]
    rst $00
    inc b
    ld c, l
    rlca
    ld e, c
    db $dd
    ld c, h

jr_00a_4cdd:
    ld a, [$c825]
    or a
    ret nz

    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    xor a
    ld [$c8ec], a
    ld a, $80
    ldh [$d3], a
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ld hl, $0103
    rst $10
    ret


    ld a, [$c906]
    rst $00
    inc a
    ld c, l
    xor l
    ld c, l
    inc d
    ld c, a
    or h
    ld c, a
    cp a
    ld c, a
    ld b, $50
    and b
    ld d, b
    jr nz, @+$53

    ld sp, $e952
    ld d, d
    db $f4
    ld d, d
    dec sp
    ld d, e
    dec h
    ld d, h
    rst $00
    ld d, l
    pop de
    ld d, l
    ldh [rHDMA5], a
    db $fd
    ld d, l
    ld hl, $5f56
    ld d, [hl]
    ld a, $57
    cp c
    ld d, a
    db $e4
    ld d, a
    ld c, [hl]
    ld e, b
    ld l, b
    ld e, b
    sub e
    ld e, b
    db $ed
    ld e, b
    call Call_00a_4d4d
    call Call_00a_4d77
    ld hl, $0003
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4d4d:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_4d54:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_4d66

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a

Call_00a_4d61:
    ld a, [de]
    or a
    jr nz, jr_00a_4d66

    inc c

jr_00a_4d66:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00a_4d54

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_4d77:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_4d8c:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_4d9f

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_4d9f

    ld [hl], c
    inc hl

jr_00a_4d9f:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_4d8c

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4e40
    call Call_00a_4deb
    call Call_00a_4dc0
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4dc0:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $75e5
    call Call_00a_40b4
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_4ed3
    call Call_00a_4323
    ld de, $4fa8
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    call Call_00a_40e5
    ret


Call_00a_4deb:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9610
    call Call_00a_4e05
    call Call_00a_4e05
    call Call_00a_4e05

Call_00a_4e05:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_4e26

    ld a, [de]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_00a_4153
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_4e26:
    ld b, $20

jr_00a_4e28:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_4e28

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_00a_4e40:
    call Call_00a_4e55
    ld hl, $9760
    ld b, $28

jr_00a_4e48:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_4e48

    ret


Call_00a_4e55:
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $9710
    call Call_00a_4e05
    pop af
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld hl, $9750
    call Call_00a_4e81
    ret


Call_00a_4e81:
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_4ed3:
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $cb0c
    call $223b
    ld c, [hl]
    ld b, $00
    ld hl, $012a
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    call $6027
    pop af
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    ret nz

    ld hl, $0132
    call Call_00a_4058
    ld a, $e3
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $4fa8
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_00a_4f49

    call Call_00a_4e40
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_4ed3
    call Call_00a_40e5

jr_00a_4f49:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_4f62

    call Call_00a_4e40
    call Call_00a_4deb
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_4ed3
    call Call_00a_40e5

jr_00a_4f62:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_4f76

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_4fa7

jr_00a_4f76:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4fa7

    ld a, $59
    call $1b2c
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld [$c8e8], a
    xor a
    ld [$c8dc], a
    ld hl, $c906
    inc [hl]

Jump_00a_4fa7:
jr_00a_4fa7:
    ret


    add l
    ld bc, $00a1
    pop hl
    nop
    ld hl, $6101
    ld bc, $ffff
    ld hl, $0005
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4fcc
    ld hl, $c906
    inc [hl]
    ret


Call_00a_4fcc:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $75e5
    call Call_00a_40b4
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_4ed3
    ld de, $4fa8
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ld de, $745e
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $509a
    ld a, [$c8dc]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


    ld de, $509a
    ld hl, $c8dc
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5033

    call Call_00a_4dc0
    ld hl, $0003
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_5099

jr_00a_5033:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_5099

    ld a, $59
    call $1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_00a_5055

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $14
    ld [$c906], a
    jr jr_00a_5099

jr_00a_5055:
    ld a, [$cac0]
    ld hl, $cb0c
    call $223b
    ld a, [hl]
    cp $0a
    jr nc, jr_00a_5070

    ld hl, $0007
    call Call_00a_441f
    ld a, $16
    ld [$c906], a
    jr jr_00a_5099

jr_00a_5070:
    ld a, [$ca8d]
    cp $02
    jr z, jr_00a_5091

    cp $03
    jr z, jr_00a_5091

    ld a, [$ca8e]
    ld hl, $cac0
    cp [hl]
    jr nz, jr_00a_5091

    ld hl, $0006
    call Call_00a_441f
    ld a, $16
    ld [$c906], a
    jr jr_00a_5099

jr_00a_5091:
    ld hl, $c906
    inc [hl]
    xor a
    ld [$c8dd], a

Jump_00a_5099:
jr_00a_5099:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    call Call_00a_50b1
    call Call_00a_50e4
    ld hl, $0004
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_50b1:
    ld de, $cac1
    ld b, $14
    ld c, $00
    ld h, $00

jr_00a_50ba:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_50d2

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_50d2

    ld a, [$c8e8]
    cp h
    jr z, jr_00a_50d2

    inc c

jr_00a_50d2:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc h
    dec b
    jr nz, jr_00a_50ba

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_50e4:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_50f9:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_5112

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_00a_5112

    ld a, [$c8e8]
    cp c
    jr z, jr_00a_5112

    ld [hl], c
    inc hl

jr_00a_5112:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_50f9

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_517c
    call Call_00a_515e
    call Call_00a_5133
    ld hl, $c906
    inc [hl]
    ret


Call_00a_5133:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $763f
    call Call_00a_40b4
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_51c1
    call Call_00a_4323
    ld de, $52dd
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e4
    call Call_00a_43c0
    call Call_00a_40e5
    ret


Call_00a_515e:
    ld a, [$c8e5]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9610
    call Call_00a_4e05
    call Call_00a_4e05
    call Call_00a_4e05
    call Call_00a_4e05
    ret


Call_00a_517c:
    ld de, $c8e8
    ld a, [de]
    push af
    ld hl, $9710
    call Call_00a_4e05
    pop af
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld hl, $9750
    call Call_00a_4e81

Call_00a_5195:
    ld a, [$c8e5]
    add a
    add a
    ld b, a
    ld a, [$c8e4]
    and $7f
    add b
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $9760
    call Call_00a_4e05
    pop af
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld hl, $97a0
    call Call_00a_4e81
    ret


Call_00a_51c1:
    ld de, $c8e8
    ld a, [de]
    push af
    ld hl, $cb0c
    call $223b
    ld c, [hl]
    ld b, $00
    ld hl, $012a
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    call $6027
    pop af
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    jr nz, jr_00a_51f0

    ld hl, $0132
    call Call_00a_4058
    ld a, $e3
    ld [hl], a

jr_00a_51f0:
    ld a, [$c8e5]
    add a
    add a
    ld b, a
    ld a, [$c8e4]
    and $7f
    add b
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $cb0c
    call $223b
    ld c, [hl]
    ld b, $00
    ld hl, $016a
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    call $6027
    pop af
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    ret nz

    ld hl, $0172
    call Call_00a_4058
    ld a, $e3
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $52dd
    ld hl, $c8e4
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    ld hl, $c8e4
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_00a_5266

    call Call_00a_5195
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_51c1
    call Call_00a_40e5

jr_00a_5266:
    pop af
    ld hl, $c8e5
    cp [hl]
    jr z, jr_00a_527f

    call Call_00a_5195
    call Call_00a_515e
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_51c1
    call Call_00a_40e5

jr_00a_527f:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_52ae

    ld hl, $0003
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_52dc

jr_00a_52ae:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_4fa7

    ld a, $59
    call $1b2c
    ld a, [$c8e5]
    add a
    add a
    ld b, a
    ld a, [$c8e4]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    xor a
    ld [$c8dd], a
    ld hl, $c906
    inc [hl]

jr_00a_52dc:
    ret


    add l
    ld bc, $00a1
    pop hl
    nop
    ld hl, $6101
    ld bc, $ffff
    ld hl, $0005
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_5301
    ld hl, $c906
    inc [hl]
    ret


Call_00a_5301:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $763f
    call Call_00a_40b4
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_51c1
    ld de, $52dd
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e4
    call Call_00a_43c0
    ld de, $745e
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $541f
    ld a, [$c8dd]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


    ld de, $541f
    ld hl, $c8dd
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5369

    call Call_00a_5133
    ld hl, $0004
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jp Jump_00a_541e


jr_00a_5369:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_541e

    ld a, $59
    call $1b2c
    ld a, [$c8dd]
    cp $81
    jr z, jr_00a_538c

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $17
    ld [$c906], a
    jp Jump_00a_541e


jr_00a_538c:
    ld a, [$cac0]
    ld hl, $cb0c
    call $223b
    ld a, [hl]
    cp $0a
    jr nc, jr_00a_53a7

    ld hl, $0007
    call Call_00a_441f
    ld a, $19
    ld [$c906], a
    jr jr_00a_541e

jr_00a_53a7:
    ld a, [$ca8d]
    cp $03
    jr z, jr_00a_53ef

    cp $02
    jr nz, jr_00a_53d0

    ld a, [$c8e8]
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    jr nz, jr_00a_53ef

    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    jr nz, jr_00a_53ef

    jr jr_00a_53e2

jr_00a_53d0:
    ld a, [$ca8e]
    ld hl, $c8e8
    cp [hl]
    jr z, jr_00a_53e2

    ld a, [$ca8e]
    ld hl, $cac0
    cp [hl]
    jr nz, jr_00a_53ef

jr_00a_53e2:
    ld hl, $0006
    call Call_00a_441f
    ld a, $19
    ld [$c906], a
    jr jr_00a_541e

jr_00a_53ef:
    ld a, [$c8e8]
    ld hl, $cacc
    call $223b
    ld a, [hl]
    and $01
    push af
    ld a, [$cac0]
    ld hl, $cacc
    call $223b
    pop af
    ld b, a
    ld a, [hl]
    and $01
    cp b
    jr nz, jr_00a_541a

    ld hl, $0008
    call Call_00a_441f
    ld a, $19
    ld [$c906], a
    jr jr_00a_541e

jr_00a_541a:
    ld hl, $c906
    inc [hl]

Jump_00a_541e:
jr_00a_541e:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    ld a, [$c8e8]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    ld a, [$cac0]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c190
    call $0c80
    ld a, [$c8e8]
    ld hl, $caca
    call $223b
    ld a, [hl]
    ld [$da6f], a
    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld a, [hl]
    ld [$da70], a
    ld a, [$c8e8]
    and $7f
    ld [$da75], a
    ld a, [$cac0]
    and $7f
    ld [$da76], a
    ld hl, $1603
    rst $10
    ld a, [$da71]
    ld hl, $ca94
    call $267e
    jr nz, jr_00a_5490

    ld a, [$da71]
    ld hl, $54c7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_00a_54b5

jr_00a_5490:
    ld a, [$da71]
    ld l, a
    ld h, $05
    ld de, $c1a0
    call $097a
    ld a, [$da77]
    ld de, $c1a0
    call Call_00a_606d
    ld a, [$da71]
    ld hl, $ca94
    call $267e
    jr z, jr_00a_54ba

    ld hl, $0009
    jr jr_00a_54bf

jr_00a_54b5:
    ld hl, $000a
    jr jr_00a_54bf

jr_00a_54ba:
    ld hl, $001c
    jr jr_00a_54bf

jr_00a_54bf:
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $fa01
    dec h
    ret z

    or a
    ret nz

    ld hl, $c906
    inc [hl]
    ret


    xor a
    ld [$c8df], a
    ld hl, $c906
    inc [hl]
    ret


    ld hl, $6101
    ld bc, $ffff
    ld de, $7488
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_5e1e
    call Call_00a_40e5
    ld hl, $000b
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    ld de, $70c0
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $5659
    ld a, [$c8df]
    call Call_00a_43e2
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


    ld de, $5659
    ld hl, $c8df
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5640

jr_00a_5633:
    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_5658

jr_00a_5640:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_5658

    ld a, $59
    call $1b2c
    ld a, [$c8df]
    cp $81
    jr z, jr_00a_5633

    ld hl, $c906
    inc [hl]

Jump_00a_5658:
jr_00a_5658:
    ret


    ld hl, $6101
    ld bc, $ffff
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld hl, $000c
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ld a, [$c8e8]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    ld a, [$cac0]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c190
    call $0c80
    ld a, [$c8e8]
    ld hl, $caca
    call $223b
    ld a, [hl]
    add $10
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$c8e8]
    ld hl, $cac1
    call $223b
    ld de, $d665
    call Call_00a_57b0
    ld a, [$c8e8]
    ld hl, $cac1
    call $223b
    ld [hl], $00
    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld a, [hl]
    add $10
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld de, $d6fa
    call Call_00a_57b0
    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld [hl], $00
    ld hl, $0105
    rst $10
    ld hl, HeaderLogo
    rst $10
    ld hl, $1600
    rst $10
    ld a, [$c8eb]
    push af
    xor a
    ld [$c8eb], a
    ld a, [$c905]
    push af
    xor a
    ld [$c905], a
    ld a, [$d8d7]
    push af
    xor a
    ld [$d8d7], a
    ld a, [$c8ec]
    push af
    xor a
    ld [$c8ec], a
    ld a, [$d951]
    push af
    xor a
    ld [$d951], a
    di
    call $2128
    ei
    pop af
    ld [$d951], a
    pop af
    ld [$c8ec], a
    pop af
    ld [$d8d7], a
    pop af
    ld [$c905], a
    pop af
    ld [$c8eb], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8eb
    res 4, [hl]
    res 0, [hl]
    xor a
    ld [$c905], a
    ld a, $08
    ld [$c96d], a
    ld a, $00
    ld [$c96e], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $00
    ld [$d951], a
    xor a
    ld [$d8d7], a
    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld l, [hl]
    ld h, $05
    ld de, $c1a0
    call $097a
    ld a, [$cac0]
    ld hl, $cb23
    call $223b
    ld a, [hl]
    inc a
    ld c, $0a
    call $1dbe
    ld c, l
    ld b, h
    ld hl, $c1b0
    call $0a7c
    ld a, $03
    call $1688
    ld hl, $c88f
    inc [hl]
    ret


Call_00a_57b0:
    ld b, $95

jr_00a_57b2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_57b2

    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0702
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld a, [$c8e2]
    and $80
    ld b, a
    ld a, [$c934]
    and $03
    or b
    ld [$c8e2], a
    ld a, [$c934]
    srl a
    srl a
    ld [$c8e3], a
    ld a, [$c934]
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c8e8], a
    ld de, $2e12
    ld hl, $8800
    call $1577
    ld a, $02
    ld [$c822], a
    ld a, $10
    ld [$c823], a
    ld hl, $9400
    ld de, $0801
    call Call_00a_411a
    call Call_00a_4e40
    call Call_00a_4deb
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_4ed3
    call Call_00a_40e5
    ld hl, $0005
    call Call_00a_441f
    call Call_00a_4fcc
    ld a, $05
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_4d4d
    call Call_00a_4d77
    ld hl, $0003
    call Call_00a_441f
    call Call_00a_4dc0
    ld a, $01
    ld [$c906], a
    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8e5]
    add a
    add a
    ld b, a
    ld a, [$c8e4]
    and $7f
    add b
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0702
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld a, [$c8e4]
    and $80
    ld b, a
    ld a, [$c934]
    and $03
    or b
    ld [$c8e4], a
    ld a, [$c934]
    srl a
    srl a
    ld [$c8e5], a
    ld de, $2e12
    ld hl, $8800
    call $1577
    ld a, $02
    ld [$c822], a
    ld a, $10
    ld [$c823], a
    ld hl, $9400
    ld de, $0801
    call Call_00a_411a
    call Call_00a_517c
    call Call_00a_515e
    ld de, $7699
    call Call_00a_40b4
    call Call_00a_51c1
    call Call_00a_40e5
    ld hl, $0005
    call Call_00a_441f
    call Call_00a_5301
    ld a, $0b
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_50b1
    call Call_00a_50e4
    ld hl, $0004
    call Call_00a_441f
    call Call_00a_5133
    ld a, $07
    ld [$c906], a
    ret


    ld a, [$c906]
    rst $00
    daa
    ld e, c
    and a
    ld e, c
    pop af
    ld e, d
    ld b, [hl]
    ld e, e
    ld a, h
    ld e, e
    sbc e
    ld e, e
    ld c, h
    ld e, h
    ld d, c
    ld e, h
    ld d, [hl]
    ld e, h
    ld e, e
    ld e, h
    sub d
    ld e, h
    ld d, c
    ld e, l
    ld h, d
    ld e, l
    adc l
    ld e, l
    call Call_00a_5947
    or a
    jr nz, jr_00a_5939

    ld hl, $0013
    call Call_00a_441f
    ld a, $0b
    ld [$c906], a
    ret


jr_00a_5939:
    call Call_00a_5971
    ld hl, $0012
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_5947:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_594e:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_5960

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_00a_5960

    inc c

jr_00a_5960:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00a_594e

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_5971:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_5986:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_5999

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_00a_5999

    ld [hl], c
    inc hl

jr_00a_5999:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_5986

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_59d9
    call Call_00a_59ba
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_59ba:
    call Call_00a_41ef
    call Call_00a_4c4a
    ld de, $7749
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $5b3a
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ret


Call_00a_59d9:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9650
    call Call_00a_59fd
    call Call_00a_59fd
    call Call_00a_59fd
    ld hl, $8800
    call Call_00a_59fd
    call Call_00a_5a41
    ret


Call_00a_59fd:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_5a27

    ld hl, $caca
    call $223b
    ld a, [hl]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld de, $0901
    pop hl
    push hl
    call Call_00a_411a
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_5a27:
    ld b, $48

jr_00a_5a29:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_5a29

    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_00a_5a41:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8a00
    call Call_00a_5a5b
    call Call_00a_5a5b
    call Call_00a_5a5b

Call_00a_5a5b:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_5ad7

    ld hl, $cb24
    call $223b
    ld a, [hl]
    cp $02
    ld a, $66
    jr nz, jr_00a_5a7c

    ld a, l
    add $a8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, [hl]
    and $01
    add $a7

jr_00a_5a7c:
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    pop hl
    push hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_5ad7:
    ld b, $08

jr_00a_5ad9:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_5ad9

    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    ld de, $5b3a
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_5b10

    call Call_00a_59d9

jr_00a_5b10:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5b24

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_5b39

jr_00a_5b24:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_5b39

    ld a, $59
    call $1b2c
    xor a
    ld [$c8de], a
    ld hl, $c906
    inc [hl]

Jump_00a_5b39:
jr_00a_5b39:
    ret


    sub d
    ld bc, $00a8
    add sp, $00
    jr z, jr_00a_5b43

    ld l, b

jr_00a_5b43:
    ld bc, $ffff
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cb23
    call $223b
    ld a, [hl]
    inc a
    ld c, $0a
    call $1dbe
    ld c, l
    ld b, h
    ld hl, $c1b0
    call $0a7c
    ld hl, $0014
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $79b0
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $5c46
    ld a, [$c8de]
    call Call_00a_43e2
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


    ld de, $5c46
    ld hl, $c8de
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_5bcb

    ld hl, $0012
    call Call_00a_441f
    call Call_00a_59ba
    call Call_00a_40e5
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_5c45

jr_00a_5bcb:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_5c45

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_00a_5bed

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $0c
    ld [$c906], a
    jr jr_00a_5c45

jr_00a_5bed:
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cb23
    call $223b
    ld a, [hl]
    inc a
    ld c, $0a
    call $1dbe
    ld a, [$ca4b]
    sub l
    ld a, [$ca4c]
    sbc h
    ld a, [$ca4d]
    sbc $00
    jr nc, jr_00a_5c2c

    ld hl, $001e
    call Call_00a_441f
    ld a, $0b
    ld [$c906], a
    jr jr_00a_5c45

jr_00a_5c2c:
    ld e, $00
    call $2424
    xor a
    ld [$c8df], a
    ld hl, $c906
    inc [hl]
    ld hl, $c906
    inc [hl]
    ld hl, $c906
    inc [hl]
    ld hl, $c906
    inc [hl]

Jump_00a_5c45:
jr_00a_5c45:
    ret


    dec l
    nop
    ld l, l
    nop
    rst $38
    rst $38
    ld hl, $c906
    inc [hl]
    ret


    ld hl, $c906
    inc [hl]
    ret


    ld hl, $c906
    inc [hl]
    ret


    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld hl, $0015
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld [$c908], a
    ld [$ca40], a
    ld hl, $1604
    rst $10
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8eb
    res 4, [hl]
    res 0, [hl]
    xor a
    ld [$c905], a
    ld a, [$c908]
    ld [$cac0], a
    ld hl, $caca
    call $223b
    ld l, [hl]
    ld h, $05
    ld de, $c190
    call $097a
    ld a, [$cac0]
    ld hl, $cb23
    call $223b
    ld a, [hl]
    ld de, $c190
    call Call_00a_606d
    ld a, [$cac0]
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld de, $c190
    call Call_00a_6082
    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld a, [hl]
    add $10
    ld [$c8f4], a
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$cac0]
    ld hl, $cac2
    call $223b
    ld a, l
    ld [$c8f2], a
    ld a, h
    ld [$c8f3], a
    ld a, [$cac0]
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld [$c8f6], a
    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld a, [hl]
    ld [$c8f5], a
    ld a, $08
    ld [$c96d], a
    ld a, $00
    ld [$c96e], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $02
    ld [$d951], a
    xor a
    ld [$d8d7], a
    ld a, $03
    call $1688
    ld hl, $c88f
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0702
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld a, [$c8e2]
    and $80
    ld b, a
    ld a, [$c934]
    and $03
    or b
    ld [$c8e2], a
    ld a, [$c934]
    srl a
    srl a
    ld [$c8e3], a
    ld de, $2e12
    ld hl, $8800
    call $1577
    ld a, $02
    ld [$c822], a
    ld a, $10
    ld [$c823], a
    ld hl, $9400
    ld de, $0801
    call Call_00a_411a
    call Call_00a_5947
    call Call_00a_5971
    call Call_00a_59d9
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cb23
    call $223b
    ld a, [hl]
    inc a
    ld c, $0a
    call $1dbe
    ld c, l
    ld b, h
    ld hl, $c1b0
    call $0a7c
    ld hl, $0014
    call Call_00a_441f
    call Call_00a_59ba
    ld de, $79b0
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $5c46
    ld a, [$c8de]
    call Call_00a_43e2
    call Call_00a_40e5
    ld a, $04
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


Call_00a_5e1e:
    ld hl, $a002
    call $20ee
    or a
    jr nz, jr_00a_5e84

    ld hl, $0021
    call Call_00a_4058
    ld bc, $0011
    ld a, $e0
    call $12c7
    ld hl, $0041
    call Call_00a_4058
    ld bc, $0011
    ld a, $e0
    call $12c7
    ld hl, $0061
    call Call_00a_4058
    ld bc, $0011
    ld a, $e0
    call $12c7
    ld hl, $0081
    call Call_00a_4058
    ld bc, $0011
    ld a, $e0
    call $12c7
    ld hl, $0044
    call Call_00a_4058
    ld b, $0a
    ld a, $a4

jr_00a_5e69:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_00a_5e69

    ld a, $31
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $8a40
    ld de, $0a01
    call Call_00a_411a
    jp Jump_00a_5f2b


jr_00a_5e84:
    di
    ld a, $0a
    ld [$0100], a
    ld de, $a17c
    ld hl, $8a00
    call Call_00a_4153
    call Call_00a_5f65
    ld hl, $a1f2
    call $20ee
    ld c, a
    ld b, $00
    ld hl, $002d
    call Call_00a_4058
    call $20ad
    ld hl, $a1f1
    call $20ee
    ld c, a
    ld b, $00
    ld hl, $0030
    call Call_00a_4058
    call $20ad
    ld hl, $a1c7
    call $20ee
    or a
    jr z, jr_00a_5f31

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1c8]
    call $223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $0084
    call Call_00a_4058
    call $2082
    ld hl, $a1c7
    call $20ee
    cp $01
    jr z, jr_00a_5f37

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1c9]
    call $223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $008a
    call Call_00a_4058
    call $2082
    ld hl, $a1c7
    call $20ee
    cp $02
    jr z, jr_00a_5f3d

    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a246
    ld a, [$a1ca]
    call $223b
    ld c, [hl]
    ei
    ld b, $00
    ld hl, $0090
    call Call_00a_4058
    call $2082

Jump_00a_5f2b:
    ld a, $00
    ld [$0100], a
    ret


jr_00a_5f31:
    ld hl, $0061
    call Call_00a_5f49

jr_00a_5f37:
    ld hl, $0067
    call Call_00a_5f49

jr_00a_5f3d:
    ld hl, $006d
    call Call_00a_5f49
    ld a, $00
    ld [$0100], a
    ret


Call_00a_5f49:
    push hl
    call Call_00a_4058
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_00a_4058
    ld a, $e0
    ld [hl+], a
    ld [hl], a
    ret


Call_00a_5f65:
    ld hl, $8da0
    ld b, $18
    call Call_00a_5fcc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1c8]
    call $223b
    ei
    ld e, l
    ld d, h
    ld hl, $8a40
    ld a, $01
    call Call_00a_5fbc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1c9]
    call $223b
    ei
    ld e, l
    ld d, h
    ld hl, $8a80
    ld a, $02
    call Call_00a_5fbc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1fc
    ld a, [$a1ca]
    call $223b
    ei
    ld e, l
    ld d, h
    ld hl, $8ac0
    ld a, $03
    call Call_00a_5fbc
    ret


Call_00a_5fbc:
    ld b, a
    di
    ld a, $0a
    ld [$0100], a
    ld a, [$a1c7]
    cp b
    ei
    jr nc, jr_00a_5fd9

    ld b, $20

Call_00a_5fcc:
jr_00a_5fcc:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_5fcc

    ret


jr_00a_5fd9:
    push bc
    call Call_00a_4153
    pop bc
    dec b
    push bc
    di
    ld a, $0a
    ld [$0100], a
    ld hl, $a1c8
    ld a, b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $a205
    call $223b
    ld a, [hl]
    ei
    add a
    ld hl, $6013
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop bc
    ld a, b
    swap a
    add $a0
    ld l, a
    ld h, $8d
    call $1577
    ret


    inc bc
    ld l, $04
    ld l, $05
    ld l, $06
    ld l, $07
    ld l, $08
    ld l, $09
    ld l, $0a
    ld l, $0b
    ld l, $0c
    ld l, $11
    ld a, [bc]
    nop
    push bc
    call Call_00a_6043
    pop bc
    or a
    jr z, jr_00a_603e

    ld de, $000a
    call Call_00a_6043
    call Call_00a_6058
    call Call_00a_605e

jr_00a_603e:
    ld a, c
    call Call_00a_6058
    ret


Call_00a_6043:
    push hl
    ld h, $ff

jr_00a_6046:
    inc h
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    jr nc, jr_00a_6046

    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    ld a, h
    pop hl
    ret


Call_00a_6058:
    add $f0
    call $1aad
    ret


Call_00a_605e:
    push af
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
    pop af
    ret


Call_00a_606d:
    or a
    ret z

    push af

jr_00a_6070:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_00a_6070

    dec de
    ld a, $a2
    ld [de], a
    inc de
    pop af
    ld l, e
    ld h, d
    call $09a4
    ret


Call_00a_6082:
    push af

jr_00a_6083:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_00a_6083

    dec de
    pop af
    and $01
    add $a7
    ld [de], a
    inc de
    ld a, $f0
    ld [de], a
    ret


    ld a, [$c905]
    rst $00
    and e
    ld h, b
    xor $60
    inc sp
    ld h, c
    adc c
    ld h, c
    sub e
    ld h, c
    ld hl, $ffb7
    call Call_00a_4028
    ld hl, $ffbb
    call Call_00a_4028
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_00a_41ef
    ld de, $2e13
    ld hl, $8800
    call $1577
    call Call_00a_4323
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_00a_41ef
    call Call_00a_60fc
    call Call_00a_40e5
    ret


Call_00a_60fc:
    ld de, $77c9
    call Call_00a_40b4
    ld de, $6f81
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    ld a, [$ca4b]
    ldh [$d5], a
    ld a, [$ca4c]
    ldh [$d6], a
    ld a, [$ca4d]
    ldh [$d7], a
    ld hl, $002e
    call Call_00a_4058
    call $1fb9
    call Call_00a_4323
    ld de, $6181
    ld a, [$c8da]
    call Call_00a_43e2
    ret


    ld de, $6181
    ld hl, $c8da
    ld b, $03
    call Call_00a_42ca
    ld a, [$c846]
    and $0a
    jr z, jr_00a_614f

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_00a_6180

jr_00a_614f:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_6180

    ld a, $59
    call $1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    set 7, [hl]
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    jr jr_00a_6180

jr_00a_6180:
    ret


    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38
    ld a, [$c8da]
    rst $00
    xor c
    ld h, c
    ldh a, [$66]
    sub e
    ld h, c
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    call Call_00a_4d61
    ld h, d
    sub e
    ld h, e
    ld a, [c]
    ld h, e
    ld e, d
    ld h, h
    inc de
    ld h, l
    ld c, h
    ld h, l
    add b
    ld h, l
    and c
    ld h, l
    cp h
    ld h, l
    call $d865
    ld h, l
    cp $65
    ld d, h
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    and l
    ld h, [hl]
    call Call_00a_61ed
    or a
    jr nz, jr_00a_61df

    ld hl, $0004
    call Call_00a_441f
    ld a, $09
    ld [$c906], a
    ret


jr_00a_61df:
    call Call_00a_6217
    ld hl, $0003
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_61ed:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_61f4:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_6206

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_00a_6206

    inc c

jr_00a_6206:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00a_61f4

    ld a, c
    ld [$c8e9], a
    ret


Call_00a_6217:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_00a_622c:
    push de
    ld a, [de]
    or a
    jr z, jr_00a_623f

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_00a_623f

    ld [hl], c
    inc hl

jr_00a_623f:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_00a_622c

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6282
    call Call_00a_62e3
    call Call_00a_6263
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6263:
    call Call_00a_41ef
    call Call_00a_60fc
    ld de, $7811
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $63e6
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ret


Call_00a_6282:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9700
    call Call_00a_629f
    ld hl, $8800
    call Call_00a_629f
    call Call_00a_629f

Call_00a_629f:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_62c9

    ld hl, $caca
    call $223b
    ld a, [hl]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld de, $0901
    pop hl
    push hl
    call Call_00a_411a
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_62c9:
    ld b, $48

jr_00a_62cb:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_62cb

    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_00a_62e3:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $89b0
    call Call_00a_62fd
    call Call_00a_62fd
    call Call_00a_62fd

Call_00a_62fd:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_6379

    ld hl, $cb24
    call $223b
    ld a, [hl]
    cp $02
    ld a, $66
    jr nz, jr_00a_631e

    ld a, l
    add $a8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, [hl]
    and $01
    add $a7

jr_00a_631e:
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    pop hl
    push hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_6379:
    ld b, $08

jr_00a_637b:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_637b

    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    ld de, $63e6
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_63b5

    call Call_00a_6282
    call Call_00a_62e3

jr_00a_63b5:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_63c9

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_63e5

jr_00a_63c9:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_63e5

    ld a, $59
    call $1b2c
    ld a, $0a
    ld [$c906], a
    ld a, $00
    ld [$c8dc], a
    ld a, $01
    ld [$c8dd], a

Jump_00a_63e5:
jr_00a_63e5:
    ret


    sub d
    ld bc, $00a8
    add sp, $00
    jr z, jr_00a_63ef

    ld l, b

jr_00a_63ef:
    ld bc, $ffff
    ld a, [$ca4b]
    sub $14
    ld a, [$ca4c]
    sbc $00
    ld a, [$ca4d]
    sbc $00
    jr c, jr_00a_644e

    ld hl, $0014
    ld e, $00
    call $2424
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $caca
    call $223b
    ld l, [hl]
    ld h, $05
    ld de, $c180
    call $097a
    ld a, [$cac0]
    ld hl, $cb23
    call $223b
    ld a, [hl]
    ld de, $c180
    call Call_00a_606d
    ld hl, $0006
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


jr_00a_644e:
    ld hl, $001c
    call Call_00a_441f
    ld a, $09
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $cb11
    call $223b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, d
    cp $10
    jr nc, jr_00a_64de

    push de
    ld a, [$cac0]
    ld hl, $cb15
    call $223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a
    ld a, d
    cp $10
    jr nc, jr_00a_64de

    push de
    ld a, [$cac0]
    ld hl, $cb19
    call $223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a
    ld a, d
    cp $10
    jr nc, jr_00a_64de

    push de
    ld a, [$cac0]
    ld hl, $cb1b
    call $223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a
    ld a, d
    cp $10
    jr nc, jr_00a_64de

    push de
    ld a, [$cac0]
    ld hl, $cb1d
    call $223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a
    ld a, d
    cp $10
    jr nc, jr_00a_64de

    push de
    ld a, [$cac0]
    ld hl, $cb1f
    call $223b
    pop de
    ld a, e
    add [hl]
    inc hl
    ld e, a
    ld a, d
    adc [hl]
    ld d, a

jr_00a_64de:
    push de
    ld a, e
    sub $78
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    pop de
    jr c, jr_00a_650e

    ld hl, $0007
    push de
    ld a, e
    sub $2c
    ld e, a
    ld a, d
    sbc $01
    ld d, a
    pop de
    jr c, jr_00a_650b

    ld hl, $0008
    push de
    ld a, e
    sub $58
    ld e, a
    ld a, d
    sbc $02
    ld d, a
    pop de
    jr c, jr_00a_650b

    ld hl, $0009

jr_00a_650b:
    call Call_00a_441f

jr_00a_650e:
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $caf2
    call $223b
    ld b, $19
    ld c, $00

jr_00a_6525:
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_652b

    inc c

jr_00a_652b:
    dec b
    jr nz, jr_00a_6525

    ld a, c
    cp $0a
    jr c, jr_00a_6547

    ld hl, $000a
    cp $0f
    jr c, jr_00a_6544

    ld hl, $000b
    cp $14
    jr c, jr_00a_6544

    ld hl, $000c

jr_00a_6544:
    call Call_00a_441f

jr_00a_6547:
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $cb0d
    call $223b
    ld a, [hl]
    ld hl, $000d
    cp $1e
    jr c, jr_00a_6577

    ld hl, $000e
    cp $28
    jr c, jr_00a_6577

    cp $32
    jr c, jr_00a_657a

    ld hl, $000f
    cp $50
    jr c, jr_00a_6577

    ld hl, $0010

jr_00a_6577:
    call Call_00a_441f

jr_00a_657a:
    ld a, $0f
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld hl, $0013
    and $01
    jr z, jr_00a_6599

    ld hl, $0014

jr_00a_6599:
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0015
    call Call_00a_441f
    ld a, [$cac0]
    ld hl, $cb24
    call $223b
    ld [hl], $02
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    ret


    ld hl, $0005
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6263
    call Call_00a_65eb
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_65eb:
    ld de, $79df
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $664e
    ld a, [$c8dc]
    call Call_00a_43e2
    ret


    ld de, $664e
    ld hl, $c8dc
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_6623

    call Call_00a_6263
    call Call_00a_40e5
    ld hl, $0003
    call Call_00a_441f
    ld a, $02
    ld [$c906], a
    jr jr_00a_664d

jr_00a_6623:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_664d

    ld a, $59
    call $1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_00a_6644

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c906
    inc [hl]
    jr jr_00a_664d

jr_00a_6644:
    ld a, $03
    ld [$c906], a
    xor a
    ld [$c8dd], a

Jump_00a_664d:
jr_00a_664d:
    ret


    ld hl, $6101
    ld bc, $ffff
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $0701
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld de, $2e13
    ld hl, $8800
    call $1577
    call Call_00a_61ed
    call Call_00a_6217
    call Call_00a_6282
    call Call_00a_62e3
    ld hl, $0005
    call Call_00a_441f
    call Call_00a_6263
    call Call_00a_65eb
    call Call_00a_40e5
    ld a, $0b
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$cac0]
    ld hl, $caca
    call $223b
    ld a, [hl]
    ld [$da31], a
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld hl, $da42
    xor a
    call Call_00a_66e8
    push af
    ld a, [$cac0]
    ld hl, $cb29
    call $223b
    xor a
    call Call_00a_66e8
    pop bc
    cp b
    jr z, jr_00a_66e2

    ld hl, $0011
    jr c, jr_00a_66df

    ld hl, $0012

jr_00a_66df:
    call Call_00a_441f

jr_00a_66e2:
    ld a, $07
    ld [$c906], a
    ret


Call_00a_66e8:
    ld b, $1b

jr_00a_66ea:
    add [hl]
    inc hl
    dec b
    jr nz, jr_00a_66ea

    ret


    ld a, [$c906]
    rst $00
    ld a, [bc]
    ld h, a
    ld a, [hl+]
    ld h, a
    ld e, a
    ld h, a
    cp b
    ld h, a
    inc h
    ld l, b
    ld c, h
    ld l, b
    xor c
    ld l, b
    di
    ld l, b
    inc bc
    ld l, c
    inc d
    ld l, c
    ld e, $69
    call Call_00a_61ed
    or a
    jr nz, jr_00a_671c

    ld hl, $0017
    call Call_00a_441f
    ld a, $08
    ld [$c906], a
    ret


jr_00a_671c:
    call Call_00a_6217
    ld hl, $0016
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6282
    call Call_00a_62e3
    call Call_00a_6740
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6740:
    call Call_00a_41ef
    call Call_00a_60fc
    ld de, $7811
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $67ac
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_00a_43c0
    ret


    ld de, $67ac
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_00a_4241
    pop af
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_00a_6781

    call Call_00a_6282
    call Call_00a_62e3

jr_00a_6781:
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_6795

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_67ab

jr_00a_6795:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_67ab

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8dd], a

Jump_00a_67ab:
jr_00a_67ab:
    ret


    sub d
    ld bc, $00a8
    add sp, $00
    jr z, jr_00a_67b5

    ld l, b

jr_00a_67b5:
    ld bc, $ffff
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld a, [$cac0]
    ld hl, $cb23
    call $223b
    ld c, [hl]
    ld a, $32
    call $1dbe
    ld a, l
    add $64
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld e, $00
    ld a, l
    sub $9f
    ld a, h
    sbc $86
    ld a, e
    sbc $01
    jr c, jr_00a_67fa

    ld hl, $869f
    ld e, $01

jr_00a_67fa:
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, e
    ldh [$d7], a
    ld a, l
    ld [$c8e4], a
    ld a, h
    ld [$c8e5], a
    ld a, e
    ld [$c8e6], a
    ld hl, $c180
    call $09c7
    ld hl, $0018
    call Call_00a_441f
    xor a
    ld [$c8de], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    call Call_00a_6839
    call Call_00a_40e5
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6839:
    ld de, $79df
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $68a3
    ld a, [$c8de]
    call Call_00a_43e2
    ret


    ld de, $68a3
    ld hl, $c8de
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_687c

    call Call_00a_6740
    call Call_00a_40e5
    ld hl, $0016
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_68a2

jr_00a_687c:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_68a2

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_00a_689e

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $09
    ld [$c906], a
    jr jr_00a_68a2

jr_00a_689e:
    ld hl, $c906
    inc [hl]

Jump_00a_68a2:
jr_00a_68a2:
    ret


    ld hl, $6101
    ld bc, $ffff
    ld hl, $c8e4
    ld a, [$ca4b]
    sub [hl]
    inc hl
    ld a, [$ca4c]
    sbc [hl]
    inc hl
    ld a, [$ca4d]
    sbc [hl]
    jr nc, jr_00a_68cc

    ld hl, $001c
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ld hl, $c906
    inc [hl]
    jr jr_00a_68f2

jr_00a_68cc:
    ld a, [$c8e4]
    ld l, a
    ld a, [$c8e5]
    ld h, a
    ld a, [$c8e6]
    ld e, a
    call $2424
    ld a, [$cac0]
    ld hl, $cacc
    call $223b
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $001a
    call Call_00a_441f
    ld hl, $c906
    inc [hl]

jr_00a_68f2:
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $001b
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    ret


    ld hl, $0701
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld de, $2e13
    ld hl, $8800
    call $1577
    call Call_00a_61ed
    call Call_00a_6217
    call Call_00a_6282
    call Call_00a_62e3
    ld a, [$c8e4]
    ldh [$d5], a
    ld a, [$c8e5]
    ldh [$d6], a
    ld a, [$c8e6]
    ldh [$d7], a
    ld hl, $c180
    call $09c7
    ld hl, $0018
    call Call_00a_441f
    call Call_00a_6740
    call Call_00a_6839
    call Call_00a_40e5
    ld a, $05
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c905]
    rst $00
    ld l, a
    ld l, c
    call z, $f369
    ld l, c
    ld b, e
    ld l, d
    ld d, l
    ld l, d
    ld hl, $ffb7
    call Call_00a_4028
    ld hl, $ffbb
    call Call_00a_4028
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
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
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    ld de, $2e12
    ld hl, $8800
    call $1577
    call Call_00a_4323
    ld a, $40
    ldh [$d4], a
    ld a, $00
    ld [$c83c], a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_00a_41ef
    call Call_00a_69da
    call Call_00a_40e5
    ret


Call_00a_69da:
    ld de, $6f37
    call Call_00a_40b4
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $6a3d
    ld a, [$c8da]
    call Call_00a_43e2
    ret


    ld de, $6a3d
    ld hl, $c8da
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    and $0a
    jr z, jr_00a_6a07

    jr jr_00a_6a4b

jr_00a_6a07:
    ld a, [$c846]
    bit 0, a
    jr z, jr_00a_6a3c

    ld a, $59
    call $1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    set 7, [hl]
    ld a, [hl]
    ld [$c907], a
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    jr jr_00a_6a3c

jr_00a_6a3c:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld a, [$c907]
    rst $00
    ld a, c
    ld l, d
    ld c, e
    ld l, d

jr_00a_6a4b:
    ld a, [$c825]
    or a
    ret nz

    ld a, $01
    ld [$c83c], a
    call Call_00a_41ef
    ld de, $2e07
    call Call_00a_40b4
    call Call_00a_40e5
    xor a
    ld [$c8ec], a
    ld a, $80
    ldh [$d3], a
    ld hl, $c8eb
    res 4, [hl]
    set 0, [hl]
    xor a
    ld [$c905], a
    ld hl, $0103
    rst $10
    ret


    ld a, [$c906]
    rst $00
    sub e
    ld l, d
    ei
    ld l, d
    ld l, c
    ld l, h
    db $f4
    ld l, h
    rst $38
    ld l, h
    ld b, e
    ld l, l
    and c
    ld l, l
    jp z, $4e6d

    ld l, [hl]
    ld [hl], d
    ld l, [hl]
    sub l
    ld l, [hl]
    ld a, [$ca8d]
    cp $03
    jr z, jr_00a_6ab7

    inc a
    ld [$ca8d], a
    ld hl, $ca8d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$ca40]
    ld [hl], a
    ld hl, $001f
    call Call_00a_441f
    ld a, $0a
    ld [$c906], a
    ret


jr_00a_6ab7:
    call Call_00a_6ac8
    call Call_00a_6ad0
    ld hl, $0019
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6ac8:
    ld a, [$ca8d]
    inc a
    ld [$c8e9], a
    ret


Call_00a_6ad0:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld a, [$ca8e]
    cp $ff
    jr z, jr_00a_6af6

    ld [hl+], a
    ld a, [$ca8f]
    cp $ff
    jr z, jr_00a_6af6

    ld [hl+], a
    ld a, [$ca90]
    cp $ff
    jr z, jr_00a_6af6

    ld [hl+], a

jr_00a_6af6:
    ld a, [$ca40]
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6bb7
    call Call_00a_6b33
    call Call_00a_6b0e
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6b0e:
    call Call_00a_41ef
    call Call_00a_69da
    ld de, $75e5
    call Call_00a_40b4
    ld de, $76d7
    call Call_00a_40b4
    call Call_00a_6b7d
    call Call_00a_4323
    ld de, $6cea
    ld a, [$c8db]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


Call_00a_6b33:
    ld de, $c0d8
    ld hl, $9610
    call Call_00a_6b42
    call Call_00a_6b42
    call Call_00a_6b42

Call_00a_6b42:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_6b63

    ld a, [de]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_00a_4153
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_6b63:
    ld b, $20

jr_00a_6b65:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_6b65

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_00a_6b7d:
    ld a, [$c8db]
    and $7f
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $cb0c
    call $223b
    ld c, [hl]
    ld b, $00
    ld hl, $00ca
    call Call_00a_4058
    ld a, $de
    ld [hl+], a
    call $6027
    pop af
    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    ret nz

    ld hl, $00d2
    call Call_00a_4058
    ld a, $e3
    ld [hl], a
    ret


Call_00a_6bb7:
    ld a, [$c8db]
    and $7f
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    push af
    ld hl, $9710
    call Call_00a_6c2e
    pop af
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld hl, $9750
    call Call_00a_6bdc
    ret


Call_00a_6bdc:
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_00a_6c2e:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_00a_6c4f

    ld a, [de]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_00a_4153
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_00a_6c4f:
    ld b, $20

jr_00a_6c51:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_00a_6c51

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $6cea
    ld hl, $c8db
    ld a, [$c8e9]
    ld b, a
    ld a, [hl]
    push af
    call Call_00a_42ca
    pop af
    ld hl, $c8db
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_00a_6c99

    call Call_00a_6bb7
    ld de, $76d7
    call Call_00a_40b4
    call Call_00a_6b7d
    call Call_00a_40e5

jr_00a_6c99:
    ld a, [$c846]
    bit 1, a
    jp z, Jump_00a_6cbf

    ld a, [$c0db]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    ld hl, $0018
    call Call_00a_441f
    ld a, $01
    ld [$c905], a
    jr jr_00a_6ce9

Jump_00a_6cbf:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_6ce9

    ld a, $59
    call $1b2c
    ld a, [$c8db]
    and $7f
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld [$c8e8], a
    xor a
    ld [$c8dc], a
    ld hl, $c906
    inc [hl]

Jump_00a_6ce9:
jr_00a_6ce9:
    ret


    and c
    nop
    pop hl
    nop
    ld hl, $6101
    ld bc, $ffff
    ld hl, $001a
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_00a_6d0c
    ld hl, $c906
    inc [hl]
    ret


Call_00a_6d0c:
    call Call_00a_6bb7
    call Call_00a_41ef
    call Call_00a_69da
    ld de, $75e5
    call Call_00a_40b4
    ld de, $76d7
    call Call_00a_40b4
    call Call_00a_6b7d
    ld de, $6cea
    ld a, [$c8db]
    call Call_00a_43e2
    ld de, $745e
    call Call_00a_40b4
    call Call_00a_4323
    ld de, $6d9b
    ld a, [$c8dc]
    call Call_00a_43e2
    call Call_00a_40e5
    ret


    ld de, $6d9b
    ld hl, $c8dc
    ld b, $02
    call Call_00a_42ca
    ld a, [$c846]
    bit 1, a
    jr z, jr_00a_6d70

    call Call_00a_6b0e
    ld hl, $0019
    call Call_00a_441f
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_00a_6d9a

jr_00a_6d70:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_00a_6d9a

    ld a, $59
    call $1b2c
    ld a, [$c8dc]
    cp $81
    jr z, jr_00a_6d92

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld a, $08
    ld [$c906], a
    jr jr_00a_6d9a

jr_00a_6d92:
    ld hl, $c906
    inc [hl]
    xor a
    ld [$c8dd], a

Jump_00a_6d9a:
jr_00a_6d9a:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    ld hl, $c0d8
    ld a, [$c8db]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    ld hl, $001b
    call Call_00a_441f
    ld hl, $c906
    inc [hl]
    ret


    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c0d8]
    ld hl, $cac1
    call $223b
    ld [hl], $02
    ld a, [$c0d9]
    ld hl, $cac1
    call $223b
    ld [hl], $02
    ld a, [$c0da]
    ld hl, $cac1
    call $223b
    ld [hl], $02
    ld a, [$c0db]
    ld hl, $cac1
    call $223b
    ld [hl], $02
    ld hl, $c0d8
    ld a, [$c8db]
    and $7f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $cac1
    call $223b
    ld [hl], $01
    ld de, $ca8e
    ld a, [$c0d8]
    call Call_00a_6e3a
    ld a, [$c0d9]
    call Call_00a_6e3a
    ld a, [$c0da]
    call Call_00a_6e3a
    ld a, [$c0db]
    call Call_00a_6e3a
    ld hl, $0105
    rst $10
    ld hl, $0103
    rst $10
    ld hl, $c905
    inc [hl]
    ret


Call_00a_6e3a:
    ld b, a
    push bc
    push de
    ld hl, $cac1
    call $223b
    pop de
    pop bc
    ld a, [hl]
    cp $02
    jr nz, jr_00a_6e4d

    ld a, b
    ld [de], a
    inc de

jr_00a_6e4d:
    ret


    ld hl, $c0d8
    ld a, l
    ld [$c930], a
    ld a, h
    ld [$c931], a
    ld a, [$c8db]
    and $7f
    ld a, a
    ld [$c932], a
    ld a, [$c8e9]
    ld [$c933], a
    ld hl, $0701
    rst $10
    ld a, $01
    ld [$c8ec], a
    ret


    ld de, $2e12
    ld hl, $8800
    call $1577
    ld hl, $5605
    rst $10
    call Call_00a_6b33
    call Call_00a_6d0c
    ld hl, $001a
    call Call_00a_441f
    ld a, $05
    ld [$c906], a
    xor a
    ld [$c8ec], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0105
    rst $10
    ld hl, $0103
    rst $10
    ld hl, $c905
    inc [hl]
    ret


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $b0
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
    ret nz

    pop bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $c2
    jp $c5c4


    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $ffd3

    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
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
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
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
    sbc e
    sbc h
    sbc l
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
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
    xor d
    xor e
    xor h
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    inc c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and [hl]
    call nc, $a5a8
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    xor c
    and [hl]
    call nc, $a5a8
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub $a7
    and h
    sub $e0
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    add c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    ei
    ret c

    cp $e0
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    db $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e5], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    ld bc, $effa
    rst $28
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
    sbc e
    sbc h
    sbc l
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    adc b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    push de
    and a
    xor b
    xor c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    xor d
    xor e
    xor h
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    and l
    and [hl]
    and a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor b
    xor c
    xor d
    xor e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld l, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld l, h
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld b, [hl]
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $a0
    and c
    and d
    and e
    ldh [$dd], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $dd90
    sub $90
    sub $94
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    call nc, $e190
    sub l
    sbc $d6
    sub h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    call nc, $9794
    sub $e1
    sub $94
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc b
    sub [hl]
    sub $94
    sub h
    sub $94
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub a
    sub c
    pop hl
    sbc $d4
    sub d
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    call nc, $9090
    sub [hl]
    sbc c
    sub c
    pop hl
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc d
    sub $94
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc d
    sub $94
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc d
    sub $94
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc d
    sub $94
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub a
    sbc b
    call nc, $ff98
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub l
    sub e
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e2
    call nc, $9897
    sub $96
    db $e4
    and b
    and c
    and d
    and e
    ldh [$e0], a
    ldh [$e4], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $da
    and h
    and l
    and [hl]
    and a
    ldh [$db], a
    xor b
    xor c
    xor d
    xor e
    ldh [$dc], a
    xor h
    xor l
    xor [hl]
    xor a
    rst $38
    ret c

    cp $e0
    sbc a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    sbc a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    sbc a
    db $e4
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $84
    ldh [$80], a
    ldh [$96], a
    sub h
    db $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $85
    ldh [$81], a
    ldh [$96], a
    sub h
    db $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $86
    ldh [$82], a
    ldh [$96], a
    sub h
    db $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $87
    ldh [$83], a
    ldh [$96], a
    sub h
    db $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    db $e3
    call nc, $96d4
    sub $94
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc d
    sub [hl]
    sbc [hl]
    sbc b
    sub $94
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc d
    sub $94
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc d
    sub $94
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    add hl, bc
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    xor c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld c, c
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    and b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    and c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    and d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d4a4
    sbc $a6
    and l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    and l
    sub $dd
    and h
    sub $a4
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub $a4
    and e
    sub $e0
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    sbc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    sbc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sbc l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc [hl]
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    and l
    and [hl]
    and a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor b
    xor c
    xor d
    xor e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor h
    xor l
    xor [hl]
    xor a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    add b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$9e], a
    sbc a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$a0], a
    and c
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $63
    ldh [$9e], a
    sbc a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $63
    ldh [$a0], a
    and c
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    adc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    adc l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    adc [hl]
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    inc c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $94e1
    sub $94
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub l
    sub e
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $a4e1
    sub $a4
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    and a
    and d
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
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
    sbc e
    sbc h
    sbc l
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    rst $38
    ld l, l
    rst $38
    ld l, l
    rst $38
    ld l, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp h
    rst $38
    or c
    rst $38
    cp c
    rst $38
    or b
    rst $38
    or c
    rst $38
    cp h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sub b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    jr nc, @+$01

    ldh [rIE], a
    nop
    rst $38
    ld a, a
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
    inc bc
    rst $38
    adc l
    add b
    ret nz

    cp a
    jp $c2bf


    cp a
    jp nz, $debf

    cp a
    ret nc

    cp a
    inc bc
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    add a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    or h
    ld bc, $ff01
    pop hl
    rst $18
    ld h, c
    rst $18
    ld h, c
    rst $18
    ld a, l
    ei
    dec c
    ei
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ld [hl], b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    sbc c
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    add h
    nop
    nop
    rst $38
    rst $38
    stop
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $ff
    sbc d
    nop
    rst $38
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $ff
    sbc c
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
    rst $38
    rrca
    db $fc
    rra
    ldh a, [$3f]
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    nop
    inc b
    rst $38
    add h
    nop
    rst $38
    nop
    rst $38
    ld b, $00
    add d
    rst $38
    nop
    inc b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
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
    cp $02
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    dec l
    dec sp
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    call nc, $3fbc
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ccf
    ret nz

    rst $08
    ldh a, [rVBK]
    ld [hl], b
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    pop de
    cp a
    pop de
    cp a
    rst $10
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ei
    nop
    nop
    ld a, a
    ld a, a
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    ccf
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec c
    ei
    adc l
    ei
    adc l
    ei
    db $ed
    ei
    ccf
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3c], a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$08
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    ret nc

    cp a
    sbc $bf
    sbc $a3
    jp nz, $c3bf

    cp a
    jp $c0bc


    cp a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    adc l
    dec c
    ei
    ld a, l
    ei
    ld a, l
    jp $df61


    pop hl
    rst $18
    pop hl
    rra
    ld bc, $ff03
    sub a
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    adc l
    db $ed
    ei
    db $fd
    ei
    db $fd
    jp $df61


    pop hl
    rst $18
    pop hl
    rra
    ld bc, $ff03
    sub a
    rst $10
    cp a
    rst $18
    cp a
    rst $18
    and e
    jp nz, $c3bf

    cp a
    jp $c0bc


    cp a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    inc b
    rst $38
    add d
    nop
    nop
    inc bc
    rst $38
    rst $38
    call nc, $d5bc
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    push de
    cp l
    ld c, a
    ld [hl], b
    rst $08
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp $02
    rst $38
    inc bc
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
    dec l
    dec sp
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    xor l
    cp e
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$04
    rra
    db $fc
    rra
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    sub c
    rra
    rst $38
    ld a, a
    rst $38
    ccf
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
    dec b
    rst $38
    adc e
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
    dec b
    rst $38
    cp e
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
    rst $18
    ret nc

    rst $38
    ldh a, [rIE]
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
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    rra
    rst $38
    db $10
    ldh a, [$2f]
    ldh a, [$2f]
    ldh [$5f], a
    ldh [$5f], a
    ret nz

    cp a
    pop bc
    cp [hl]
    inc bc
    rst $38
    xor h
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld [$fc07], sp
    rlca
    db $fc
    inc bc
    cp $03
    cp $01
    rst $38
    add c
    ld a, a
    ret nz

    nop
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
    rst $38
    nop
    rst $38
    dec b
    nop
    sbc h
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
    inc a
    rra
    inc a
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    stop
    db $10
    rst $38
    ld de, $9f00
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
    adc b
    db $10
    rla
    ld de, $7f7f
    db $10
    ld d, $11
    inc b
    ld a, a
    add e
    db $10
    rla
    ld [hl+], a
    inc bc
    ld a, a
    add d
    inc h
    dec h
    inc c
    ld a, h
    adc c
    jr nz, jr_00a_7e60

    ld [de], a
    ld a, a
    ld a, a
    jr nz, jr_00a_7e64

    ld [de], a
    ld [hl], l
    ld [$8376], sp
    ld [hl], a
    jr nz, jr_00a_7e67

    inc c
    ld a, h
    add d
    ld a, a
    ld b, b
    ld b, $41
    adc h
    inc sp
    sub e
    add b
    adc d
    add h
    add a
    adc b
    adc d
    adc [hl]
    inc [hl]
    ld b, d
    ld b, e
    inc c
    ld a, h
    add e
    ld a, a
    ld d, b
    ld c, h

jr_00a_7e60:
    dec b
    ld c, l
    add c
    dec [hl]

jr_00a_7e64:
    ld [$8336], sp

jr_00a_7e67:
    scf
    ld d, d
    ld d, e
    inc c
    ld a, h
    adc c
    ld a, a
    ld d, b
    ld e, h
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    rlca
    adc $84
    ld a, a
    ld e, a
    ld d, d
    ld d, e
    inc c
    ld a, h
    add [hl]
    ld a, a
    ld d, b
    ld l, h
    ld l, l
    ld a, a
    or c
    inc b
    or d
    add c
    ld a, a
    inc b
    or e
    add l
    or h
    ld a, a
    ld l, a
    ld d, d
    ld d, e
    inc c
    ld a, h
    add [hl]
    inc hl
    ld d, b
    ld a, [hl]
    ld e, [hl]
    or l
    or [hl]
    ld a, [bc]
    cp e
    add h
    or a
    ld l, [hl]
    ld d, d
    ld d, e
    inc c
    ld a, h
    adc d
    dec d
    ld d, b
    ld a, [hl]
    ld e, [hl]
    cp b
    ld a, a
    add h
    add b
    sub d
    sbc b
    ld b, $7f
    add h
    ld d, d
    ld e, l
    ld d, d
    ld d, e
    inc c
    ld a, h
    add [hl]
    ld hl, $7e50
    ld e, [hl]
    cp b
    ld a, a
    ld [$86b0], sp
    ld a, a
    ld a, a
    ld d, d
    ld e, l
    ld d, d
    ld d, e
    inc c
    ld a, h
    adc b
    ld a, a
    ld d, b
    ld a, [hl]
    ld e, [hl]
    cp b
    ld a, a
    jr z, jr_00a_7efc

    inc bc
    ld a, a
    inc b
    and b
    add l
    ld a, a
    ld d, d
    ld e, l
    ld d, d
    ld d, e
    inc c
    ld a, h
    add l
    ld a, a
    ld d, b
    ld a, [hl]
    ld e, [hl]
    cp b
    dec bc
    ld a, a
    add h
    ld d, d
    ld e, l
    ld d, d
    ld d, e
    inc c
    ld a, h
    adc e
    db $10
    ld d, b
    ld a, [hl]
    ld e, [hl]
    cp b
    ld a, a
    ld a, [hl+]
    dec hl
    inc l
    ld a, a
    ld a, a
    inc b
    and b

jr_00a_7efc:
    add l
    ld a, a
    ld d, d
    ld e, l
    ld d, d
    ld d, e
    inc c
    ld a, h
    add [hl]
    inc h
    ld d, b
    ld a, [hl]
    ld e, [hl]
    cp c
    cp d
    ld a, [bc]
    ld h, c
    add h
    ld h, d
    ld e, l
    ld d, d
    ld d, e
    inc c
    ld a, h
    add l
    jr nz, jr_00a_7f67

    ld a, [hl]
    ld e, [hl]
    ld a, b
    inc c
    ld a, c
    add e
    ld a, d
    ld d, d
    ld d, e
    inc c
    ld a, h
    sub h
    ld a, a
    ld d, b
    ld a, [hl]
    ld e, [hl]
    ld a, a
    ld a, a
    ret nc

    pop de
    jp nc, $82d3

    adc e
    add h
    add b
    sub c
    ld a, a
    ld a, a
    ld l, a
    ld d, d
    ld d, e
    inc c
    ld a, h
    add l
    ld a, a
    ld d, b
    ld a, [hl]
    ld c, d
    ld c, c
    inc c
    ld c, e
    add e
    ld e, d
    ld d, d
    ld d, e
    inc c
    ld a, h
    add d
    ld de, $1060
    ld h, c
    add d
    ld h, d
    ld h, e
    inc c
    ld a, h
    add d
    dec h
    ld [hl], b
    inc bc
    ld [hl], c
    add e
    add hl, de
    dec de
    ld a, [de]
    inc b
    ld [hl], c
    adc b
    jr jr_00a_7f79

    ld [hl], c
    ld [hl], c
    inc e
    dec e
    ld [hl], c
    ld [hl], e
    inc c
    ld a, h

jr_00a_7f67:
    add h
    ld a, a
    ld d, b
    ld a, [hl]
    ld e, [hl]
    inc bc
    ld a, a
    add a
    add d
    adc e
    add h
    add b
    sub c
    ld a, a
    sbc l
    inc bc
    ld a, a
    add e

jr_00a_7f79:
    ld l, a
    ld d, d
    ld d, e
    inc c
    ld a, h
    add h
    ld a, a
    ld d, b
    ld a, [hl]
    ld e, [hl]
    inc bc
    ld a, a
    add a
    rst $10
    ret c

    ld a, a
    ld a, a
    call nc, $d6d5
    inc bc
    ld a, a
    add e
    ld l, a
    ld d, d
    ld d, e
    inc c
    ld a, h
    add h
    ld de, $6160
    ld e, $0d
    rra
    add e
    cpl
    ld h, d
    ld h, e
    inc c
    ld a, h
    add d
    dec h
    ld [hl], b
    inc bc
    ld [hl], c
    add e
    add hl, de
    dec de
    ld a, [de]
    inc b
    ld [hl], c
    adc b
    jr jr_00a_7fca

    ld [hl], c
    ld [hl], c
    inc e
    dec e
    ld [hl], c
    ld [hl], e
    ld [$007c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_7fca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
