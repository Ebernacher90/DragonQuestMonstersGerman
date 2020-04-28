; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    inc b

jr_004_4001:
    rrca
    ld b, b
    ld d, $40
    add c
    ld b, b
    and a
    ld b, b
    ld h, a
    ld b, c
    db $ec
    ld d, l
    ld a, [$1156]
    dec e
    ld b, b
    call $0d91
    ret


    ld de, $401d
    call Call_004_40cd
    ret


    inc hl
    ld b, b
    ld a, [hl+]
    ld b, b
    dec a
    ld b, b
    dec h
    ld b, b
    nop
    nop
    nop
    nop
    add b
    inc l
    ld b, b
    nop
    nop
    nop
    stop
    ld [$1001], sp
    ld [$0200], sp
    db $10
    ld [$0308], sp
    db $10
    add b
    ld b, l
    ld b, b
    ld c, [hl]
    ld b, b
    ld h, e
    ld b, b
    ld [hl], b
    ld b, b
    nop
    nop
    sub b
    nop
    ld [$9100], sp
    nop
    add b
    nop
    nop
    and [hl]
    nop
    nop
    ld [$00a7], sp
    nop
    db $10
    xor b
    nop
    nop
    jr nc, jr_004_4001

    nop
    ld [$a530], sp
    nop
    add b
    ld hl, sp+$08
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld [$0002], sp
    add b
    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    ld [$1000], sp
    nop
    ld [$1108], sp
    nop
    add b
    ldh a, [$c7]
    cp $90
    jr nc, jr_004_409e

    cp $10
    jr nc, jr_004_4095

    call Call_004_4126
    ld de, $4137
    call $0d91
    ret


jr_004_4095:
    sub $10
    ldh [$c7], a
    ld hl, $1000
    rst $10
    ret


jr_004_409e:
    sub $90
    ldh [$c7], a
    ld hl, $1100
    rst $10
    ret


    ldh a, [$c7]
    cp $90
    jr nc, jr_004_40c4

    cp $10
    jr nc, jr_004_40bb

    call Call_004_4126
    ld de, $4137
    call Call_004_40cd
    ret


jr_004_40bb:
    sub $10
    ldh [$c7], a
    ld hl, $1001
    rst $10
    ret


jr_004_40c4:
    sub $90
    ldh [$c7], a
    ld hl, $1101
    rst $10
    ret


Call_004_40cd:
    push af
    push bc
    push de
    push hl
    ldh a, [$cb]
    cp $28
    jr nc, jr_004_4121

    ldh a, [$c7]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$c8]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$cb]
    sla a
    sla a
    ld l, a
    ld h, $c0

jr_004_40f4:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_004_4121

    ld b, a
    ldh a, [$c5]
    add b
    add $10
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$c3]
    add b
    add $08
    ld [hl+], a
    ldh a, [$c9]
    ld b, a
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$ca]
    xor b
    ld [hl+], a
    ldh a, [$cb]
    inc a
    ldh [$cb], a
    cp $28
    jr c, jr_004_40f4

jr_004_4121:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_004_4126:
    ldh a, [$c7]
    ld hl, $4157
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [$ca]
    or [hl]
    ldh [$ca], a
    ret


    scf
    ld [hl], d
    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    jr c, jr_004_41bc

    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    jr c, jr_004_41c4

    jr c, @+$79

    jr c, jr_004_41c8

    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

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
    ld a, [$c8eb]
    res 0, a
    res 2, a
    or a
    ret nz

    ld a, [$c8eb]
    bit 0, a
    jr z, jr_004_417f

    ld a, [$c915]
    cp $0b
    ret nz

    jr jr_004_4189

jr_004_417f:
    bit 2, a
    jr z, jr_004_4189

    ld a, [$c91e]
    cp $02
    ret nz

jr_004_4189:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    ld a, [$d8d7]
    bit 0, a
    jp z, Jump_004_41c7

    bit 1, a
    jp nz, Jump_004_41c7

    ld a, [$d8d7]
    bit 4, a
    call nz, Call_004_43ec
    ld a, [$d8d7]
    bit 6, a
    call nz, Call_004_43ec
    ld a, [$d8d7]
    bit 2, a
    jr nz, jr_004_41c8

    bit 3, a
    jp nz, Jump_004_41e0

jr_004_41bc:
    ld a, [$d8d8]
    bit 2, a
    jp nz, Jump_004_43db

jr_004_41c4:
    call Call_004_55f5

Jump_004_41c7:
    ret


jr_004_41c8:
    ld a, [$c8a4]
    and $07
    jr nz, jr_004_41dd

    ld a, [$d8db]
    dec a
    ld [$d8db], a
    jr nz, jr_004_41dd

    ld hl, $d8d7
    res 2, [hl]

jr_004_41dd:
    jp Jump_004_41c7


Jump_004_41e0:
    ld a, [$d8dc]
    or a
    jp nz, Jump_004_42cd

    ld hl, $ff90
    set 0, [hl]
    ld a, [$c8a4]
    and $03
    cp $01
    jp z, Jump_004_43d8

    ld a, [$d8dd]
    ld l, a
    ld a, [$d8de]
    ld h, a
    ld a, h
    or l
    jr z, jr_004_425a

    bit 7, h
    jr nz, jr_004_4231

    ld a, [$d8dd]
    sub $01
    ld [$d8dd], a
    ld a, [$d8de]
    sbc $00
    ld [$d8de], a
    ldh a, [$92]
    add $01
    ldh [$92], a
    ldh a, [$93]
    adc $00
    ldh [$93], a
    ld a, [$d8d7]
    bit 5, a
    jp nz, Jump_004_42ba

    ld a, $03
    ldh [$8e], a
    jp Jump_004_42ba


jr_004_4231:
    ld a, [$d8dd]
    add $01
    ld [$d8dd], a
    ld a, [$d8de]
    adc $00
    ld [$d8de], a
    ldh a, [$92]
    sub $01
    ldh [$92], a
    ldh a, [$93]
    sbc $00
    ldh [$93], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_42ba

    ld a, $01
    ldh [$8e], a
    jr jr_004_42ba

jr_004_425a:
    ld a, [$d8df]
    ld l, a
    ld a, [$d8e0]
    ld h, a
    ld a, h
    or l
    jr z, jr_004_42c0

    bit 7, h
    jr nz, jr_004_4293

    ld a, [$d8df]
    sub $01
    ld [$d8df], a
    ld a, [$d8e0]
    sbc $00
    ld [$d8e0], a
    ldh a, [$95]
    add $01
    ldh [$95], a
    ldh a, [$96]
    adc $00
    ldh [$96], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_42ba

    ld a, $00
    ldh [$8e], a
    jr jr_004_42ba

jr_004_4293:
    ld a, [$d8df]
    add $01
    ld [$d8df], a
    ld a, [$d8e0]
    adc $00
    ld [$d8e0], a
    ldh a, [$95]
    sub $01
    ldh [$95], a
    ldh a, [$96]
    sbc $00
    ldh [$96], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_42ba

    ld a, $02
    ldh [$8e], a

Jump_004_42ba:
jr_004_42ba:
    call Call_004_454b
    jp Jump_004_43d8


jr_004_42c0:
    ld hl, $ff90
    res 0, [hl]
    ld hl, $d8d7
    res 3, [hl]
    jp Jump_004_43d8


Jump_004_42cd:
    dec a
    swap a
    add a
    ld hl, $d7d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    set 0, [hl]
    res 6, [hl]
    ld a, [$c8a4]
    and $03
    cp $01
    jp z, Jump_004_43d8

    ld a, [$d8dd]
    ld e, a
    ld a, [$d8de]
    ld d, a
    ld a, d
    or e
    jr z, jr_004_435f

    bit 7, d
    jr nz, jr_004_4333

    ld a, [$d8dd]
    sub $01
    ld [$d8dd], a
    ld a, [$d8de]
    sbc $00
    ld [$d8de], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_4320

    ld [hl], $03

jr_004_4320:
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_004_43d8


jr_004_4333:
    ld a, [$d8dd]
    add $01
    ld [$d8dd], a
    ld a, [$d8de]
    adc $00
    ld [$d8de], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_434d

    ld [hl], $01

jr_004_434d:
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jr jr_004_43d8

jr_004_435f:
    ld a, [$d8df]
    ld e, a
    ld a, [$d8e0]
    ld d, a
    ld a, d
    or e
    jr z, jr_004_43c7

    bit 7, d
    jr nz, jr_004_439b

    ld a, [$d8df]
    sub $01
    ld [$d8df], a
    ld a, [$d8e0]
    sbc $00
    ld [$d8e0], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_4389

    ld [hl], $00

jr_004_4389:
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jr jr_004_43d8

jr_004_439b:
    ld a, [$d8df]
    add $01
    ld [$d8df], a
    ld a, [$d8e0]
    adc $00
    ld [$d8e0], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_43b5

    ld [hl], $02

jr_004_43b5:
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jr jr_004_43d8

jr_004_43c7:
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    res 0, [hl]
    ld hl, $d8d7
    res 3, [hl]

Jump_004_43d8:
jr_004_43d8:
    jp Jump_004_41c7


Jump_004_43db:
    ld a, [$d8db]
    dec a
    ld [$d8db], a
    jr nz, jr_004_43e9

    ld hl, $d8d8
    res 2, [hl]

jr_004_43e9:
    jp Jump_004_41c7


Call_004_43ec:
    ld a, [$d8e9]
    push af
    call Call_004_443d
    pop af
    ld hl, $d8f1
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d8f9
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d901
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d909
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d911
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d919
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d921
    or [hl]
    push af
    call Call_004_4584
    pop af
    or a
    ret nz

    ld hl, $d8d7
    res 4, [hl]
    res 6, [hl]
    ret


