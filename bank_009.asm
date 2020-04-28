; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    add hl, bc
    dec b
    ld b, b
    ld c, $61
    ld a, [$c8ef]
    rst $00
    pop hl
    ld b, l
    inc sp
    ld b, b
    rst $20
    ld c, [hl]
    ld l, $40
    ld d, d
    ld e, e
    add hl, hl
    ld b, b
    add hl, hl
    ld b, b
    add hl, hl
    ld b, b
    ld l, $40
    ld l, $40
    ld l, $40
    add hl, hl
    ld b, b
    pop hl
    ld b, l
    cp b
    ld e, [hl]
    inc sp
    ld b, b
    ld c, $61
    ld hl, $0a00
    rst $10
    ret


    ld hl, $1200
    rst $10
    ret


    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


Call_009_403d:
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


Call_009_404a:
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


Call_009_4059:
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


Call_009_406d:
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_009_4076:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_009_4059
    ld a, b
    and $1f
    jr z, jr_009_408b

    ld b, a

jr_009_4085:
    call Call_009_404a
    dec b
    jr nz, jr_009_4085

jr_009_408b:
    pop bc
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_009_4076
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_009_409c:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_009_40c1

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
    jr jr_009_409c

jr_009_40c1:
    call $1aad
    call Call_009_404a
    jr jr_009_409c

Call_009_40c9:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_009_406d
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_009_40d8:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_009_40f7

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
    jr jr_009_40d8

jr_009_40f7:
    ld [hl+], a
    jr jr_009_40d8

Call_009_40fa:
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    ld de, $c500
    ld c, $12

jr_009_4107:
    ld b, $20
    push hl

jr_009_410a:
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
    jr nz, jr_009_410a

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
    jr nz, jr_009_4107

    ret


Call_009_412f:
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


Call_009_4168:
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


Call_009_41b6:
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


Call_009_4204:
    ld hl, $c500
    ld de, $c300
    ld bc, $0200

jr_009_420d:
    ld a, [de]
    inc de
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_009_420d

    ld de, $c1c0
    ld c, $02

jr_009_421a:
    ld b, $14

jr_009_421c:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_009_421c

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
    jr nz, jr_009_421a

    ret


Call_009_4236:
    ld hl, $c500
    ld bc, $0240

jr_009_423c:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_009_423c

    ret


    ld hl, $9800
    ld bc, $0400

jr_009_424b:
    ld a, $e0
    call $1ab9
    dec bc
    ld a, b
    or c
    jr nz, jr_009_424b

    ret


Call_009_4256:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_009_42bd

    ld a, [$c846]
    bit 5, a
    jr z, jr_009_4283

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
    jr c, jr_009_42a1

    ld a, c
    dec a
    jr jr_009_42a1

jr_009_4283:
    ld a, [$c846]
    bit 4, a
    jr z, jr_009_42bd

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
    jr c, jr_009_42a1

    ld a, $00

jr_009_42a1:
    ld [hl-], a
    dec c
    cp c
    jr nz, jr_009_4300

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
    jr z, jr_009_4300

    dec a
    cp [hl]
    jr nc, jr_009_4300

    ld [hl], a
    jr jr_009_4300

Jump_009_42bd:
jr_009_42bd:
    push bc
    push de
    push hl
    call Call_009_447c
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
    jr nz, jr_009_42df

    ld a, [$c8e1]
    inc a
    ld b, a

Call_009_42df:
jr_009_42df:
    res 7, [hl]
    ld a, [$c847]
    bit 6, a
    jr z, jr_009_42f1

    ld a, [hl]
    dec a
    cp b
    jr c, jr_009_42ff

    dec b
    ld a, b
    jr jr_009_42ff

jr_009_42f1:
    ld a, [$c847]
    bit 7, a
    jr z, jr_009_4308

    ld a, [hl]
    inc a
    cp b
    jr c, jr_009_42ff

    ld a, $00

jr_009_42ff:
    ld [hl], a

jr_009_4300:
    xor a
    ld [$c90c], a
    push hl
    push de
    pop de
    pop hl

jr_009_4308:
    ld a, [$c846]
    bit 0, a
    jr z, jr_009_4311

    set 7, [hl]

jr_009_4311:
    ld a, [hl]
    call Call_009_441d
    ret


    res 7, [hl]
    ld a, [$c847]
    bit 5, a
    jr z, jr_009_4328

    ld a, [hl]
    dec a
    cp b
    jr c, jr_009_42ff

    dec b
    ld a, b
    jr jr_009_42ff

jr_009_4328:
    ld a, [$c847]
    bit 4, a
    jr z, jr_009_4308

    ld a, [hl]
    inc a
    cp b
    jr c, jr_009_42ff

    ld a, $00
    jr jr_009_42ff

Call_009_4338:
    res 7, [hl]
    ld a, c
    ldh [$d7], a
    ld a, [$c847]
    bit 7, a
    jr z, jr_009_434e

    ld a, $10
    ld [$c90c], a
    call Call_009_43a5
    jr jr_009_4382

jr_009_434e:
    ld a, [$c847]
    bit 6, a
    jr z, jr_009_435f

    ld a, $10
    ld [$c90c], a
    call Call_009_43ec
    jr jr_009_4382

jr_009_435f:
    ld a, [$c847]
    bit 5, a
    jr z, jr_009_436f

    ld a, [hl]
    dec a
    cp b
    jr c, jr_009_437d

    dec b
    ld a, b
    jr jr_009_437d

jr_009_436f:
    ld a, [$c847]
    bit 4, a
    jr z, jr_009_4386

    ld a, [hl]
    inc a
    cp b
    jr c, jr_009_437d

    ld a, $00

jr_009_437d:
    ld [hl], a
    xor a
    ld [$c90c], a

jr_009_4382:
    push hl
    push de
    pop de
    pop hl

jr_009_4386:
    ld a, [$c846]
    bit 0, a
    jr z, jr_009_438f

    set 7, [hl]

jr_009_438f:
    ldh a, [$d7]
    inc hl
    cp [hl]
    dec hl
    jr nc, jr_009_4398

    inc hl
    ld [hl-], a

jr_009_4398:
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_009_439f

    ld [hl], $01

jr_009_439f:
    dec hl
    ld a, [hl]
    call Call_009_455b
    ret


Call_009_43a5:
    push de
    ld a, [hl]
    push hl
    inc hl
    ld c, [hl]
    ld b, $00
    ld hl, $c0a0
    call $20ad
    pop hl
    ld a, [hl]
    ld de, $c0a0
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    and $0f
    dec a
    ld [de], a
    cp $ff
    jr nz, jr_009_43c9

    ld a, $09
    ld [de], a

jr_009_43c9:
    call Call_009_43d7
    pop de
    or a
    ret nz

    ld a, [hl]
    or a
    ret z

    ld a, $09
    inc hl
    ld [hl-], a
    ret


Call_009_43d7:
    push hl
    ld a, [$c0a0]
    and $0f
    ld c, $0a
    call $1dbe
    ld a, [$c0a1]
    and $0f
    add l
    pop hl
    inc hl
    ld [hl-], a
    ret


Call_009_43ec:
    push de
    ld a, [hl]
    push hl
    inc hl
    ld c, [hl]
    ld b, $00
    ld hl, $c0a0
    call $20ad
    pop hl
    ld de, $c0a1
    ld a, [hl]
    ld de, $c0a0
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    and $0f
    inc a
    ld [de], a
    cp $0a
    jr nz, jr_009_4413

    ld a, $00
    ld [de], a

jr_009_4413:
    call Call_009_43d7
    pop de
    ret


Call_009_4418:
    xor a
    ld [$c90c], a
    ret


Call_009_441d:
    ld c, a
    bit 7, a
    jr nz, jr_009_4432

    ld a, [$c90c]
    and $0f
    push af
    ld a, [$c90c]
    inc a
    ld [$c90c], a
    pop af
    ld a, c
    ret nz

jr_009_4432:
    ld c, a
    ld b, $00

jr_009_4435:
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
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_009_4465

    ld a, $e9
    bit 7, c
    jr nz, jr_009_4465

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_4465

    ld a, $e8

jr_009_4465:
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
    jr jr_009_4435

Call_009_447c:
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
    ld a, c
    and $7f
    cp $09
    jr z, jr_009_44a4

    add $f1
    call Call_009_44c9
    ld a, $ee
    jr jr_009_44ab

jr_009_44a4:
    ld a, $f0
    call Call_009_44c9
    ld a, $f1

jr_009_44ab:
    push af
    ldh a, [$d5]
    sub $01
    ldh [$d5], a
    ldh a, [$d6]
    sbc $00
    ldh [$d6], a
    pop af
    call Call_009_44c9
    ldh a, [$d5]
    add $01
    ldh [$d5], a
    ldh a, [$d6]
    adc $00
    ldh [$d6], a
    ret


Call_009_44c9:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    pop af
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


Call_009_44ed:
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
    jr nc, jr_009_4506

    ld a, $e7

jr_009_4506:
    ld [hl-], a
    pop bc
    jr nc, jr_009_451d

    ld a, [bc]
    cp $09
    jr z, jr_009_4517

    add $f1
    ld [hl-], a
    ld a, $ee
    ld [hl+], a
    jr jr_009_451d

jr_009_4517:
    ld a, $f0
    ld [hl-], a
    ld a, $f1
    ld [hl+], a

jr_009_451d:
    pop af

Call_009_451e:
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
    call Call_009_4076
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_009_4549

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_4549

    ld a, $e8

jr_009_4549:
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


Call_009_455b:
    ld c, a
    inc hl
    push de
    push bc
    ld c, [hl]
    ld b, $00
    ld hl, $c0a0
    call $20ad
    pop bc
    pop de
    bit 7, c
    jr nz, jr_009_457e

    ld a, [$c90c]
    and $0f
    push af
    ld a, [$c90c]
    inc a
    ld [$c90c], a
    pop af
    ld a, c
    ret nz

jr_009_457e:
    ld c, a
    ld b, $00

jr_009_4581:
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
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_009_45ab

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_45ab

    ld a, $e6

jr_009_45ab:
    cp $e0
    jr nz, jr_009_45bc

    push hl
    ld a, b
    ld hl, $c0a0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl

jr_009_45bc:
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
    jr jr_009_4581

Call_009_45d3:
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
    rst $28
    ld b, l
    ld a, [hl-]
    ld b, [hl]
    ld a, a
    ld b, [hl]
    push de
    ld b, [hl]
    rst $18
    ld b, [hl]
    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
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
    call Call_009_4204
    ld de, $2e0e
    ld hl, $8800
    call $1577
    call Call_009_4418
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_009_4204
    call Call_009_4648
    call Call_009_40fa
    ret


Call_009_4648:
    ld de, $6eca
    call Call_009_40c9
    ld de, $6ead
    call Call_009_40c9
    ld de, $2e07
    call Call_009_40c9
    ld a, [$ca4b]
    ldh [$d5], a
    ld a, [$ca4c]
    ldh [$d6], a
    ld a, [$ca4d]
    ldh [$d7], a
    ld hl, $002e
    call Call_009_406d
    call $1fb9
    call Call_009_4418
    ld de, $46cd
    ld a, [$c8da]
    call Call_009_451e
    ret


    ld de, $46cd
    ld hl, $c8da
    ld b, $03
    call Call_009_42df
    ld a, [$c846]
    and $0a
    jr z, jr_009_469b

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_009_46cc

jr_009_469b:
    ld a, [$c846]
    bit 0, a
    jr z, jr_009_46cc

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
    jr jr_009_46cc

