; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

    ld e, c
    inc de
    ld b, b
    rst $28
    ld b, b
    adc a
    ld b, l
    add b
    ld b, [hl]
    inc h
    ld c, b
    ret nc

    ld c, b
    db $e4
    ld d, d
    db $eb
    ld d, d
    ld a, [c]
    ld d, d
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    xor a
    ld hl, $c8da
    ld bc, $0008
    call $12c7
    xor a
    ld hl, $ffc3
    ld bc, $0012
    call $12c7
    xor a
    ld hl, $dd62
    ld bc, $0006
    call $12c7
    xor a
    ld hl, $c500
    ld bc, $0240
    call $12c7
    call $1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    xor a
    ld [$dd60], a
    xor a
    ld [$c8ec], a
    ld hl, $9700
    ld de, $0901
    call $098f
    call Call_059_42c0
    ld hl, $8800
    ld de, $0601
    call $098f
    xor a
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_059_52e4
    ld hl, $9700
    ld de, $0901
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld hl, $c500
    ld de, $4511
    call Call_059_5ca8
    ld hl, $c500
    ld de, $4546
    call Call_059_5ca8
    call Call_059_42ec
    call Call_059_432d
    ld a, $fc
    call $1688
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    call $122f
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $03
    ld [$c8a1], a
    call $125d
    ld a, $01
    jp $11cb


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c843]
    xor $ff
    ld b, a
    ld a, [$c842]
    ld [$c76c], a
    or a
    jr z, jr_059_4104

    and b

jr_059_4104:
    ld [$c76d], a
    ld a, [$c0d8]
    rst $00
    rla
    ld b, c
    ld e, l
    ld b, c
    ld h, l
    ld b, c
    ld l, [hl]
    ld b, c
    ld a, [bc]
    ld b, d
    ld h, b
    ld b, d
    call Call_059_4276
    ld a, [$c76d]
    and $01
    jr nz, jr_059_413c

    ld a, [$c76d]
    and $02
    jr nz, jr_059_4152

    ld a, [$c76d]
    and $c0
    jr nz, jr_059_4130

    ret


jr_059_4130:
    ld a, [$c8da]
    xor $01
    ld [$c8da], a
    call Call_059_432d
    ret


jr_059_413c:
    ld a, [$c8da]
    set 7, a
    ld [$c8da], a
    call Call_059_432d
    ld a, [$c8da]
    and $01
    add $03
    ld [$c0d8], a
    ret


jr_059_4152:
    ld a, $04
    call $1688
    ld a, $05
    ld [$c0d8], a
    ret


    ld hl, $c0d8
    inc [hl]
    call Call_059_42c0
    ret


    ld a, $04
    ld [$c0d8], a
    call Call_059_42ec
    ret


    call Call_059_4276
    ld a, [$c842]
    and $40
    jr nz, jr_059_419c

    ld a, [$c842]
    and $80
    jr nz, jr_059_41a7

    ld a, [$c842]
    and $20
    jr nz, jr_059_41b2

    ld a, [$c842]
    and $10
    jr nz, jr_059_41bd

    ld a, [$c76d]
    and $01
    jr nz, jr_059_41c8

    ld a, [$c76d]
    and $02
    jr nz, jr_059_41fa

    ret


jr_059_419c:
    ld a, $02
    ld [$dd64], a
    ld a, $00
    ldh [$ca], a
    jr jr_059_41db

jr_059_41a7:
    ld a, $00
    ld [$dd64], a
    ld a, $00
    ldh [$ca], a
    jr jr_059_41db

jr_059_41b2:
    ld a, $01
    ld [$dd64], a
    ld a, $20
    ldh [$ca], a
    jr jr_059_41db

jr_059_41bd:
    ld a, $01
    ld [$dd64], a
    ld a, $00
    ldh [$ca], a
    jr jr_059_41db

jr_059_41c8:
    ld a, [$c0e1]
    ld b, a
    ld a, [$dd64]
    sub b
    ld [$dd64], a
    ld a, [$c0e1]
    xor $03
    ld [$c0e1], a

jr_059_41db:
    ld a, [$c0e1]
    ld b, a
    ld a, [$dd64]
    add b
    ld [$dd64], a
    xor a
    ld [$dd65], a
    ld hl, $dd63
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0205
    rst $10
    ret


jr_059_41fa:
    ld a, [$c8da]
    res 7, a
    ld [$c8da], a
    call Call_059_432d
    xor a
    ld [$c0d8], a
    ret


    ld a, [$c76d]
    and $01
    jr nz, jr_059_424a

    call Call_059_4276
    ld a, [$c76d]
    and $02
    jr nz, jr_059_4250

    ld a, [$c842]
    and $20
    jr nz, jr_059_422a

    ld a, [$c842]
    and $10
    jr nz, jr_059_423a

    ret


jr_059_422a:
    ld a, [$c8dc]
    or a
    jr nz, jr_059_4232

    ld a, $d7

jr_059_4232:
    dec a
    ld [$c8dc], a
    call Call_059_42ec
    ret


jr_059_423a:
    ld a, [$c8dc]
    inc a
    cp $d7
    jr c, jr_059_4243

    xor a

jr_059_4243:
    ld [$c8dc], a
    call Call_059_42ec
    ret


jr_059_424a:
    ld a, $01
    ld [$c0d8], a
    ret


jr_059_4250:
    ld a, [$c8da]
    res 7, a
    ld [$c8da], a
    call Call_059_432d
    xor a
    ld [$c0d8], a
    ret


    ld a, $00
    ld [$c88a], a
    xor a
    ld [$c88b], a
    xor a
    ld [$c88c], a
    xor a
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


Call_059_4276:
    ld hl, $ffc3
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $48
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$c0e0]
    add $10
    ld [hl+], a
    inc hl
    ld a, $00
    ld [hl], a
    ld hl, $dd63
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0205
    rst $10
    ldh a, [$c8]
    cp $ff
    ret z

    ld hl, $0402
    rst $10
    ld hl, $dd62
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ld hl, $0200
    rst $10
    ld a, [$dd62]
    or a
    ret nz

    xor a
    ld [$dd65], a
    ret


Call_059_42c0:
    ld a, [$c8dc]
    ld l, a
    ld [$c0e0], a
    ld h, $00
    add hl, hl
    ld a, l
    add $63
    ld l, a
    ld a, h
    adc $43
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, $80
    ld l, $00
    call $1577
    ld a, [$c8dc]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld hl, $4102
    rst $10
    ret