Call_004_443d:
    ld a, [$d8e9]
    or a
    ret z

    ld a, [$d8d7]
    set 4, a
    ld [$d8d7], a
    ld hl, $d8e9
    ld a, l
    ldh [$d7], a
    ld a, h
    ldh [$d8], a
    ld a, [$d8eb]
    ld hl, $ff95
    cp $01
    jp z, Jump_004_4742

    cp $03
    jp z, Jump_004_47be

    cp $04
    jp z, Jump_004_4857

    cp $06
    jp z, Jump_004_48e2

    cp $07
    jp z, Jump_004_4931

    cp $1a
    jp z, Jump_004_55a9

    ld hl, $ff90
    set 0, [hl]
    ld a, [$c8a4]
    and $03
    cp $01
    ret z

    ld a, [$d8ed]
    ld l, a
    ld a, [$d8ee]
    ld h, a
    ld a, h
    or l
    jr z, jr_004_44ea

    bit 7, h
    jr nz, jr_004_44bf

    ld a, [$d8ed]
    sub $01
    ld [$d8ed], a
    ld a, [$d8ee]
    sbc $00
    ld [$d8ee], a
    ldh a, [$92]
    add $01
    ldh [$92], a
    ldh a, [$93]
    adc $00
    ldh [$93], a
    ld a, [$d8d7]
    bit 5, a
    jp nz, Jump_004_454b

    ld a, $03
    ldh [$8e], a
    jp Jump_004_454b


jr_004_44bf:
    ld a, [$d8ed]
    add $01
    ld [$d8ed], a
    ld a, [$d8ee]
    adc $00
    ld [$d8ee], a
    ldh a, [$92]
    sub $01
    ldh [$92], a
    ldh a, [$93]
    sbc $00
    ldh [$93], a
    ld a, [$d8d7]
    bit 5, a
    jp nz, Jump_004_454b

    ld a, $01
    ldh [$8e], a
    jp Jump_004_454b


jr_004_44ea:
    ld a, [$d8ef]
    ld l, a
    ld a, [$d8f0]
    ld h, a
    ld a, h
    or l
    jp z, Jump_004_457a

    bit 7, h
    jr nz, jr_004_4524

    ld a, [$d8ef]
    sub $01
    ld [$d8ef], a
    ld a, [$d8f0]
    sbc $00
    ld [$d8f0], a
    ldh a, [$95]
    add $01
    ldh [$95], a
    ldh a, [$96]
    adc $00
    ldh [$96], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_454b

    ld a, $00
    ldh [$8e], a
    jr jr_004_454b

jr_004_4524:
    ld a, [$d8ef]
    add $01
    ld [$d8ef], a
    ld a, [$d8f0]
    adc $00
    ld [$d8f0], a
    ldh a, [$95]
    sub $01
    ldh [$95], a
    ldh a, [$96]
    sbc $00
    ldh [$96], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_454b

    ld a, $02
    ldh [$8e], a

Call_004_454b:
Jump_004_454b:
jr_004_454b:
    ld a, $00
    ldh [$8d], a
    ld a, $00
    ldh [$8f], a
    ldh a, [$8e]
    or a
    ret z

    ld a, $20
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    ldh a, [$8e]
    cp $01
    ret z

    ld a, $00
    ldh [$8d], a
    ld a, $02
    ldh [$8f], a
    ldh a, [$8e]
    cp $02
    ret z

    ld a, $00
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    ret


Jump_004_457a:
    ld hl, $ff90
    res 0, [hl]
    xor a
    ld [$d8e9], a
    ret


Call_004_4584:
    ld a, [hl]
    or a
    ret z

    ld a, [$d8d7]
    set 4, a
    ld [$d8d7], a
    ld a, l
    ldh [$d7], a
    ld a, h
    ldh [$d8], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    dec a
    swap a
    add a
    ld hl, $d7d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ldh a, [$d7]
    add $02
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    push af
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    pop af
    cp $01
    jp z, Jump_004_4742

    cp $02
    jp z, Jump_004_478a

    cp $04
    jp z, Jump_004_4857

    cp $05
    jp z, Jump_004_487f

    cp $08
    jp z, Jump_004_498c

    cp $09
    jp z, Jump_004_49d2

    cp $0a
    jp z, Jump_004_4a2c

    cp $0b
    jp z, Jump_004_4a52

    cp $0c
    jp z, Jump_004_4aa2

    cp $0d
    jp z, Jump_004_4b27

    cp $0e
    jp z, Jump_004_4b6d

    cp $0f
    jp z, Jump_004_4b9b

    cp $10
    jp z, Jump_004_4be7

    cp $11
    jp z, Jump_004_4c33

    cp $12
    jp z, Jump_004_4c65

    cp $13
    jp z, Jump_004_4c9f

    cp $14
    jp z, Jump_004_4d27

    cp $15
    jp z, Jump_004_4da8

    cp $16
    jp z, Jump_004_507b

    cp $17
    jp z, Jump_004_50c6

    cp $18
    jp z, Jump_004_54c8

    cp $19
    jp z, Jump_004_5546

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    set 0, [hl]
    res 6, [hl]
    ld a, [$c8a4]
    and $03
    cp $01
    ret z

    ldh a, [$d7]
    add $04
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, d
    or e
    jr z, jr_004_46ba

    bit 7, d
    jr nz, jr_004_468c

    ldh a, [$d7]
    add $04
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    sub $01
    ld [bc], a
    inc bc
    ld a, [bc]
    sbc $00
    ld [bc], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_467b

    ld [hl], $03

jr_004_467b:
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_004_468c:
    ldh a, [$d7]
    add $04
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    add $01
    ld [bc], a
    inc bc
    ld a, [bc]
    adc $00
    ld [bc], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_46a9

    ld [hl], $01

jr_004_46a9:
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_004_46ba:
    ldh a, [$d7]
    add $06
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, d
    or e
    jr z, jr_004_472d

    bit 7, d
    jr nz, jr_004_46ff

    ldh a, [$d7]
    add $06
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    sub $01
    ld [bc], a
    inc bc
    ld a, [bc]
    sbc $00
    ld [bc], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_46ee

    ld [hl], $00

jr_004_46ee:
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_004_46ff:
    ldh a, [$d7]
    add $06
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    add $01
    ld [bc], a
    inc bc
    ld a, [bc]
    adc $00
    ld [bc], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_471c

    ld [hl], $02

jr_004_471c:
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_004_472d:
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    res 0, [hl]
    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ret


Jump_004_4742:
    ld bc, $4770

Call_004_4745:
Jump_004_4745:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    push af
    inc a
    ld [de], a
    pop af
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    cp $80
    jr z, jr_004_4767

    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl], a
    ret


Jump_004_4767:
jr_004_4767:
    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ret


    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    add b
    add b

Jump_004_478a:
    ld bc, $4790
    jp Jump_004_4745


    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    nop
    add b
    add b

Jump_004_47be:
    ld bc, $47d9
    call Call_004_4745
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c8a6]
    and $03
    ret z

    ldh a, [$8e]
    inc a
    and $03
    ldh [$8e], a
    jp Jump_004_454b


    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_4857:
    ld bc, $485d
    jp Jump_004_4745


    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    add b
    add b

Jump_004_487f:
    ld bc, $4892
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    inc [hl]
    inc [hl]
    ret


    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld a, [$fcff]
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    ld b, $00
    add b
    add b

Jump_004_48e2:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    cp $40
    jr nz, jr_004_48fc

    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ret


jr_004_48fc:
    ld a, [$ca37]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add $73
    ld l, a
    ld a, h
    adc $c9
    ld h, a
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$95]
    ld [hl+], a
    ldh a, [$93]
    swap a
    ld c, a
    ldh a, [$96]
    or c
    ld [hl+], a
    ldh a, [$8b]
    ld c, a
    ldh a, [$8d]
    or c
    ld [hl+], a
    ld a, [$ca37]
    inc a
    ld [$ca37], a
    cp $31
    ret c

    xor a
    ld [$ca37], a
    ret


Jump_004_4931:
    ld bc, $494c
    call Call_004_4745
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    sub $02
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$92], a
    ld a, h
    ldh [$93], a
    ret


    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_498c:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    cp $ff
    jr nz, jr_004_49ae

    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld [hl], $00
    ret


jr_004_49ae:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    pop af
    ld b, $0f
    cp $20
    jr c, jr_004_49ca

    ld b, $07
    cp $50
    jr c, jr_004_49ca

    ld b, $03
    cp $90
    jr c, jr_004_49ca

    ld b, $01

jr_004_49ca:
    and b
    or a
    ld [hl], $00
    ret z

    ld [hl], $40
    ret


Jump_004_49d2:
    ld bc, $4a0a
    call Call_004_4745
    ld a, [$c850]
    or a
    ret nz

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $00
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    srl a
    srl a
    and $03
    push af
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    pop af
    ld [hl], a
    jp Jump_004_454b


    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    add b
    add b

Jump_004_4a2c:
    ld bc, $4a32
    jp Jump_004_4745


    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    add b
    add b

Jump_004_4a52:
    ld bc, $4a58
    jp Jump_004_4745


    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
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
    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    add b
    add b