jr_009_46cc:
    ret


    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38
    ld a, [$c8da]
    rst $00
    push af
    ld b, [hl]
    reti


    ld c, d
    rst $18
    ld b, [hl]
    call Call_009_4204
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    rrca
    ld b, a
    add e
    ld b, a
    ld a, [hl]
    ld c, b
    and $48
    or $48
    ld a, [hl-]
    ld c, c
    add c
    ld c, c
    add sp, $49
    inc c
    ld c, d
    ld e, b
    ld c, d
    cp b
    ld c, d
    ld hl, $0003
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ld a, [$c968]
    ld hl, $477a
    cp $50
    jr z, jr_009_4742

    ld a, [$c925]
    ld hl, $4759
    cp $00
    jr z, jr_009_4742

    ld hl, $4762
    cp $02
    jr z, jr_009_4742

    ld hl, $476b
    cp $04
    jr z, jr_009_4742

    ld hl, $4772
    cp $05
    jr z, jr_009_4742

jr_009_4742:
    push hl
    ld hl, $c0d8
    ld bc, $0014
    xor a
    call $12c7
    pop hl
    ld de, $c0d8

jr_009_4751:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $ff
    ret z

    jr jr_009_4751

    ld bc, $0702
    jr z, jr_009_4771

    inc d
    dec e
    ld h, $ff
    dec b
    inc b
    inc bc
    inc c
    ld a, [hl+]
    dec hl
    dec d
    ld a, [de]
    rst $38
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h

jr_009_4771:
    rst $38
    rla
    add hl, hl
    add hl, de
    dec de
    jr jr_009_4794

    dec h
    rst $38
    ld bc, $0702
    ld [$090b], sp
    ld a, [bc]
    inc c
    rst $38
    ld a, [$c825]
    or a
    ret nz

    call Call_009_4863
    call Call_009_47bb
    call Call_009_4796
    ld hl, $c906

jr_009_4794:
    inc [hl]
    ret


Call_009_4796:
    call Call_009_4204
    call Call_009_4648
    ld de, $6f0b
    call Call_009_40c9
    call Call_009_47f8
    call Call_009_4418
    ld de, $48da
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ed
    call Call_009_40fa
    ret


Call_009_47bb:
    ld de, $c0d8
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8800
    call Call_009_47d5
    call Call_009_47d5
    call Call_009_47d5

Call_009_47d5:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr nz, jr_009_47de

    ld a, $00

jr_009_47de:
    ld [$c823], a
    ld a, $08
    ld [$c822], a
    ld de, $0901
    call Call_009_412f
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


Call_009_47f8:
    ld de, $c0d8
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $00ad
    call Call_009_4812
    call Call_009_4812
    call Call_009_4812

Call_009_4812:
    push de
    push hl
    ld a, [de]
    cp $00
    jr z, jr_009_481d

    cp $ff
    jr nz, jr_009_482a

jr_009_481d:
    call Call_009_406d
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_009_4857

jr_009_482a:
    push hl
    ld a, [de]
    ld [$da5e], a
    ld hl, $0302
    rst $10
    pop hl
    push hl
    call Call_009_406d
    ld a, [$da63]
    ldh [$d5], a
    ld a, [$da64]
    ldh [$d6], a
    ld a, $00
    ldh [$d7], a
    call $1fb9
    pop hl
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_009_406d
    ld [hl], $dd

jr_009_4857:
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


Call_009_4863:
    ld hl, $c0d8
    call Call_009_486e
    ld a, c
    ld [$c8e9], a
    ret


Call_009_486e:
    ld b, $14
    ld c, $00

jr_009_4872:
    ld a, [hl+]
    cp $00
    ret z

    cp $ff
    ret z

    inc c
    dec b
    jr nz, jr_009_4872

    ret


    ld de, $48da
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_009_489f

jr_009_489f:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_009_48af

    call Call_009_47bb
    call Call_009_47f8
    call Call_009_40fa

jr_009_48af:
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_48c3

    ld hl, $0001
    call Call_009_45d3
    ld a, $01
    ld [$c905], a
    jr jr_009_48d9

jr_009_48c3:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_48d9

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8dd], a

Jump_009_48d9:
jr_009_48d9:
    ret


    sub d
    ld bc, $00a2
    ld [c], a
    nop
    ld [hl+], a
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $0005
    call Call_009_45d3
    ld a, $01
    ld [$c8dc], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4903
    ld hl, $c906
    inc [hl]
    ret


Call_009_4903:
    call Call_009_4204
    call Call_009_4648
    ld de, $6f0b
    call Call_009_40c9
    call Call_009_47f8
    ld de, $48da
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ed
    ld de, $6fc1
    call Call_009_40c9
    call Call_009_4418
    ld de, $497b
    ld hl, $c8dc
    ld b, $02
    ld a, [hl]
    call Call_009_455b
    call Call_009_40fa
    ret


    ld de, $497b
    ld hl, $c8dc
    ld b, $02
    ld c, $14
    call Call_009_4338
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_4969

    call Call_009_4796
    ld hl, $0004
    call Call_009_45d3
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_497a

jr_009_4969:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_497a

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]

Jump_009_497a:
jr_009_497a:
    ret


    ld h, c
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld l, a
    ld h, $08
    ld de, $c180
    call $097a
    ld a, [$c8dd]
    ld hl, $c190
    call $09a4
    ld hl, $0302
    rst $10
    ld a, [$da63]
    ld c, a
    ld a, [$da64]
    ld b, a
    ld a, [$c8dd]
    call $1de6
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
    ld hl, $c1a0
    call $09c7
    ld hl, $0006
    call Call_009_45d3
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
    ld de, $6e88
    call Call_009_40c9
    call Call_009_4418
    ld de, $4a52
    ld a, [$c8de]
    call Call_009_451e
    call Call_009_40fa
    ld hl, $c906
    inc [hl]
    ret


    ld de, $4a52
    ld hl, $c8de
    ld b, $02
    call Call_009_42df
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_4a39

jr_009_4a1e:
    call Call_009_4903
    ld hl, $0005
    call Call_009_45d3
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_4a51

jr_009_4a39:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_4a51

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_009_4a1e

    ld hl, $c906
    inc [hl]

Jump_009_4a51:
jr_009_4a51:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $0305
    rst $10
    ld hl, $c8e4
    ld a, [$ca4b]
    sub [hl]
    inc hl
    ld a, [$ca4c]
    sbc [hl]
    inc hl
    ld a, [$ca4d]
    sbc [hl]
    ld hl, $0007
    jr c, jr_009_4ab0

    ld hl, $ca51
    call Call_009_486e
    ld a, [$c8dd]
    add c
    cp $15
    ld hl, $0008
    jr nc, jr_009_4ab0

    ld a, [$c8e4]
    ld l, a
    ld a, [$c8e5]
    ld h, a
    ld a, [$c8e6]
    ld e, a
    call $2424
    ld hl, $ca51
    call Call_009_486e
    ld a, c
    ld hl, $ca51
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c8dd]
    ld b, a
    ld a, [$da5e]

jr_009_4aa9:
    ld [hl+], a
    dec b
    jr nz, jr_009_4aa9

    ld hl, $0009

jr_009_4ab0:
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    ld a, $00
    ld [$c906], a
    ret


    ld a, [$c906]
    rst $00
    rst $30
    ld c, d
    dec d
    ld c, e
    ld l, a
    ld c, h
    rst $10
    ld c, h
    rst $20
    ld c, h
    ld e, c
    ld c, l
    xor c
    ld c, l
    di
    ld c, l
    rla
    ld c, [hl]
    ld h, c
    ld c, [hl]
    xor d
    ld c, [hl]
    bit 1, [hl]
    sub $4e
    call Call_009_4c12
    ld hl, $c0d8
    call Call_009_486e
    ld a, c
    or a
    jr nz, jr_009_4b0a

    ld a, $0b
    ld [$c906], a
    ret


jr_009_4b0a:
    ld hl, $000a
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4c12
    call Call_009_4863
    call Call_009_47bb
    call Call_009_4b2b
    ld hl, $c906
    inc [hl]
    ret


Call_009_4b2b:
    call Call_009_4204
    call Call_009_4648
    ld de, $6f0b
    call Call_009_40c9
    call Call_009_4b50
    call Call_009_4418
    ld de, $4ccb
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ed
    call Call_009_40fa
    ret


Call_009_4b50:
    ld de, $c0d8
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $00ad
    call Call_009_4b6a
    call Call_009_4b6a
    call Call_009_4b6a

Call_009_4b6a:
    push de
    push hl
    ld a, [de]
    cp $00
    jr z, jr_009_4b75

    cp $ff
    jr nz, jr_009_4b82

jr_009_4b75:
    call Call_009_406d
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_009_4baa

jr_009_4b82:
    push hl
    push hl
    ld a, [de]
    ld [$da5e], a
    call Call_009_4bb6
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, $00
    ldh [$d7], a
    pop hl
    call Call_009_406d
    call $1fb9
    pop hl
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_009_406d
    ld [hl], $dd

jr_009_4baa:
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


Call_009_4bb6:
    ld hl, $0302
    rst $10
    ld a, [$da63]
    ld l, a
    ld a, [$da64]
    ld h, a
    ld a, [$c968]
    cp $50
    ret z

    ld a, [$da5e]
    cp $18
    jr z, jr_009_4be9

    cp $19
    jr z, jr_009_4be9

    cp $1a
    jr z, jr_009_4be9

    cp $1b
    jr z, jr_009_4be9

    cp $1c
    jr z, jr_009_4be9

    cp $25
    jr z, jr_009_4be9

    cp $27
    jr z, jr_009_4be9

    jr jr_009_4bf7

jr_009_4be9:
    ld a, [$da63]
    ld l, a
    ld a, [$da64]
    ld h, a
    ld a, $0a
    call $1e0d
    ret


jr_009_4bf7:
    ld a, [$da63]
    ld l, a
    ld a, [$da64]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ld a, [$da63]
    sub l
    ld l, a
    ld a, [$da64]
    sbc h
    ld h, a
    ret


Call_009_4c12:
    ld hl, $0305
    rst $10
    ld hl, $d665
    ld bc, $0030
    xor a
    call $12c7
    ld hl, $c0d8
    ld bc, $0014
    xor a
    call $12c7
    ld de, $ca51
    ld b, $14

jr_009_4c2f:
    ld a, [de]
    or a
    jr z, jr_009_4c59

    cp $ff
    jr z, jr_009_4c59

    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    push de
    push bc
    ld hl, $0302
    rst $10
    pop bc
    pop de
    pop hl
    inc de
    ld a, [$da6d]
    bit 0, a
    jr nz, jr_009_4c56

    inc [hl]

jr_009_4c56:
    dec b
    jr nz, jr_009_4c2f

jr_009_4c59:
    ld hl, $d666
    ld de, $c0d8
    ld b, $2f
    ld c, $01

jr_009_4c63:
    ld a, [hl+]
    or a
    jr z, jr_009_4c6a

    ld a, c
    ld [de], a
    inc de

jr_009_4c6a:
    inc c
    dec b
    jr nz, jr_009_4c63

    ret


    ld de, $4ccb
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_009_4c90

jr_009_4c90:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_009_4ca0

    call Call_009_47bb
    call Call_009_4b50
    call Call_009_40fa

jr_009_4ca0:
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_4cb4

    ld hl, $0001
    call Call_009_45d3
    ld a, $01
    ld [$c905], a
    jr jr_009_4cca

jr_009_4cb4:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_4cca

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8dd], a

Jump_009_4cca:
jr_009_4cca:
    ret


    sub d
    ld bc, $00a2
    ld [c], a
    nop
    ld [hl+], a
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $000c
    call Call_009_45d3
    ld a, $01
    ld [$c8dc], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4cf4
    ld hl, $c906
    inc [hl]
    ret


Call_009_4cf4:
    call Call_009_4204
    call Call_009_4648
    ld de, $6f0b
    call Call_009_40c9
    call Call_009_4b50
    ld de, $4ccb
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ed
    ld de, $6fd2
    call Call_009_40c9
    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $00
    ld hl, $0164
    call Call_009_406d
    call $2082
    call Call_009_4418
    ld de, $4da3
    ld hl, $c8dc
    ld b, $02
    ld a, [hl]
    call Call_009_455b
    call Call_009_40fa
    ret


    ld de, $4da3
    ld hl, $d665
    ld a, [$da5e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $02
    ld hl, $c8dc
    call Call_009_4338
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_4d91

    call Call_009_4b2b
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
    jr jr_009_4da2

jr_009_4d91:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_4da2

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]