Call_059_42ec:
    ld a, [$c0e0]
    ld l, a
    ld h, $00
    call $5b7d
    ld hl, $c521
    ld a, [$c0e8]
    add $f0
    ld [hl+], a
    ld a, [$c0e9]
    add $f0
    ld [hl+], a
    ld a, [$c0ea]
    add $f0
    ld [hl+], a
    ld a, [$c8dc]
    ld l, a
    ld h, $00
    call $5b7d
    ld hl, $c708
    ld a, [$c0e8]
    add $f0
    ld [hl+], a
    ld a, [$c0e9]
    add $f0
    ld [hl+], a
    ld a, [$c0ea]
    add $f0
    ld [hl], a
    ld hl, $5005
    rst $10
    ret


Call_059_432d:
    ld hl, $c500
    ld de, $457f
    call Call_059_5ca8
    ld a, [$c8da]
    ld hl, $458b
    and $01
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
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, [$c8da]
    bit 7, a
    jr nz, jr_059_435b

    ld a, $e8
    jr jr_059_435d

jr_059_435b:
    ld a, $e9

jr_059_435d:
    ld [hl], a
    ld hl, $5005
    rst $10
    ret


    ld bc, $022f
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

    jr c, jr_059_438a

    jr c, @+$05

jr_059_438a:
    jr c, jr_059_4390

    jr c, @+$07

    jr c, jr_059_4396

jr_059_4390:
    jr c, @+$09

    jr c, jr_059_439c

    jr c, @+$0b

jr_059_4396:
    jr c, jr_059_43a2

    jr c, @+$0d

    jr c, jr_059_43a8

jr_059_439c:
    jr c, @+$0f

    jr c, jr_059_43ae

    jr c, @+$11

jr_059_43a2:
    jr c, jr_059_43b4

    jr c, @+$13

    jr c, jr_059_43ba

jr_059_43a8:
    jr c, @+$15

    jr c, jr_059_43c0

    jr c, @+$17

jr_059_43ae:
    jr c, jr_059_43c6

    jr c, @+$19

    jr c, jr_059_43cc

jr_059_43b4:
    jr c, @+$1b

    jr c, jr_059_43d2

    jr c, @+$1d

jr_059_43ba:
    jr c, jr_059_43d8

    jr c, @+$1f

    jr c, jr_059_43de

jr_059_43c0:
    jr c, @+$21

    jr c, jr_059_43e4

    jr c, @+$23

jr_059_43c6:
    jr c, jr_059_43ea

    jr c, @+$25

    jr c, jr_059_43f0

jr_059_43cc:
    jr c, @+$27

    jr c, jr_059_43f6

    jr c, @+$29

jr_059_43d2:
    jr c, jr_059_43fc

    jr c, @+$2b

    jr c, jr_059_4402

jr_059_43d8:
    jr c, @+$2d

    jr c, jr_059_4408

    jr c, @+$2f

jr_059_43de:
    jr c, jr_059_440e

    jr c, @+$31

    jr c, jr_059_4414

jr_059_43e4:
    jr c, @+$33

    jr c, jr_059_441a

    jr c, jr_059_441d

jr_059_43ea:
    jr c, @+$36

    jr c, jr_059_4423

    jr c, jr_059_4426

jr_059_43f0:
    jr c, jr_059_4429

    jr c, jr_059_442c

    jr c, jr_059_442f

jr_059_43f6:
    jr c, jr_059_4432

    jr c, jr_059_4435

    jr c, jr_059_4438

jr_059_43fc:
    jr c, jr_059_443b

    jr c, jr_059_443e

    jr c, jr_059_4441

jr_059_4402:
    jr c, @+$42

    jr c, jr_059_4447

    jr c, jr_059_444a

jr_059_4408:
    jr c, jr_059_444d

    jr c, @+$46

    jr c, jr_059_4453

jr_059_440e:
    jr c, @+$48

    jr c, jr_059_4459

    jr c, jr_059_4414

jr_059_4414:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_059_441a:
    add hl, sp
    inc b
    add hl, sp

jr_059_441d:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_059_4423:
    ld [$0939], sp

jr_059_4426:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_059_4429:
    dec bc
    add hl, sp
    inc c

jr_059_442c:
    add hl, sp
    dec c
    add hl, sp

jr_059_442f:
    ld c, $39
    rrca

jr_059_4432:
    add hl, sp
    db $10
    add hl, sp

jr_059_4435:
    ld de, $1239

jr_059_4438:
    add hl, sp
    inc de
    add hl, sp

jr_059_443b:
    inc d
    add hl, sp
    dec d

jr_059_443e:
    add hl, sp
    ld d, $39

jr_059_4441:
    rla
    add hl, sp
    jr jr_059_447e

    add hl, de
    add hl, sp

jr_059_4447:
    ld a, [de]
    add hl, sp
    dec de

jr_059_444a:
    add hl, sp
    inc e
    add hl, sp

jr_059_444d:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_059_4453:
    jr nz, jr_059_448e

    ld hl, $2239
    add hl, sp

jr_059_4459:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_059_449e

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
    jr nc, jr_059_44ae

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_059_447e:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_059_44be

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_059_448e:
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

jr_059_449e:
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

jr_059_44ae:
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

jr_059_44be:
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
    jr jr_059_450f

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
    jr nz, jr_059_451f

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
    jr z, jr_059_452f

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
    jr nc, jr_059_453f

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_059_450f:
    ld [hl], $3a
    nop
    nop
    ld a, [$efef]
    rst $28
    ei
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28

jr_059_451f:
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    rst $38
    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_059_452f:
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    rst $38
    ret c

    db $fc
    xor $ee
    xor $fd
    db $fc
    xor $ee
    xor $ee