Jump_004_4aa2:
    ld bc, $4ab5
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    dec [hl]
    dec [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    add b
    add b

Jump_004_4b27:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    cp $ff
    jr nz, jr_004_4b49

    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld [hl], $40
    ret


jr_004_4b49:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    pop af
    ld b, $0f
    cp $20
    jr c, jr_004_4b65

    ld b, $07
    cp $50
    jr c, jr_004_4b65

    ld b, $03
    cp $90
    jr c, jr_004_4b65

    ld b, $01

jr_004_4b65:
    and b
    or a
    ld [hl], $40
    ret z

    ld [hl], $00
    ret


Jump_004_4b6d:
    ld a, [$c8a6]
    and $03
    ret nz

    ld bc, $4b79
    jp Jump_004_4745


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b

Jump_004_4b9b:
    ld bc, $4ba1
    jp Jump_004_4745


    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add b
    add b

Jump_004_4be7:
    ld bc, $4bed
    jp Jump_004_4745


    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_4c33:
    ld bc, $4c39
    jp Jump_004_4745


    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    add b
    add b

Jump_004_4c65:
    ld bc, $4c6b
    jp Jump_004_4745


    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    add b
    add b

Jump_004_4c9f:
    ld bc, $4ca5
    jp Jump_004_4745


    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_4d27:
    call Call_004_4d5c
    ld a, [$c850]
    or a
    ret nz

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $00
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    srl a
    srl a
    and $03
    push af
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    pop af
    ld [hl], a
    jp Jump_004_454b


Call_004_4d5c:
    ld a, [$c8a6]
    and $01
    ret nz

    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    cp $ff
    jr nz, jr_004_4d84

    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld [hl], $00
    ret


jr_004_4d84:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    pop af
    ld b, $0f
    cp $20
    jr c, jr_004_4da0

    ld b, $07
    cp $50
    jr c, jr_004_4da0

    ld b, $03
    cp $90
    jr c, jr_004_4da0

    ld b, $01

jr_004_4da0:
    and b
    or a
    ld [hl], $00
    ret z

    ld [hl], $40
    ret


Jump_004_4da8:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_004_4dc2

    ld a, [$d8e3]
    ld c, a
    ld a, $0a
    sub c
    add a
    add a
    add a
    inc a
    ld [de], a

jr_004_4dc2:
    ld a, [$d8e4]
    ld bc, $4df3
    cp $01
    jr z, jr_004_4ddd

    ld bc, $4e95
    cp $02
    jr z, jr_004_4ddd

    ld bc, $4f37
    cp $03
    jr z, jr_004_4ddd

    ld bc, $4fd9

jr_004_4ddd:
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    dec bc
    dec bc
    ld a, b
    ld [hl-], a
    ld [hl], c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_507b:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_004_5095

    ld a, [$d8e3]
    ld c, a
    ld a, $0a
    sub c
    add a
    add a
    add a
    inc a
    ld [de], a

jr_004_5095:
    ld a, [$d8e4]
    ld bc, $4df3
    cp $01
    jr z, jr_004_50b0

    ld bc, $4e95
    cp $02
    jr z, jr_004_50b0

    ld bc, $4f37
    cp $03
    jr z, jr_004_50b0

    ld bc, $4fd9

jr_004_50b0:
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc bc
    inc bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


Jump_004_50c6:
    ld a, [$d8e3]
    ld bc, $5144
    cp $01
    jr z, jr_004_510b

    ld bc, $5156
    cp $02
    jr z, jr_004_510b

    ld bc, $5178
    cp $03
    jr z, jr_004_510b

    ld bc, $51aa
    cp $04
    jr z, jr_004_510b

    ld bc, $51ec
    cp $05
    jr z, jr_004_510b

    ld bc, $523e
    cp $06
    jr z, jr_004_510b

    ld bc, $52a0
    cp $07
    jr z, jr_004_510b

    ld bc, $5312
    cp $08
    jr z, jr_004_510b

    ld bc, $5394
    cp $09
    jr z, jr_004_510b

    ld bc, $5426

jr_004_510b:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    push af
    inc a
    ld [de], a
    pop af
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    cp $80
    jp z, Jump_004_4767

    ld d, a
    ld a, [hl]
    sub d
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, [hl]
    sbc d
    ld [hl], a
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    dec bc
    dec bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $8000
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b

Jump_004_54c8:
    ld a, [$d8e3]
    ld bc, $5144
    cp $01
    jr z, jr_004_550d

    ld bc, $5156
    cp $02
    jr z, jr_004_550d

    ld bc, $5178
    cp $03
    jr z, jr_004_550d

    ld bc, $51aa
    cp $04
    jr z, jr_004_550d

    ld bc, $51ec
    cp $05
    jr z, jr_004_550d

    ld bc, $523e
    cp $06
    jr z, jr_004_550d

    ld bc, $52a0
    cp $07
    jr z, jr_004_550d

    ld bc, $5312
    cp $08
    jr z, jr_004_550d

    ld bc, $5394
    cp $09
    jr z, jr_004_550d

    ld bc, $5426

jr_004_550d:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    push af
    inc a
    ld [de], a
    pop af
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    cp $80
    jp z, Jump_004_4767

    ld d, a
    ld a, [hl]
    sub d
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, [hl]
    sbc d
    ld [hl], a
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc bc
    inc bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


Jump_004_5546:
    ld bc, $5559
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    dec [hl]
    dec [hl]
    ret


    ld a, [$fcff]
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    ld b, $00
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    add b
    add b

Jump_004_55a9:
    ld bc, $55ca
    call Call_004_4745
    ld a, [$c850]
    or a
    ret nz

    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    srl a
    srl a
    and $03
    ldh [$8e], a
    jp Jump_004_454b


    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    add b
    add b
    xor a
    ld [$d8d5], a
    ld [$d8d6], a
    jr jr_004_5605

Call_004_55f5:
Jump_004_55f5:
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

Jump_004_5605:
jr_004_5605:
    call Call_004_71ef
    ld a, b
    and c
    cp $ff
    jr nz, jr_004_5613

    xor a
    ld [$d8d7], a
    ret


jr_004_5613:
    ld hl, $d8d7
    set 0, [hl]
    ld a, b
    cp $ff
    jp nz, $56ec

    ld a, c
    rst $00
    ld de, $4057
    ld d, a
    ld l, a
    ld d, a
    adc b
    ld d, a
    and c
    ld d, a
    db $eb
    ld d, a
    add hl, de
    ld e, b
    inc h
    ld e, b
    ld b, d
    ld e, b
    ld b, e
    ld e, b
    ld h, b
    ld e, b
    sbc b
    ld e, b
    ret nc

    ld e, b
    ld l, b
    ld e, c
    jp nc, $0259

    ld e, d
    ld l, a
    ld e, d
    push bc
    ld e, d
    dec de
    ld e, e
    ld c, c
    ld e, e
    ld a, c
    ld e, e
    adc a
    ld e, e
    call nc, $db5b
    ld e, e
    inc d
    ld e, h
    ld l, l
    ld e, h
    add [hl]
    ld e, h
    rst $08
    ld e, h
    ld a, [de]
    ld e, l
    ld c, e
    ld e, l
    ld d, e
    ld e, l
    ld e, e
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld l, l
    ld e, [hl]
    add a
    ld e, [hl]
    adc a
    ld e, [hl]
    inc de
    ld e, a
    ld [hl], $5f
    ld d, d
    ld e, a
    ld e, h
    ld e, a
    ld h, a
    ld e, a
    sbc d
    ld e, a
    db $db
    ld e, a
    ld [bc], a
    ld h, b
    ld h, h
    ld h, b
    sub e
    ld h, b
    ldh [$61], a
    ld a, [hl-]
    ld h, d
    ld d, e
    ld h, d
    xor e
    ld h, d
    db $dd
    ld h, d
    ld [hl-], a
    ld h, e
    ld c, a
    ld h, e
    cp e
    ld h, e
    add $63
    ld bc, $3f64
    ld h, h
    and a
    ld h, h
    jp nz, $ab64

    ld h, l
    jr jr_004_5700

    jr nz, @+$68

    jr z, @+$68

    ld [hl-], a
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    sbc l
    ld h, [hl]
    cp l
    ld h, [hl]
    inc hl
    ld h, a
    ld l, a
    ld h, a
    or c
    ld h, a
    db $fd
    ld h, a
    ld [hl+], a
    ld l, b
    ld c, l
    ld l, b
    ld h, [hl]
    ld l, b
    ld a, a
    ld l, b
    sbc b
    ld l, b
    and c
    ld l, b
    cp d
    ld l, b
    rst $10
    ld l, b
    dec bc
    ld l, c
    ld d, a
    ld l, c
    ld l, h
    ld l, c
    xor c
    ld l, c
    ld h, c
    ld l, d
    adc $6a
    ld a, [$3a6a]
    ld l, e
    ld [hl], e
    ld l, e
    and b
    ld l, e
    rst $18
    ld l, e
    ld d, [hl]
    ld l, l
    add h
    ld l, l
    sub e
    ld l, l
    ld h, h
    ld l, a
    adc c
    ld l, a
    sbc e
    ld l, a
    ei
    ld l, a
    jr c, @+$72

    ld e, e
    ld [hl], b
    ld a, a
    ld [hl], b
    push de
    ld [hl], b
    jp nc, $2171

    rst $10
    ret c

    set 1, [hl]
    ld a, c
    ld [$d8d9], a
    ld a, b
    ld [$d8da], a
    ret


    ld a, [$d8d7]
    bit 1, a
    ret z

jr_004_5700:
    ld hl, $d8d7
    res 1, [hl]
    ld a, [$d8d9]
    ld l, a
    ld a, [$d8da]
    ld h, a
    call $0ad9
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call $26ae
    jp nz, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call $26ae
    jp z, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    call $26a6
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    call $26a0
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c8ef], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c8f0], a
    ld a, b
    ld [$c8f1], a
    ld hl, $c8eb
    set 4, [hl]
    xor a
    ld [$c905], a
    ld a, [$c8ef]
    cp $09
    ret z

    cp $0a
    ret z

    ld a, $59
    call $1b2c
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$da03], a
    ld a, b
    ld [$da04], a
    xor a
    ld [$da02], a
    ld hl, $c8eb
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $01
    ld [$da09], a
    ret


    ld a, [$c8eb]
    bit 0, a
    ret z

    ld hl, $c915
    inc [hl]
    ret


    ld a, [$c8eb]
    bit 0, a
    ret nz

    ld hl, $ffff
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ret


    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8db], a
    ld hl, $d8d7
    set 2, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dc], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dd], a
    ld a, b
    ld [$d8de], a
    ld hl, $d8d7
    set 3, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dc], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8df], a
    ld a, b
    ld [$d8e0], a
    ld hl, $d8d7
    set 3, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    or a
    jr nz, jr_004_5942

    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef

Jump_004_58fa:
    ld a, c
    or a
    jr nz, jr_004_590d

    ld a, $00
    ldh [$8d], a
    ld a, $00
    ldh [$8f], a
    ld a, $00
    ldh [$8e], a
    jp Jump_004_55f5


jr_004_590d:
    cp $01
    jr nz, jr_004_5920

    ld a, $20
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    ld a, $01
    ldh [$8e], a
    jp Jump_004_55f5


jr_004_5920:
    cp $02
    jr nz, jr_004_5933

    ld a, $00
    ldh [$8d], a
    ld a, $02
    ldh [$8f], a
    ld a, $02
    ldh [$8e], a
    jp Jump_004_55f5


jr_004_5933:
    ld a, $00
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    ld a, $03
    ldh [$8e], a
    jp Jump_004_55f5


jr_004_5942:
    dec a
    swap a
    add a
    ld hl, $d7d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    or a
    jr nz, jr_004_5996

    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    jr jr_004_59b9

jr_004_5996:
    dec a
    swap a
    add a
    ld hl, $d7d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    add hl, bc