Jump_009_4da2:
jr_009_4da2:
    ret


    ld h, c
    ld bc, $0162
    rst $38
    rst $38
    ld a, [$da5e]
    ld l, a
    ld h, $08
    ld de, $c180
    call $097a
    ld a, [$c8dd]
    ld hl, $c190
    call $09a4
    call Call_009_4bb6
    ld c, l
    ld b, h
    ld a, [$c8dd]
    call $1de6
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
    ld hl, $c1a0
    call $09c7
    ld hl, $000d
    call Call_009_45d3
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
    ld de, $6e88
    call Call_009_40c9
    call Call_009_4418
    ld de, $4e5b
    ld a, [$c8de]
    call Call_009_451e
    call Call_009_40fa
    ld hl, $c906
    inc [hl]
    ret


    ld de, $4e5b
    ld hl, $c8de
    ld b, $02
    call Call_009_42df
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_4e42

jr_009_4e29:
    call Call_009_4cf4
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
    jr jr_009_4e5a

jr_009_4e42:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_4e5a

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_009_4e29

    ld hl, $c906
    inc [hl]

Jump_009_4e5a:
jr_009_4e5a:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $c8e4
    ld a, [$ca4b]
    add [hl]
    ld e, a
    inc hl
    ld a, [$ca4c]
    adc [hl]
    ld d, a
    inc hl
    ld a, [$ca4d]
    adc [hl]
    ld c, a
    ld a, e
    sub $a0
    ld a, d
    sbc $86
    ld a, c
    sbc $01
    ld hl, $000e
    jr nc, jr_009_4ea2

    ld a, [$c8e4]
    ld l, a
    ld a, [$c8e5]
    ld h, a
    ld a, [$c8e6]
    ld e, a
    call $241a
    ld a, [$c8dd]
    ld b, a

jr_009_4e96:
    push bc
    ld hl, $0307
    rst $10
    pop bc
    dec b
    jr nz, jr_009_4e96

    ld hl, $000f

jr_009_4ea2:
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    ld a, $00
    ld [$c906], a
    ret


    ld hl, $000b
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_009_45d3
    ld a, $01
    ld [$c905], a
    ret


    ld a, [$c905]
    rst $00
    ld sp, hl
    ld c, [hl]
    ld b, h
    ld c, a
    and c
    ld c, a
    ld de, $6e50
    ld d, b
    sub $50
    ld a, [c]
    ld d, b
    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
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
    call Call_009_4204
    ld de, $2e0f
    ld hl, $8800
    call $1577
    call Call_009_4418
    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c905
    inc [hl]
    call Call_009_4204
    call Call_009_4f57
    call Call_009_40fa
    ret


Call_009_4f57:
    ld a, $02
    ld [$c822], a
    ld a, $0b
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    ld de, $77bd
    call Call_009_40c9
    ld de, $6ead
    call Call_009_40c9
    ld de, $2e07
    call Call_009_40c9
    ld a, [$ca4b]
    ldh [$d5], a
    ld a, [$ca4c]
    ldh [$d6], a
    ld a, [$ca4d]
    ldh [$d7], a
    ld hl, $002e
    call Call_009_406d
    call $1fb9
    call Call_009_4418
    ld de, $5009
    ld a, [$c8da]
    call Call_009_451e
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $5009
    ld hl, $c8da
    ld b, $03
    call Call_009_42df
    ld a, [$c846]
    and $0a
    jr z, jr_009_4fca

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_009_5008

jr_009_4fca:
    ld a, [$c846]
    bit 0, a
    jr z, jr_009_5008

    ld a, $59
    call $1b2c
    ld a, [$c8da]
    cp $82
    jp z, Jump_009_50f2

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
    ld hl, $0003
    ld a, [$c8da]
    and $7f
    jr z, jr_009_5003

    ld hl, $000e

jr_009_5003:
    call Call_009_45d3
    jr jr_009_5008

jr_009_5008:
    ret


    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38
    ld a, [$c825]
    or a
    ret nz

    ld hl, $c905
    inc [hl]
    call Call_009_4204
    call Call_009_5037
    call Call_009_40fa
    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    ret


Call_009_5037:
    ld de, $77bd
    call Call_009_40c9
    ld de, $6ead
    call Call_009_40c9
    ld de, $2e07
    call Call_009_40c9
    ld a, [$ca4b]
    ldh [$d5], a
    ld a, [$ca4c]
    ldh [$d6], a
    ld a, [$ca4d]
    ldh [$d7], a
    ld hl, $002e
    call Call_009_406d
    call $1fb9
    call Call_009_4418
    ld de, $509e
    ld a, [$c8db]
    call Call_009_451e
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $509e
    ld hl, $c8db
    ld b, $03
    call Call_009_42df
    ld a, [$c846]
    and $0a
    jr z, jr_009_50a6

    call Call_009_4204
    call Call_009_4f57
    call Call_009_40fa
    ld hl, $0001
    call Call_009_45d3
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    jr jr_009_50d5

    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38

jr_009_50a6:
    ld a, [$c846]
    bit 0, a
    jr z, jr_009_50d5

    ld a, $59
    call $1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8db
    set 7, [hl]
    ld hl, $c8dc
    ld bc, $0006
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7

jr_009_50d5:
    ret


    ld a, [$c8da]
    rst $00
    sbc $50
    add sp, $50
    ld a, [$c8db]
    rst $00
    ld [$9d51], sp
    ld d, e
    ld a, [c]
    ld d, b
    ld a, [$c8db]
    rst $00
    rlca
    ld d, l
    ld a, e
    ld d, a
    ld a, [c]
    ld d, b

Jump_009_50f2:
    call Call_009_4204
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    ld e, $51
    ld c, a
    ld d, c
    xor $51
    ld l, h
    ld d, d
    ld a, h
    ld d, d
    db $eb
    ld d, d
    dec a
    ld d, e
    ld l, e
    ld d, e
    adc h
    ld d, e
    ld hl, $ca51
    call Call_009_51de
    ld a, c
    or a
    ld hl, $0005
    jr z, jr_009_5146

    ld hl, $ca65
    ld b, $28
    call Call_009_51e0
    ld a, c
    cp $28
    ld hl, $0006
    jr nc, jr_009_5146

    ld hl, $c906
    inc [hl]
    ld hl, $0004
    call Call_009_45d3
    ret


jr_009_5146:
    call Call_009_45d3
    ld a, $08
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5187
    call Call_009_51d3
    call Call_009_47bb
    call Call_009_5165
    ld hl, $c906
    inc [hl]
    ret


Call_009_5165:
    call Call_009_4204
    call Call_009_5037
    ld de, $70e1
    call Call_009_40c9
    call Call_009_4418
    ld de, $5260
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ed
    call Call_009_40fa
    ret


Call_009_5187:
    ld hl, $0305
    rst $10
    ld hl, $d665
    ld bc, $0030
    xor a
    call $12c7
    ld hl, $c0d8
    ld bc, $0028
    xor a
    call $12c7
    ld de, $ca51
    ld b, $14

jr_009_51a4:
    ld a, [de]
    or a
    jr z, jr_009_51bd

    cp $ff
    jr z, jr_009_51bd

    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc de
    inc [hl]
    dec b
    jr nz, jr_009_51a4

jr_009_51bd:
    ld hl, $d666
    ld de, $c0d8
    ld b, $2f
    ld c, $01

jr_009_51c7:
    ld a, [hl+]
    or a
    jr z, jr_009_51ce

    ld a, c
    ld [de], a
    inc de

jr_009_51ce:
    inc c
    dec b
    jr nz, jr_009_51c7

    ret


Call_009_51d3:
    ld hl, $c0d8
    call Call_009_51de
    ld a, c
    ld [$c8e9], a
    ret


Call_009_51de:
    ld b, $28

Call_009_51e0:
    ld c, $00

jr_009_51e2:
    ld a, [hl+]
    cp $00
    ret z

    cp $ff
    ret z

    inc c
    dec b
    jr nz, jr_009_51e2

    ret


    ld de, $5260
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_009_520f

jr_009_520f:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_009_5219

    call Call_009_47bb

jr_009_5219:
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_5249

    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    call Call_009_4204
    call Call_009_5037
    call Call_009_40fa
    ld hl, $0003
    call Call_009_45d3
    ld a, $04
    ld [$c905], a
    jr jr_009_525f

jr_009_5249:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_525f

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8de], a

Jump_009_525f:
jr_009_525f:
    ret


    ld [hl], d
    ld bc, $0089
    ret


    nop
    add hl, bc
    ld bc, HeaderRAMSize
    rst $38
    rst $38
    ld hl, $0007
    call Call_009_45d3
    ld a, $01
    ld [$c8dd], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5289
    ld hl, $c906
    inc [hl]
    ret


Call_009_5289:
    call Call_009_4204
    call Call_009_5037
    ld de, $70e1
    call Call_009_40c9
    ld de, $5260
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ed
    ld de, $6fd2
    call Call_009_40c9
    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $00
    ld hl, $0164
    call Call_009_406d
    call $2082
    call Call_009_4418
    ld de, $5337
    ld hl, $c8dd
    ld b, $02
    ld a, [hl]
    call Call_009_455b
    call Call_009_40fa
    ret


    ld de, $5337
    ld hl, $d665
    ld a, [$da5e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $02
    ld hl, $c8dd
    call Call_009_4338
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_5325

    call Call_009_5165
    ld hl, $0004
    call Call_009_45d3
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_5336

jr_009_5325:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_5336

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]

Jump_009_5336:
jr_009_5336:
    ret


    ld h, c
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $ca65
    ld b, $28
    call Call_009_51e0
    ld a, [$c8de]
    add c
    cp $29
    ld hl, $0008
    jr nc, jr_009_5363

    ld a, [$c8de]
    ld b, a

jr_009_5354:
    push bc
    ld hl, $0307
    rst $10
    call Call_009_5b08
    pop bc
    dec b
    jr nz, jr_009_5354

    ld hl, $0009

jr_009_5363:
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8dc
    ld bc, $0006
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    ld a, $00
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_009_45d3
    ld a, $01
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    xor e
    ld d, e
    jp z, $2753

    ld d, h
    adc c
    ld d, h
    db $ed
    ld d, h
    ld hl, $000a
    call Call_009_45d3
    ld a, $02
    ld [$c8dc], a
    ld a, $00
    ld [$c8df], a
    ld a, $00
    ld [$c8e0], a
    ld a, $00
    ld [$c8e1], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_53d7
    ld hl, $c906
    inc [hl]
    ret


Call_009_53d7:
    call Call_009_4204
    call Call_009_5037
    ld a, $02
    ld [$c822], a
    ld a, $55
    ld [$c823], a
    ld hl, $8a00
    ld de, $0401
    call Call_009_412f
    ld de, $7158
    call Call_009_40c9
    ld de, $7175
    call Call_009_40c9
    ld a, [$ca4e]
    ldh [$d5], a
    ld a, [$ca4f]
    ldh [$d6], a
    ld a, [$ca50]
    ldh [$d7], a
    ld hl, $016d
    call Call_009_406d
    call $1fa5
    call Call_009_4418
    ld de, $547d
    ld hl, $c8dc
    ld b, $02
    ld a, [hl]
    call Call_009_5a55
    call Call_009_40fa
    ret


    ld de, $547d
    ld hl, $c8dc
    ld b, $03
    call Call_009_58fa
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_5462

    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    call Call_009_4204
    call Call_009_5037
    call Call_009_40fa
    ld hl, $0003
    call Call_009_45d3
    ld a, $04
    ld [$c905], a
    jr jr_009_547c

jr_009_5462:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_547c

    ld hl, $c8df
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_009_547c

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]