jr_059_453f:
    xor $ee
    xor $ee
    xor $fd
    reti


    and b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ld a, [$efef]
    rst $28
    ei
    ret c

    cp $e0
    add d
    add e
    add h
    add l
    rst $38
    cp $e0
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    db $fc
    xor $ee
    xor $fd
    reti


    and c
    ld bc, $d8ef
    ldh [$d8], a
    ldh [$d8], a
    ldh [$d8], a
    xor $d9
    pop bc
    ld bc, $0201
    xor a
    ld hl, $c827
    ld bc, $0012
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    ld hl, $99c1
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    call $1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    xor a
    ld [$dd60], a
    xor a
    ld [$c8ec], a
    call Call_059_5ce5
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ld hl, $9700
    ld de, $0401
    call $098f
    ld a, $00
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    call Call_059_52f2
    ld hl, $96c0
    ld de, $0401
    call $098f
    ld a, $00
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $97c0
    ld de, $0401
    call $098f
    ld a, $01
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8800
    ld de, $0401
    call $098f
    ld a, $05
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8b00
    ld de, $1202
    call $098f
    call Call_059_5cfd
    ld de, $5e05
    ld hl, $c500
    call Call_059_5ca8
    ld a, $fc
    call $1688
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld hl, $5005
    rst $10
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $d8
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    call $122f
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $03
    ld [$c8a1], a
    call $125d
    ld a, $01
    jp $11cb


    ld a, [$c0d9]
    rst $00
    dec b
    ld b, a
    dec sp
    ld b, a
    rrca
    ld b, a
    ld c, l
    ld b, a
    dec h
    ld b, a
    call c, $8546
    ld b, a
    ei
    ld b, [hl]
    sub [hl]
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    call c, $a746
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    ei
    ld e, e
    dec h
    ld b, a
    call c, $b846
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    jp nc, $0f5b

    ld b, a
    inc h
    ld e, h
    dec h
    ld b, a
    call c, $c946
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    ld c, l
    ld e, h
    dec h
    ld b, a
    call c, $da46
    ld b, a
    ei
    ld b, [hl]
    db $eb
    ld b, a
    ei
    ld b, [hl]
    push hl
    ld b, [hl]
    dec h
    ld b, a
    db $fc
    ld b, a
    ld b, $48
    call Call_059_5ccd
    ret nz

    ld hl, $c0d9
    inc [hl]
    ret


    call Call_059_5cd9
    ret nz

    ld a, $01
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    call Call_059_52f2
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld hl, $c0d9
    inc [hl]
    ret


    call Call_059_5c76
    ld hl, $c0da
    inc [hl]
    ld a, [$c0da]
    cp $0f
    ret nz

    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0da], a
    ret


    call Call_059_5c76
    ld hl, $c0da
    inc [hl]
    ld a, [$c0da]
    cp $28
    ret nz

    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0da], a
    ret


    ld a, $02
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $01
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    call Call_059_52f2
    call Call_059_5cfd
    ld de, $5e70
    ld hl, $c500
    call Call_059_5ca8
    ld hl, $c621
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    xor a
    ld [$c0db], a
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $00
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $01
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $02
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $03
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $04
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $05
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $06
    ld [$c823], a
    xor a
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, $04
    call $1688
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, $00
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    xor a
    ld hl, $c827
    ld bc, $0012
    call $12c7
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    xor a
    ld hl, $d9f4
    ld bc, $0008
    call $12c7
    xor a
    ld hl, $c8da
    ld bc, $0008
    call $12c7
    xor a
    ld hl, $c8e2
    ld bc, $0008
    call $12c7
    ld hl, $99c1
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld a, l
    ld [$d9ea], a
    ld a, h
    ld [$d9eb], a
    call $1264
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    xor a
    ld [$dd60], a
    xor a
    ld [$c8ec], a
    call Call_059_5ce5
    call Call_059_513c
    ld de, $2e00
    ld hl, $8d00
    call $14cf
    call Call_059_4ec6
    call Call_059_5087
    ld a, $fc
    call $1688
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$b7], a
    ld a, $00
    ldh [$bb], a
    call $122f
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $03
    ld [$c8a1], a
    call $125d
    ld a, $01
    jp $11cb


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c843]
    xor $ff
    ld b, a
    ld a, [$c842]
    ld [$c76c], a
    or a
    jr z, jr_059_48e5

    and b

jr_059_48e5:
    ld [$c76d], a
    ld a, [$c0d8]
    rst $00
    cp $48
    cp [hl]
    ld c, c
    ld l, d
    ld c, d
    ld l, c
    ld c, e
    rst $08
    ld c, e
    jp nc, Jump_059_734c

    ld c, l
    ld b, b
    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld a, [$c8df]
    or a
    jr z, jr_059_4912

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4912:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4933

    ld a, [$c76c]
    and $c0
    jr nz, jr_059_495a

    ld a, [$c76c]
    and $30
    jr nz, jr_059_497b

    ld a, [$c76d]
    and $02
    jp nz, Jump_059_499c

    ret


jr_059_4933:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8da]
    set 7, a
    ld [$c8da], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $01
    ld [$c0d8], a
    ret


jr_059_495a:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8da]
    xor $01
    ld [$c8da], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_497b:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8da]
    xor $02
    ld [$c8da], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


Jump_059_499c:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    xor a
    ld [$c0d9], a
    ld a, $04
    ld [$c0d8], a
    ret


    ld a, [$c0d9]
    rst $00
    ret z

    ld c, c
    db $dd
    ld c, c
    ld a, [c]
    ld c, c
    xor a
    ld [$d9f6], a
    ld a, $01
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c8da]
    and $03
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c8da]
    res 7, a
    cp $01
    jr z, jr_059_4a1e

    cp $03
    jr z, jr_059_4a59

    ld [$c8da], a
    xor a
    ld [$c0d8], a
    ld [$c0d9], a
    xor a
    ld [$d9f6], a
    xor a
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4a1e:
    ld a, [$ca8d]
    cp $02
    jr nc, jr_059_4a3f

    ld a, $02
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    xor a
    ld [$d9f6], a
    ld a, $02
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4a3f:
    ld a, $05
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    xor a
    ld [$d9f6], a
    ld a, $04
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4a59:
    ld [$c8da], a
    xor a
    ld [$c8e1], a
    ld a, $04
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


    ld a, [$c8df]
    or a
    jr z, jr_059_4a7e

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4a7e:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4aa0

    ld a, [$c76c]
    and $40
    jr nz, jr_059_4ac7

    ld a, [$c76c]
    and $80
    jp nz, Jump_059_4aee

    ld a, [$c76d]
    and $02
    jp nz, Jump_059_4b15

    ret


jr_059_4aa0:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8db]
    set 7, a
    ld [$c8db], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $03
    ld [$c0d8], a
    ret


jr_059_4ac7:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8db]
    or a
    jr z, jr_059_4adc

    dec a
    jr jr_059_4ade

jr_059_4adc:
    ld a, $03

jr_059_4ade:
    ld [$c8db], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


Jump_059_4aee:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8db]
    cp $03
    jr z, jr_059_4b04

    inc a
    jr jr_059_4b05

jr_059_4b04:
    xor a

jr_059_4b05:
    ld [$c8db], a
    ld a, $02
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


Jump_059_4b15:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$ca8d]
    cp $02
    jr c, jr_059_4b4a

    ld a, [$c8e3]
    res 7, a
    ld [$c8e3], a
    xor a
    ld [$d9f6], a
    ld a, $04
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $05
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