jr_004_59b9:
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, [$c925]
    cp c
    jp nz, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c96d], a
    ld a, b
    ld [$c96e], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $03
    call $1688
    ld hl, $c88f
    inc [hl]
    xor a
    ld [$d8d7], a
    ld hl, $c8eb
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dc], a
    ld hl, $ff92
    or a
    jr z, jr_004_5a99

    dec a
    swap a
    add a
    ld hl, $d7ea
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_004_5a99:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    ld [$d8dd], a
    ld a, b
    ld [$d8de], a
    ld hl, $d8d7
    set 3, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dc], a
    ld hl, $ff95
    or a
    jr z, jr_004_5aef

    dec a
    swap a
    add a
    ld hl, $d7ec
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_004_5aef:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    ld [$d8df], a
    ld a, b
    ld [$d8e0], a
    ld hl, $d8d7
    set 3, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, [hl]
    cp c
    jp nz, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    call $2518
    call $25f1
    ret


    ld a, [$c968]
    cp $2f
    jr nz, jr_004_5c04

    ld a, [$c925]
    cp $04
    jr z, jr_004_5bed

    cp $05
    jr nz, jr_004_5c04

jr_004_5bed:
    ld hl, $9380
    ld de, $9360
    ld b, $20
    call Call_004_5c05
    ld hl, $9600
    ld de, $9620
    ld b, $20
    call Call_004_5c05
    ret


jr_004_5c04:
    ret


Call_004_5c05:
jr_004_5c05:
    di
    call $1aa6
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    ei
    inc de
    dec b
    jr nz, jr_004_5c05

    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$da12], a
    ld a, b
    ld [$da13], a
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_004_5c36:
    ld a, [de]
    or a
    jr z, jr_004_5c48

    inc c
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_004_5c36

    ld c, $13

jr_004_5c48:
    ld a, c
    ld [$da14], a
    ld hl, $1402
    rst $10
    ld a, [$ca8d]
    cp $03
    jr z, jr_004_5c68

    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$da14]
    ld [hl], a
    ld hl, $ca8d
    inc [hl]

jr_004_5c68:
    ld hl, $0103
    rst $10
    ret


    ld a, [$d8d7]
    bit 4, a
    jp z, Jump_004_55f5

    ld a, [$d8d5]
    sub $01
    ld [$d8d5], a
    ld a, [$d8d6]
    sbc $00
    ld [$d8d6], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld hl, $d8e9
    ld a, c
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], c
    inc hl
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $d8d7
    set 4, [hl]
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld hl, $d8e9
    ld a, c
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], c
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $d8d7
    set 4, [hl]
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld hl, $d8e9
    ld a, c
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $d8d7
    set 4, [hl]
    jp Jump_004_55f5


    ld hl, $d8d7
    set 5, [hl]
    jp Jump_004_55f5


    ld hl, $d8d7
    res 5, [hl]
    jp Jump_004_55f5


    ld a, [$d9ce]
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$d9cd]
    add b
    ld b, a
    add a
    add b
    ld hl, $00e0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$da03], a
    ld a, h
    ld [$da04], a
    inc hl
    ld a, l
    ld [$da05], a
    ld a, h
    ld [$da06], a
    inc hl
    ld a, l
    ld [$da07], a
    ld a, h
    ld [$da08], a
    ld a, $02
    ld [$da02], a
    ld a, [$d9ce]
    cp $09
    jr nz, jr_004_5db9

    ld hl, $01e1
    ld a, l
    ld [$da03], a
    ld a, h
    ld [$da04], a
    ld hl, $01e2
    ld a, l
    ld [$da05], a
    ld a, h
    ld [$da06], a
    ld hl, $01e3
    ld a, l
    ld [$da07], a
    ld a, h
    ld [$da08], a

jr_004_5db9:
    ld a, [$d9ce]
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$d9cd]
    add b
    add a
    ld hl, $5e22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$d7ca], a
    ld a, [hl]
    ld [$d7cb], a
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    call Call_004_5e10
    ld [$d7ce], a
    ld a, $01
    ld [$d7cf], a
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    call Call_004_5e10
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    call Call_004_5e10
    ld [$d7d0], a
    ld a, $01
    ld [$d7d1], a
    ret


Call_004_5e10:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da18]
    add $10
    ret


    dec bc
    nop
    ld a, [bc]
    nop
    ld de, $0b00
    nop
    ld a, [bc]
    nop
    jp c, $0b01

    nop
    ld a, [bc]
    nop
    dec bc
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    rrca
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    inc c
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    inc de
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    inc d
    nop
    ld [$0800], sp
    nop
    ld [$2100], sp
    db $eb
    ret z

    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $01
    ld [$da09], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    call $1b2c
    jp Jump_004_55f5


    ld hl, $d8d7
    set 6, [hl]
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $caea
    push bc
    call $2229
    pop bc
    ld b, $08

jr_004_5ec8:
    ld a, [hl+]
    cp $00
    jr z, jr_004_5efb

    cp $01
    jr z, jr_004_5efb

    cp $02
    jr z, jr_004_5efb

    cp $03
    jr z, jr_004_5efb

    cp $04
    jr z, jr_004_5efb

    cp $05
    jr z, jr_004_5efb

    cp $44
    jr z, jr_004_5efb

    cp $5c
    jr z, jr_004_5efb

    cp $5d
    jr z, jr_004_5efb

    cp $5e
    jr z, jr_004_5efb

    cp $5f
    jr z, jr_004_5efb

    dec b
    jr nz, jr_004_5ec8

    jp Jump_004_55f5


jr_004_5efb:
    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d3]
    cp $06
    jr nc, jr_004_5f1f

    ld hl, $0c01
    rst $10
    ret


jr_004_5f1f:
    cp $20
    jr nc, jr_004_5f28

    ld hl, $0d01
    rst $10
    ret


jr_004_5f28:
    cp $40
    jr nc, jr_004_5f31

    ld hl, $0e01
    rst $10
    ret


jr_004_5f31:
    ld hl, $0f01
    rst $10
    ret


    ld a, [$d8e1]
    ld hl, $cac1
    call $2229
    ld [hl], $00
    ld hl, $0105
    rst $10
    ld hl, $0103
    rst $10
    call $2518
    call $25f1
    jp Jump_004_55f5


    ld a, $03
    call $1688
    ld hl, $c88f
    inc [hl]
    ret


    ld hl, $0109
    rst $10
    ld hl, $0103
    rst $10
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld hl, $cac1
    ld b, $14
    ld c, $00

jr_004_5f7e:
    ld a, [hl]
    or a
    jr z, jr_004_5f8e

    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    dec b
    jr nz, jr_004_5f7e

jr_004_5f8e:
    ld a, c
    cp $14
    jp c, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$da12], a
    ld a, b
    ld [$da13], a
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_004_5fbc:
    ld a, [de]
    or a
    jr z, jr_004_5fce

    inc c
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_004_5fbc

    jr jr_004_5fda

jr_004_5fce:
    ld a, c
    ld [$da14], a
    ld hl, $1402
    rst $10
    ld hl, $0103
    rst $10

jr_004_5fda:
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld hl, $ca51
    ld b, $14

jr_004_5ff3:
    ld a, [hl]
    or a
    jr z, jr_004_6000

    cp $ff
    jr z, jr_004_6000

    inc hl
    dec b
    jr nz, jr_004_5ff3

    ret


jr_004_6000:
    ld [hl], c
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld hl, $cac1
    ld b, $14
    ld c, $00

jr_004_6019:
    push hl
    ld a, [hl]
    or a
    jr z, jr_004_604c

    cp $01
    jr z, jr_004_604c

    ld a, l
    add $4b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $0a
    jr c, jr_004_604c

    ld a, l
    add $b6
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld de, $605c
    ld b, $08

jr_004_603c:
    ld a, [de]
    cp [hl]
    jr nz, jr_004_604c

    inc de
    inc hl
    dec b
    jr nz, jr_004_603c

    pop hl
    call Call_004_71ef
    jp Jump_004_7212


jr_004_604c:
    pop hl
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    dec b
    jr nz, jr_004_6019

    jp Jump_004_55f5


    ld h, a
    add l
    ld b, d
    adc l
    ld h, $f0
    ldh a, [$f0]
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld hl, $ca51
    ld b, $14
    ld c, $00

jr_004_607b:
    ld a, [hl+]
    or a
    jr z, jr_004_6087

    cp $ff
    jr z, jr_004_6087

    inc c
    dec b
    jr nz, jr_004_607b

jr_004_6087:
    ld a, c
    cp $14
    jp c, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $caca
    call $223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    add a
    ld hl, $60f4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push hl
    ld d, a
    ld hl, $0107
    rst $10
    ld a, d
    add a
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d8d7
    set 1, [hl]
    ld a, c
    ld [$d8d9], a
    ld a, b
    ld [$d8da], a
    ret


    ld [$3e61], sp
    ld h, c
    ld [hl], h
    ld h, c
    ld a, $61
    ld [$7461], sp
    ld h, c
    ld [hl], h
    ld h, c
    ld [$3e61], sp
    ld h, c
    xor d
    ld h, c
    ld [hl], l
    nop
    ld a, c
    nop
    ld a, l
    nop
    add c
    nop
    add l
    nop
    adc c
    nop
    adc l
    nop
    sub c
    nop
    sub l
    nop
    sbc c
    nop
    sbc l
    nop
    and c
    nop
    and l
    nop
    xor c
    nop
    xor l
    nop
    or c
    nop
    or l
    nop
    cp c
    nop
    cp l
    nop
    pop bc
    nop
    push bc
    nop
    ret


    nop
    call $d100
    nop
    push de
    nop
    reti


    nop
    sbc $00
    halt
    ld a, d
    nop
    ld a, [hl]
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    nop
    adc [hl]
    nop
    sub d
    nop
    sub [hl]
    nop
    sbc d
    nop
    sbc [hl]
    nop
    and d
    nop
    and [hl]
    nop
    xor d
    nop
    xor [hl]
    nop
    or d
    nop
    or [hl]
    nop
    cp d
    nop
    cp [hl]
    nop
    jp nz, $c600

    nop
    jp z, $ce00

    nop
    jp nc, $d600

    nop
    jp c, $df00

    nop
    ld [hl], a
    nop
    ld a, e
    nop
    ld a, a
    nop
    add e
    nop
    add a
    nop
    adc e
    nop
    adc a
    nop
    sub e
    nop
    sub a
    nop
    sbc e
    nop
    sbc a
    nop
    and e
    nop
    and a
    nop
    xor e
    nop
    xor a
    nop
    or e
    nop
    or a
    nop
    cp e
    nop
    cp a
    nop
    jp $c700


    nop
    rlc b
    rst $08
    nop
    db $d3
    nop
    rst $10
    nop
    db $db
    nop
    ldh [rP1], a
    ld a, b
    nop
    ld a, h
    nop
    add b
    nop
    add h
    nop
    adc b
    nop
    adc h
    nop
    sub b
    nop
    sub h
    nop
    sbc b
    nop
    sbc h
    nop
    and b
    nop
    and h
    nop
    xor b
    nop
    xor h
    nop
    or b
    nop
    or h
    nop
    cp b
    nop
    cp h
    nop
    ret nz

    nop
    call nz, $c800
    nop
    call z, $d000
    nop
    call nc, $d800
    nop
    call c, $e100
    nop
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    add a
    add a
    add c
    ld c, a
    ld a, [$d9df]
    dec a
    add c
    ld hl, $620d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$d9e0], a
    jp Jump_004_55f5


    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0201
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0200
    nop
    nop
    nop
    ld bc, $0002
    nop
    ld bc, $0100
    ld bc, $0101
    ld [bc], a
    ld bc, $0102
    nop
    ld bc, $0001
    ld bc, $fa00
    push de
    ret c

    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    inc [hl]
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $cb19
    push bc
    call $2229
    pop bc
    ld a, [hl+]
    sub $64
    ld a, [hl]
    sbc $00
    jp c, Jump_004_55f5

    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld b, $00
    ld c, $00