Jump_009_547c:
jr_009_547c:
    ret


    adc [hl]
    nop
    adc a
    nop
    sub b
    nop
    sub c
    nop
    sub d
    nop
    rst $38
    rst $38
    ld hl, $c8df
    ld a, [$ca4b]
    sub [hl]
    inc hl
    ld a, [$ca4c]
    sbc [hl]
    inc hl
    ld a, [$ca4d]
    sbc [hl]
    ld hl, $000b
    jr c, jr_009_54e5

    ld hl, $c8df
    ld a, [$ca4e]
    add [hl]
    ld e, a
    inc hl
    ld a, [$ca4f]
    adc [hl]
    ld d, a
    inc hl
    ld a, [$ca50]
    adc [hl]
    ld c, a
    ld a, e
    sub $40
    ld a, d
    sbc $42
    ld a, c
    sbc $0f
    ld hl, $000c
    jr nc, jr_009_54e5

    ld a, [$c8df]
    ld l, a
    ld a, [$c8e0]
    ld h, a
    ld a, [$c8e1]
    ld e, a
    call $2424
    ld a, [$c8df]
    ld l, a
    ld a, [$c8e0]
    ld h, a
    ld a, [$c8e1]
    ld e, a
    call $242e
    call Call_009_53d7
    ld hl, $000d

jr_009_54e5:
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4204
    call Call_009_4f57
    call Call_009_40fa
    ld hl, $0001
    call Call_009_45d3
    ld a, $01
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    dec e
    ld d, l
    ld c, [hl]
    ld d, l
    adc $55
    ld c, h
    ld d, [hl]
    ld e, h
    ld d, [hl]
    bit 2, [hl]
    dec e
    ld d, a
    ld c, c
    ld d, a
    ld l, d
    ld d, a
    ld hl, $ca65
    ld b, $28
    call Call_009_51e0
    ld a, c
    or a
    ld hl, $0011
    jr z, jr_009_5545

    ld hl, $ca51
    call Call_009_51de
    ld a, c
    cp $14
    ld hl, $0012
    jr nc, jr_009_5545

    ld hl, $c906
    inc [hl]
    ld hl, $0010
    call Call_009_45d3
    ret


jr_009_5545:
    call Call_009_45d3
    ld a, $08
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5586
    call Call_009_51d3
    call Call_009_47bb
    call Call_009_5564
    ld hl, $c906
    inc [hl]
    ret


Call_009_5564:
    call Call_009_4204
    call Call_009_5037
    ld de, $70e1
    call Call_009_40c9
    call Call_009_4418
    ld de, $5640
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ed
    call Call_009_40fa
    ret


Call_009_5586:
    call Call_009_5ad8
    ld hl, $d665
    ld bc, $0030
    xor a
    call $12c7
    ld hl, $c0d8
    ld bc, $0028
    xor a
    call $12c7
    ld de, $ca65
    ld b, $28

jr_009_55a2:
    ld a, [de]
    or a
    jr z, jr_009_55b8

    cp $ff
    jr z, jr_009_55b8

    inc de
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc [hl]
    dec b
    jr nz, jr_009_55a2

jr_009_55b8:
    ld hl, $d666
    ld de, $c0d8
    ld b, $2f
    ld c, $01

jr_009_55c2:
    ld a, [hl+]
    or a
    jr z, jr_009_55c9

    ld a, c
    ld [de], a
    inc de

jr_009_55c9:
    inc c
    dec b
    jr nz, jr_009_55c2

    ret


    ld de, $5640
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_009_55ef

jr_009_55ef:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_009_55f9

    call Call_009_47bb

jr_009_55f9:
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_5629

    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    call Call_009_4204
    call Call_009_5037
    call Call_009_40fa
    ld hl, $000e
    call Call_009_45d3
    ld a, $04
    ld [$c905], a
    jr jr_009_563f

jr_009_5629:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_563f

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8de], a

Jump_009_563f:
jr_009_563f:
    ret


    ld [hl], d
    ld bc, $0089
    ret


    nop
    add hl, bc
    ld bc, HeaderRAMSize
    rst $38
    rst $38
    ld hl, $0013
    call Call_009_45d3
    ld a, $01
    ld [$c8dd], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5669
    ld hl, $c906
    inc [hl]
    ret


Call_009_5669:
    call Call_009_4204
    call Call_009_5037
    ld de, $70e1
    call Call_009_40c9
    ld de, $5640
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ed
    ld de, $6fd2
    call Call_009_40c9
    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $00
    ld hl, $0164
    call Call_009_406d
    call $2082
    call Call_009_4418
    ld de, $5717
    ld hl, $c8dd
    ld b, $02
    ld a, [hl]
    call Call_009_455b
    call Call_009_40fa
    ret


    ld de, $5717
    ld hl, $d665
    ld a, [$da5e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $02
    ld hl, $c8dd
    call Call_009_4338
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_5705

    call Call_009_5564
    ld hl, $0010
    call Call_009_45d3
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_5716

jr_009_5705:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_5716

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]

Jump_009_5716:
jr_009_5716:
    ret


    ld h, c
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $ca51
    call Call_009_51de
    ld a, [$c8de]
    add c
    cp $15
    ld hl, $0014
    jr nc, jr_009_5741

    ld a, [$c8de]
    ld b, a

jr_009_5732:
    push bc
    call Call_009_5b2e
    ld hl, $0306
    rst $10
    pop bc
    dec b
    jr nz, jr_009_5732

    ld hl, $0015

jr_009_5741:
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c8dc
    ld bc, $0006
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    ld a, $00
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_009_45d3
    ld a, $01
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    adc c
    ld d, a
    cp l
    ld d, a
    ld a, [de]
    ld e, b
    ld a, h
    ld e, b
    ldh [$58], a
    ld hl, $ca4e
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr nz, jr_009_579e

    ld hl, $000f
    call Call_009_45d3
    ld a, $04
    ld [$c906], a
    ret


jr_009_579e:
    ld hl, $0016
    call Call_009_45d3
    ld a, $02
    ld [$c8dc], a
    ld a, $00
    ld [$c8df], a
    ld a, $00
    ld [$c8e0], a
    ld a, $00
    ld [$c8e1], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_57ca
    ld hl, $c906
    inc [hl]
    ret


Call_009_57ca:
    call Call_009_4204
    call Call_009_5037
    ld a, $02
    ld [$c822], a
    ld a, $55
    ld [$c823], a
    ld hl, $8a00
    ld de, $0401
    call Call_009_412f
    ld de, $7158
    call Call_009_40c9
    ld de, $7175
    call Call_009_40c9
    ld a, [$ca4e]
    ldh [$d5], a
    ld a, [$ca4f]
    ldh [$d6], a
    ld a, [$ca50]
    ldh [$d7], a
    ld hl, $016d
    call Call_009_406d
    call $1fa5
    call Call_009_4418
    ld de, $5870
    ld hl, $c8dc
    ld b, $02
    ld a, [hl]
    call Call_009_5a55
    call Call_009_40fa
    ret


    ld de, $5870
    ld hl, $c8dc
    ld b, $03
    call Call_009_58fa
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_5855

    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    call Call_009_4204
    call Call_009_5037
    call Call_009_40fa
    ld hl, $000e
    call Call_009_45d3
    ld a, $04
    ld [$c905], a
    jr jr_009_586f

jr_009_5855:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_586f

    ld hl, $c8df
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_009_586f

    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]

Jump_009_586f:
jr_009_586f:
    ret


    adc [hl]
    nop
    adc a
    nop
    sub b
    nop
    sub c
    nop
    sub d
    nop
    rst $38
    rst $38
    ld hl, $c8df
    ld a, [$ca4e]
    sub [hl]
    inc hl
    ld a, [$ca4f]
    sbc [hl]
    inc hl
    ld a, [$ca50]
    sbc [hl]
    ld hl, $0017
    jr c, jr_009_58d8

    ld hl, $c8df
    ld a, [$ca4b]
    add [hl]
    ld e, a
    inc hl
    ld a, [$ca4c]
    adc [hl]
    ld d, a
    inc hl
    ld a, [$ca4d]
    adc [hl]
    ld c, a
    ld a, e
    sub $a0
    ld a, d
    sbc $86
    ld a, c
    sbc $01
    ld hl, $0018
    jr nc, jr_009_58d8

    ld a, [$c8df]
    ld l, a
    ld a, [$c8e0]
    ld h, a
    ld a, [$c8e1]
    ld e, a
    call $2438
    ld a, [$c8df]
    ld l, a
    ld a, [$c8e0]
    ld h, a
    ld a, [$c8e1]
    ld e, a
    call $241a
    call Call_009_57ca
    ld hl, $0019

jr_009_58d8:
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4204
    call Call_009_4f57
    call Call_009_40fa
    ld hl, $0001
    call Call_009_45d3
    ld a, $01
    ld [$c905], a
    ret


Call_009_58fa:
    res 7, [hl]
    push de
    ld a, [$c847]
    bit 7, a
    jr z, jr_009_590e

    ld a, $10
    ld [$c90c], a
    call Call_009_5953
    jr jr_009_5942

jr_009_590e:
    ld a, [$c847]
    bit 6, a
    jr z, jr_009_591f

    ld a, $10
    ld [$c90c], a
    call Call_009_5a1e
    jr jr_009_5942

jr_009_591f:
    ld a, [$c847]
    bit 5, a
    jr z, jr_009_592f

    ld a, [hl]
    dec a
    cp b
    jr c, jr_009_593d

    dec b
    ld a, b
    jr jr_009_593d

jr_009_592f:
    ld a, [$c847]
    bit 4, a
    jr z, jr_009_5944

    ld a, [hl]
    inc a
    cp b
    jr c, jr_009_593d

    ld a, $00

jr_009_593d:
    ld [hl], a
    xor a
    ld [$c90c], a

jr_009_5942:
    push hl
    pop hl

jr_009_5944:
    ld a, [$c847]
    bit 0, a
    jr z, jr_009_594d

    set 7, [hl]

jr_009_594d:
    pop de
    ld a, [hl]
    call Call_009_5a55
    ret


Call_009_5953:
    push de
    ld a, [hl]
    push hl
    ld a, [$c8df]
    ldh [$d5], a
    ld a, [$c8e0]
    ldh [$d6], a
    ld a, [$c8e1]
    ldh [$d7], a
    ld hl, $c0a0
    call $1ff8
    pop hl
    ld a, [hl]
    ld de, $c0a0
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    and $0f
    dec a
    ld [de], a
    cp $ff
    jr nz, jr_009_5982

    ld a, $09
    ld [de], a

jr_009_5982:
    call Call_009_5987
    pop de
    ret


Call_009_5987:
    push hl
    ld bc, $2710
    ld a, [$c0a0]
    and $0f
    call $1de6
    ld a, l
    ld [$c8df], a
    ld a, h
    ld [$c8e0], a
    ld a, e
    ld [$c8e1], a
    ld bc, $03e8
    ld a, [$c0a1]
    and $0f
    call $1de6
    ld a, [$c8df]
    add l
    ld [$c8df], a
    ld a, [$c8e0]
    adc h
    ld [$c8e0], a
    ld a, [$c8e1]
    adc e
    ld [$c8e1], a
    ld bc, $0064
    ld a, [$c0a2]
    and $0f
    call $1de6
    ld a, [$c8df]
    add l
    ld [$c8df], a
    ld a, [$c8e0]
    adc h
    ld [$c8e0], a
    ld a, [$c8e1]
    adc e
    ld [$c8e1], a
    ld bc, $000a
    ld a, [$c0a3]
    and $0f
    call $1de6
    ld a, [$c8df]
    add l
    ld [$c8df], a
    ld a, [$c8e0]
    adc h
    ld [$c8e0], a
    ld a, [$c8e1]
    adc e
    ld [$c8e1], a
    ld a, [$c0a4]
    and $0f
    ld l, a
    ld a, [$c8df]
    add l
    ld [$c8df], a
    ld a, [$c8e0]
    adc $00
    ld [$c8e0], a
    ld a, [$c8e1]
    adc $00
    ld [$c8e1], a
    pop hl
    ret