jr_059_4b4a:
    ld a, [$c8da]
    res 7, a
    ld [$c8da], a
    xor a
    ld [$c0d8], a
    ld [$c0d9], a
    ld [$c8db], a
    ld [$d9f6], a
    ld [$d9f5], a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


    ld a, [$c0d9]
    rst $00
    ret z

    ld c, c
    ld [hl], e
    ld c, e
    adc d
    ld c, e
    ld a, [$c8db]
    and $03
    add $04
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c8db]
    and $03
    cp $03
    jr z, jr_059_4bb6

    res 7, a
    ld [$c8db], a
    ld a, $02
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ld [$d9f6], a
    ld a, $02
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4bb6:
    ld a, $06
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ld [$d9f6], a
    ld a, $05
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


    ld a, [$c0d9]
    rst $00
    db $db
    ld c, e
    ld bc, $a34c
    ld c, h
    or h
    ld c, h
    xor a
    ld [$c8e2], a
    xor a
    ld [$d9f6], a
    ld a, $03
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $08
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c8df]
    or a
    jr z, jr_059_4c15

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4c15:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4c2e

    ld a, [$c76c]
    and $c0
    jr nz, jr_059_4c59

    ld a, [$c76d]
    and $02
    jr nz, jr_059_4c7f

    ret


jr_059_4c2e:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e2]
    set 7, a
    ld [$c8e2], a
    ld a, $01
    ld [$d9f6], a
    ld a, $03
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld hl, $c0d9
    inc [hl]
    ret


jr_059_4c59:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e2]
    xor $01
    ld [$c8e2], a
    ld a, $01
    ld [$d9f6], a
    ld a, $03
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4c7f:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    xor a
    ld [$d9f6], a
    xor a
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    xor a
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


    ld a, [$c8e2]
    and $01
    jr nz, jr_059_4c7f

    ld a, $04
    call $1688
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, $00
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    ld a, [$c8df]
    or a
    jr z, jr_059_4ce6

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4ce6:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4cff

    ld a, [$c76c]
    and $c0
    jr nz, jr_059_4d26

    ld a, [$c76d]
    and $02
    jr nz, jr_059_4d47

    ret


jr_059_4cff:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e3]
    set 7, a
    ld [$c8e3], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $07
    ld [$c0d8], a
    ret


jr_059_4d26:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e3]
    xor $01
    ld [$c8e3], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4d47:
    ld a, [$c8da]
    res 7, a
    ld [$c8da], a
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    xor a
    ld [$d9f6], a
    xor a
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    xor a
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


    ld a, [$c8df]
    or a
    jr z, jr_059_4d87

    ld hl, $c8df
    inc [hl]
    ld a, [$c8df]
    cp $08
    ret c

    xor a
    ld [$c8df], a

jr_059_4d87:
    call Call_059_5279
    ld a, [$c76d]
    and $01
    jr nz, jr_059_4da7

    ld a, [$c76c]
    and $40
    jr nz, jr_059_4dce

    ld a, [$c76c]
    and $80
    jr nz, jr_059_4df5

    ld a, [$c76d]
    and $02
    jr nz, jr_059_4e1a

    ret


jr_059_4da7:
    xor a
    ld [$c8e0], a
    ld a, $01
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e4]
    set 7, a
    ld [$c8e4], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $08
    ld [$c0d8], a
    ret


jr_059_4dce:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e4]
    or a
    jr z, jr_059_4de3

    dec a
    jr jr_059_4de5

jr_059_4de3:
    ld a, $02

jr_059_4de5:
    ld [$c8e4], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4df5:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    ld a, [$c8e4]
    inc a
    cp $03
    jr c, jr_059_4e0a

    xor a

jr_059_4e0a:
    ld [$c8e4], a
    ld a, $01
    ld [$d9f6], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


jr_059_4e1a:
    xor a
    ld [$c8e0], a
    xor a
    ld [$c8e1], a
    ld hl, $c8df
    inc [hl]
    xor a
    ld [$d9f6], a
    ld a, $02
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ld a, $02
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ret


    ld a, [$c0d9]
    rst $00
    ret z

    ld c, c
    ld c, d
    ld c, [hl]
    ld h, c
    ld c, [hl]
    ld a, [$c8e3]
    and $03
    add $09
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $02
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ld [$d9f6], a
    ld a, $02
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


    ld a, [$c0d9]
    rst $00
    ret z

    ld c, c
    adc c
    ld c, [hl]
    and b
    ld c, [hl]
    ld a, [$c8e4]
    and $03
    add $0b
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    call Call_059_52e4
    ld hl, $c0d9
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$c8e4]
    res 7, a
    ld [$c8e4], a
    ld a, $06
    ld [$c0d8], a
    xor a
    ld [$c0d9], a
    ld [$d9f6], a
    ld a, $05
    ld [$d9f5], a
    xor a
    ld [$d9f4], a
    call Call_059_4ec6
    ret


Call_059_4ec6:
    ld a, [$d9f4]
    or a
    ret nz

    ld a, [$d9f5]
    rst $00
    db $db
    ld c, [hl]
    jr nz, @+$51

    ld [hl-], a
    ld c, a
    ld [hl], a
    ld c, a
    ret


    ld c, a
    inc c
    ld d, b
    ld a, [$d9f6]
    rst $00
    push hl
    ld c, [hl]
    db $eb
    ld c, [hl]
    db $eb
    ld c, [hl]
    call Call_059_5d25
    call Call_059_5060
    ld de, $6065
    ld hl, $c500
    call Call_059_5ca8
    ld a, [$c8da]
    and $0f
    ld hl, $52d0
    call Call_059_5bc7
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8da]
    bit 7, a
    jr z, jr_059_4f1b

    ld [hl], $e9
    jp Jump_059_504d


jr_059_4f1b:
    ld [hl], $e8
    jp Jump_059_504d


    call Call_059_5d25
    call Call_059_5060
    ld de, $5d9a
    ld hl, $c500
    call Call_059_5ca8
    jp Jump_059_504d


    ld a, [$d9f6]
    rst $00
    inc a
    ld c, a
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    call Call_059_5d25
    call Call_059_5060
    ld de, $60f3
    ld hl, $c500
    call Call_059_5ca8
    ld a, [$c8db]
    and $0f
    ld hl, $52d8
    call Call_059_5bc7
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8db]
    bit 7, a
    jr z, jr_059_4f72

    ld [hl], $e9
    jp Jump_059_504d