jr_004_62bf:
    push bc
    ld hl, $ca94
    ld a, b
    call $267e
    pop bc
    jr z, jr_004_62cb

    inc c

jr_004_62cb:
    inc b
    ld a, b
    cp $f0
    jr nz, jr_004_62bf

    ld a, c
    cp $64
    jp c, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $caca
    push bc
    call $2229
    pop bc
    ld a, [hl]
    cp $af
    jp nz, Jump_004_55f5

    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    ld e, $00
    call $241a
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $caea
    push bc
    call $2229
    pop bc
    ld b, $08

jr_004_6388:
    ld a, [hl+]
    cp $0f
    jr z, jr_004_63a3

    cp $10
    jr z, jr_004_63a3

    cp $45
    jr z, jr_004_63a3

    cp $11
    jr z, jr_004_63a3

    cp $5a
    jr z, jr_004_63a3

    dec b
    jr nz, jr_004_6388

    jp Jump_004_55f5


jr_004_63a3:
    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld hl, $0109
    rst $10
    ld hl, $0103
    rst $10
    jp Jump_004_55f5


    ld a, [$cab4]
    add a
    ld hl, $63ef
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$da03], a
    ld a, [hl]
    ld [$da04], a
    ld a, $00
    ld [$da02], a
    ld hl, $c8eb
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $01
    ld [$da09], a
    ret


    dec a
    ld bc, $013e
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0142
    ld b, e
    ld bc, HeaderNewLicenseeCode
    ld b, h
    ld bc, $d5fa
    ret c

    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld hl, $d9cf
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld hl, $ca51
    ld b, $14

jr_004_6424:
    ld a, [hl]
    or a
    jr z, jr_004_6432

    cp $ff
    jr z, jr_004_6432

    inc hl
    dec b
    jr nz, jr_004_6424

    jr jr_004_6433

jr_004_6432:
    ld [hl], c

jr_004_6433:
    ld l, c
    ld h, $08
    ld de, $c180
    call $097a
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $caea
    push bc
    call $2229
    pop bc
    ld b, $08

jr_004_6478:
    ld a, [hl+]
    cp $84
    jr z, jr_004_648f

    cp $85
    jr z, jr_004_648f

    cp $86
    jr z, jr_004_648f

    cp $87
    jr z, jr_004_648f

    dec b
    jr nz, jr_004_6478

    jp Jump_004_55f5


jr_004_648f:
    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    call $0ad9
    jp Jump_004_55f5


    ld a, [$ca40]
    ld [$cac0], a
    ld hl, $1604
    rst $10
    ld hl, $c8eb
    res 4, [hl]
    res 0, [hl]
    xor a
    ld [$c905], a
    ld a, [$cac0]
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
    call Call_004_6583
    ld a, [$cac0]
    ld hl, $cacc
    call $223b
    ld a, [hl]
    ld de, $c190
    call Call_004_6598
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


Call_004_6583:
    or a
    ret z

    push af

jr_004_6586:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_004_6586

    dec de
    ld a, $a2
    ld [de], a
    inc de
    pop af
    ld l, e
    ld h, d
    call $09a4
    ret


Call_004_6598:
    push af

jr_004_6599:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_004_6599

    dec de
    pop af
    and $01
    add $a7
    ld [de], a
    inc de
    ld a, $f0
    ld [de], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c96d], a
    ld a, b
    ld [$c96e], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld hl, $c8eb
    set 5, [hl]
    xor a
    ld [$c905], a
    xor a
    ld [$d8d7], a
    ld hl, $c8eb
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld hl, $d8d8
    set 0, [hl]
    jp Jump_004_55f5


    ld hl, $d8d8
    set 1, [hl]
    jp Jump_004_55f5


    ld a, $04
    call $1688
    ld hl, $c88e
    inc [hl]
    ret


    ld a, $00
    ld hl, $caca
    call $2229
    ld l, [hl]
    ld h, $05
    ld de, $c180
    call $097a
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld d, c
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld hl, $cac1
    ld b, $14
    ld c, $00

jr_004_6671:
    push hl
    ld a, [hl]
    or a
    jr z, jr_004_668d

    cp $01
    jr z, jr_004_668d

    ld a, l
    add $09
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp d
    jr nz, jr_004_668d

    pop hl
    call Call_004_71ef
    jp Jump_004_7212


jr_004_668d:
    pop hl
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    dec b
    jr nz, jr_004_6671

    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$c8b5]
    ld [$c8b6], a
    ld a, c
    call $1ae1
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c8f7], a
    ld a, b
    ld [$c8f8], a
    ld a, [$c968]
    ld c, a
    ld a, [$c969]
    ld b, a
    ld a, c
    ld [$c8fb], a
    ld a, b
    ld [$c8fc], a
    ldh a, [$92]
    ld c, a
    ldh a, [$93]
    ld b, a
    ld a, c
    ld [$c8fd], a
    ld a, b
    ld [$c8fe], a
    ldh a, [$95]
    ld c, a
    ldh a, [$96]
    ld b, a
    ld a, c
    ld [$c8ff], a
    ld a, b
    ld [$c900], a
    ldh a, [$8e]
    ld [$c901], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c902], a
    jp Jump_004_55f5


    ld a, [$c8fb]
    ld c, a
    ld a, [$c8fc]
    ld b, a
    ld a, c
    ld [$c96d], a
    ld a, b
    ld [$c96e], a
    ld a, [$c8fd]
    ld c, a
    ld a, [$c8fe]
    ld b, a
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [$c8ff]
    ld c, a
    ld a, [$c900]
    ld b, a
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $03
    call $1688
    ld hl, $c88f
    inc [hl]
    xor a
    ld [$d8d7], a
    ld hl, $c8eb
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$c901]
    ldh [$8e], a
    call Call_004_454b
    ld a, [$c902]
    dec a
    swap a
    add a
    ld hl, $d7d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [$8e]
    add $02
    and $03
    ld [hl], a
    ld a, [$c8f0]
    ld c, a
    ld a, [$c8f1]
    ld b, a
    ld a, c
    add $09
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $d8d7
    set 1, [hl]
    ld a, c
    ld [$d8d9], a
    ld a, b
    ld [$d8da], a
    ld hl, $c8eb
    set 0, [hl]
    ret


    ld hl, $cab9
    ld a, [hl+]
    ld [$ca8d], a
    ld a, [hl+]
    ld [$ca8e], a
    ld a, [hl+]
    ld [$ca8f], a
    ld a, [hl+]
    ld [$ca90], a
    ld a, [hl+]
    ld [$ca91], a
    ld a, [hl+]
    ld [$ca92], a
    ld a, [hl+]
    ld [$ca93], a
    ld a, [$ca8e]
    call Call_004_67f1
    ld a, [$ca8f]
    call Call_004_67f1
    ld a, [$ca90]
    call Call_004_67f1
    ld hl, $0105
    rst $10
    ld hl, $0109
    rst $10
    ld hl, $0103
    rst $10
    jp Jump_004_55f5


Call_004_67f1:
    cp $ff
    ret z

    ld hl, $cac1
    call $223b
    ld [hl], $02
    ret


    ld a, [$ddb4]
    ld hl, $ddce
    and [hl]
    ld hl, $dde8
    and [hl]
    ld hl, $de02
    and [hl]
    cp $ff
    jp z, Jump_004_55f5

    ld a, [$d8d5]
    sub $01
    ld [$d8d5], a
    ld a, [$d8d6]
    sbc $00
    ld [$d8d6], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld c, $02

Jump_004_6838:
    or a
    jp z, Jump_004_58fa

    dec a
    swap a
    add a
    ld hl, $d7d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld c, $00
    jp Jump_004_6838


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld c, $01
    jp Jump_004_6838


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld c, $03
    jp Jump_004_6838


    ld a, [$c8b6]
    call $1ae1
    jp Jump_004_55f5


    ld a, [$c846]
    and $f0
    jp nz, Jump_004_55f5

    ld a, [$d8d5]
    sub $01
    ld [$d8d5], a
    ld a, [$d8d6]
    sbc $00
    ld [$d8d6], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8db], a
    ld hl, $d8d8
    set 2, [hl]
    ret


    ld a, [$c968]
    ld c, a
    ld a, [$c969]
    ld b, a
    ld a, c
    ld [$c8fb], a
    ld a, b
    ld [$c8fc], a
    ldh a, [$92]
    ld c, a
    ldh a, [$93]
    ld b, a
    ld a, c
    ld [$c8fd], a
    ld a, b
    ld [$c8fe], a
    ldh a, [$95]
    ld c, a
    ldh a, [$96]
    ld b, a
    ld a, c
    ld [$c8ff], a
    ld a, b
    ld [$c900], a
    ldh a, [$8e]
    ld [$c901], a
    jp Jump_004_55f5


    ld a, [$c8fb]
    ld c, a
    ld a, [$c8fc]
    ld b, a
    ld a, c
    ld [$c96d], a
    ld a, b
    ld [$c96e], a
    ld a, [$c8fd]
    ld c, a
    ld a, [$c8fe]
    ld b, a
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [$c8ff]
    ld c, a
    ld a, [$c900]
    ld b, a
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $03
    call $1688
    ld hl, $c88f
    inc [hl]
    xor a
    ld [$d8d7], a
    ld hl, $c8eb
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$c901]
    ldh [$8e], a
    call Call_004_454b
    ld hl, $d7f8
    ldh a, [$8e]
    add $02
    and $03
    ld [hl], a
    jp Jump_004_55f5


    ld b, $00
    ld c, $00