Call_009_5a1e:
    push de
    ld a, [hl]
    push hl
    ld a, [$c8df]
    ldh [$d5], a
    ld a, [$c8e0]
    ldh [$d6], a
    ld a, [$c8e1]
    ldh [$d7], a
    ld hl, $c0a0
    call $1ff8
    pop hl
    ld de, $c0a1
    ld a, [hl]
    ld de, $c0a0
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    and $0f
    inc a
    ld [de], a
    cp $0a
    jr nz, jr_009_5a50

    ld a, $00
    ld [de], a

jr_009_5a50:
    call Call_009_5987
    pop de
    ret


Call_009_5a55:
    ld c, a
    push de
    push bc
    ld a, [$c8df]
    ldh [$d5], a
    ld a, [$c8e0]
    ldh [$d6], a
    ld a, [$c8e1]
    ldh [$d7], a
    ld hl, $c0a0
    call $1ff8
    pop bc
    pop de
    bit 7, c
    jr nz, jr_009_5a83

    ld a, [$c90c]
    and $0f
    push af
    ld a, [$c90c]
    inc a
    ld [$c90c], a
    pop af
    ld a, c
    ret nz

jr_009_5a83:
    ld c, a
    ld b, $00

jr_009_5a86:
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
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_009_5ab0

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_5ab0

    ld a, $e6

jr_009_5ab0:
    cp $e0
    jr nz, jr_009_5ac1

    push hl
    ld a, b
    ld hl, $c0a0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl

jr_009_5ac1:
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
    jr jr_009_5a86

Call_009_5ad8:
    ld hl, $d665
    ld de, $ca65
    ld b, $28

jr_009_5ae0:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_009_5ae0

    ld hl, $ca65
    ld bc, $0028
    ld a, $ff
    call $12c7
    ld hl, $d665
    ld de, $ca65
    ld b, $28

jr_009_5af9:
    ld a, [hl+]
    cp $ff
    jr z, jr_009_5b04

    cp $00
    jr z, jr_009_5b04

    ld [de], a
    inc de

jr_009_5b04:
    dec b
    jr nz, jr_009_5af9

    ret


Call_009_5b08:
    ld a, [$da5e]
    cp $00
    ret z

    cp $ff
    ret z

    ld hl, $ca65
    ld b, $28

jr_009_5b16:
    ld a, [hl]
    cp $00
    jr z, jr_009_5b29

    cp $ff
    jr z, jr_009_5b29

    inc hl
    dec b
    jr nz, jr_009_5b16

    ld a, $ff
    ld [$da5e], a
    ret


jr_009_5b29:
    ld a, [$da5e]
    ld [hl], a
    ret


Call_009_5b2e:
    ld a, [$da5e]
    cp $00
    ret z

    cp $ff
    ret z

    ld hl, $ca65
    ld b, $28

jr_009_5b3c:
    ld a, [$da5e]
    cp [hl]
    jr z, jr_009_5b4c

    inc hl
    dec b
    jr nz, jr_009_5b3c

    ld a, $ff
    ld [$da5e], a
    ret


jr_009_5b4c:
    ld [hl], $ff
    call Call_009_5ad8
    ret


    ld a, [$c905]
    rst $00
    ld h, b
    ld e, e
    xor b
    ld e, e
    xor l
    ld e, e
    rst $18
    ld e, e
    ld [c], a
    ld e, e
    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
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
    call Call_009_4204
    ld de, $2e11
    ld hl, $8800
    call $1577
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, $c8da
    ld bc, $0008
    ld a, $00
    call $12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call $12c7
    ld a, [$cab4]
    and $03
    ld [$c8e2], a
    ld a, [$cab4]
    cp $04
    ret c

    ld a, $01
    ld [$c8e3], a
    ret


    jp Jump_009_5bf8


    call Call_009_4204
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


Jump_009_5bf8:
    ld a, [$c906]
    rst $00
    ld c, $5c
    ld sp, $215c
    ld e, l
    sbc h
    ld e, l
    ld hl, sp+$5d
    inc e
    ld e, [hl]
    sub l
    ld e, [hl]
    sbc d
    ld e, [hl]
    and h
    ld e, [hl]
    call Call_009_5c16
    ld hl, $c906
    inc [hl]
    ret


Call_009_5c16:
    ld hl, $c0d8
    ld bc, $0008
    ld a, $90
    call $12c7
    ld a, [$cab4]
    or a
    ret z

    ld b, a
    ld hl, $c0d8

jr_009_5c2a:
    ld [hl], $ac
    inc hl
    dec b
    jr nz, jr_009_5c2a

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5c85
    call Call_009_5c41
    ld hl, $c906
    inc [hl]
    ret


Call_009_5c41:
    call Call_009_4204
    ld de, $2e07
    call Call_009_40c9
    ld de, $742e
    call Call_009_40c9
    ld de, $6ead
    call Call_009_40c9
    call Call_009_5cce
    ld a, [$ca4b]
    ldh [$d5], a
    ld a, [$ca4c]
    ldh [$d6], a
    ld a, [$ca4d]
    ldh [$d7], a
    ld hl, $002e
    call Call_009_406d
    call $1fb9
    call Call_009_4418
    ld de, $5d90
    ld b, $04
    ld c, $04
    ld hl, $c8e2
    call Call_009_44ed
    call Call_009_40fa
    ret


Call_009_5c85:
    ld de, $5d09
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8800
    call Call_009_5cbc
    call Call_009_5cbc
    call Call_009_5cbc
    call Call_009_5cbc
    ld de, $c0d8
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8840
    call Call_009_5cbc
    call Call_009_5cbc
    call Call_009_5cbc

Call_009_5cbc:
    push de
    push hl
    ld a, [de]
    call Call_009_41b6
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


Call_009_5cce:
    ld de, $5d11
    ld a, [$c8e3]
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $00aa
    call Call_009_5ce9
    call Call_009_5ce9
    call Call_009_5ce9

Call_009_5ce9:
    push de
    push hl
    ld a, [de]
    ldh [$d5], a
    inc de
    ld a, [de]
    ldh [$d6], a
    ld a, $00
    ldh [$d7], a
    call Call_009_406d
    call $1fb9
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    inc de
    ret


    ld a, [hl+]
    add hl, hl
    jr z, jr_009_5d34

    ld h, $25
    inc h
    ld [hl], $00
    nop
    ld a, [bc]
    nop
    ld [hl-], a
    nop
    ld h, h
    nop
    db $f4
    ld bc, $03e8
    adc b
    inc de
    db $10
    daa
    ld de, $5d92
    ld hl, $c8e2
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    call Call_009_42df
    pop af
    ld hl, $c8e3
    cp [hl]

jr_009_5d34:
    jr z, jr_009_5d3f

    call Call_009_5c85
    call Call_009_5cce
    call Call_009_40fa

jr_009_5d3f:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_5d7e

    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $90
    jp z, Jump_009_5d6f

    ld hl, $0006
    call Call_009_45d3
    ld a, $08
    ld [$c906], a
    jr jr_009_5d8f

Jump_009_5d6f:
    ld a, $59
    call $1b2c
    ld hl, $c906
    inc [hl]
    xor a
    ld [$c8de], a
    jr jr_009_5d8f

Jump_009_5d7e:
    ld a, [$c846]
    bit 1, a
    jp z, Jump_009_5d8f

    ld a, $ff
    ld [$d9cd], a
    ld hl, $c905
    inc [hl]

Jump_009_5d8f:
jr_009_5d8f:
    ret


    adc h
    ld bc, $00a2
    ld [c], a
    nop
    ld [hl+], a
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $5d11
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$ca4b]
    sub [hl]
    inc hl
    ld a, [$ca4c]
    sbc [hl]
    inc hl
    ld a, [$ca4d]
    sbc $00
    jr nc, jr_009_5dcf

    ld hl, $0005
    call Call_009_45d3
    ld a, $08
    ld [$c906], a
    ret


jr_009_5dcf:
    ld de, $5d09
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld hl, $0004
    call Call_009_45d3
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    ld de, $6e63
    call Call_009_40c9
    call Call_009_4418
    ld de, $5e8f
    ld a, [$c8de]
    call Call_009_451e
    call Call_009_40fa
    ld hl, $c906
    inc [hl]
    ret


    ld de, $5e8f
    ld hl, $c8de
    ld b, $02
    call Call_009_42df
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_5e49

jr_009_5e2e:
    call Call_009_5c41
    ld hl, $0001
    call Call_009_45d3
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_5e8e

jr_009_5e49:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_5e8e

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_009_5e2e

    ld hl, $5d11
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $00
    call $2424
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld [$d9ce], a
    ld hl, $c906
    inc [hl]

Jump_009_5e8e:
jr_009_5e8e:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5c41
    ld hl, $0001
    call Call_009_45d3
    ld a, $01
    ld [$c906], a
    ret


    ld a, [$c905]
    rst $00
    call nz, $125e
    ld e, a
    sbc h
    ld h, b
    add sp, $60
    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
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
    call Call_009_4236
    call Call_009_40fa
    call Call_009_4418
    ld a, $01
    ld [$c8ec], a
    xor a
    ld [$df0d], a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_009_4236
    call Call_009_603b
    call Call_009_5f3b
    call Call_009_5f26
    call Call_009_40fa
    ret


Call_009_5f26:
    ld de, $6c6c
    call Call_009_40c9
    ld a, [$c8e9]
    cp $09
    ret c

    ld hl, $0212
    call Call_009_406d
    ld [hl], $e7
    ret


Call_009_5f3b:
    ld de, $c0d8
    ld a, [$c8db]
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9380
    call Call_009_5f90
    call Call_009_5f90
    call Call_009_5f90
    call Call_009_5f90
    call Call_009_5f90
    call Call_009_5f90
    call Call_009_5f90
    call Call_009_5f90
    ld de, $c0d8
    ld a, [$c8db]
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8880
    call Call_009_5ff2
    call Call_009_5ff2
    call Call_009_5ff2
    call Call_009_5ff2
    call Call_009_5ff2
    call Call_009_5ff2
    call Call_009_5ff2
    call Call_009_5ff2
    ret


Call_009_5f90:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr nz, jr_009_5fb3

    ld a, $6f
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld de, $0901
    call Call_009_412f
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


jr_009_5fb3:
    push hl
    ld hl, $5fd2
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    pop hl
    call $1577
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


    ld c, $56
    rrca
    ld d, [hl]
    db $10
    ld d, [hl]
    ld de, $1256
    ld d, [hl]
    inc de
    ld d, [hl]
    inc d
    ld d, [hl]
    dec d
    ld d, [hl]
    ld d, $56
    rla
    ld d, [hl]
    jr jr_009_603e

    add hl, de
    ld d, [hl]
    ld a, [de]
    ld d, [hl]
    dec de
    ld d, [hl]
    inc e
    ld d, [hl]
    dec e
    ld d, [hl]

Call_009_5ff2:
    push de
    push hl
    ld a, [de]
    cp $ff
    ld a, $e0
    jr z, jr_009_6021

    ld a, [de]
    push de
    ld de, $606c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    push bc
    ld a, [de]
    ld c, a
    ld b, $00
    push hl
    call $26ae
    pop hl
    pop bc
    pop de
    ld a, $e0
    jr z, jr_009_6021

    ld a, [de]
    ld de, $607c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]

jr_009_6021:
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld de, $0901
    call Call_009_412f
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


Call_009_603b:
    ld hl, $c0d8

jr_009_603e:
    ld bc, $0010
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $608c
    ld b, $00

jr_009_604e:
    push bc
    push de
    push hl
    ld a, [de]
    ld c, a
    ld b, $00
    call $26ae
    pop hl
    pop de
    pop bc
    jr z, jr_009_6060

    ld [hl], b
    inc hl
    inc c