jr_059_4f72:
    ld [hl], $e8
    jp Jump_059_504d


    ld a, [$d9f6]
    rst $00
    ld a, a
    ld c, a
    adc [hl]
    ld c, a
    call Call_059_5d25
    call Call_059_5060
    ld de, $5d9a
    ld hl, $c500
    call Call_059_5ca8
    ld de, $5ef2
    ld hl, $c500
    call Call_059_5ca8
    ld a, [$c8e2]
    and $0f
    ld hl, $52e0
    call Call_059_5bc7
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8e2]
    bit 7, a
    jr z, jr_059_4fbd

    ld [hl], $e9
    jr jr_059_4fbf

jr_059_4fbd:
    ld [hl], $e8

jr_059_4fbf:
    ld a, [$d9f6]
    or a
    jp nz, Jump_059_5056

    jp Jump_059_504d


    ld a, [$d9f6]
    rst $00
    pop de
    ld c, a
    rst $10
    ld c, a
    call Call_059_5d25
    call Call_059_5060
    ld de, $60ad
    ld hl, $c500
    call Call_059_5ca8
    ld a, [$c8e3]
    and $0f
    add $02
    ld hl, $52d8
    call Call_059_5bc7
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8e3]
    bit 7, a
    jr z, jr_059_5008

    ld [hl], $e9
    jr jr_059_504d

jr_059_5008:
    ld [hl], $e8
    jr jr_059_504d

    ld a, [$d9f6]
    rst $00
    inc d
    ld d, b
    ld a, [de]
    ld d, b
    call Call_059_5d25
    call Call_059_5060
    ld de, $5f17
    ld hl, $c500
    call Call_059_5ca8
    ld a, [$c8e4]
    and $0f
    add $01
    ld hl, $52d8
    call Call_059_5bc7
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, l
    ld [$c8dd], a
    ld a, h
    ld [$c8de], a
    ld a, [$c8e4]
    bit 7, a
    jr z, jr_059_504b

    ld [hl], $e9
    jr jr_059_504d

jr_059_504b:
    ld [hl], $e8

Jump_059_504d:
jr_059_504d:
    ld hl, $8b00
    ld de, $1202
    call $098f

Jump_059_5056:
    ld hl, $5005
    rst $10
    ld a, $01
    ld [$d9f4], a
    ret


Call_059_5060:
    ld a, [$ca8d]
    or a
    jr z, jr_059_507d

    ld hl, $52c2
    ld a, [$ca8d]
    call Call_059_5bc7
    ld d, h
    ld e, l
    ld hl, $c500
    call Call_059_5ca8
    call Call_059_51a8
    call Call_059_5240

jr_059_507d:
    ld de, $5d6e
    ld hl, $c500
    call Call_059_5ca8
    ret


Call_059_5087:
    ld hl, $96c0
    ld de, $0401
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $00
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $97c0
    ld de, $0401
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $01
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8850
    ld de, $1401
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $03
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8990
    ld de, $0501
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $04
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ld hl, $8800
    ld de, $0501
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $05
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    ld hl, $4c02
    rst $10
    ret


Call_059_513c:
    ld a, [$ca8d]
    or a
    ret z

    xor a
    ld [$c0eb], a
    ld hl, $9700
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0401
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a

jr_059_515b:
    ld a, [$c0eb]
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_059_521e
    ld hl, $c0eb
    inc [hl]
    ld a, [$c827]
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, [$c0eb]
    ld d, a
    ld a, [$ca8d]
    cp d
    jr nz, jr_059_515b

    ld hl, $8b00
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $1202
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_059_51a8:
    xor a
    ld [$c0eb], a

jr_059_51ac:
    ld a, [$c0eb]
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_059_51cb
    ld hl, $c0eb
    inc [hl]
    ld a, [$c0eb]
    ld d, a
    ld a, [$ca8d]
    cp d
    jr nz, jr_059_51ac

    ret


Call_059_51cb:
    ld c, $95
    ld b, $00
    call Call_059_5d31
    push bc
    ld hl, $cb11
    call Call_059_5bc2
    call $5b7d
    ld a, [$c0eb]
    ld hl, $52b0
    call Call_059_5bc7
    call Call_059_51ff
    pop bc
    ld hl, $cb15
    call Call_059_5bc2
    call $5b7d
    ld a, [$c0eb]
    ld hl, $52b6
    call Call_059_5bc7
    call Call_059_51ff
    ret


Call_059_51ff:
    ld a, [$c0e8]
    ld e, a
    or a
    jr z, jr_059_5209

    add $f0
    ld [hl], a

jr_059_5209:
    inc hl
    ld a, [$c0e9]
    or e
    jr z, jr_059_5216

    ld a, [$c0e9]
    add $f0
    ld [hl], a

jr_059_5216:
    inc hl
    ld a, [$c0ea]
    add $f0
    ld [hl], a
    ret


Call_059_521e:
    ld c, $95
    ld b, $00
    call Call_059_5d31
    ld hl, $cac2
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $c180
    call $0c80
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    ret


Call_059_5240:
    xor a
    ld [$c0eb], a
    call Call_059_5248
    ret


Call_059_5248:
    ld hl, $c180
    ld a, $f0
    ld [hl], a
    ld a, [$c0eb]
    ld hl, $52ca
    call Call_059_5bc7
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0301
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
    ret


Call_059_5279:
    ld a, [$c8e1]
    or a
    ret nz

    ld hl, $c8e0
    inc [hl]
    ld a, [$c8e0]
    cp $0a
    jr z, jr_059_528e

    cp $14
    jr z, jr_059_529d

    ret


jr_059_528e:
    ld a, [$c8dd]
    ld l, a
    ld a, [$c8de]
    ld h, a
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ret


jr_059_529d:
    ld a, [$c8dd]
    ld l, a
    ld a, [$c8de]
    ld h, a
    ld [hl], $e8
    ld hl, $5005
    rst $10
    xor a
    ld [$c8e0], a
    ret


    ld h, d
    push bc
    ld l, b
    push bc
    ld l, [hl]
    push bc
    add d
    push bc
    adc b
    push bc
    adc [hl]
    push bc
    nop
    sub a
    ld b, b
    sub a
    add b
    sub a
    dec l
    ld h, b
    dec l
    ld h, b
    pop de
    ld e, a
    ld d, c
    ld e, a
    and b
    adc l
    or b
    adc l
    ret nz

    adc l
    pop bc
    ld bc, $0201
    rst $00
    ld bc, $0207
    ld b, c
    ld bc, $0181
    pop bc
    ld bc, $0201
    cpl
    ld bc, $016f

Call_059_52e4:
    ld de, $52f9
    call $05b6
    ret


    ld de, $52f9
    call $05f6
    ret