jr_004_6970:
    push bc
    ld hl, $ca94
    ld a, b
    call $267e
    pop bc
    jr z, jr_004_697c

    inc c

jr_004_697c:
    inc b
    ld a, b
    cp $f0
    jr nz, jr_004_6970

    push bc
    ld a, c
    ld hl, $c180
    call $09a4
    pop bc
    ld hl, $699d
    ld a, c
    ld e, $ff

jr_004_6991:
    cp [hl]
    inc hl
    inc e
    jr nc, jr_004_6991

    ld a, e
    ld [$d8e1], a
    jp Jump_004_55f5


    rlca
    db $10
    ld a, [de]
    ld h, $32
    ld b, a
    ld h, h
    add e
    and c
    ret z

    rst $10
    rst $38
    ld bc, $0000
    ld a, [$ca8e]
    call $6a4e
    ld a, [$ca8f]
    call $6a4e
    ld a, [$ca90]
    call $6a4e
    ld l, c
    ld h, b
    inc hl
    ld a, $14
    call $1e0d
    ld a, l
    cp $07
    jr c, jr_004_69cd

    ld a, $07

jr_004_69cd:
    ld hl, $6a3c
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call $12d0
    pop hl
    push hl
    ld a, [$c899]
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$da03], a
    ld a, h
    ld [$da04], a
    pop hl
    push hl
    call $12d0
    pop hl
    push hl
    ld a, [$c899]
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$da05], a
    ld a, h
    ld [$da06], a
    pop hl
    push hl
    call $12d0
    pop hl
    push hl
    ld a, [$c899]
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$da07], a
    ld a, h
    ld [$da08], a
    pop hl
    ld a, $02
    ld [$da02], a
    ld hl, $c8eb
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $02
    ld [$da09], a
    ret


    ld h, b
    ld bc, $0170
    add b
    ld bc, $0190
    and b
    ld bc, $01b0
    ret nz

    ld bc, $01d0
    ret nc

    ld bc, $fffe
    ret z

    push bc
    ld hl, $cb0c
    call $223b
    pop bc
    ld a, [hl]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ret


    ldh a, [$95]
    and $f0
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, [$d7ec]
    and $f0
    ld e, a
    ld a, [$d7ed]
    ld d, a
    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, h
    or l
    pop hl
    jr z, jr_004_6a8d

    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, $00
    jr c, jr_004_6abc

    ld a, $02
    jr jr_004_6abc

jr_004_6a8d:
    ldh a, [$92]
    and $f0
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, [$d7ea]
    and $f0
    ld e, a
    ld a, [$d7eb]
    ld d, a
    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, h
    or l
    pop hl
    jr z, jr_004_6ab9

    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, $03
    jr c, jr_004_6abc

    ld a, $01
    jr jr_004_6abc

jr_004_6ab9:
    jp Jump_004_55f5


jr_004_6abc:
    ldh [$8e], a
    call Call_004_454b
    ld hl, $d7d8
    ldh a, [$8e]
    add $02
    and $03
    ld [hl], a
    jp Jump_004_55f5


    ld a, [$c899]
    ld b, a
    ld a, $25
    call $1dfb
    inc a
    ld c, a
    ld hl, $ca51
    ld b, $14

jr_004_6ade:
    ld a, [hl]
    or a
    jr z, jr_004_6aed

    cp $ff
    jr z, jr_004_6aed

    inc hl
    dec b
    jr nz, jr_004_6ade

    jp Jump_004_55f5


jr_004_6aed:
    ld [hl], c
    ld l, c
    ld h, $08
    ld de, $c180
    call $097a
    jp Jump_004_55f5


    ld hl, $ca51
    ld b, $14
    ld c, $00

jr_004_6b01:
    ld a, [hl]
    or a
    jr z, jr_004_6b0e

    cp $ff
    jr z, jr_004_6b0e

    inc hl
    inc c
    dec b
    jr nz, jr_004_6b01

jr_004_6b0e:
    ld a, c
    ld [$d8e1], a
    or a
    jp z, Jump_004_55f5

    ld a, [$c899]
    ld b, a
    ld a, c
    call $1dfb
    ld hl, $ca51
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld [hl], $ff
    ld l, c
    ld h, $08
    ld de, $c180
    call $097a
    ld hl, $0305
    rst $10
    jp Jump_004_55f5


    ld a, [$ca4b]
    ld l, a
    ld a, [$ca4c]
    ld h, a
    ld a, [$ca4d]
    ld e, a
    ld a, $0a
    call $1e1e
    ld a, h
    or l
    or e
    ld [$d8e1], a
    or a
    jp z, Jump_004_55f5

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, e
    ldh [$d7], a
    ld hl, $c180
    call $09c7
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ldh a, [$d7]
    ld e, a
    call $2424
    jp Jump_004_55f5


    ld a, [$c899]
    ld b, a
    ld a, $05
    call $1dfb
    add $13
    ld c, a
    ld hl, $ca51
    ld b, $14

jr_004_6b84:
    ld a, [hl]
    or a
    jr z, jr_004_6b93

    cp $ff
    jr z, jr_004_6b93

    inc hl
    dec b
    jr nz, jr_004_6b84

    jp Jump_004_55f5


jr_004_6b93:
    ld [hl], c
    ld l, c
    ld h, $08
    ld de, $c180
    call $097a
    jp Jump_004_55f5


    ld a, [$c93a]
    dec a
    dec a
    ld b, a
    ld a, [$c939]
    cp b
    jr z, jr_004_6bb9

    add $13
    ld [$c939], a
    cp b
    jr c, jr_004_6bb9

    ld a, b
    dec a
    ld [$c939], a

jr_004_6bb9:
    ld a, $01
    ld [$c96c], a
    ld a, $00
    ld [$c96d], a
    ld a, $80
    ld [$c96e], a
    ld hl, $c8eb
    set 5, [hl]
    xor a
    ld [$c905], a
    xor a
    ld [$d8d7], a
    ld hl, $c8eb
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$d8e1], a
    cp $ff
    jp z, Jump_004_55f5

    ld [$cac0], a
    ld hl, $cb13
    call $223b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb17
    call Call_004_6d40
    jr c, jr_004_6c47

    ld hl, $cb19
    call Call_004_6d40
    jr c, jr_004_6c47

    ld hl, $cb1b
    call Call_004_6d40
    jr c, jr_004_6c47

    ld hl, $cb1d
    call Call_004_6d35
    jr c, jr_004_6c47

    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6c47

    ld hl, $0014
    ld a, [$cac0]
    call $23e9
    ld a, $00
    jp Jump_004_6d0a


jr_004_6c47:
    ld a, [$cac0]
    ld hl, $cb17
    call $223b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb19
    call Call_004_6d40
    jr c, jr_004_6c81

    ld hl, $cb1b
    call Call_004_6d40
    jr c, jr_004_6c81

    ld hl, $cb1d
    call Call_004_6d35
    jr c, jr_004_6c81

    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6c81

    ld hl, $0014
    ld a, [$cac0]
    call $2403
    ld a, $01
    jp Jump_004_6d0a


jr_004_6c81:
    ld a, [$cac0]
    ld hl, $cb19
    call $223b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb1b
    call Call_004_6d40
    jr c, jr_004_6cb2

    ld hl, $cb1d
    call Call_004_6d35
    jr c, jr_004_6cb2

    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6cb2

    ld hl, $0014
    ld a, [$cac0]
    call $2307
    ld a, $02
    jr jr_004_6d0a

jr_004_6cb2:
    ld a, [$cac0]
    ld hl, $cb1b
    call $223b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb1d
    call Call_004_6d35
    jr c, jr_004_6cdb

    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6cdb

    ld hl, $0014
    ld a, [$cac0]
    call $2321
    ld a, $03
    jr jr_004_6d0a

jr_004_6cdb:
    ld a, [$cac0]
    ld hl, $cb1d
    call $223b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    ld e, l
    ld d, h
    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6cff

    ld hl, $0014
    ld a, [$cac0]
    call $233b
    ld a, $04
    jr jr_004_6d0a

jr_004_6cff:
    ld hl, $0014
    ld a, [$cac0]
    call $2355
    ld a, $05

Jump_004_6d0a:
jr_004_6d0a:
    add $35
    ld l, a
    ld h, $02
    ld de, $c190
    call $097a
    ld a, [$cac0]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    jp Jump_004_55f5


Call_004_6d29:
    call Call_004_6d4a
    add hl, hl
    add hl, hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ret


Call_004_6d35:
    call Call_004_6d4a
    add hl, hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ret


Call_004_6d40:
    call Call_004_6d4a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ret


Call_004_6d4a:
    push de
    ld a, [$cac0]
    call $223b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$da03], a
    ld a, b
    ld [$da04], a
    xor a
    ld [$da02], a
    ld hl, $c8eb
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $03
    ld [$da09], a
    ret


    ld hl, $c8eb
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $03
    ld [$da09], a
    ret


    ld a, [$d9cf]
    bit 7, a
    jr nz, jr_004_6d9e

    ld hl, $d9cf
    inc [hl]