jr_009_6060:
    inc de
    inc b
    ld a, b
    cp $10
    jr nz, jr_009_604e

    ld a, c
    ld [$c8e9], a
    ret


    db $10
    ld de, $1312
    inc d
    ld d, $17
    add hl, de
    dec e
    inc e
    ld a, [de]
    rra
    jr nz, jr_009_609c

    inc hl
    dec h
    add hl, bc
    inc e
    call nz, Call_009_6644
    ld a, [bc]
    ld b, l
    push bc
    ld a, [hl+]
    ld e, b
    dec hl
    sbc c
    xor l
    ld b, e
    sub h
    sbc d
    nop
    jr nc, @+$32

    ld sp, $3231
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $36
    scf

jr_009_609c:
    ld de, $60e0
    ld hl, $c8da
    ld c, $01
    ld a, [$c8e9]
    cp $09
    jr c, jr_009_60ad

    ld c, $02

jr_009_60ad:
    ld b, $01
    ld a, [$c8db]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8db
    cp [hl]
    jr z, jr_009_60c0

    call Call_009_5f3b

jr_009_60c0:
    ld a, [$c846]
    and $0a
    jr z, jr_009_60cd

    ld hl, $c905
    inc [hl]
    jr jr_009_60df

jr_009_60cd:
    ld a, [$c846]
    bit 0, a
    jr z, jr_009_60df

    ld a, $59
    call $1b2c
    ld hl, $c905
    inc [hl]
    jr jr_009_60df

jr_009_60df:
    ret


    ld [de], a
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call Call_009_4236
    call Call_009_40fa
    ld hl, $0b01
    rst $10
    ld hl, $0b02
    rst $10
    call $2518
    call $25f1
    ld hl, $0604
    rst $10
    xor a
    ld [$c8ec], a
    ld hl, $c8eb
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


    ld a, [$c905]
    cp $09
    jr nc, jr_009_6143

    cp $02
    jr c, jr_009_6143

    ld hl, $ffc3
    ld a, $19
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $21
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$c8f4]
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_009_6137

    ld b, $01

jr_009_6137:
    ld a, b
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10

jr_009_6143:
    ld a, [$c905]
    rst $00
    ld h, d
    ld h, c
    ld l, e
    ld h, c
    ld e, b
    ld h, d
    ld [$4962], a
    ld h, [hl]
    add e
    ld h, [hl]
    sbc b
    ld h, [hl]
    ld bc, $2567
    ld h, a
    ld e, l
    ld h, c
    ld [hl], e
    ld h, a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    ld a, [$c850]
    or a
    ret z

    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
    ld hl, $c0c8
    ld bc, $0010
    ld a, $9f
    call $12c7
    call Call_009_620d
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
    ld hl, $01c0
    call Call_009_4059
    call Call_009_404a
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    call Call_009_4236
    call Call_009_40fa
    ld de, $2e1e
    ld hl, $9000
    call $1577
    ld de, $2e1f
    ld hl, $8800
    call $1577
    ld de, $2e20
    ld hl, $8a00
    call $1577
    ld a, [$c8f4]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9e
    ld l, a
    ld a, h
    adc $6a
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8500
    call $1577
    call Call_009_4418
    call Call_009_624b
    ld hl, $1702
    rst $10
    ld hl, $1708
    rst $10
    ld hl, $c905
    inc [hl]
    ret


Call_009_620d:
    ld b, $08
    ld a, [$c8f2]
    ld l, a
    ld a, [$c8f3]
    ld h, a
    ld de, $c0c8
    call Call_009_623b
    ld a, [$c8f4]
    cp $00
    ret z

    ld a, [$c0c8]
    cp $9f
    ret nz

    ld a, [$c8f5]
    ld l, a
    ld h, $07
    ld de, $c180
    call $097a
    ld hl, $c180
    ld de, $c0c8

Call_009_623b:
jr_009_623b:
    ld a, [hl+]
    cp $00
    ret z

    cp $f0
    ret z

    cp $9f
    ret z

    ld [de], a
    inc de
    dec b
    jr nz, jr_009_623b

    ret


Call_009_624b:
    ld de, $c0c8
    ld hl, $9000
    call Call_009_4168
    call Call_009_6a56
    ret


    ld hl, $c905
    inc [hl]
    call Call_009_4236
    call Call_009_6269
    call Call_009_6a56
    call Call_009_40fa
    ret


Call_009_6269:
    ld a, [$c8f4]
    or a
    jr z, jr_009_62ce

    ld a, [$c8f6]
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
    ld hl, $8af0
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
    ld hl, $0064
    call Call_009_406d
    ld [hl], $af

jr_009_62ce:
    ld de, $7c2a
    call Call_009_40c9
    ld de, $7c50
    ld a, [$c8dc]
    or a
    jr nz, jr_009_62e0

    ld de, $7d4e

jr_009_62e0:
    call Call_009_40c9
    call Call_009_4418
    call Call_009_6984
    ret


    ld a, [$c847]
    bit 5, a
    jr z, jr_009_6320

    ld a, [$c8db]
    cp $03
    jr c, jr_009_630c

    ld a, [$c8da]
    dec a
    ld [$c8da], a
    cp $11
    jp c, Jump_009_63e3

    ld a, $0d
    ld [$c8da], a
    jp Jump_009_63e3


jr_009_630c:
    ld a, [$c8da]
    dec a
    ld [$c8da], a
    cp $11
    jp c, Jump_009_63e3

    ld a, $10
    ld [$c8da], a
    jp Jump_009_63e3


jr_009_6320:
    ld a, [$c847]
    bit 4, a
    jr z, jr_009_633b

    ld a, [$c8da]
    inc a
    ld [$c8da], a
    cp $11
    jp c, Jump_009_63e3

    ld a, $00
    ld [$c8da], a
    jp Jump_009_63e3


jr_009_633b:
    ld a, [$c847]
    bit 6, a
    jr z, jr_009_638b

    ld a, [$c8da]
    cp $06
    jr c, jr_009_6379

    cp $0d
    jp nc, Jump_009_6362

    ld a, [$c8db]
    dec a
    ld [$c8db], a
    cp $05
    jp c, Jump_009_63e3

    ld a, $04
    ld [$c8db], a
    jp Jump_009_63e3


Jump_009_6362:
    ld a, [$c8db]
    dec a
    ld [$c8db], a
    cp $05
    jr c, jr_009_63e3

    ld a, $04
    ld [$c8db], a
    ld a, $0d
    ld [$c8da], a
    jr jr_009_63e3

jr_009_6379:
    ld a, [$c8db]
    dec a
    ld [$c8db], a
    cp $05
    jr c, jr_009_63e3

    ld a, $04
    ld [$c8db], a
    jr jr_009_63e3

jr_009_638b:
    ld a, [$c847]
    bit 7, a
    jp z, Jump_009_644e

    ld a, [$c8da]
    cp $06
    jr c, jr_009_63d1

    cp $0d
    jr nc, jr_009_63b0

    ld a, [$c8db]
    inc a
    ld [$c8db], a
    cp $05
    jr c, jr_009_63e3

    ld a, $00
    ld [$c8db], a
    jr jr_009_63e3

jr_009_63b0:
    ld a, [$c8db]
    cp $02
    jr c, jr_009_63d1

    ld a, [$c8da]
    ld a, $0d
    ld [$c8da], a
    ld a, [$c8db]
    inc a
    ld [$c8db], a
    cp $05
    jr c, jr_009_63e3

    ld a, $00
    ld [$c8db], a
    jr jr_009_63e3

jr_009_63d1:
    ld a, [$c8db]
    inc a
    ld [$c8db], a
    cp $05
    jr c, jr_009_63e3

    ld a, $00
    ld [$c8db], a
    jr jr_009_63e3

Jump_009_63e3:
jr_009_63e3:
    xor a
    ld [$c90c], a
    ld a, [$c8db]
    ld c, $11
    call $1dbe
    ld a, [$c8da]
    add l
    cp $51
    jr nz, jr_009_640a

    ld a, $0d
    ld [$c8da], a
    ld a, [$c847]
    bit 4, a
    jr z, jr_009_644e

    ld a, $0d
    ld [$c8da], a
    jr jr_009_644e

jr_009_640a:
    cp $52
    jr nz, jr_009_6421

    ld a, $00
    ld [$c8da], a
    ld a, [$c847]
    bit 5, a
    jr z, jr_009_644e

    ld a, $0d
    ld [$c8da], a
    jr jr_009_644e

jr_009_6421:
    cp $41
    jr z, jr_009_643b

    cp $42
    jr z, jr_009_643b

    cp $43
    jr z, jr_009_643b

    cp $52
    jr z, jr_009_643b

    cp $53
    jr z, jr_009_643b

    cp $54
    jr z, jr_009_643b

    jr jr_009_644e

jr_009_643b:
    ld a, $0a
    ld [$c8da], a
    ld a, [$c847]
    bit 4, a
    jr z, jr_009_644e

    ld a, $00
    ld [$c8da], a
    jr jr_009_644e

Jump_009_644e:
jr_009_644e:
    call Call_009_6984
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_6497

Jump_009_6458:
    ld de, $c0c8
    ld a, [de]
    cp $9f
    jp z, Jump_009_659c

jr_009_6461:
    inc de
    ld a, [de]
    cp $9f
    jr nz, jr_009_6461

    dec de
    ld a, [$df0e]
    cp $00
    jp nz, Jump_009_648e

    ld a, [$c8f4]
    cp $00
    jp nz, Jump_009_648e

    ld a, $01
    ld [$df0e], a
    ld a, $9f
    ld [$c0c8], a
    ld [$c0c9], a
    ld [$c0ca], a
    ld [$c0cb], a
    jp Jump_009_6491


Jump_009_648e:
    ld a, $9f
    ld [de], a

Jump_009_6491:
    call Call_009_624b
    jp Jump_009_659c


jr_009_6497:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_6589

    ld a, [$c8db]
    ld c, $11
    call $1dbe
    ld a, [$c8da]
    add l
    cp $51
    jr nz, jr_009_64b6

    ld hl, $c905
    inc [hl]
    jp Jump_009_659c


jr_009_64b6:
    cp $40
    jp z, Jump_009_6458

    ld hl, $659d
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    add $e0
    ld l, a
    ld a, h
    adc $c4
    ld h, a
    push hl
    call Call_009_6a3b
    pop hl
    ld a, c
    cp $04
    jr nz, jr_009_64f0

    ld a, $0d
    ld [$c8da], a
    ld a, $04
    ld [$c8db], a
    ld a, [hl]
    cp $8d
    jr z, jr_009_64fe

    cp $8e
    jr z, jr_009_64fe

    jp Jump_009_659c


jr_009_64f0:
    or a
    jr nz, jr_009_64fe

    ld a, [hl]
    cp $8d
    jp z, Jump_009_659c

    cp $8e
    jp z, Jump_009_659c

jr_009_64fe:
    ld de, $c0c8

jr_009_6501:
    ld a, [de]
    inc de
    cp $9f
    jr nz, jr_009_6501

    dec de
    ld a, [hl]
    cp $8d
    jr z, jr_009_6511

    cp $8e
    jr nz, jr_009_6548

jr_009_6511:
    dec de
    ld a, [de]
    inc de
    cp $8d
    jp z, Jump_009_659c

    cp $8e
    jr z, jr_009_659c

    push hl
    ld a, c
    ld hl, $c0d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    pop hl
    ld a, b
    cp $01
    jr z, jr_009_6548

    ld a, [hl]
    cp $8e
    jr z, jr_009_659c

    ld a, b
    cp $03
    jr z, jr_009_6548

    cp $06
    jr z, jr_009_6548

    cp $09
    jr z, jr_009_6548

    dec de
    ld a, [de]
    inc de
    cp $5a
    jr nz, jr_009_659c