Call_059_52f2:
    call Call_059_52e4
    call $0609
    ret


    ld bc, $0f53
    ld d, e
    dec d
    ld d, e
    ld sp, $3353
    ld d, e
    ld d, e
    ld d, e
    cpl
    ld d, h
    inc h
    ld d, l
    adc h
    ld d, [hl]
    cpl
    ld d, a
    sbc h
    ld d, a
    ld hl, sp+$57
    db $fd
    ld d, a
    rst $38
    ld d, a
    inc hl
    ld e, b
    ld h, c
    ld e, b
    reti


    ld e, b
    jr c, jr_059_5376

    or l
    ld e, c
    db $db
    ld e, c
    inc d
    ld e, d
    ld c, e
    ld e, d
    add [hl]
    ld e, d
    adc l
    ld e, d
    jp z, $0a5a

    ld e, e
    ld l, $5b
    ld d, e
    ld e, e
    ld l, l
    ld e, e
    sbc a
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
    ld b, [hl]
    ld b, d
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld d, b
    ld b, d
    ld c, [hl]
    ld d, d
    ld b, d
    ld c, e
    ld d, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$9f]
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, [hl]
    ld h, h
    cpl
    ld [hl-], a
    ld [hl], $64
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, c
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$f0fb]
    rst $28

jr_059_5376:
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, b
    ld h, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    ld h, h
    ld h, a
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    inc sp
    cpl
    inc h
    ld sp, $eeef
    ccf
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$f0fb]
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    ld h, h
    ld h, a
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    inc l
    scf
    jr z, jr_059_53f9

    ld h, h
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, e
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_059_5427

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld a, [$f0fb]
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld h, a
    rst $28
    xor $fa
    ei

jr_059_53f9:
    ldh a, [$ef]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, [hl-]
    jr z, jr_059_5434

    rst $28
    xor $42
    ld c, a
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, [$f0fb]
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, b

jr_059_5427:
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$9f]
    ld h, h
    ld h, a
    cpl
    ld [hl-], a

jr_059_5434:
    ld [hl], $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $25
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld h, b
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$f0fb]
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_059_54a7

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    sbc h
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$f0fb]
    rst $28
    xor $41
    ld a, $4b
    ld a, $40
    ld b, l
    ld h, h
    ld b, l
    ld a, $4b
    ld b, c
    ld b, d
    ld c, c
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld d, c

jr_059_54a7:
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, [hl]
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
    ld a, $43
    ld d, c
    ld h, b
    ld a, [$f0fb]
    rst $28
    xor $41
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $24
    ld c, b
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    and h
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_059_5539

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld e, e
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld a, [$f0fb]
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ccf
    ld b, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld c, c
    ld d, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$9f]
    ld h, h
    ld h, a
    inc sp
    cpl
    inc h
    ld sp, $3f64
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, b
    ld h, h

jr_059_5539:
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld a, [$f0fb]
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    dec hl
    ld a, $4b
    ld b, c
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $30
    ld c, h
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    and h
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, a
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld h, h
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, d
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld a, [$f0fb]
    rst $28
    xor $3f
    ld b, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld c, c
    ld d, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $4a
    ld e, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, [hl]
    ld h, h
    cpl
    ld [hl-], a
    ld [hl], $65
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$f0fb]
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $4a
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, b
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, h
    add hl, sp
    jr z, jr_059_561b

    ld [hl], $38
    ld h, $2b
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$f0fb]
    rst $28
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, b
    ld h, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f
    ld h, h
    ld h, a
    ccf
    ld b, d
    ld b, [hl]
    ld h, h

jr_059_561b:
    inc sp
    inc h
    ld [hl], $36
    inc l
    add hl, sp
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld a, [$f0fb]
    rst $28
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld c, e
    ld d, b
    ld b, [hl]
    ld d, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $45
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$48

    ld d, c
    ld h, h
    dec h
    jr z, @+$2b

    jr z, jr_059_5684

    cpl
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
    and h
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    ld h, h
    dec h
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    rst $28
    xor $64
    ld h, h
    ld b, h
    ld b, d

jr_059_5684:
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    sbc a
    ld h, h
    ld h, a
    inc l
    scf
    jr z, jr_059_56c3

    ld h, h
    ld b, d
    ld c, a
    ld c, c
    ld a, $52
    ccf
    ld d, c
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
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
    ld a, [$f0fb]
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld b, d
    ld d, b
    ld h, h
    and h
    ld h, a
    rst $28
    xor $fa
    ei
    ldh a, [$ef]
    xor $9f

jr_059_56c3:
    ld h, h
    ld h, a
    ld b, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, l
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2a
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$f0fb]
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, a
    ld d, d
    ld h, h
    ld d, a
    ld e, e
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$9f]
    ld h, h
    ld h, a
    ld a, [hl-]
    jr z, jr_059_575f

    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld a, $52
    ld d, b
    ld d, h
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h

jr_059_575f:
    ld b, [hl]
    ld c, e
    ld h, h
    rst $28
    xor $2a
    ld b, d
    ld b, e
    ld a, $45
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$f0fb]
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$9f]
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld l, b
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld c, d
    ld a, $64
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld h, c
    ld h, a
    ld a, [$f0fb]
    rst $28
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $36
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld d, b
    ld d, c
    ld a, [$f0fb]
    rst $28
    xor $41
    ld d, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $33
    ld c, a
    ld a, $55
    ld b, [hl]
    ld d, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$36]
    ld b, [hl]
    ccf
    ld d, [hl]
    ldh a, [$ed]
    ldh a, [$ed]
    ld a, [hl+]
    ld c, a
    ld c, h
    ld e, [hl]
    ld d, e
    ld a, $51
    ld b, d
    ld c, a
    ld h, h
    pop af
    ld [hl], $3e
    ld c, b
    ld a, $4a
    ld c, h
    ld d, c
    ld c, h
    db $fc
    db $10
    db $ec
    ld a, [c]
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, e
    ld h, l
    pop af
    db $ec
    ldh a, [rNR51]
    ld b, d
    ld b, [hl]
    ld h, h
    cpl
    ld [hl-], a
    ld [hl], $64
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$f0fb]
    rst $28
    xor $47
    ld b, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    rst $28
    xor $53
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    inc sp
    ld c, c
    ld a, $4b
    ld h, c
    rst $30
    ldh a, [rNR51]
    ld b, d
    ld b, [hl]
    ld h, h
    inc sp
    cpl
    inc h
    ld sp, $4864
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    dec hl
    ld a, $4b
    ld b, c
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$f0fb]
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld b, d
    ld b, [hl]
    ld c, e
    sbc h
    rst $28
    xor $43
    ld c, c
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld a, [$f0fb]
    rst $28
    xor $24
    ld d, d
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    inc sp
    ld c, c
    ld a, $4b
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld a, [$f0fb]
    rst $28
    xor $3f
    ld b, d
    ld b, e
    ld c, h
    ld c, c
    ld b, h
    ld d, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$2c]
    scf
    jr z, jr_059_590d

    ld h, h
    ld b, d
    ld c, a
    ld c, c
    ld a, $52
    ccf
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$f0fb]
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $45
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e