jr_004_6d9e:
    call Call_004_6eb3
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    ld a, l
    ld [$d9d1], a
    ld a, h
    ld [$d9d2], a
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    ld a, l
    ld [$d9d3], a
    ld a, h
    ld [$d9d4], a
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    ld a, l
    ld [$d9d5], a
    ld a, h
    ld [$d9d6], a
    call Call_004_6eb3
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    ld a, l
    ld [$d9d9], a
    ld a, h
    ld [$d9da], a
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    ld a, l
    ld [$d9db], a
    ld a, h
    ld [$d9dc], a
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    ld a, l
    ld [$d9dd], a
    ld a, h
    ld [$d9de], a
    call Call_004_6eb3
    ld hl, $d7ca
    call Call_004_6e41
    ld hl, $6f44
    ld a, [$d9cf]
    cp $09
    jr c, jr_004_6e1a

    ld hl, $6f54

jr_004_6e1a:
    push hl
    call $12d0
    ld a, [$c899]
    and $0f
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$d9d0], a
    xor a
    ld [$d9cd], a
    ld a, [$d9d0]
    ld l, a
    ld h, $08
    ld de, $c180
    call $097a
    jp Jump_004_55f5


Call_004_6e41:
    push hl
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    push hl
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    call Call_004_6ea9
    pop hl
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [$da02]
    or a
    ret z

    push hl
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    call Call_004_6ea9
    pop hl
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [$da02]
    cp $01
    ret z

    push hl
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    call Call_004_6ea9
    pop hl
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ret


Call_004_6ea9:
    ld hl, $1401
    rst $10
    ld a, [$da18]
    add $10
    ret


Call_004_6eb3:
    ld b, $00
    ld a, [$ca8e]
    call Call_004_6f05
    ld a, [$ca8f]
    call Call_004_6f05
    ld a, [$ca90]
    call Call_004_6f05
    ld a, b
    ld hl, $0209
    cp $04
    jr c, jr_004_6f13

    ld hl, $0d12
    cp $0a
    jr c, jr_004_6f13

    ld hl, $2112
    cp $10
    jr c, jr_004_6f13

    ld hl, $3912
    cp $16
    jr c, jr_004_6f13

    ld hl, $5112
    cp $1c
    jr c, jr_004_6f13

    ld hl, $6912
    cp $22
    jr c, jr_004_6f13

    ld hl, $8112
    cp $28
    jr c, jr_004_6f13

    ld hl, $9d12
    cp $2e
    jr c, jr_004_6f13

    ld hl, $b512
    jr jr_004_6f13

Call_004_6f05:
    cp $ff
    ret z

    ld hl, $cb0c
    call $223b
    ld a, [hl]
    cp b
    ret c

    ld b, a
    ret


jr_004_6f13:
    ld a, $02
    ld [$da02], a
    call Call_004_6f35
    ld [$da03], a
    call Call_004_6f35
    ld [$da05], a
    call Call_004_6f35
    ld [$da07], a
    xor a
    ld [$da04], a
    ld [$da06], a
    ld [$da08], a
    ret


Call_004_6f35:
    push hl
    call $12d0
    ld a, [$c899]
    ld b, a
    ld a, l
    call $1dfb
    pop hl
    add h
    ret


    inc bc
    inc b
    ld b, $0c
    dec d
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec h
    ld a, [de]
    dec de
    inc e
    dec h
    dec c
    ld c, $0f
    db $10
    ld de, $1e12
    rra
    jr nz, jr_004_6f7f

    ld [hl+], a
    inc hl
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld a, [$d9d0]
    ld l, a
    ld h, $08
    ld de, $c180
    call $097a
    ld hl, $ca51
    ld b, $14

jr_004_6f75:
    ld a, [hl]
    or a
    jr z, jr_004_6f82

    cp $ff
    jr z, jr_004_6f82

    inc hl
    dec b

jr_004_6f7f:
    jr nz, jr_004_6f75

    ret


jr_004_6f82:
    ld a, [$d9d0]
    ld [hl], a
    jp Jump_004_55f5


    ld a, $07
    ld [$d951], a
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call $12c7
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $cb0d
    push bc
    call $2229
    ld a, [hl]
    push hl
    ld hl, $c190
    call $09a4
    pop hl
    pop bc
    push hl
    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    pop hl
    ld a, [hl-]
    dec a
    cp [hl]
    jp nc, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, [$ca40]
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
    jr nc, jr_004_7030

    call Call_004_71ef
    jp Jump_004_7212


jr_004_7030:
    ld e, $00
    call $2424
    jp Jump_004_55f5


    ld a, [$d8d3]
    cp $06
    jr nc, jr_004_7044

    ld hl, $0c02
    rst $10
    ret


jr_004_7044:
    cp $20
    jr nc, jr_004_704d

    ld hl, $0d02
    rst $10
    ret


jr_004_704d:
    cp $40
    jr nc, jr_004_7056

    ld hl, $0e02
    rst $10
    ret


jr_004_7056:
    ld hl, $0f02
    rst $10
    ret


    ld hl, $8da0
    ld b, $10
    ld a, $ff

jr_004_7062:
    call $1ab9
    dec b
    jr nz, jr_004_7062

    ld hl, $9800
    ld b, $00
    ld a, $da

jr_004_706f:
    call $1ab9
    call $1ab9
    call $1ab9
    call $1ab9
    dec b
    jr nz, jr_004_706f

    ret


    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $c300
    ld c, $10

jr_004_70a1:
    ld b, $14
    push hl

jr_004_70a4:
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
    jr nz, jr_004_70a4

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_004_70a1

    ld hl, $0103
    rst $10
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, [$ca8d]
    or a
    jp z, Jump_004_71c9

    ld a, $00
    ld hl, $cb0b
    call $224a
    or a
    jp nz, Jump_004_71cf

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
    jp nz, Jump_004_71cf

    ld a, $00
    ld hl, $cb17
    call $224f
    push bc
    ld a, $00
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
    jp nz, Jump_004_71cf

    ld a, [$ca8d]
    cp $01
    jp z, Jump_004_71c9

    ld a, $01
    ld hl, $cb0b
    call $224a
    or a
    jp nz, Jump_004_71cf

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
    jr nz, jr_004_71cf

    ld a, $01
    ld hl, $cb17
    call $224f
    push bc
    ld a, $01
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
    jr nz, jr_004_71cf

    ld a, [$ca8d]
    cp $02
    jr z, jr_004_71c9

    ld a, $02
    ld hl, $cb0b
    call $224a
    or a
    jp nz, Jump_004_71cf

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
    jr nz, jr_004_71cf

    ld a, $02
    ld hl, $cb17
    call $224f
    push bc
    ld a, $02
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
    jr nz, jr_004_71cf

Jump_004_71c9:
jr_004_71c9:
    call Call_004_71ef
    jp Jump_004_7212


Jump_004_71cf:
jr_004_71cf:
    jp Jump_004_55f5


    ld a, [$dd80]
    ld hl, $dd9a
    and [hl]
    cp $ff
    jp z, Jump_004_55f5

    ld a, [$d8d5]
    sub $01
    ld [$d8d5], a
    ld a, [$d8d6]
    sbc $00
    ld [$d8d6], a
    ret


Call_004_71ef:
    ld a, [$d8d3]
    cp $06
    jr nc, jr_004_71fb

    ld hl, $0c00
    rst $10
    ret


jr_004_71fb:
    cp $20
    jr nc, jr_004_7204

    ld hl, $0d00
    rst $10

jr_004_7203:
    ret


jr_004_7204:
    cp $40
    jr nc, jr_004_720d

    ld hl, $0e00
    rst $10
    ret


jr_004_720d:
    ld hl, $0f00
    rst $10
    ret


Jump_004_7212:
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, b
    push af
    srl b
    rr c
    pop af
    and $80
    or b
    ld b, a
    ld a, [$d8d5]
    ld l, a
    ld a, [$d8d6]
    ld h, a
    add hl, bc
    ld a, l
    ld [$d8d5], a
    ld a, h
    ld [$d8d6], a
    jp Jump_004_5605


    ld h, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    add e
    ld [hl], d
    sub h
    ld [hl], d
    and l
    ld [hl], d
    or [hl]
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    or h
    ld [hl], e
    sbc c
    ld [hl], h
    add d
    ld [hl], l
    ld l, e
    db $76
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    inc bc
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    ldh a, [rP1]
    inc bc
    jr nz, jr_004_7203

    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ldh a, [$f8]
    inc de
    nop
    add b
    ldh a, [$f8]
    dec c
    nop
    ldh a, [rP1]
    dec c
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    stop
    ldh a, [rP1]
    db $10
    jr nz, @-$06

    ld hl, sp+$11
    nop
    ld hl, sp+$00
    ld [de], a
    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    add sp, $01
    db $10
    ret z

    ldh a, [rSC]
    db $10
    ret z

    ld hl, sp+$03
    db $10
    ret z

    nop
    inc b
    db $10
    ret z

    ld [$1005], sp
    ret z

    db $10
    ld b, $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    add sp, $11
    db $10
    ret nc

    ldh a, [rNR12]
    db $10
    ret nc

    ld hl, sp+$13
    db $10
    ret nc

    nop
    inc d
    db $10
    ret nc

    ld [$1015], sp
    ret nc

    db $10
    ld d, $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ret c

    add sp, $21
    nop
    ret c

    ldh a, [rNR43]
    nop
    ret c

    ld hl, sp+$23
    nop
    ret c

    nop
    inc h
    nop
    ret c

    ld [$0025], sp
    ret c

    db $10
    ld h, $00
    ldh [$e0], a
    jr nc, jr_004_7337

    ldh [$e8], a
    ld sp, $e010
    ldh a, [$32]
    db $10
    ldh [$f8], a
    inc sp
    db $10
    ldh [rP1], a
    inc [hl]
    db $10