jr_009_6548:
    ld a, [hl]
    ld [de], a
    call Call_009_624b
    ld a, $59
    call $1b2c
    call Call_009_6a3b
    ld a, c
    ld hl, $c0d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$c8db]
    ld c, $11
    call $1dbe
    ld a, [$c8da]
    add l
    ld b, a
    ld a, $05
    call $1dfb
    ld a, b
    pop hl
    ld [hl], a
    call Call_009_6a3b
    ld a, c
    cp $04
    jr nz, jr_009_659c

    ld a, $0d
    ld [$c8da], a
    ld a, $04
    ld [$c8db], a
    jr jr_009_659c

Jump_009_6589:
    ld a, [$c846]
    bit 3, a
    jr z, jr_009_659c

    ld a, $0d
    ld [$c8da], a
    ld a, $04
    ld [$c8db], a
    jr jr_009_659c

Jump_009_659c:
jr_009_659c:
    ret


    pop hl
    nop
    ld [c], a
    nop
    db $e3
    nop
    db $e4
    nop
    push hl
    nop
    and $00
    rst $20
    nop
    add sp, $00
    jp hl


    nop
    ld [$eb00], a
    nop
    db $ec
    nop
    db $ed
    nop
    rst $28
    nop
    ldh a, [rP1]
    pop af
    nop
    ld a, [c]
    nop
    ld hl, $2201
    ld bc, $0123
    inc h
    ld bc, $0125
    ld h, $01
    daa
    ld bc, $0128
    add hl, hl
    ld bc, $012a
    dec hl
    ld bc, $012c
    dec l
    ld bc, $012f
    jr nc, @+$03

    ld sp, $3201
    ld bc, $0161
    ld h, d
    ld bc, $0163
    ld h, h
    ld bc, $0165
    ld h, [hl]
    ld bc, $0167
    ld l, b
    ld bc, $0169
    ld l, d
    ld bc, $016b
    ld l, h
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], c
    ld bc, $0172
    and c
    ld bc, $01a2
    and e
    ld bc, $01a4
    and l
    ld bc, $01a6
    and a
    ld bc, $01a8
    xor c
    ld bc, $01aa
    xor e
    ld bc, $01ac
    xor l
    ld bc, $01af
    or b
    ld bc, $01b1
    or d
    ld bc, $01e1
    ld [c], a
    ld bc, $01e3
    db $e4
    ld bc, $01e5
    and $01
    rst $20
    ld bc, $01e8
    jp hl


    ld bc, $01ea
    db $eb
    ld bc, $01ec
    db $ed
    ld bc, $01ef
    ldh a, [rSB]
    pop af

Call_009_6644:
    ld bc, $01f2
    rst $38
    rst $38
    xor a
    ld [$c90c], a
    call Call_009_6984
    ld a, [$c0c8]
    cp $9f
    jr nz, jr_009_6660

    call Call_009_6824
    call Call_009_686f
    call Call_009_624b

jr_009_6660:
    call Call_009_6885
    jr c, jr_009_666f

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_009_6682

jr_009_666f:
    ld hl, $020a
    call $096d
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, $c905
    inc [hl]

jr_009_6682:
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_624b
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ret


    ld a, [$c8f4]
    cp $00
    jr z, jr_009_66be

    ld a, [$c8f5]
    ld l, a
    ld h, $05
    ld de, $c190
    call $097a
    ld hl, $c190

jr_009_66ae:
    ld a, [hl+]
    cp $f0
    jr nz, jr_009_66ae

    dec hl
    ld a, [$c8f6]
    and $01
    add $a7
    ld [hl+], a
    ld [hl], $f0

jr_009_66be:
    ld hl, $c180
    ld de, $c0c8
    ld b, $08

jr_009_66c6:
    ld a, [de]
    cp $9f
    jr z, jr_009_66d0

    ld [hl+], a
    inc de
    dec b
    jr nz, jr_009_66c6

jr_009_66d0:
    ld a, $00
    ld [$df0e], a
    ld [hl], $f0
    ld hl, $0209
    ld a, [$c8f4]
    cp $00
    jr z, jr_009_66ec

    call Call_009_68c0
    ld hl, $0245
    jr c, jr_009_66ec

    ld hl, $020f

jr_009_66ec:
    call $096d
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c8de], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call $1b2c
    ld de, $6e3e
    call Call_009_40c9
    call Call_009_4418
    ld de, $676d
    ld a, [$c8de]
    call Call_009_451e
    call Call_009_40fa
    ld hl, $c905
    inc [hl]
    ret


    ld de, $676d
    ld hl, $c8de
    ld b, $02
    call Call_009_42df
    ld a, [$c846]
    bit 1, a
    jr z, jr_009_6754

jr_009_6737:
    call Call_009_624b
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    jr jr_009_676c

jr_009_6754:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_009_676c

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_009_6737

    ld hl, $c905
    inc [hl]

Jump_009_676c:
jr_009_676c:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld a, [$c8f2]
    ld l, a
    ld a, [$c8f3]
    ld h, a
    ld bc, $0008
    ld a, $f0
    call $12c7
    ld a, [$c8f2]
    ld l, a
    ld a, [$c8f3]
    ld h, a
    ld de, $c0c8
    ld b, $08

jr_009_6790:
    ld a, [de]
    cp $9f
    jr z, jr_009_679a

    ld [hl+], a
    inc de
    dec b
    jr nz, jr_009_6790

jr_009_679a:
    ld hl, $c8eb
    bit 7, [hl]
    jr nz, jr_009_67a8

    ld a, [$c8ef]
    cp $ff
    jr z, jr_009_6810

jr_009_67a8:
    call Call_009_4236
    call Call_009_40fa
    ld hl, $0b01
    rst $10
    ld hl, $0b02
    rst $10
    call $2518
    call $25f1
    ld a, [$c969]
    or a
    jr nz, jr_009_67c8

    ld hl, $0604
    rst $10
    jr jr_009_6810

jr_009_67c8:
    ld de, $2e15
    ld hl, $8500
    call $1577
    ld de, $2e16
    ld hl, $8540
    call $1577
    ld de, $2e17
    ld hl, $8580
    call $1577
    ld de, $2e18
    ld hl, $85c0
    call $1577
    ld de, $2e19
    ld hl, $8600
    call $1577
    ld de, $2e1a
    ld hl, $8640
    call $1577
    ld de, $2e1b
    ld hl, $8680
    call $1577
    ld de, $2e1c
    ld hl, $86c0
    call $1577

jr_009_6810:
    ld hl, $c8eb
    bit 7, [hl]
    jr nz, jr_009_681e

    res 4, [hl]
    xor a
    ld [$c905], a
    ret


jr_009_681e:
    ld hl, $c8eb
    res 7, [hl]
    ret


Call_009_6824:
    ld a, [$c8f4]
    cp $00
    jr nz, jr_009_6840

    ld a, $d3
    ld [$c0c8], a
    ld a, $d4
    ld [$c0c9], a
    ld a, $d5
    ld [$c0ca], a
    ld a, $d6
    ld [$c0cb], a
    ret


jr_009_6840:
    call $12d0
    ld a, [$c8f4]
    sub $10
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    ld c, a
    ld a, [$c899]
    and $07
    swap c
    or c
    ld c, a
    ld a, [$c8f6]
    and $01
    add a
    add a
    add a
    add c
    ld l, a
    ld h, $03
    ld de, $c0c8
    call $097a
    ret


Call_009_686f:
    ld hl, $c0c8
    ld b, $10

jr_009_6874:
    ld a, [hl]
    cp $f0
    jr z, jr_009_687e

    inc hl
    dec b
    jr nz, jr_009_6874

    ret


jr_009_687e:
    ld a, $9f
    ld [hl+], a
    dec b
    jr nz, jr_009_687e

    ret


Call_009_6885:
    ld hl, $c0c8
    ld a, [hl+]
    cp [hl]
    jr nz, jr_009_689a

    inc hl
    cp [hl]
    jr nz, jr_009_689a

    inc hl
    cp [hl]
    jr nz, jr_009_689a

    inc hl
    ld a, [hl]
    cp $9f
    jr z, jr_009_68ad

jr_009_689a:
    ld hl, $691b

jr_009_689d:
    ld de, $c0c8
    ld b, $08
    push hl

jr_009_68a3:
    ld a, [de]
    cp [hl]
    inc hl
    inc de
    jr nz, jr_009_68af

    dec b
    jr nz, jr_009_68a3

    pop hl

jr_009_68ad:
    scf
    ret


jr_009_68af:
    pop hl
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_009_689d

    scf
    ccf
    ret


Call_009_68c0:
    ld c, $00

jr_009_68c2:
    ld a, c
    push bc
    ld hl, $cac1
    call $223b
    pop bc
    ld a, [hl]
    or a
    jr z, jr_009_6918

    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$c8f2]
    ld e, a
    ld a, [$c8f3]
    ld d, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or e
    jr z, jr_009_6912

    ld de, $c0c8
    ld b, $08

jr_009_68ee:
    ld a, [de]

jr_009_68ef:
    cp $9f
    jr z, jr_009_6905

    cp $f0
    jr z, jr_009_6905

    cp $00
    jr z, jr_009_6905

    cp [hl]
    inc hl
    inc de
    jr nz, jr_009_6912

    dec b
    jr nz, jr_009_68ee

jr_009_6903:
    scf
    ret


jr_009_6905:
    ld a, [hl]
    cp $9f
    jr z, jr_009_6903

    cp $f0
    jr z, jr_009_6903

    cp $00
    jr z, jr_009_6903

jr_009_6912:
    inc c
    ld a, c
    cp $14
    jr nz, jr_009_68c2

jr_009_6918:
    scf
    ccf
    ret


    inc [hl]
    ld d, l
    ld b, d
    adc [hl]
    sbc a
    sbc a
    sbc a
    sbc a
    inc [hl]
    ld d, l
    ld b, d
    adc [hl]
    dec l
    sbc a
    sbc a
    sbc a
    inc [hl]
    ld d, l
    inc [hl]
    ld d, l
    sbc a
    sbc a
    sbc a
    sbc a
    jr z, jr_009_6978

    ld d, l
    dec l
    sbc a
    sbc a
    sbc a
    sbc a
    ld b, e
    ld d, l
    dec l
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    jr z, @+$48

    dec l
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    ld sp, $2b36
    jr nc, jr_009_68ef

    sbc a
    sbc a
    sbc a
    ld l, b
    ld l, l
    ld h, d
    ld h, a
    sbc a
    sbc a
    sbc a
    sbc a
    ld h, $55
    dec l
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    ld a, [hl+]
    ld d, l
    inc sp
    ld b, e
    sbc a
    sbc a
    sbc a
    sbc a
    ld h, h
    ld h, h
    ld h, h
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    ld h, h
    ld h, h
    sbc a
    sbc a
    sbc a

jr_009_6978:
    sbc a
    sbc a
    sbc a
    ld h, h
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38

Call_009_6984:
    ld a, [$c8db]
    ld c, $11
    call $1dbe
    ld a, [$c8da]
    add l
    ld de, $659d
    ld c, a
    bit 7, a
    jr nz, jr_009_69a8

    ld a, [$c90c]
    and $0f
    push af
    ld a, [$c90c]
    inc a
    ld [$c90c], a
    pop af
    ld a, c
    ret nz

jr_009_69a8:
    ld c, a
    ld b, $00

Jump_009_69ab:
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
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_009_69db

    ld a, $a0
    bit 7, c
    jr nz, jr_009_69db

    ld a, [$c90c]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_69db

    ld a, $a0

jr_009_69db:
    ldh [$d7], a
    ld a, b
    cp $41
    jr z, jr_009_6a0d

    cp $42
    jr z, jr_009_6a0d

    cp $43
    jr z, jr_009_6a0d

    cp $52
    jr z, jr_009_6a0d

    cp $53
    jr z, jr_009_6a0d

    cp $54
    jr z, jr_009_6a0d

    call Call_009_6a24
    ld a, b
    cp $40
    jr z, jr_009_6a04

    cp $51
    jr z, jr_009_6a04

    jr jr_009_6a0d

jr_009_6a04:
    call Call_009_6a11
    call Call_009_6a11
    call Call_009_6a11