jr_059_590d:
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [$f0fb]
    rst $28
    xor $41
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
    ld b, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    rst $28
    xor $3e
    ld c, e
    ld d, a
    ld d, d
    ld b, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$3a]
    jr z, jr_059_5965

    ld h, h
    ccf
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$f0fb]
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld h, h

jr_059_5965:
    ld b, d
    ld c, e
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, c
    ld a, [$f0fb]
    rst $28
    xor $28
    ld d, b
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
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
    rst $28
    xor $2a
    ld a, $4f
    ld a, $4b
    ld d, c
    ld b, [hl]
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$f0fb]
    rst $28
    xor $43
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, c
    rst $28
    xor $f7
    ldh a, [$67]
    cpl
    ld [hl-], a
    ld [hl], $65
    ld h, a
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    rst $28
    xor $36
    ld b, [hl]
    ld b, h
    ld c, e
    ld a, $49
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    inc h
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    rst $30
    ldh a, [$67]
    add hl, sp
    jr z, @+$37

    ld [hl], $38
    ld h, $2b
    ld h, a
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    rst $28
    xor $41
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
    ld b, d
    ld c, e
    ld a, [$f0fb]
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_059_5a53

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $4b
    ld h, c
    rst $28
    xor $f7
    ldh a, [$67]
    inc sp
    inc h
    ld [hl], $36
    inc l
    add hl, sp
    ld h, a
    and e
    ld h, h
    jr nc, jr_059_5a6c

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $3f
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
    ld a, [$f0fb]
    rst $28
    xor $2b
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, e
    ld e, e
    ld b, l
    ld b, [hl]
    ld b, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$67]
    dec h
    jr z, jr_059_5a78

    jr z, jr_059_5a7c

    cpl
    ld h, a

jr_059_5a53:
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld c, e
    ld d, c
    ld h, h
    rst $28
    xor $41
    ld a, $57
    ld d, d
    ld h, h
    ld h, b
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    ld a, [$f0fb]

jr_059_5a6c:
    rst $28
    xor $25
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d

jr_059_5a78:
    ld h, h
    rst $28
    xor $42

jr_059_5a7c:
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$2a]
    ld b, d
    ld c, e
    ld d, d
    ld b, h
    ld h, [hl]
    ldh a, [$30]
    ld b, [hl]
    ld d, c
    ld h, h
    ld h, a
    inc h
    cpl
    cpl
    jr z, jr_059_5afe

    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld a, $4a
    ld d, c
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld a, [$f0fb]
    rst $28
    xor $3f
    ld b, d
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $f7
    ldh a, [$30]
    ld b, [hl]
    ld d, c
    ld h, h
    ld h, a
    jr z, jr_059_5afd

    ld sp, $283d
    cpl
    ld h, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld c, c
    ld a, $4b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld a, [$f0fb]
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h

jr_059_5afd:
    ld b, h

jr_059_5afe:
    ld b, d
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$67]
    inc h
    ld sp, $352a
    ld h, a
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
    xor $4b
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
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
    ld h, c
    rst $30
    ldh a, [$67]
    scf
    jr z, jr_059_5b58

    dec hl
    ld h, a
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $36
    ld c, l
    ld b, d
    ld d, a
    ld b, [hl]
    ld a, $49
    ld d, c
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    rst $30
    ldh a, [$67]
    inc h
    dec h
    ld a, [hl-]
    ld h, a

jr_059_5b58:
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $24
    ccf
    ld d, h
    ld b, d
    ld b, l
    ld c, a
    ld h, c
    rst $30
    ldh a, [$35]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld d, b
    ld c, e
    ld d, d
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ldh a, [$af]
    ld [$c0e8], a
    ld [$c0e9], a
    ld [$c0ea], a

jr_059_5b87:
    ld a, [$c0e8]
    inc a
    ld [$c0e8], a
    ld bc, $ff9c
    add hl, bc
    ld a, h
    rlc a
    jr nc, jr_059_5b87

    ld bc, $0064
    add hl, bc
    ld a, [$c0e8]
    dec a
    ld [$c0e8], a

jr_059_5ba2:
    ld a, [$c0e9]
    inc a
    ld [$c0e9], a
    ld bc, $fff6
    add hl, bc
    ld a, h
    rlc a
    jr nc, jr_059_5ba2

    ld bc, $000a
    add hl, bc
    ld a, [$c0e9]
    dec a
    ld [$c0e9], a
    ld a, l
    ld [$c0ea], a
    ret


Call_059_5bc2:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_059_5bc7:
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


    ld hl, $c621
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $c661
    ld [hl], $e0
    ld hl, $c627
    ld [hl], $e0
    ld hl, $c667
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0db], a
    ret


    ld hl, $c621
    ld [hl], $e0
    ld hl, $c661
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $c627
    ld [hl], $e0
    ld hl, $c667
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0db], a
    ret


    ld hl, $c621
    ld [hl], $e0
    ld hl, $c661
    ld [hl], $e0
    ld hl, $c627
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $c667
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0db], a
    ret


    ld hl, $c621
    ld [hl], $e0
    ld hl, $c661
    ld [hl], $e0
    ld hl, $c627
    ld [hl], $e0
    ld hl, $c667
    ld [hl], $e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $5005
    rst $10
    ld hl, $c0d9
    inc [hl]
    xor a
    ld [$c0db], a
    ret


Call_059_5c76:
    ld hl, $c0db
    inc [hl]
    ld a, [$c0db]
    cp $0a
    jr z, jr_059_5c86

    cp $14
    jr z, jr_059_5c95

    ret


jr_059_5c86:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld [hl], $e0
    ld hl, $5005
    rst $10
    ret


jr_059_5c95:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld [hl], $e8
    ld hl, $5005
    rst $10
    xor a
    ld [$c0db], a
    ret


Call_059_5ca8:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    add hl, bc

jr_059_5caf:
    push hl