jr_004_7337:
    ldh [$08], a
    dec [hl]
    db $10
    ldh [rNR10], a
    ld [hl], $10
    add sp, -$20
    ld b, b
    db $10
    add sp, -$18
    ld b, c
    db $10
    add sp, -$10
    ld b, d
    db $10
    add sp, -$08
    ld b, e
    db $10
    add sp, $00
    ld b, h
    db $10
    add sp, $08
    ld b, l
    db $10
    add sp, $10
    ld b, [hl]
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ldh a, [$e8]
    ld d, c
    db $10
    ldh a, [$f0]
    ld d, d
    db $10
    ldh a, [$f8]
    ld d, e
    db $10
    ldh a, [rP1]
    ld d, h
    db $10
    ldh a, [$08]
    ld d, l
    db $10
    ldh a, [rNR10]
    ld d, [hl]
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ld hl, sp-$18
    ld h, c
    nop
    ld hl, sp-$10
    ld h, d
    nop
    ld hl, sp-$08
    ld h, e
    nop
    ld hl, sp+$00
    ld h, h
    nop
    ld hl, sp+$08
    ld h, l
    nop
    ld hl, sp+$10
    ld h, [hl]
    nop
    nop
    ldh [rSVBK], a
    stop
    add sp, $71
    nop
    nop
    ldh a, [$72]
    nop
    nop
    ld hl, sp+$73
    nop
    nop
    nop
    ld [hl], h
    nop
    nop
    ld [$0075], sp
    nop
    db $10
    halt
    nop
    jr @+$79

    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_004_73dc

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret z

    add sp, $07
    db $10

jr_004_73dc:
    ret z

    ldh a, [$08]
    db $10
    ret z

    ld hl, sp+$09
    db $10
    ret z

    nop
    ld a, [bc]
    db $10
    ret z

    ld [$100b], sp
    ret z

    db $10
    inc c
    db $10
    ret nc

    add sp, $17
    db $10
    ret nc

    ldh a, [rNR23]
    db $10
    ret nc

    ld hl, sp+$19
    db $10
    ret nc

    nop
    ld a, [de]
    db $10
    ret nc

    ld [$101b], sp
    ret nc

    db $10
    inc e
    db $10
    ret c

    add sp, $27
    nop
    ret c

    ldh a, [$28]
    nop
    ret c

    ld hl, sp+$29
    nop
    ret c

    nop
    ld a, [hl+]
    nop
    ret c

    ld [$002b], sp
    ret c

    db $10
    inc l
    nop
    ldh [$e8], a
    scf
    db $10
    ldh [$f0], a
    jr c, jr_004_7438

    ldh [$f8], a
    add hl, sp
    db $10
    ldh [rP1], a
    ld a, [hl-]
    db $10
    ldh [$08], a
    dec sp
    db $10
    ldh [rNR10], a
    inc a
    db $10

jr_004_7438:
    add sp, -$18
    ld b, a
    db $10
    add sp, -$10
    ld c, b
    db $10
    add sp, -$08
    ld c, c
    db $10
    add sp, $00
    ld c, d
    db $10
    add sp, $08
    ld c, e
    db $10
    add sp, $10
    ld c, h
    db $10
    ldh a, [$e8]
    ld d, a
    db $10
    ldh a, [$f0]
    ld e, b
    db $10
    ldh a, [$f8]
    ld e, c
    db $10
    ldh a, [rP1]
    ld e, d
    db $10
    ldh a, [$08]
    ld e, e
    db $10
    ldh a, [rNR10]
    ld e, h
    db $10
    ld hl, sp-$18
    ld h, a
    nop
    ld hl, sp-$10
    ld l, b
    nop
    ld hl, sp-$08
    ld l, c
    nop
    ld hl, sp+$00
    ld l, d
    nop
    ld hl, sp+$08
    ld l, e
    nop
    ld hl, sp+$10
    ld l, h
    nop
    nop
    add sp, $77
    nop
    nop
    ldh a, [$78]
    nop
    nop
    ld hl, sp+$79
    nop
    nop
    nop
    ld a, d
    nop
    nop
    ld [$007b], sp
    nop
    db $10
    ld a, h
    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_004_74c1

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret nc

    add sp, -$6f
    db $10

jr_004_74c1:
    ret nc

    ldh a, [$92]
    db $10
    ret nc

    ld hl, sp-$6d
    db $10
    ret nc

    nop
    sub h
    db $10
    ret nc

    ld [$1095], sp
    ret nc

    db $10
    sub [hl]
    db $10
    ret c

    add sp, -$5f
    nop
    ret c

    ldh a, [$a2]
    nop
    ret c

    ld hl, sp-$5d
    nop
    ret c

    nop
    and h
    nop
    ret c

    ld [$00a5], sp
    ret c

    db $10
    and [hl]
    nop
    ldh [$e8], a
    or c
    db $10
    ldh [$f0], a
    or d
    db $10
    ldh [$f8], a
    or e
    db $10
    ldh [rP1], a
    or h
    db $10
    ldh [$08], a
    or l
    db $10
    ldh [rNR10], a
    or [hl]
    db $10
    add sp, -$18
    pop bc
    db $10
    add sp, -$10
    jp nz, $e810

    ld hl, sp-$3d
    db $10
    add sp, $00
    call nz, $e810
    ld [$10c5], sp
    add sp, $10
    add $10
    ldh a, [$e8]
    pop de
    db $10
    ldh a, [$f0]
    jp nc, $f010

    ld hl, sp-$2d
    db $10
    ldh a, [rP1]
    call nc, $f010
    ld [$10d5], sp
    ldh a, [rNR10]
    sub $10
    ld hl, sp-$18
    pop hl
    nop
    ld hl, sp-$10
    ld [c], a
    nop
    ld hl, sp-$08
    db $e3
    nop
    ld hl, sp+$00
    db $e4
    nop
    ld hl, sp+$08
    push hl
    nop
    ld hl, sp+$10
    and $00
    ret z

    add sp, -$7f
    db $10
    ret z

    ldh a, [$82]
    db $10
    ret z

    ld hl, sp-$7d
    db $10
    ret z

    nop
    add h
    db $10
    ret z

    ld [$1085], sp
    ret z

    db $10
    add [hl]
    stop
    ldh [$f0], a
    stop
    add sp, -$0f
    stop
    ldh a, [$f2]
    stop
    ld hl, sp-$0d
    stop
    nop
    db $f4
    stop
    ld [$10f5], sp
    nop
    db $10
    or $10
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_004_75aa

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret z

    add sp, -$79
    db $10

jr_004_75aa:
    ret z

    ldh a, [$88]
    db $10
    ret z

    ld hl, sp-$77
    db $10
    ret z

    nop
    adc d
    db $10
    ret z

    ld [$108b], sp
    ret z

    db $10
    adc h
    db $10
    ret nc

    add sp, -$69
    db $10
    ret nc

    ldh a, [$98]
    db $10
    ret nc

    ld hl, sp-$67
    db $10
    ret nc

    nop
    sbc d
    db $10
    ret nc

    ld [$109b], sp
    ret nc

    db $10
    sbc h
    db $10
    ret c

    add sp, -$59
    nop
    ret c

    ldh a, [$a8]
    nop
    ret c

    ld hl, sp-$57
    nop
    ret c

    nop
    xor d
    nop
    ret c

    ld [$00ab], sp
    ret c

    db $10
    xor h
    nop
    ldh [$e8], a
    or a
    db $10
    ldh [$f0], a
    cp b
    db $10
    ldh [$f8], a
    cp c
    db $10
    ldh [rP1], a
    cp d
    db $10
    ldh [$08], a
    cp e
    db $10
    ldh [rNR10], a
    cp h
    db $10
    add sp, -$18
    rst $00
    db $10
    add sp, -$10
    ret z

    db $10
    add sp, -$08
    ret


    db $10
    add sp, $00
    jp z, $e810

    ld [$10cb], sp
    add sp, $10
    call z, $f010
    add sp, -$29
    db $10
    ldh a, [$f0]
    ret c

    db $10
    ldh a, [$f8]
    reti


    db $10
    ldh a, [rP1]
    jp c, $f010

    ld [$10db], sp
    ldh a, [rNR10]
    call c, $f810
    add sp, -$19
    nop
    ld hl, sp-$10
    add sp, $00
    ld hl, sp-$08
    jp hl


    nop
    ld hl, sp+$00
    ld [$f800], a
    ld [$00eb], sp
    ld hl, sp+$10
    db $ec
    nop
    nop
    add sp, -$09
    stop
    ldh a, [$f8]
    stop
    ld hl, sp-$07
    stop
    nop
    ld a, [$0010]
    ld [$10fb], sp
    nop
    db $10
    db $fc
    stop
    jr @-$01

    db $10
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    db $10
    ldh [$e0], a
    jr nc, jr_004_7693

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    db $10
    ret z

    add sp, -$79
    db $10

jr_004_7693:
    ret z

    ldh a, [$88]
    db $10
    ret z

    ld hl, sp-$77
    db $10
    ret z

    nop
    adc d
    db $10
    ret z

    ld [$108b], sp
    ret z

    db $10
    adc h
    db $10
    ret nc

    add sp, -$69
    db $10
    ret nc

    ldh a, [$98]
    db $10
    ret nc

    ld hl, sp-$67
    db $10
    ret nc

    nop
    sbc d
    db $10
    ret nc

    ld [$109b], sp
    ret nc

    db $10
    sbc h
    db $10
    ret c

    add sp, -$59
    db $10
    ret c

    ldh a, [$a8]
    db $10
    ret c

    ld hl, sp-$57
    db $10
    ret c

    nop
    xor d
    db $10
    ret c

    ld [$10ab], sp
    ret c

    db $10
    xor h
    db $10
    ldh [$e8], a
    or a
    db $10
    ldh [$f0], a
    cp b
    db $10
    ldh [$f8], a
    cp c
    db $10
    ldh [rP1], a
    cp d
    db $10
    ldh [$08], a
    cp e
    db $10
    ldh [rNR10], a
    cp h
    db $10
    add sp, -$18
    rst $00
    db $10
    add sp, -$10
    ret z

    db $10
    add sp, -$08
    ret


    db $10
    add sp, $00
    jp z, $e810

    ld [$10cb], sp
    add sp, $10
    call z, $f010
    add sp, -$29
    db $10
    ldh a, [$f0]
    ret c

    db $10
    ldh a, [$f8]
    reti


    db $10
    ldh a, [rP1]
    jp c, $f010

    ld [$10db], sp
    ldh a, [rNR10]
    call c, $f810
    add sp, -$19
    db $10
    ld hl, sp-$10
    add sp, $10
    ld hl, sp-$08
    jp hl


    db $10
    ld hl, sp+$00
    ld [$f810], a
    ld [$10eb], sp
    ld hl, sp+$10
    db $ec
    db $10
    add b
    ld b, h
    ld [hl], a
    ld d, l
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    sbc c
    ld [hl], a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