jr_009_6a0d:
    inc b
    jp Jump_009_69ab


Call_009_6a11:
    push af
    ld hl, $ffd5
    inc [hl]
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    pop af

Call_009_6a24:
    ldh a, [$d7]
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


Call_009_6a3b:
    ld hl, $c0c8
    ld b, $08
    ld c, $00

jr_009_6a42:
    ld a, [hl+]
    dec b
    ret z

    inc de
    cp $8d
    jr z, jr_009_6a42

    cp $8e
    jr z, jr_009_6a42

    cp $9f
    jr z, jr_009_6a42

    inc c
    jr jr_009_6a42

    ret


Call_009_6a56:
    call Call_009_6a3b
    ld de, $6a94
    ld b, $00

jr_009_6a5e:
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
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    cp b
    ld a, $e0
    jr nz, jr_009_6a7d

    ld a, $a0

jr_009_6a7d:
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
    jr jr_009_6a5e

    ld l, b
    nop
    ld l, c
    nop
    ld l, d
    nop
    ld l, e
    nop
    rst $38
    rst $38
    nop
    cpl
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $2f01
    ld [bc], a
    cpl
    inc bc
    cpl
    inc b
    cpl
    dec b
    cpl
    ld b, $2f
    rlca
    cpl
    ld [$092f], sp
    cpl
    ld a, [bc]
    cpl
    dec bc
    cpl
    inc c
    cpl
    dec c
    cpl
    ld c, $2f
    rrca
    cpl
    db $10
    cpl
    nop
    jr c, @+$03

    jr c, jr_009_6ae5

    jr c, @+$05

jr_009_6ae5:
    jr c, jr_009_6aeb

    jr c, @+$07

    jr c, jr_009_6af1

jr_009_6aeb:
    jr c, @+$09

    jr c, jr_009_6af7

    jr c, @+$0b

jr_009_6af1:
    jr c, jr_009_6afd

    jr c, @+$0d

    jr c, jr_009_6b03

jr_009_6af7:
    jr c, @+$0f

    jr c, jr_009_6b09

    jr c, @+$11

jr_009_6afd:
    jr c, jr_009_6b0f

    jr c, @+$13

    jr c, jr_009_6b15

jr_009_6b03:
    jr c, @+$15

    jr c, jr_009_6b1b

    jr c, @+$17

jr_009_6b09:
    jr c, jr_009_6b21

    jr c, @+$19

    jr c, jr_009_6b27

jr_009_6b0f:
    jr c, @+$1b

    jr c, jr_009_6b2d

    jr c, @+$1d

jr_009_6b15:
    jr c, jr_009_6b33

    jr c, @+$1f

    jr c, jr_009_6b39

jr_009_6b1b:
    jr c, @+$21

    jr c, jr_009_6b3f

    jr c, @+$23

jr_009_6b21:
    jr c, jr_009_6b45

    jr c, @+$25

    jr c, jr_009_6b4b

jr_009_6b27:
    jr c, @+$27

    jr c, jr_009_6b51

    jr c, @+$29

jr_009_6b2d:
    jr c, jr_009_6b57

    jr c, @+$2b

    jr c, jr_009_6b5d

jr_009_6b33:
    jr c, @+$2d

    jr c, jr_009_6b63

    jr c, @+$2f

jr_009_6b39:
    jr c, jr_009_6b69

    jr c, @+$31

    jr c, jr_009_6b6f

jr_009_6b3f:
    jr c, @+$33

    jr c, jr_009_6b75

    jr c, jr_009_6b78

jr_009_6b45:
    jr c, @+$36

    jr c, jr_009_6b7e

    jr c, jr_009_6b81

jr_009_6b4b:
    jr c, jr_009_6b84

    jr c, jr_009_6b87

    jr c, jr_009_6b8a

jr_009_6b51:
    jr c, jr_009_6b8d

    jr c, jr_009_6b90

    jr c, jr_009_6b93

jr_009_6b57:
    jr c, jr_009_6b96

    jr c, jr_009_6b99

    jr c, jr_009_6b9c

jr_009_6b5d:
    jr c, @+$42

    jr c, jr_009_6ba2

    jr c, jr_009_6ba5

jr_009_6b63:
    jr c, jr_009_6ba8

    jr c, @+$46

    jr c, jr_009_6bae

jr_009_6b69:
    jr c, @+$48

    jr c, jr_009_6bb4

    jr c, jr_009_6b6f

jr_009_6b6f:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_009_6b75:
    add hl, sp
    inc b
    add hl, sp

jr_009_6b78:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_009_6b7e:
    ld [$0939], sp

jr_009_6b81:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_009_6b84:
    dec bc
    add hl, sp
    inc c

jr_009_6b87:
    add hl, sp
    dec c
    add hl, sp

jr_009_6b8a:
    ld c, $39
    rrca

jr_009_6b8d:
    add hl, sp
    db $10
    add hl, sp

jr_009_6b90:
    ld de, $1239

jr_009_6b93:
    add hl, sp
    inc de
    add hl, sp

jr_009_6b96:
    inc d
    add hl, sp
    dec d

jr_009_6b99:
    add hl, sp
    ld d, $39

jr_009_6b9c:
    rla
    add hl, sp
    jr jr_009_6bd9

    add hl, de
    add hl, sp

jr_009_6ba2:
    ld a, [de]
    add hl, sp
    dec de

jr_009_6ba5:
    add hl, sp
    inc e
    add hl, sp

jr_009_6ba8:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_009_6bae:
    jr nz, jr_009_6be9

    ld hl, $2239
    add hl, sp

jr_009_6bb4:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_009_6bf9

    add hl, hl
    add hl, sp
    ld a, [hl+]
    add hl, sp
    dec hl
    add hl, sp
    inc l
    add hl, sp
    dec l
    add hl, sp
    ld l, $39
    cpl
    add hl, sp
    jr nc, jr_009_6c09

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_009_6bd9:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_009_6c19

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_009_6be9:
    add hl, sp
    ld a, $39
    ccf
    add hl, sp
    ld b, b
    add hl, sp
    ld b, c
    add hl, sp
    ld b, d
    add hl, sp
    ld b, e
    add hl, sp
    ld b, h
    add hl, sp
    ld b, l

jr_009_6bf9:
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, a
    add hl, sp
    nop
    ld a, [hl-]
    ld bc, $023a
    ld a, [hl-]
    inc bc
    ld a, [hl-]
    inc b
    ld a, [hl-]
    dec b

jr_009_6c09:
    ld a, [hl-]
    ld b, $3a
    rlca
    ld a, [hl-]
    ld [$093a], sp
    ld a, [hl-]
    ld a, [bc]
    ld a, [hl-]
    dec bc
    ld a, [hl-]
    inc c
    ld a, [hl-]
    dec c

jr_009_6c19:
    ld a, [hl-]
    ld c, $3a
    rrca
    ld a, [hl-]
    db $10
    ld a, [hl-]
    ld de, $123a
    ld a, [hl-]
    inc de
    ld a, [hl-]
    inc d
    ld a, [hl-]
    dec d
    ld a, [hl-]
    ld d, $3a
    rla
    ld a, [hl-]
    jr jr_009_6c6a

    add hl, de
    ld a, [hl-]
    ld a, [de]
    ld a, [hl-]
    dec de
    ld a, [hl-]
    inc e
    ld a, [hl-]
    dec e
    ld a, [hl-]
    ld e, $3a
    rra
    ld a, [hl-]
    jr nz, jr_009_6c7a

    ld hl, $223a
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    inc h
    ld a, [hl-]
    dec h
    ld a, [hl-]
    ld h, $3a
    daa
    ld a, [hl-]
    jr z, jr_009_6c8a

    add hl, hl
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    dec hl
    ld a, [hl-]
    inc l
    ld a, [hl-]
    dec l
    ld a, [hl-]
    ld l, $3a
    cpl
    ld a, [hl-]
    jr nc, jr_009_6c9a

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_009_6c6a:
    ld [hl], $3a
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

jr_009_6c7a:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $38
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_009_6c8a:
    ld a, $3f
    ld b, b
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    rst $38
    ret c

    cp $e0

jr_009_6c9a:
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

    cp $41
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
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

    cp $4a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
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

    cp $53
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
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

    cp $5c
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
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

    cp $65
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
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

    cp $6e
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $ff
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

    cp $77
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
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
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld [$fa00], sp
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

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
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
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ret c

    inc b
    add b
    add c
    add d
    add e
    add h
    add l
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_009_7a94

    ld a, [de]
    dec de
    inc e
    nop
    dec b
    ret c

    inc b
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    nop
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c

jr_009_7a94:
    dec b
    ret c

    inc b
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    nop
    nop
    nop
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
    ret c

    inc b
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld de, $0000
    dec e
    ld e, $1f
    jr nz, jr_009_7adb

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec b
    ret c

    inc b
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld [de], a
    nop
    nop
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
    ret c

    inc b
    sbc [hl]
    sbc a
    and b
    and c
    and d

jr_009_7adb:
    and e
    nop
    nop
    nop
    ld h, $27
    jr z, jr_009_7b0c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $05
    ret c

    inc b
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    dec b
    ret c

    inc b
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    nop
    nop
    cpl
    jr nc, jr_009_7b3d

jr_009_7b0c:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec b
    ret c

    inc b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    jr c, jr_009_7b59

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec b
    ret c

    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    dec b

jr_009_7b3d:
    ret c

    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret c

    inc b
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_009_7b59:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    dec b
    ret c

    inc b
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec b
    ret c

    inc b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
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
    dec b
    ret c

    inc b
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec b
    ret c

    inc b
    ld l, [hl]
    ld l, a
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
    dec b
    ret c

    ld b, $07
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    reti


    nop
    ld bc, $effa
    rst $28
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
    ld bc, $effa
    rst $28
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


    ld h, $00
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    nop
    ld bc, $0302
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee

jr_009_7c4e:
    db $fd
    reti


    and b
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

    cp $24
    dec h
    ld h, $27
    jr z, jr_009_7c4e

    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ldh [$e0], a
    sub c
    sub d
    sub e
    sub h
    sub l
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

    cp $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ldh [rSCX], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ldh [$e0], a
    ld c, c
    ld c, e
    ld c, l
    adc l
    adc [hl]
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

    cp $2e
    cpl
    jr nc, jr_009_7cf1

    ld [hl-], a
    ldh [rOBP0], a
    ldh [rWY], a
    ldh [$4c], a
    ldh [$e0], a
    ld h, b
    ld l, d
    ld h, b

jr_009_7ccc:
    ld [hl], b
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
    ldh [rIE], a
    ret c

    cp $33
    inc [hl]
    dec [hl]
    scf
    jr c, jr_009_7ccc

    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_009_7cf1:
    ldh [$e0], a
    ld b, a
    sbc b
    ld d, b
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
    ldh [rIE], a
    ret c

    cp $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ldh [rHDMA3], a
    ld d, h
    ld d, l
    ld [hl], $9c
    ldh [$e0], a
    jr z, jr_009_7d72

    ld d, b
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
    xor $ee
    db $fd
    reti


    and b
    nop
    ld a, [$efef]
    rst $28

jr_009_7d54:
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

    cp $24
    dec h
    ld h, $27
    jr z, jr_009_7d95

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_009_7d72:
    jr nc, jr_009_7d54

    dec bc
    inc c
    dec c
    inc b
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

    cp $31
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_009_7d95:
    ld [hl], $37
    jr c, jr_009_7dd2

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ldh [rTIMA], a
    ld b, $07
    ld [$d8ff], sp
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

    cp $3e
    ccf
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
    ldh [$09], a
    ld a, [bc]
    ld h, l
    ld h, [hl]
    rst $38
    ret c

    cp $e0
    ldh [$e0], a

jr_009_7dd2:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $4b
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ldh [rNR51], a
    inc h
    ld h, $2e
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

    cp $68
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ldh [$28], a
    ld sp, $2827
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


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