jr_059_5cb0:
    ld a, [de]
    inc de
    cp $d8
    jr z, jr_059_5cc0

    cp $d9
    jr z, jr_059_5ccb

    call $1aad
    inc hl
    jr jr_059_5cb0

jr_059_5cc0:
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_059_5caf

jr_059_5ccb:
    pop hl
    ret


Call_059_5ccd:
    ld hl, $ffbb
    inc [hl]
    call $122f
    ldh a, [$bb]
    cp $00
    ret


Call_059_5cd9:
    ld hl, $ffbb
    dec [hl]
    call $122f
    ldh a, [$bb]
    cp $d8
    ret


Call_059_5ce5:
    ld a, $aa
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $9000
    call $1577
    ret


Call_059_5cfd:
    call Call_059_5d25
    ld de, $5eb8
    ld hl, $9b60
    call Call_059_5ca8
    ld de, $5ee7
    ld hl, $c500
    call Call_059_5ca8
    ld de, $5d42
    ld hl, $c500
    call Call_059_5ca8
    ld de, $5d9a
    ld hl, $c500
    call Call_059_5ca8
    ret


Call_059_5d25:
    ld a, $e0
    ld hl, $c500
    ld bc, $0240
    call $12c7
    ret


Call_059_5d31:
    or a
    jr z, jr_059_5d3e

    ld hl, $0000

jr_059_5d37:
    add hl, bc
    dec a
    jr nz, jr_059_5d37

    ld b, h
    ld c, l
    ret


jr_059_5d3e:
    ld bc, $0000
    ret


    daa
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ret c

    ld b, $07
    ld [$0a09], sp
    dec bc
    ret c

    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $12d8
    inc de
    inc d
    dec d
    ld d, $17
    ret c

    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ret c

    ld e, $1f
    jr nz, jr_059_5d8c

    ld [hl+], a
    inc hl
    reti


    rst $00
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ret c

    ld b, $07
    ld [$0a09], sp
    dec bc
    ret c

    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $12d8
    inc de
    inc d
    dec d
    ld d, $17
    ret c

jr_059_5d8c:
    jr jr_059_5da7

    ld a, [de]
    dec de
    inc e
    dec e
    ret c

    ld e, $1f
    jr nz, jr_059_5db8

    ld [hl+], a
    inc hl
    reti


    and b
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

jr_059_5da7:
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

jr_059_5db8:
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


    nop
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


    nop
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
    ei
    ret c

    cp $e0
    ld l, h
    ld l, h
    add e
    ld a, h
    ldh [$e0], a
    ld l, l
    ld a, h
    ld l, [hl]
    ldh [rIE], a
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
    ld a, [hl]
    ld a, l
    ld a, a
    add d
    ldh [$e0], a
    add c
    add b
    ld l, a
    ldh [rIE], a
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
    ei
    ret c

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ldh [$e0], a
    rst $38
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e1
    ldh [$f1], a
    ld sp, hl
    ldh [$e0], a
    rst $38
    ret c

    cp $e2
    ldh [$e0], a
    ld a, [c]
    ldh [$e0], a
    rst $38
    reti


    nop
    nop
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
    call nc, $d5e0
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    push de
    push de
    sub $ff
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add a
    ld a, h
    add b
    sbc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc e
    ld a, l
    sbc l
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc d
    ld a, h
    sbc h
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

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jp c, Jump_059_74e0

    ld [hl], l
    db $76
    ld [hl], a
    db $db
    ldh [$78], a
    ld a, c
    ld a, d
    ld a, e
    call c, $ffe0
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e1
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e1], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e1], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e2
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e2], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e2], a
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
    ei
    ret c

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jp c, Jump_059_74e0

    ld [hl], l
    db $76
    ld [hl], a
    db $db
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e1
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e1], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e2
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e2], a
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

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jp c, $ffe0

    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e1
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e2
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


    and b
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
    ei
    ret c

    cp $e0
    adc c
    ld a, h
    ld a, l
    ldh [$e0], a
    ldh [$7e], a
    ld a, a
    sub $e2
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
    db $e3
    adc c
    call nc, $e081
    ldh [$80], a
    sub $82
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    and b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc d
    add d
    sbc e
    add d
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    add h
    sbc h
    rst $38
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
    ei
    ret c

    cp $6c
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    jr nz, @+$03

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
    adc c
    ld a, h
    ld a, l
    adc b
    ldh [$e0], a
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
    rst $18
    sub $83
    ld a, l
    add h
    add l
    pop hl
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
    db $e3
    call nc, Call_059_7d7d
    ld a, [hl]
    rst $18
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
    add [hl]
    sub $87
    sub $e1
    adc c
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

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
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
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
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
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
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
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
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    sub $83
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
    ld a, [hl]
    add e
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld a, l
    ld a, [hl]
    sub $e0
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    sub $83
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    sub $81
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld h, b
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
    ei
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    sub b
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
    rst $38
    ret c

    cp $e0
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
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d5e0
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    push de
    push de
    sub $ff
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, b
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
    ld [hl], $37
    jr c, jr_059_637d

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $ff
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
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
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_059_637d:
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
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
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
    sbc h
    sbc l
    sbc [hl]
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
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
    add b
    sub $81
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
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub b
    sub c
    sub d
    sub e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub h
    sub l
    sub [hl]
    sub a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc b
    sbc c
    sbc d
    sbc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc c
    adc d
    adc e
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub b
    sub c
    sub d
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld h, b
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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $d8ff
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

    cp $12
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_059_650c

    ld [hl+], a
    inc hl
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

    cp $24
    dec h
    ld h, $27
    jr z, jr_059_6534

    ld a, [hl+]

jr_059_650c:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_059_6544

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
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


    ret nz

    nop
    ld a, [$efef]
    rst $28

jr_059_6534:
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e2
    db $e3
    rst $18
    sub $83
    add [hl]
    ldh [rIE], a
    ret c

jr_059_6544:
    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    push hl
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and b
    and c
    and d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    and e
    and h
    and l
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
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
    ei
    ret c

    cp $e0
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    ld c, b
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
    dec l
    ld l, $2f
    jr nc, jr_059_65eb

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld c, c
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
    ld [hl], $37
    jr c, jr_059_660e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $4a
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

jr_059_65eb:
    cp $e0
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, e
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
    ld bc, $effa
    rst $28
    rst $28
    rst $28

jr_059_660e:
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and [hl]
    and a
    xor b
    xor c
    xor d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ret nz

    nop
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $6c
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $8281
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld a, a
    sub $85
    pop hl
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    call nc, $8086
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    jr nz, @+$03

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
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
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
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
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
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_059_734c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_059_74e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_059_7d7d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
