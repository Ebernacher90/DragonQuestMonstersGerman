; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

    ld d, b
    cp c
    ld e, l
    ld de, $395e
    ld e, [hl]
    ld b, e
    ld h, b
    dec a
    ld a, h
    ld a, [hl]
    db $76
    db $db
    ld a, c
    db $db
    ld e, c
    ld c, b
    ld e, e
    ld l, b
    ld e, h
    and h
    ld e, h

Call_050_4017:
    ld a, [$d9f4]
    rst $00
    ld sp, $ed40
    ld b, b
    inc d
    ld b, c
    xor $41
    dec d
    ld b, d
    ld e, [hl]
    ld b, d
    ld l, [hl]
    ld b, d
    ld bc, $a743
    ld b, e
    ldh [rSTAT], a
    add $59
    ld hl, $5506
    rst $10
    xor a
    ld hl, $d9f4
    ld bc, $0008
    call $12c7
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld a, $ff
    ld [$c1c0], a
    ld bc, $0300
    ld a, [$c86c]
    or a
    jr z, jr_050_4062

    ld a, [$c863]
    bit 1, a
    jr z, jr_050_4062

    ld bc, $0304

jr_050_4062:
    ld d, $00

jr_050_4064:
    ld a, c
    call Call_050_5af7
    jr c, jr_050_4081

    ld a, c
    ld hl, $db02
    call $2f6c
    bit 4, [hl]
    jr nz, jr_050_4081

    inc d
    ld a, [$c1c0]
    cp $ff
    jr nz, jr_050_4081

    ld a, c
    ld [$c1c0], a

jr_050_4081:
    inc c
    dec b
    jr nz, jr_050_4064

    ld a, d
    ld [$db88], a
    ld bc, $0404
    ld a, [$c86c]
    or a
    jr z, jr_050_409c

    ld a, [$c863]
    bit 1, a
    jr z, jr_050_409c

    ld bc, $0400

jr_050_409c:
    ld d, $00

jr_050_409e:
    ld a, c
    call $2fa5
    jr c, jr_050_40a5

    inc d

jr_050_40a5:
    inc c
    dec b
    jr nz, jr_050_409e

    ld a, d
    ld [$db89], a
    ld b, $08
    ld hl, $c1cd

jr_050_40b2:
    set 7, [hl]
    inc hl
    dec b
    jr nz, jr_050_40b2

    ld hl, $d9f4
    inc [hl]
    ld bc, $0300
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_40c8

    ld c, $04

jr_050_40c8:
    ld a, c
    ld [$db61], a

jr_050_40cc:
    ld a, c
    call $2f76
    jr c, jr_050_40e8

    ld a, c
    ld hl, $db06
    call $2f6c
    ld a, [hl+]
    and $0c
    jr z, jr_050_40e8

    ld a, [hl]
    and $f0
    jr z, jr_050_40e8

    ld a, c
    ld [$db61], a
    ret


jr_050_40e8:
    inc c
    dec b
    jr nz, jr_050_40cc

    ret


Jump_050_40ed:
    ld hl, $5505
    rst $10
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld de, $6ec2
    call Call_050_75e0
    call Call_050_7838
    ld de, $419b
    ld a, [$c8da]
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f4
    inc [hl]
    ret


    ld a, [$c846]
    and $08
    jr z, jr_050_412d

    ld a, [$d9f3]
    or a
    jr nz, jr_050_4124

    inc a
    jr jr_050_4126

jr_050_4124:
    ld a, $03

jr_050_4126:
    ld [$d9f3], a
    call Call_050_7a77
    ret


jr_050_412d:
    ld de, $419b
    ld hl, $c8da
    call Call_050_781e
    ld a, [$c846]
    bit 0, a
    jr z, jr_050_419a

    ld a, $59
    call $1b2c
    ld hl, $d9f4
    inc [hl]
    xor a
    ld [$d9f5], a
    ld hl, $c8da
    set 7, [hl]
    ld hl, $c8db
    ld bc, $0007
    ld a, $00
    call $12c7
    ld a, [$c8da]
    and $0f
    cp $01
    ret nz

    ld hl, $5506
    rst $10
    xor a
    ld [$c8dd], a
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_4176

    ld a, $04
    ld [$c8dd], a

jr_050_4176:
    call Call_050_41a5
    jr nc, jr_050_41b9

    ld a, [$c1c0]
    ld [$c8dd], a
    ld hl, $d9f5
    inc [hl]
    ld hl, $d9f5
    inc [hl]
    call Call_050_56f8
    ld hl, $d9f5
    inc [hl]
    ld a, $81
    ld [$c8db], a
    ld a, $01
    ld [$d9fc], a

jr_050_419a:
    ret


    pop bc
    ld bc, $0201
    rst $00
    ld bc, $0207
    rst $38
    rst $38

Call_050_41a5:
    ld a, [$c8dd]
    ld c, a
    ld b, $03

jr_050_41ab:
    ld a, c
    call Call_050_5af7
    jr nc, jr_050_41b7

    inc c
    dec b
    jr nz, jr_050_41ab

    xor a
    ret


jr_050_41b7:
    scf
    ret


jr_050_41b9:
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $0002
    ld a, $09
    ld [$d9f4], a
    ld a, l
    ld [$c822], a
    ld a, h
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_050_773e
    ld a, $01
    ld [$d9f4], a
    ret


    ld a, [$c846]
    and $08
    jr z, jr_050_4207

    ld a, [$d9f3]
    or a
    jr nz, jr_050_41fe

    inc a
    jr jr_050_4200

jr_050_41fe:
    ld a, $03

jr_050_4200:
    ld [$d9f3], a
    call Call_050_7a77
    ret


jr_050_4207:
    ld a, [$c8da]
    rst $00
    ret z

    ld b, e
    dec de
    ld b, h
    or e
    ld c, a
    ld [bc], a
    ld d, a
    sub d
    ld b, a
    ld a, [$d9f3]
    or a
    jr z, jr_050_4224

    ld a, $03
    ld [$d9f3], a
    call Call_050_7b7f
    ret


jr_050_4224:
    ld a, [$c86c]
    or a
    jr z, jr_050_4259

    ld a, $01
    ld [$c8c7], a
    ld de, $cacd
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_423c

    ld de, $cd21

jr_050_423c:
    ld hl, $c180
    call $0c80
    ld a, $f6
    call Call_050_6a90
    call Call_050_773e
    call Call_050_793c
    call Call_050_799e
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e

jr_050_4259:
    ld hl, $d9f4
    inc [hl]
    ret


    ld a, [$c86c]
    or a
    jr z, jr_050_4269

    ld a, $01
    ld [$c873], a

jr_050_4269:
    ld hl, $d9f4
    inc [hl]
    ret


    ld a, [$c86c]
    or a
    jp z, Jump_050_42fc

    ld a, [$c86e]
    cp $01
    ret nz

    ld de, $dd03
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_4288

    ld de, $dd07

jr_050_4288:
    ld hl, $c1da
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, [$c899]
    ld [hl+], a
    ld a, [$c89a]
    ld [hl+], a
    ld a, [$c8da]
    ld [hl+], a
    ld a, [$c8da]
    ld [hl+], a
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_42af

    ld de, $dcec
    jr jr_050_42b2

jr_050_42af:
    ld de, $dcf4

jr_050_42b2:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld de, $dd13
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_42d0

    ld de, $dd17

jr_050_42d0:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, $10
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c1da
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c1ea
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a

Jump_050_42fc:
    ld hl, $d9f4
    inc [hl]
    ret


    ld a, [$c86c]
    or a
    jp z, Jump_050_43a2

    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c873], a
    ld de, $dd07
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_431f

    ld de, $dd03

jr_050_431f:
    ld hl, $c1ea
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c1d5], a
    ld a, [hl+]
    ld [$c1d6], a
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_4340

    ld de, $dcf4
    jr jr_050_4343

jr_050_4340:
    ld de, $dcec

jr_050_4343:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld de, $dd17
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_4361

    ld de, $dd13

jr_050_4361:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_438a

    ld a, [$c899]
    ld [$c1ed], a
    ld a, [$c89a]
    ld [$c1ee], a
    ld a, [$c8da]
    ld [$c1ef], a
    ld a, [$c8da]
    ld [$c1d5], a
    jr jr_050_43a2

jr_050_438a:
    ld a, [$c1ed]
    ld [$c899], a
    ld a, [$c1ee]
    ld [$c89a], a
    ld a, [$c8da]
    ld [$c1f0], a
    ld a, [$c8da]
    ld [$c1d6], a

Jump_050_43a2:
jr_050_43a2:
    ld hl, $d9f4
    inc [hl]
    ret


    ld hl, $5605
    rst $10
    call Call_050_773e
    call Call_050_793c
    call Call_050_799e
    call Call_050_767e
    xor a
    ld [$db88], a
    xor a
    ld [$c8c7], a
    xor a
    ld [$d9f4], a
    ld hl, $d9ec
    inc [hl]
    ret


    ld a, [$d9f5]
    rst $00
    ret nc

    ld b, e
    ld de, $2144
    push af
    reti


    inc [hl]
    ld a, [$db74]
    ld b, a
    ld c, $00
    ld hl, $dd13
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_43ed

    ld a, [$db75]
    ld b, a
    ld c, $04
    ld hl, $dd17

jr_050_43ed:
    ld a, c
    ld [$dd72], a
    ld a, b
    ld [$dd73], a

jr_050_43f5:
    ld a, c
    call $2fa5
    jr c, jr_050_43ff

    ld [hl], $01
    jr jr_050_4401

jr_050_43ff:
    ld [hl], $ff

jr_050_4401:
    inc hl
    inc c
    dec b
    jr nz, jr_050_43f5

    ld a, $ff
    ld [$db77], a
    ld a, $ff
    ld [$db78], a
    ret


    ld a, $04
    ld [$d9f4], a
    xor a
    ld [$d9f5], a
    ret


    ld a, [$d9f5]
    rst $00
    dec hl
    ld b, h
    ld a, [hl-]
    ld b, h
    ld l, [hl]
    ld b, h
    or b
    ld b, h
    ld l, l
    ld b, l
    ld c, a
    ld b, a
    ld a, $00
    ld [$d9f4], a
    ret


    ld hl, $5506
    rst $10
    ld hl, $d9f5
    inc [hl]
    ret


    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld a, $00
    ld [$d9f4], a
    ld de, $6ec2
    call Call_050_75e0
    ret


    ld de, $6f0a
    call Call_050_75e0
    call Call_050_7838
    ld de, $44aa
    ld a, [$d9fc]
    set 7, a
    ld [$c8db], a
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f5
    inc [hl]
    ret


    ld de, $44aa
    ld hl, $c8db
    ld b, $02
    call Call_050_77e7
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_4487

    ld a, $01
    ld [$d9f4], a
    jr jr_050_44a9

jr_050_4487:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_44a9

    ld a, [$c8db]
    res 7, a
    ld [$d9fc], a
    ld a, $59
    call $1b2c
    ld hl, $d9f5
    inc [hl]
    ld a, [$db61]
    ld [$c8dd], a
    call Call_050_56f8

Jump_050_44a9:
jr_050_44a9:
    ret


    pop bc
    ld bc, $0201
    rst $38
    rst $38

Jump_050_44b0:
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $cac2
    ld a, [$c8dd]
    call Call_050_5af7
    jr c, jr_050_453c

    ld a, [$c8dd]
    call $2229
    ld e, l
    ld d, h
    ld hl, $96c0
    call Call_050_76f0
    ld de, $7493
    ld a, [$c8db]
    cp $81
    call z, Call_050_75e0
    ld de, $6f50
    call Call_050_75e0
    ld a, [$db73]
    cp $02
    call z, Call_050_4550
    ld a, [$d9fc]
    or a
    jr z, jr_050_4507

    ld a, [$c8dd]
    and $03
    or a
    jr z, jr_050_4511

    cp $01
    jr z, jr_050_451b

    ld a, $04
    ld [$da01], a
    ld a, [$da00]
    jr jr_050_4523

jr_050_4507:
    ld a, $01
    ld [$da01], a
    ld a, [$d9fd]
    jr jr_050_4523

jr_050_4511:
    ld a, $02
    ld [$da01], a
    ld a, [$d9fe]
    jr jr_050_4523

jr_050_451b:
    ld a, $03
    ld [$da01], a
    ld a, [$d9ff]

jr_050_4523:
    set 7, a
    ld [$c8dc], a
    call Call_050_7838
    ld de, $4713
    ld a, [$c8dc]
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f5
    inc [hl]
    ret


jr_050_453c:
    ld a, [$c8dd]
    inc a
    ld [$c8dd], a
    and $03
    cp $03
    jp c, Jump_050_44b0

    ld hl, $d9f5
    inc [hl]
    inc [hl]
    ret


Call_050_4550:
    ld a, [$c86c]
    or a
    ret nz

    ld hl, $0202
    call Call_050_757e
    ld de, $4567
    ld b, $06

jr_050_4560:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_050_4560

    ret


    add c
    ld a, h
    add e
    ld [c], a
    call nc, $11de
    inc de
    ld b, a
    ld hl, $c8dc
    ld b, $04
    call Call_050_77e7
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_45f3

jr_050_457f:
    ld hl, $5508
    rst $10
    ld a, [$c8db]
    cp $80
    jr z, jr_050_45d4

    ld a, [$c8dd]
    ld hl, $c1c0
    cp [hl]
    jr z, jr_050_45d4

    and $03
    or a
    jr z, jr_050_45d4

    ld a, [$c8dd]
    dec a
    ld [$c8dd], a
    call Call_050_5af7
    jr c, jr_050_457f

    ld a, [$c8dd]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_050_457f

    ld a, $00
    ld [hl], a
    ld a, [$c8dd]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ld hl, $d9f5
    dec [hl]
    xor a
    ld [$c8dc], a
    jp Jump_050_4712


jr_050_45d4:
    call Call_050_4f66
    ld hl, $d9f5
    dec [hl]
    dec [hl]
    dec [hl]
    jp Jump_050_4712


    ld a, $00
    ld [$d9f5], a
    ld a, $01
    ld [$d9f4], a
    call Call_050_56f8
    jp Jump_050_40ed


    jp Jump_050_4712


jr_050_45f3:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_4712

    ld a, $59
    call $1b2c
    ld a, [$da01]
    ld hl, $d9fc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c8dc]
    res 7, a
    ld [hl], a
    cp $03
    jp z, Jump_050_471d

    ld a, [$c8db]
    cp $80
    jr z, jr_050_466b

Call_050_461e:
Jump_050_461e:
    ld a, [$c8dd]
    ld de, $dd13
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $01
    ld [de], a
    ld a, [$c8dd]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c8dc]
    ld [hl], a
    res 7, [hl]
    ld a, [hl]
    call Call_050_473b
    ld a, [$c8dd]
    inc a
    ld [$c8dd], a
    push af
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_4657

    ld hl, $db74
    jr jr_050_465a

jr_050_4657:
    ld hl, $db75

jr_050_465a:
    pop af
    and $03
    cp [hl]
    jr z, jr_050_46c4

    ld hl, $d9f5
    dec [hl]
    xor a
    ld [$c8dc], a
    jp Jump_050_4712


jr_050_466b:
    ld a, [$db88]
    ld b, a
    ld c, $00
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_467a

    ld c, $04

jr_050_467a:
    ld a, c
    call $2f76
    jr c, jr_050_4697

    ld a, c
    ld hl, $db02
    call $2f6c
    bit 4, [hl]
    jr z, jr_050_469a

    ld a, c
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01

jr_050_4697:
    inc c
    jr jr_050_467a

jr_050_469a:
    ld a, c
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr nz, jr_050_46c0

    ld a, $01
    ld [hl], a
    ld a, c
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c8dc]
    res 7, a
    ld [hl], a
    ld a, [hl]
    call Call_050_473b

jr_050_46c0:
    inc c
    dec b
    jr nz, jr_050_467a

Call_050_46c4:
jr_050_46c4:
    ld hl, $d9f5
    inc [hl]
    ld bc, $0400
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_46d4

    ld c, $04

jr_050_46d4:
    ld a, c
    call $2fa5
    jr c, jr_050_46ff

    ld a, c
    ld hl, $db02
    call $2f6c
    bit 4, [hl]
    jr nz, jr_050_46fc

    ld de, $0003
    add hl, de
    ld a, [hl+]
    and $3f
    jr nz, jr_050_46fc

    bit 2, [hl]
    jr nz, jr_050_46fc

    inc hl
    ld a, [hl]
    and $c0
    jr nz, jr_050_46fc

    bit 4, [hl]
    jr z, jr_050_46ff

jr_050_46fc:
    call Call_050_4705

jr_050_46ff:
    inc c
    dec b
    jr nz, jr_050_46d4

    jr jr_050_4712

Call_050_4705:
    ld a, c
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    ret


Jump_050_4712:
jr_050_4712:
    ret


    ld b, c
    ld bc, $0181
    pop bc
    ld bc, $0201
    rst $38
    rst $38

Jump_050_471d:
    call Call_050_5c1f
    jp z, Jump_050_461e

    ld a, $04
    ld [$c8da], a
    xor a
    ld [$d9f7], a
    call Call_050_47bc
    ld a, [$db88]
    cp $01
    ret z

    ld a, $01
    ld [$c1c1], a
    ret


Call_050_473b:
    cp $03
    jr z, jr_050_474e

    push af
    ld hl, $c876
    ld a, [$c8dd]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    ld [hl], a

jr_050_474e:
    ret


    call Call_050_4762
    call Call_050_773e
    ld hl, $d9f4
    inc [hl]
    ld a, $ff
    ld [$db77], a
    ld [$db78], a
    ret


Call_050_4762:
    ld a, [$c86c]
    or a
    jr z, jr_050_4773

    ld a, [$c863]
    bit 1, a
    jr z, jr_050_4773

    ld c, $04
    jr jr_050_4775

jr_050_4773:
    ld c, $00

jr_050_4775:
    ld b, $03

jr_050_4777:
    ld a, c
    call $2fa5
    jr c, jr_050_478d

    ld a, c
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_050_478d

    ld [hl], $01

jr_050_478d:
    inc c
    dec b
    jr nz, jr_050_4777

    ret


    ld a, [$d9f7]
    rst $00
    cp h
    ld b, a
    inc d
    ld c, b
    ld d, [hl]
    ld c, b
    and h
    ld c, c
    inc h
    ld c, d
    adc $4c
    dec de
    ld c, l
    push bc
    ld c, l
    db $10
    ld c, [hl]
    add d
    ld c, [hl]
    sub b
    ld c, [hl]
    and e
    ld c, [hl]

jr_050_47ae:
    ld hl, $c8dd
    inc [hl]
    ld a, [$c8dd]
    and $03
    cp $03
    jp z, Jump_050_4f2e

Call_050_47bc:
    ld a, [$c8dd]
    call $2f76
    jr c, jr_050_47ae

    ld a, [$c8dd]
    ld hl, $db06
    call $2f6c
    bit 2, [hl]
    jr nz, jr_050_47ae

    inc hl
    bit 4, [hl]
    jr nz, jr_050_47ae

    ld hl, $5507
    rst $10
    ld hl, $5506
    rst $10
    xor a
    ld hl, $c8de
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$dd72], a
    ld a, [$c8dd]
    ld hl, $c1cd
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 2, [hl]
    jr z, jr_050_47fd

    ld a, $01
    ld [$c8e0], a

jr_050_47fd:
    ld a, [hl]
    and $03
    ld [$c8df], a
    ld a, [hl]
    swap a
    and $03
    ld [$c8de], a
    ld hl, $d9f7
    inc [hl]
    xor a
    ld [$c1c1], a
    ret


Jump_050_4814:
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $cac2
    ld a, [$c8dd]
    call $2229
    ld e, l
    ld d, h
    ld hl, $96c0
    call Call_050_76f0
    ld de, $6f39
    ld a, [$c8db]
    call Call_050_75e0
    ld de, $74aa
    call Call_050_75e0
    call Call_050_7838
    ld de, $4965
    ld a, [$c8de]
    set 7, a
    ld [$c8de], a
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f7
    inc [hl]
    ret


    ld de, $4965
    ld hl, $c8de
    ld b, $03
    call Call_050_77e7
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_48cd

jr_050_4868:
    ld a, [$c8db]
    cp $80
    jr nz, jr_050_48af

    ld a, [$c8dd]
    and $03
    or a
    jr z, jr_050_48af

    ld a, [$c8dd]
    dec a
    ld [$c8dd], a
    call Call_050_5af7
    jr c, jr_050_4868

    ld a, [$c8dd]
    ld hl, $db06
    call $2f6c
    bit 2, [hl]
    jr nz, jr_050_4868

    inc hl
    bit 4, [hl]
    jr nz, jr_050_4868

    ld a, [$c8dd]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl], a
    xor a
    ld [$d9f7], a
    call Call_050_4f66
    call Call_050_47bc
    ret


jr_050_48af:
    ld hl, $5506
    rst $10
    ld a, $81
    ld [$c8da], a
    ld a, $03
    ld [$d9f5], a
    ld a, [$c8dc]
    res 7, a
    ld [$c8dc], a
    xor a
    ld [$d9f7], a
    jp Jump_050_44b0


    ret


jr_050_48cd:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_4964

    ld a, $59
    call $1b2c
    ld a, [$c8de]
    and $03
    swap a
    ld b, a
    ld a, [$c8dd]
    ld hl, $c1cd
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $0f
    or b
    ld [hl], a
    ld a, [$c8de]
    cp $81
    jr z, jr_050_492f

    cp $80
    jr z, jr_050_4910

    ld b, $8d
    ld a, [$c8dd]
    ld c, a

jr_050_4904:
    call Call_050_4f78
    call Call_050_4f3d
    ld a, $0b
    ld [$d9f7], a
    ret


jr_050_4910:
    ld a, $3a
    ld [$db8a], a
    ld a, [$c8dd]
    and $04
    xor $04
    call Call_050_4f9c
    ld a, b
    ld b, $3a
    cp $01
    jr z, jr_050_4904

    call Call_050_4f7e
    ld a, $07
    ld [$d9f7], a
    ret


jr_050_492f:
    call Call_050_496d
    ld a, [$db55]
    or a
    jr z, jr_050_493d

    ld hl, $d9f7
    inc [hl]
    ret


jr_050_493d:
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $0202
    ld a, $09
    ld [$d9f7], a
    ld a, l
    ld [$c822], a
    ld a, h
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ret


Jump_050_4964:
    ret


    add c
    ld bc, $01c1
    ld bc, $ff02
    rst $38

Call_050_496d:
    ld a, [$c8dd]
    ld hl, $dc64
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [$db55], a
    ld bc, $0800

jr_050_4982:
    ld a, [hl+]
    or a
    jr z, jr_050_499f

    ld a, [hl]
    cp $37
    jr z, jr_050_499a

    cp $38
    jr z, jr_050_499a

    cp $7e
    jr z, jr_050_499a

    ld a, [$db55]
    inc a
    ld [$db55], a

jr_050_499a:
    inc hl
    inc c
    dec b
    jr nz, jr_050_4982

jr_050_499f:
    ld a, c
    ld [$d9f6], a
    ret


    call Call_050_49d0
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld de, $74e4
    call Call_050_75e0
    call Call_050_7838
    ld de, $4cc2
    ld b, $04
    ld a, [$d9f6]
    ld c, a
    ld hl, $c8df
    call Call_050_78d9
    call Call_050_767e
    ld hl, $d9f7
    inc [hl]
    ret


Call_050_49d0:
    ld a, [$c8dd]
    swap a
    ld de, $dc65
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [$c8e0]
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $88c0
    call Call_050_49f6
    call Call_050_49f6
    call Call_050_49f6

Call_050_49f6:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr nz, jr_050_4a09

    ld a, $00
    ld [$c823], a
    ld a, $08
    ld [$c822], a
    jr jr_050_4a11

jr_050_4a09:
    ld [$c823], a
    ld a, $06
    ld [$c822], a

jr_050_4a11:
    ld de, $0901
    call Call_050_76b7
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    inc de
    ret


    ld de, $4cc2
    ld hl, $c8df
    ld a, [$d9f6]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    call Call_050_775e
    pop af
    ld hl, $c8e0
    cp [hl]
    jr z, jr_050_4a40

    call Call_050_49d0

jr_050_4a40:
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_4a5d

    ld a, $01
    ld [$d9f7], a
    jp Jump_050_4814


jr_050_4a4f:
    ld hl, $0302
    call Call_050_4c9c
    ret


jr_050_4a56:
    ld hl, $0402
    call Call_050_4c9c
    ret


jr_050_4a5d:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_4b8f

    ld a, $59
    call $1b2c
    ld hl, $c8df
    res 7, [hl]
    ld a, [$c8e0]
    add a
    add a
    add [hl]
    ld [$db54], a
    add a
    ld hl, $dc65
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c8dd]
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    call Call_050_4b90
    jr z, jr_050_4a4f

    call Call_050_4b9c
    jr c, jr_050_4a56

    call Call_050_4f7e
    ld a, [hl]
    ld [$db4c], a
    ld [$db8a], a
    ld [$db4f], a
    ld a, [$c8dd]
    ld hl, $c1cd
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $f0
    ld b, a
    ld a, [$db54]
    or b
    ld [hl], a
    xor a
    ld [$db4d], a
    ld a, $02
    ld [$db4e], a
    ld hl, $5400
    rst $10
    call Call_050_56db
    call Call_050_4bc9
    ret c

    ld a, [$db4c]
    bit 0, a
    jp z, Jump_050_4b63

    bit 4, a
    jr z, jr_050_4ae8

    ld a, $07
    ld [$d9f7], a
    ld a, [$c8dd]
    and $04
    xor $04
    jr jr_050_4af6

jr_050_4ae8:
    bit 6, a
    jr nz, jr_050_4b4c

    ld a, $05
    ld [$d9f7], a
    ld a, [$c8dd]
    and $04

jr_050_4af6:
    call Call_050_4f9c
    ld a, b
    cp $01
    ret nz

    ld a, [$db8a]
    cp $30
    jr z, jr_050_4b18

    cp $31
    jr z, jr_050_4b18

    cp $88
    jr z, jr_050_4b18

    call Call_050_4f8d
    call Call_050_4f3d
    ld a, $0b
    ld [$d9f7], a
    ret


jr_050_4b18:
    call Call_050_4b1e
    jr z, jr_050_4b45

    ret


Call_050_4b1e:
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_4b2c

    ld c, $04
    ld a, [$db75]
    jr jr_050_4b31

jr_050_4b2c:
    ld c, $00
    ld a, [$db74]

jr_050_4b31:
    ld b, a
    ld d, $00

jr_050_4b34:
    ld a, c
    call $2fa5
    jr nc, jr_050_4b3c

    jr z, jr_050_4b3d

jr_050_4b3c:
    inc d

jr_050_4b3d:
    inc c
    dec b
    jr nz, jr_050_4b34

    ld a, d
    cp $01
    ret


Call_050_4b45:
jr_050_4b45:
    ld hl, $fb00
    call Call_050_4c9c
    ret


jr_050_4b4c:
    ld a, [$c8dd]
    ld c, a
    call Call_050_4f8d
    call Call_050_4f3d
    ld a, $0b
    ld [$d9f7], a
    call Call_050_56db
    ld hl, $5506
    rst $10
    ret


Jump_050_4b63:
    call Call_050_4f3d
    ld a, $0b
    ld [$d9f7], a
    call Call_050_56db
    ld hl, $5506
    rst $10
    ld a, [$c8dd]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db4c]
    ld b, a
    ld a, [$c8dd]
    and $04
    bit 4, b
    jr z, jr_050_4b8e

    xor $04

jr_050_4b8e:
    ld [hl], a

Jump_050_4b8f:
    ret


Call_050_4b90:
    ld a, b
    cp $37
    jr z, jr_050_4b9b

    cp $38
    jr z, jr_050_4b9b

    cp $7e

jr_050_4b9b:
    ret


Call_050_4b9c:
    push bc
    ld a, b
    ld [$db4c], a
    xor a
    ld [$db4d], a
    ld a, $04
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    ld c, a
    ld b, $00
    ld a, [$c8dd]
    ld hl, $dbc3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2f45
    pop bc
    ret


Call_050_4bc9:
    ld a, [$db4f]
    cp $14
    jr z, jr_050_4c19

    cp $80
    jr z, jr_050_4c19

    cp $24
    jr z, jr_050_4c2c

    cp $26
    jr z, jr_050_4c2c

    cp $2a
    jr z, jr_050_4c2c

    cp $32
    jr z, jr_050_4c22

    cp $89
    jr z, jr_050_4c22

    cp $8b
    jr z, jr_050_4c2c

    cp $8f
    jr z, jr_050_4c2c

    cp $95
    jr z, jr_050_4c22

    cp $96
    jr z, jr_050_4c22

    cp $39
    jr z, jr_050_4c33

    cp $3f
    jr z, jr_050_4c6a

    cp $51
    jr z, jr_050_4c38

    cp $52
    jr z, jr_050_4c38

    cp $53
    jr z, jr_050_4c38

    cp $83
    jr z, jr_050_4c5c

    cp $88
    ret nc

    cp $84
    jr nc, jr_050_4c65

    xor a
    ret


jr_050_4c19:
    ld a, [$c8dd]
    and $04
    xor $04
    jr jr_050_4c8e

jr_050_4c22:
    call Call_050_4b1e
    jr nz, jr_050_4c2c

    call Call_050_4b45
    pop hl
    ret


jr_050_4c2c:
    ld a, [$c8dd]
    and $04
    jr jr_050_4c8e

jr_050_4c33:
    ld a, [$c8dd]
    jr jr_050_4c8e

jr_050_4c38:
    ld a, [$db88]
    ld b, a
    ld a, [$db8a]
    ld c, a
    push bc
    ld a, [$c8dd]
    ld [$db88], a
    ld a, [$db4f]
    ld [$db8a], a
    ld hl, $5805
    rst $10
    pop bc
    ld a, b
    ld [$db88], a
    ld a, c
    ld [$db8a], a
    jr jr_050_4c92

jr_050_4c5c:
    ld a, [$c8dd]
    and $04
    xor $04
    jr jr_050_4c8e

jr_050_4c65:
    ld a, [$c8dd]
    jr jr_050_4c8e

jr_050_4c6a:
    ld a, [$db88]
    ld b, a
    ld a, [$db8a]
    ld c, a
    push bc
    ld a, [$c8dd]
    ld [$db88], a
    ld a, [$db4f]
    ld [$db8a], a
    ld hl, $5804
    rst $10
    pop bc
    ld a, b
    ld [$db88], a
    ld a, c
    ld [$db8a], a
    jr jr_050_4c92

jr_050_4c8e:
    ld c, a
    call Call_050_4f8d

jr_050_4c92:
    call Call_050_4f3d
    ld a, $0b
    ld [$d9f7], a
    scf
    ret


Call_050_4c9c:
    push hl
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    pop hl
    ld a, $03
    ld [$d9f7], a
    ld a, l
    ld [$c822], a
    ld a, h
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ret


    ld a, [hl+]
    ld [bc], a
    ld b, c
    ld bc, $0181
    pop bc
    ld bc, $0201
    rst $38
    rst $38
    ld a, [$db8a]
    ld [$dd76], a
    ld a, a
    ld [$c1c2], a
    ld hl, $550b
    rst $10
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld de, $70b9
    call Call_050_75e0
    call Call_050_5bc7
    call Call_050_7838
    ld de, $5331
    ld a, [$c863]
    rlca
    and $04
    ld b, a
    call $2fa5
    jr nc, jr_050_4d08

    inc b
    ld a, b
    call $2fa5
    jr nc, jr_050_4d08

    inc b

jr_050_4d08:
    res 2, b
    set 7, b
    ld a, b
    ld [$dd72], a
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f7
    inc [hl]
    ret


    ld de, $5331
    ld hl, $dd72
    ld a, [$c8dd]
    cp $04
    jr c, jr_050_4d2d

    ld a, [$db75]
    jr jr_050_4d30

jr_050_4d2d:
    ld a, [$db74]

jr_050_4d30:
    ld b, a
    ld a, [$c863]
    rlca
    and $04
    ld c, a
    call Call_050_5b6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_4d49

    ld a, $03
    ld [$d9f7], a
    jr jr_050_4d93

jr_050_4d49:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_4d93

    ld a, [$dd72]
    res 7, a
    ld c, a
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_4d60

    set 2, c

jr_050_4d60:
    ld a, c
    call $2fa5
    jr nc, jr_050_4d7c

    ld a, [$c8dd]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $30
    jr z, jr_050_4d7c

    cp $31
    jr nz, jr_050_4d94

jr_050_4d7c:
    call Call_050_4f8d
    ld a, $59
    call $1b2c
    call Call_050_4f3d
    ld a, $0b
    ld [$d9f7], a
    call Call_050_56db
    ld hl, $5506
    rst $10

Jump_050_4d93:
jr_050_4d93:
    ret


Jump_050_4d94:
jr_050_4d94:
    ld a, c
    ld hl, $c180
    ld [$db50], a
    call Call_050_7d1e
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $fa00
    ld a, $0a
    ld [$d9f7], a
    ld a, l
    ld [$c822], a
    ld a, h
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ret


    ld a, [$db8a]
    ld [$dd76], a
    ld a, a
    ld [$c1c2], a
    call Call_050_53d4
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld de, $7103
    call Call_050_75e0
    call Call_050_7838
    ld de, $5654
    ld a, [$c863]
    rlca
    and $04
    xor $04
    ld b, a
    call $2fa5
    jr nc, jr_050_4dfd

    inc b
    ld a, b
    call $2fa5
    jr nc, jr_050_4dfd

    inc b

jr_050_4dfd:
    res 2, b
    set 7, b
    ld a, b
    ld [$dd72], a
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f7
    inc [hl]
    ret


    ld de, $5654
    ld hl, $dd72
    ld a, [$c8dd]
    cp $04
    jr c, jr_050_4e22

    ld a, [$db74]
    jr jr_050_4e25

jr_050_4e22:
    ld a, [$db75]

jr_050_4e25:
    ld b, a
    ld a, [$c863]
    rlca
    and $04
    xor $04
    ld c, a
    call Call_050_5b6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_4e4c

    ld a, [$c8de]
    cp $80
    ld a, $01
    jr z, jr_050_4e44

    ld a, $03

jr_050_4e44:
    ld [$d9f7], a
    call Call_050_56db
    jr jr_050_4e81

jr_050_4e4c:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_4e81

    ld a, [$dd72]
    res 7, a
    ld c, a
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_4e63

    set 2, c

jr_050_4e63:
    ld a, c
    call $2fa5
    jp c, Jump_050_4d94

    call Call_050_4f8d
    ld a, $59
    call $1b2c
    call Call_050_4f3d
    ld a, $0b
    ld [$d9f7], a
    call Call_050_56db
    ld hl, $5506
    rst $10

Jump_050_4e81:
jr_050_4e81:
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_050_773e
    ld a, $01
    ld [$d9f7], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_050_773e
    ld a, [$c8de]
    and $01
    add a
    inc a
    ld [$d9f7], a
    ret


    ld a, [$c8db]
    cp $80
    jr z, jr_050_4ecf

    ld a, $81
    ld [$c8da], a
    ld a, $04
    ld [$d9f5], a
    call Call_050_461e
    call Call_050_56db
    ld hl, $5506
    rst $10
    jp Jump_050_4f59


jr_050_4ec1:
    ld a, [$c8dd]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $02

jr_050_4ecf:
    ld a, [$db88]
    cp $01
    jr z, jr_050_4f2e

    ld b, a
    ld a, [$c8dd]
    and $03
    cp b
    jr z, jr_050_4f2e

    ld hl, $c8dd
    inc [hl]
    ld a, [hl]
    and $03
    cp $03
    jr z, jr_050_4f2e

    ld a, [hl]
    call $2fa5
    jr c, jr_050_4ecf

    ld a, [hl]
    call $2f76
    jr c, jr_050_4f0e

    ld a, [$c8dd]
    ld hl, $db06
    call $2f6c
    bit 2, [hl]
    jr nz, jr_050_4ec1

    inc hl
    bit 4, [hl]
    jr nz, jr_050_4ec1

    xor a
    ld [$d9f7], a
    jr jr_050_4f59

jr_050_4f0e:
    ld a, [hl]
    push bc
    ld b, a
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $3a
    ld [hl+], a
    ld a, b
    ld [hl], a
    pop bc
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    jr jr_050_4ecf

Jump_050_4f2e:
jr_050_4f2e:
    ld a, $81
    ld [$c8da], a
    ld a, $04
    ld [$d9f5], a
    call Call_050_46c4
    jr jr_050_4f59

Call_050_4f3d:
    ld a, [$c8dd]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    ld a, [$c8dd]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $03

Jump_050_4f59:
jr_050_4f59:
    ret


    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ret


    ret


    ret


Call_050_4f66:
    ld a, [$c8dd]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ret


Call_050_4f78:
    call Call_050_4f7e
    inc hl
    ld [hl], c
    ret


Call_050_4f7e:
    ld a, [$c8dd]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], b
    ret


Call_050_4f8d:
    ld a, [$c8dd]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    ret


Call_050_4f9c:
    push de
    ld c, a
    ld b, $03
    ld de, $0000

jr_050_4fa3:
    ld a, c
    call $2fa5
    jr c, jr_050_4fab

    inc d
    ld e, c

jr_050_4fab:
    inc c
    dec b
    jr nz, jr_050_4fa3

    ld b, d
    ld c, e
    pop de
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$d9f5]
    rst $00
    jp c, $384f

    ld d, b
    cp l
    ld d, b
    call nz, $ff51
    ld d, c
    add [hl]
    ld d, d
    rst $08
    ld d, d
    ld l, d
    ld d, e
    ld a, [c]
    ld d, l
    add a
    ld d, [hl]
    sbc h
    ld d, [hl]
    xor d
    ld d, [hl]
    cp e
    ld d, [hl]
    ret


    ld d, [hl]
    db $db
    ld d, [hl]
    ld a, [$db73]
    cp $02
    jr z, jr_050_5032

    ld bc, $1400

jr_050_4fe4:
    ld hl, $ca51
    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_050_5018

    or a
    jr z, jr_050_5018

    push bc
    ld a, [hl]
    add $af
    ld a, a
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $0a
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    cp $01
    pop bc
    jr nz, jr_050_502d

    inc c
    dec b
    jr nz, jr_050_4fe4

jr_050_5018:
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $f300
    call Call_050_51a2
    ld a, $0b
    ld [$d9f5], a
    ret


jr_050_502d:
    ld hl, $d9f5
    inc [hl]
    ret


jr_050_5032:
    ld a, $f4
    call Call_050_5ad5
    ret


    call Call_050_50a4
    call Call_050_5067
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld de, $6fbe
    call Call_050_75e0
    call Call_050_7838
    ld de, $51b8
    ld b, $04
    ld a, [$d9f6]
    ld c, a
    ld hl, $c8db
    call Call_050_78d9
    call Call_050_767e
    ld hl, $d9f5
    inc [hl]
    ret


Call_050_5067:
    ld de, $ca51
    ld a, [$c8dc]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $88c0
    call Call_050_5081
    call Call_050_5081
    call Call_050_5081

Call_050_5081:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr nz, jr_050_508a

    ld a, $00

jr_050_508a:
    ld [$c823], a
    ld a, $08
    ld [$c822], a
    ld de, $0901
    call Call_050_76b7
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


Call_050_50a4:
    ld hl, $ca51
    ld b, $14
    ld c, $00

jr_050_50ab:
    ld a, [hl+]
    cp $00
    jr z, jr_050_50b8

    cp $ff
    jr z, jr_050_50b8

    inc c
    dec b
    jr nz, jr_050_50ab

jr_050_50b8:
    ld a, c
    ld [$d9f6], a
    ret


    ld de, $51b8
    ld hl, $c8db
    ld a, [$d9f6]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    call Call_050_775e
    pop af
    ld hl, $c8dc
    cp [hl]
    jr z, jr_050_50d9

    call Call_050_5067

jr_050_50d9:
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_50ec

    ld hl, $5508
    rst $10
    ld a, $01
    ld [$d9f4], a
    jp Jump_050_5172


jr_050_50ec:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_5172

    ld hl, $c8db
    res 7, [hl]
    ld a, [$c8dc]
    add a
    add a
    add [hl]
    ld hl, $ca51
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $af
    add [hl]
    ld [$db4c], a
    ld hl, $5405
    rst $10
    ld a, [$db4c]
    or a
    jr z, jr_050_5191

    ld a, [$db4c]
    ld [$db77], a
    ld a, [$db4d]
    ld [$db78], a
    ld a, $59
    call $1b2c
    ld hl, $5509
    rst $10
    ld a, [$db77]
    cp $11
    jr z, jr_050_5146

    cp $12
    jr z, jr_050_5155

    cp $21
    jr z, jr_050_5161

    cp $22
    jr z, jr_050_5168

    ld hl, $d9f5
    inc [hl]
    jr jr_050_5172

jr_050_5146:
    call Call_050_5173
    jr z, jr_050_516d

    call Call_050_56db
    ld a, $07
    ld [$d9f5], a
    jr jr_050_5172

jr_050_5155:
    ld a, $04
    ld [$db77], a
    ld a, $09
    ld [$d9f5], a
    jr jr_050_5172

jr_050_5161:
    ld a, $05
    ld [$d9f5], a
    jr jr_050_5172

jr_050_5168:
    ld a, $00
    ld [$db77], a

jr_050_516d:
    ld a, $09
    ld [$d9f5], a

Jump_050_5172:
jr_050_5172:
    ret


Call_050_5173:
    ld hl, $dd1f
    ld a, [$db75]
    ld b, a
    ld c, $00
    ld d, $04

jr_050_517e:
    ld a, [hl+]
    or a
    jr nz, jr_050_5184

    inc c
    ld e, d

jr_050_5184:
    inc d
    dec b
    jr nz, jr_050_517e

    ld a, c
    cp $01
    ret nz

    ld a, e
    ld [$db77], a
    ret


jr_050_5191:
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $f200
    ld a, $0a
    ld [$d9f5], a

Call_050_51a2:
    ld a, l
    ld [$c822], a
    ld a, h
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ret


    ld a, [hl+]
    ld [bc], a
    ld b, c
    ld bc, $0181
    pop bc
    ld bc, $0201
    rst $38
    rst $38
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld de, $7035
    call Call_050_75e0
    call Call_050_7838
    ld de, $5280
    xor a
    ld [$c8dd], a
    ld a, [$c8dd]
    ld b, a
    ld a, [$db78]
    cp $c2
    jr c, jr_050_51f3

    cp $c7
    jr nc, jr_050_51f3

    ld a, $01
    ld [$c8dd], a
    ld b, $01

jr_050_51f3:
    ld a, b
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f5
    inc [hl]
    ret


    ld de, $5280
    ld hl, $c8dd
    ld b, $02
    call Call_050_77e7
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_521f

    ld hl, $d9f5
    dec [hl]
    ld hl, $d9f5
    dec [hl]
    ld hl, $d9f5
    dec [hl]
    jr jr_050_527f

jr_050_521f:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_527f

    ld a, $59
    call $1b2c
    ld hl, $550a
    rst $10
    ld a, $80
    ld [$c8de], a
    ld a, [$c8dd]
    cp $80
    jr z, jr_050_5265

    ld a, [$db78]
    cp $c2
    jr c, jr_050_5247

    cp $c7
    jr c, jr_050_5257

jr_050_5247:
    ld a, [$db77]
    and $0f
    bit 0, a
    jr z, jr_050_5257

    ld a, $07
    ld [$d9f5], a
    jr jr_050_527f

jr_050_5257:
    ld a, $04
    ld [$db77], a
    ld a, $09
    ld [$d9f5], a
    jr jr_050_527f

    jr jr_050_527f

jr_050_5265:
    ld a, [$db77]
    and $0f
    bit 0, a
    jr z, jr_050_5275

    ld a, $05
    ld [$d9f5], a
    jr jr_050_527f

jr_050_5275:
    ld a, $09
    ld [$d9f5], a
    ld a, $00
    ld [$db77], a

Jump_050_527f:
jr_050_527f:
    ret


    pop bc
    ld bc, $0201
    rst $38
    rst $38
    ld a, [$db78]
    ld [$dd76], a
    ld a, a
    ld [$c1c2], a
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld de, $706f
    call Call_050_75e0
    call Call_050_5bc7
    call Call_050_7838
    ld de, $5331
    ld a, [$c863]
    rlca
    and $04
    ld b, a
    call $2fa5
    jr nc, jr_050_52bc

    inc b
    ld a, b
    call $2fa5
    jr nc, jr_050_52bc

    inc b

jr_050_52bc:
    res 2, b
    set 7, b
    ld a, b
    ld [$c8de], a
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f5
    inc [hl]
    ret


    ld de, $5331
    ld hl, $c8de
    ld a, [$db74]
    ld b, a
    ld a, [$c863]
    rlca
    and $04
    ld c, a
    call Call_050_5b6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_5301

    ld a, [$db77]
    and $f0
    cp $20
    jr z, jr_050_52fa

    ld a, $03
    ld [$d9f5], a
    jr jr_050_5330

jr_050_52fa:
    ld a, $01
    ld [$d9f5], a
    jr jr_050_5330

jr_050_5301:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_5330

    ld a, [$c8de]
    res 7, a
    ld c, a
    call $2fa5
    jr nc, jr_050_531b

    ld a, [$db78]
    cp $bb
    jr nz, jr_050_5339

jr_050_531b:
    ld a, c
    ld [$db77], a
    ld a, $59
    call $1b2c
    ld hl, $d9f5
    inc [hl]
    ld hl, $d9f5
    inc [hl]
    ld hl, $d9f5
    inc [hl]

Jump_050_5330:
jr_050_5330:
    ret


    add c
    ld bc, $01c1
    ld bc, $ff02
    rst $38

jr_050_5339:
    ld a, c
    ld hl, $c180
    ld [$db50], a
    call Call_050_7d1e
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $fa00
    ld a, $0c
    ld [$d9f5], a
    ld a, l
    ld [$c822], a
    ld a, h
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ret


    ld a, [$db78]
    ld [$dd76], a
    ld a, a
    ld [$c1c2], a
    call Call_050_53d4
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld de, $7103
    call Call_050_75e0
    call Call_050_7838
    ld de, $5654
    ld a, [$c863]
    rlca
    and $04
    xor $04
    ld b, a
    call $2fa5
    jr nc, jr_050_53a2

    inc b
    ld a, b
    call $2fa5
    jr nc, jr_050_53a2

    inc b

jr_050_53a2:
    res 2, b
    set 7, b
    ld a, b
    ld [$c8de], a
    call Call_050_78fb
    call Call_050_767e
    ld hl, $d9f5
    inc [hl]
    ret


Call_050_53b5:
    ld a, [$c863]
    rlca
    and $04
    xor $04
    ld [$dd73], a
    ret


Call_050_53c1:
    ld a, [$dd76]
    cp $30
    jr z, jr_050_53d2

    cp $31
    jr z, jr_050_53d2

    cp $bb
    jr z, jr_050_53d2

    scf
    ret


jr_050_53d2:
    xor a
    ret


Call_050_53d4:
    ld a, [$c86c]
    or a
    jp nz, Jump_050_5496

    call Call_050_53b5
    call $2fa5
    call c, Call_050_53c1
    jr c, jr_050_53f6

    xor a
    ld [$db4e], a
    ld a, [$c1ca]
    cp $ff
    jr z, jr_050_53fb

    call Call_050_5528
    jr jr_050_5406

jr_050_53f6:
    call Call_050_5476
    jr jr_050_5406

jr_050_53fb:
    call Call_050_5476
    ld a, $01
    ld [$db4e], a
    call Call_050_5528

jr_050_5406:
    xor a
    ld [$db4e], a
    ld a, [$da02]
    cp $00
    jr nz, jr_050_5416

    call Call_050_547d
    jr jr_050_5484

jr_050_5416:
    ld a, [$dd73]
    inc a
    ld [$dd73], a
    call $2fa5
    call c, Call_050_53c1
    jr c, jr_050_5431

    ld a, [$c1cb]
    cp $ff
    jr z, jr_050_5436

    call Call_050_5535
    jr jr_050_5441

jr_050_5431:
    call Call_050_547d
    jr jr_050_5441

jr_050_5436:
    call Call_050_547d
    ld a, $01
    ld [$db4e], a
    call Call_050_5535

jr_050_5441:
    xor a
    ld [$db4e], a
    ld a, [$da02]
    cp $01
    jr nz, jr_050_544e

    jr jr_050_5484

jr_050_544e:
    ld a, [$dd73]
    inc a
    ld [$dd73], a
    call $2fa5
    call c, Call_050_53c1
    jr c, jr_050_5468

    ld a, [$c1cc]
    cp $ff
    jr z, jr_050_546a

    call Call_050_5542
    ret


jr_050_5468:
    jr jr_050_5484

jr_050_546a:
    call Call_050_5484
    ld a, $01
    ld [$db4e], a
    call Call_050_5542
    ret


Call_050_5476:
    ld hl, $88c0
    ld b, $a0
    jr jr_050_5489

Call_050_547d:
    ld hl, $8960
    ld b, $a0
    jr jr_050_5489

Call_050_5484:
Jump_050_5484:
jr_050_5484:
    ld hl, $8a00
    ld b, $a0

Call_050_5489:
jr_050_5489:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_050_5489

    ret


Jump_050_5496:
    xor a
    ld [$c1d7], a
    ld a, [$db74]
    ld [$c1d8], a
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_54b2

    ld a, $04
    ld [$c1d7], a
    ld a, [$db75]
    ld [$c1d8], a

jr_050_54b2:
    ld a, [$c1d7]
    call $2fa5
    call c, Call_050_53c1
    jr nc, jr_050_54c2

    call Call_050_5476
    jr jr_050_54d1

jr_050_54c2:
    ld a, [$c1d7]
    call Call_050_55e9
    ld a, [$c1d7]
    ld hl, $88c0
    call Call_050_554f

jr_050_54d1:
    ld a, [$c1d8]
    cp $01
    jr nz, jr_050_54dd

    call Call_050_547d
    jr jr_050_5484

jr_050_54dd:
    ld hl, $c1d7
    inc [hl]
    ld a, [hl]
    call $2fa5
    call c, Call_050_53c1
    jr nc, jr_050_54ef

    call Call_050_547d
    jr jr_050_54fe

jr_050_54ef:
    ld a, [$c1d7]
    call Call_050_55e9
    ld a, [$c1d7]
    ld hl, $8960
    call Call_050_554f

jr_050_54fe:
    ld a, [$c1d8]
    cp $02
    jr nz, jr_050_5508

    jp Jump_050_5484


jr_050_5508:
    ld hl, $c1d7
    inc [hl]
    ld a, [hl]
    call $2fa5
    call c, Call_050_53c1
    jr nc, jr_050_5518

    jp Jump_050_5484


jr_050_5518:
    ld a, [$c1d7]
    call Call_050_55e9
    ld a, [$c1d7]
    ld hl, $8a00
    call Call_050_554f
    ret


Call_050_5528:
    call Call_050_55e9
    ld hl, $88c0
    ld a, $00
    ld [$db4c], a
    jr jr_050_5562

Call_050_5535:
    call Call_050_55e9
    ld hl, $8960
    ld a, $01
    ld [$db4c], a
    jr jr_050_5562

Call_050_5542:
    call Call_050_55e9
    ld hl, $8a00
    ld a, $02
    ld [$db4c], a
    jr jr_050_5562

Call_050_554f:
    push hl
    call Call_050_76f0
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $30
    call Call_050_5489
    ret


jr_050_5562:
    push hl
    push hl
    ld a, [$db4c]
    add $04
    ld [$db50], a
    ld hl, $c180
    call Call_050_7d1e
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
    ld a, [$db4d]
    or a
    jr nz, jr_050_5598

    ld de, $0801
    jr jr_050_559b

jr_050_5598:
    ld de, $0901

jr_050_559b:
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
    ld a, [$db4e]
    or a
    ret nz

    ld a, [$db4d]
    or a
    jr nz, jr_050_55db

    ld a, l
    add $80
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $18
    jr jr_050_55e5

jr_050_55db:
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $10

jr_050_55e5:
    call Call_050_5489
    ret


Call_050_55e9:
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    ret


    ld de, $5654
    ld hl, $c8de
    ld a, [$da02]
    inc a
    ld b, a
    ld a, [$c863]
    rlca
    and $04
    xor $04
    ld c, a
    call Call_050_5b6a
    ld a, [$c846]
    bit 1, a
    jr z, jr_050_562a

    ld a, [$db77]
    and $f0
    cp $10
    jr z, jr_050_5620

    ld a, $03
    ld [$d9f5], a
    jr jr_050_5653

jr_050_5620:
    call Call_050_56db
    ld a, $01
    ld [$d9f5], a
    jr jr_050_5653

jr_050_562a:
    ld a, [$c846]
    bit 0, a
    jp z, Jump_050_5653

    ld a, [$c8de]
    res 7, a
    add $04
    ld c, a
    call $2fa5
    jr nc, jr_050_5646

    ld a, [$db78]
    cp $bb
    jr nz, jr_050_565c

jr_050_5646:
    ld a, c
    ld [$db77], a
    ld a, $59
    call $1b2c
    ld hl, $d9f5
    inc [hl]

Jump_050_5653:
jr_050_5653:
    ret


    add c
    ld bc, $01c1
    ld bc, $ff02
    rst $38

jr_050_565c:
    ld a, c
    ld hl, $c180
    ld [$db50], a
    call Call_050_7d1e
    call Call_050_56f8
    ld hl, $fa00
    ld a, $0d
    ld [$d9f5], a
    ld a, l
    ld [$c822], a
    ld a, h
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ret


    ld hl, $dd13
    ld a, [$db74]
    ld b, a
    ld a, $01

jr_050_5690:
    ld [hl+], a
    dec b
    jr nz, jr_050_5690

    call Call_050_773e
    ld hl, $d9f4
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_050_773e
    ld a, $01
    ld [$d9f5], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_050_773e
    xor a
    ld [$d9f4], a
    xor a
    ld [$d9f5], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_050_773e
    ld a, $05
    ld [$d9f5], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_050_773e
    ld a, $07
    ld [$d9f5], a
    ret


    ld hl, $5506
    rst $10

Call_050_56db:
    call Call_050_56f8
    ld hl, $88c0

Call_050_56e1:
    ld c, $02

jr_050_56e3:
    ld b, $f0

jr_050_56e5:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_050_56e5

    dec c
    jr nz, jr_050_56e3

    call Call_050_767e
    ret


Call_050_56f8:
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ret


    ld a, [$d9f5]
    rst $00
    ld c, $57
    sbc b
    ld d, a
    ld hl, $2b58
    ld e, b
    ld a, [$db73]
    or a
    jr z, jr_050_5728

    cp $01
    jr z, jr_050_575c

    ld a, [$d8d3]
    cp $5d
    jr nz, jr_050_575c

    call Call_050_5762
    ld a, $01
    ld [$c1d5], a
    ret


jr_050_5728:
    ld de, $ca42
    ld hl, $c180
    call $0c80
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld a, $2a
    call Call_050_6a90
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ld a, $ff
    ld [$db77], a
    ld a, $ff
    ld [$db78], a
    ld hl, $d9f5
    inc [hl]
    ld a, $6d
    call $1b2c
    ret


jr_050_575c:
    ld a, $f5
    call Call_050_5ad5
    ret


Call_050_5762:
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld hl, $0502
    ld a, $03
    ld [$d9f5], a
    ld a, l
    ld [$c822], a
    ld a, h
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    ld hl, $89c0
    ld de, $5609
    call $1577
    ld de, $7203
    call Call_050_75e0
    call Call_050_767e
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$db73]
    or a
    jr nz, jr_050_57f8

    ld a, [$db76]
    or a
    jr z, jr_050_57f8

    cp $04
    jr nc, jr_050_57f8

    cp $03
    jr z, jr_050_57bd

    cp $02
    jr z, jr_050_57b9

    ld b, $40
    jr jr_050_57bf

jr_050_57b9:
    ld b, $80
    jr jr_050_57bf

jr_050_57bd:
    ld b, $c0

jr_050_57bf:
    ld a, [$c899]
    cp b
    jr c, jr_050_57f8

    call Call_050_5896
    jr c, jr_050_57f8

    call Call_050_58c0
    jr c, jr_050_57f8

    ld hl, $dd13
    ld a, [$db74]
    ld b, a
    ld a, $03

jr_050_57d8:
    ld [hl+], a
    dec b
    jr nz, jr_050_57d8

    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld a, $b9
    call Call_050_6a90
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ld hl, $d9f5
    inc [hl]
    ret


jr_050_57f8:
    xor a
    ld [$db4e], a
    ld hl, $d9f4
    inc [hl]
    ld a, $0a
    ld [$d9ec], a
    ld hl, $dd1f
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$db55], a
    call Call_050_58fc
    ld a, [$db73]
    or a
    ret z

    ld a, $01
    ld [$db55], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $d9f4
    inc [hl]
    ret


    ld de, $5890
    ld hl, $c1d5
    ld b, $02
    call Call_050_77e7
    ld a, [$c846]
    bit 0, a
    jr z, jr_050_5882

    ld a, [$c1d5]
    bit 0, a
    jr nz, jr_050_5885

    ld de, $ca42
    ld hl, $c180
    call $0c80
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld a, $02
    ld [$c822], a
    ld a, $06
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ld a, $ff
    ld [$db77], a
    ld a, $ff
    ld [$db78], a
    ld a, $6d
    call $1b2c
    ld a, $01
    ld [$d9f5], a
    ret


jr_050_5882:
    bit 1, a
    ret z

jr_050_5885:
    xor a
    ld [$d9f4], a
    ld [$c8da], a
    ld [$d9f5], a
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38

Call_050_5896:
    ld bc, $0304

jr_050_5899:
    ld a, c
    call $2fa5
    jr c, jr_050_58b8

    ld a, c
    ld hl, $db02
    call $2f6c
    ld a, [hl+]
    and $d0
    jr nz, jr_050_58b8

    inc hl
    inc hl
    ld a, [hl+]
    and $3f
    jr nz, jr_050_58b8

    inc hl
    ld a, [hl]
    and $c0
    jr z, jr_050_58be

jr_050_58b8:
    inc c
    dec b
    jr nz, jr_050_5899

    scf
    ret


jr_050_58be:
    xor a
    ret


Call_050_58c0:
    ld bc, $0300
    ld de, $0000

jr_050_58c6:
    ld a, c
    call $2fa5
    jr c, jr_050_58d3

    call Call_050_58f0
    cp d
    jr c, jr_050_58d3

    ld d, a

jr_050_58d3:
    inc c
    dec b
    jr nz, jr_050_58c6

    ld bc, $0304

jr_050_58da:
    ld a, c
    call $2fa5
    jr c, jr_050_58e7

    call Call_050_58f0
    cp e
    jr c, jr_050_58e7

    ld e, a

jr_050_58e7:
    inc c
    dec b
    jr nz, jr_050_58da

    ld a, $04
    add e
    cp d
    ret


Call_050_58f0:
    ld a, c
    ld hl, $db9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


Call_050_58fc:
    ld bc, $0300

Jump_050_58ff:
    ld a, c
    ld [$db4c], a
    ld a, b
    ld [$db4d], a
    ld a, c
    call $2fa5
    jr c, jr_050_5981

    ld de, $0000
    ld a, c
    ld hl, $dc5c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $97
    jr c, jr_050_5921

    ld e, $10

jr_050_5921:
    ld a, c
    ld hl, $db9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $0a
    jr c, jr_050_594a

    cp $14
    jr c, jr_050_593e

    cp $1e
    jr c, jr_050_5944

    ld a, e
    add $0c
    ld e, a
    jr jr_050_594a

jr_050_593e:
    ld a, e
    add $04
    ld e, a
    jr jr_050_594a

jr_050_5944:
    ld a, e
    add $08
    ld e, a
    jr jr_050_594a

jr_050_594a:
    ld hl, $59a6
    add hl, de
    ld a, [$db4c]
    ld bc, $dc44
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    call Call_050_598f
    inc hl
    ld a, $08
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    call Call_050_598f
    inc hl
    ld a, $08
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    call Call_050_598f
    inc hl
    ld a, $08
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    call Call_050_598f

jr_050_5981:
    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    ld b, a
    inc c
    dec b
    jp nz, Jump_050_58ff

    ret


Call_050_598f:
    bit 7, [hl]
    jr nz, jr_050_599b

    ld a, [bc]
    add [hl]
    jr nc, jr_050_59a4

    ld a, $ff
    jr jr_050_59a4

jr_050_599b:
    ld a, [hl]
    cpl
    inc a
    ld d, a
    ld a, [bc]
    sub d
    jr nc, jr_050_59a4

    xor a

jr_050_59a4:
    ld [bc], a
    ret


    db $fc
    nop
    nop
    or $fd
    nop
    nop
    ei
    cp $00
    nop
    db $fd
    rst $38
    nop
    nop
    cp $f8
    nop
    nop
    pop af
    ld a, [$0000]
    or $fc
    nop
    nop
    ei
    cp $00
    nop
    db $fd
    call Call_050_56f8
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    call Call_050_56e1
    ld a, [$db5a]
    ld [$d9f4], a
    ret


    ld a, [$db88]
    ld hl, $c180
    ld [$db50], a
    call Call_050_7d1e
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp $4f
    jr z, jr_050_5a09

    cp $a6
    jr z, jr_050_5a06

    cp $ac
    jr z, jr_050_5a09

    call Call_050_5a43
    jr jr_050_5a0c

jr_050_5a06:
    call Call_050_5a4e

jr_050_5a09:
    call Call_050_5a61

jr_050_5a0c:
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    call z, Call_050_5a40
    cp $da
    call nc, Call_050_5ac2
    ld l, a
    ld h, $06
    ld de, $c190
    call $097a
    ld a, $00
    ld [$c822], a
    ld a, [$db4c]
    ld [$c823], a
    cp $ff
    ret z

    ld hl, $4c00
    rst $10
    ret


Call_050_5a40:
    ld a, $3a
    ret


Call_050_5a43:
    ld a, [hl]
    ld hl, $c1a0
    ld [$db50], a
    call Call_050_7d1e
    ret


Call_050_5a4e:
    ld a, [hl]
    ld [$db89], a
    ld hl, $5802
    rst $10
    ld a, [$dd72]
    or a
    jr z, jr_050_5a0c

    ld hl, $c180
    jr jr_050_5a79

Call_050_5a61:
    ld a, [hl]
    ld [$db89], a
    ld hl, $5802
    rst $10
    ld a, [$dd72]
    or a
    jr z, jr_050_5ab5

    cp $01
    jr nz, jr_050_5a8c

    call Call_050_5ab5
    ld hl, $c1a0

jr_050_5a79:
    ld a, [hl+]
    cp $f0
    jr nz, jr_050_5a79

jr_050_5a7e:
    dec hl
    ld a, [hl]
    cp $f0
    jr z, jr_050_5a7e

    cp $24
    jr c, jr_050_5a89

    inc hl

jr_050_5a89:
    ld [hl], $f0
    ret


jr_050_5a8c:
    ld a, [$c86c]
    or a
    jr nz, jr_050_5ab5

    ld a, [$db89]
    cp $04
    jr nc, jr_050_5a9d

    call Call_050_5ab5
    ret


jr_050_5a9d:
    ld hl, $c1a0
    ld a, $37
    ld [hl+], a
    ld a, $4f
    ld [hl+], a
    ld a, $52
    ld [hl+], a
    ld a, $4d
    ld [hl+], a
    ld a, $4d
    ld [hl+], a
    ld a, $42
    ld [hl+], a
    ld [hl], $f0
    ret


Call_050_5ab5:
jr_050_5ab5:
    ld a, [$db89]
    ld hl, $c1a0
    ld [$db50], a
    call Call_050_7d1e
    ret


Call_050_5ac2:
    push hl
    sub $da
    ld hl, $5ad1
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ret


    add hl, de
    and c
    ld a, [hl+]
    ld [hl], b

Call_050_5ad5:
    push af
    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    pop af
    call Call_050_6a90
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ld a, $00
    ld [$d9f4], a
    ld a, $00
    ld [$d9f5], a
    ret


Call_050_5af7:
    push bc
    ld [$dd72], a
    ld b, a
    call $2f76
    jr c, jr_050_5b45

    ld a, b
    ld bc, $db02
    add a
    add a
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    bit 4, a
    jr nz, jr_050_5b25

    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    and $0c
    jr nz, jr_050_5b25

    inc bc
    ld a, [bc]
    and $f0
    jr nz, jr_050_5b25

    xor a
    jr jr_050_5b46

jr_050_5b25:
    push hl
    ld a, [$dd72]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or $e0
    ld [hl], a
    ld a, [$dd72]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    pop hl

jr_050_5b45:
    scf

jr_050_5b46:
    pop bc
    ret


    call Call_050_773e
    call Call_050_793c
    call Call_050_79a4
    ld a, $e0
    call Call_050_6a90
    ld de, $2e07
    call Call_050_75e0
    call Call_050_767e
    ld a, $00
    ld [$d9f4], a
    ld a, $00
    ld [$d9f5], a
    ret


Call_050_5b6a:
    res 7, [hl]
    ld a, [$c847]
    and $40
    jp z, Jump_050_5b8a

jr_050_5b74:
    ld a, [hl]
    dec a
    bit 7, a
    call nz, Call_050_5ba7
    call Call_050_5bac
    jp nc, Jump_050_7807

    call Call_050_5bb5
    ld [hl], a
    jr nz, jr_050_5b74

    jp Jump_050_7807


Jump_050_5b8a:
    ld a, [$c847]
    and $80
    jp z, Jump_050_7810

jr_050_5b92:
    ld a, [hl]
    inc a
    cp b
    call nc, Call_050_5baa
    call Call_050_5bac
    jp nc, Jump_050_7807

    call Call_050_5bb5
    ld [hl], a
    jr nz, jr_050_5b92

    jp Jump_050_7807


Call_050_5ba7:
    ld a, b
    dec a
    ret


Call_050_5baa:
    xor a
    ret


Call_050_5bac:
    push bc
    ld b, a
    or c
    call $2fa5
    ld a, b
    pop bc
    ret


Call_050_5bb5:
    push bc
    ld b, a
    ld a, [$c1c2]
    cp $30
    jr z, jr_050_5bc4

    cp $31
    jr z, jr_050_5bc4

    cp $bb

jr_050_5bc4:
    ld a, b
    pop bc
    ret


Call_050_5bc7:
    ld a, [$c863]
    rlca
    and $04
    ld c, a
    ld b, $03

jr_050_5bd0:
    ld a, c
    call $2fa5
    jr nc, jr_050_5beb

    ld a, [$dd76]
    cp $30
    jr z, jr_050_5beb

    cp $31
    jr z, jr_050_5beb

    cp $bb
    jr z, jr_050_5beb

    ld a, c
    res 2, a
    call Call_050_5bf0

jr_050_5beb:
    inc c
    dec b
    jr nz, jr_050_5bd0

    ret


Call_050_5bf0:
    push bc
    ld hl, $0060

jr_050_5bf4:
    ld a, c
    and $03
    jr z, jr_050_5c04

    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr jr_050_5bf4

jr_050_5c04:
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $01
    ld h, a
    call Call_050_757e

jr_050_5c0f:
    ld a, [hl]
    cp $ff
    jr z, jr_050_5c1d

    cp $80
    jr nc, jr_050_5c1a

    ld [hl], $e0

jr_050_5c1a:
    inc hl
    jr jr_050_5c0f

jr_050_5c1d:
    pop bc
    ret


Call_050_5c1f:
    ld a, [$c8dc]
    cp $83
    ret nz

    ld a, [$db73]
    cp $02
    ret nz

    ld a, [$c86c]
    or a
    ret


Call_050_5c30:
    ld a, $00
    ld [$dd23], a
    ld a, $00
    ld [$dd24], a
    ld a, $00
    ld [$dd25], a
    ld a, [$db75]
    ld b, a
    ld hl, $dd1f
    ld de, $dc33

jr_050_5c49:
    ld a, [hl+]
    cp $01
    jr nz, jr_050_5c61

    push hl
    ld hl, $dd23
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl], a
    inc de
    pop hl
    jr jr_050_5c64

jr_050_5c61:
    inc de
    inc de
    inc de

jr_050_5c64:
    dec b
    jr nz, jr_050_5c49

    ret


    ld a, [$c86c]
    or a
    jr nz, jr_050_5ca4

    call Call_050_6964
    call Call_050_6a55
    ld bc, $0304
    ld de, $0000

jr_050_5c7a:
    ld a, c
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_050_5c8a

    inc d

jr_050_5c8a:
    inc c
    dec b
    jr nz, jr_050_5c7a

    ld a, d
    or a
    jr nz, jr_050_5c94

    ld e, $03

jr_050_5c94:
    ld a, [$db4c]
    cp $02
    jr c, jr_050_5c9d

    ld a, $02

jr_050_5c9d:
    add e
    add $ec
    call Call_050_6a90
    ret


jr_050_5ca4:
    ld b, $03
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_5cb1

    ld c, $04
    jr jr_050_5cb3

jr_050_5cb1:
    ld c, $00

jr_050_5cb3:
    ld a, c
    call $2fa5
    jr c, jr_050_5cc4

    ld a, c
    ld hl, $db02
    call $2f6c
    bit 6, [hl]
    jr z, jr_050_5ce5

jr_050_5cc4:
    inc c
    dec b
    jr nz, jr_050_5cb3

    ld a, [$c863]
    bit 1, a
    jr z, jr_050_5cd4

    call Call_050_5d0f
    jr jr_050_5cd7

jr_050_5cd4:
    call Call_050_5d0a

jr_050_5cd7:
    ld a, $4f
    ld [$dd72], a
    ld a, $ff
    ld [$db73], a
    ld a, $eb
    jr jr_050_5cfb

jr_050_5ce5:
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_5cf1

    call Call_050_5d0a
    jr jr_050_5cf4

jr_050_5cf1:
    call Call_050_5d0f

jr_050_5cf4:
    ld a, $69
    ld [$dd72], a
    ld a, $ed

jr_050_5cfb:
    call Call_050_6a90
    ld a, $02
    call $1ae1
    ld a, [$dd72]
    call $1b2c
    ret


Call_050_5d0a:
    ld de, $cacd
    jr jr_050_5d12

Call_050_5d0f:
    ld de, $cd21

jr_050_5d12:
    ld hl, $c180
    call $0c80
    ret


Call_050_5d19:
    ld a, $02
    ld [$db55], a
    ld a, [$db73]
    or a
    jr nz, jr_050_5d36

    ld a, [$c899]
    and $1f
    cp $1f
    jr z, jr_050_5d3c

    ld a, [$c89a]
    and $1f
    cp $1f
    jr z, jr_050_5d61

jr_050_5d36:
    ld a, $01
    ld [$db76], a
    ret


jr_050_5d3c:
    ld hl, $d9ec
    inc [hl]
    call Call_050_695d
    ld a, [$db4c]
    cp $02
    jr c, jr_050_5d4c

    ld a, $02

jr_050_5d4c:
    ld c, a
    ld a, [$c89a]
    and $01
    ld b, a
    add a
    add b
    add c
    add $03
    call Call_050_6a90
    ld a, $00
    ld [$db55], a
    ret


jr_050_5d61:
    ld hl, $d9ec
    inc [hl]
    ld hl, $d9ec
    inc [hl]
    call Call_050_695d
    ld a, $04
    ld [$db88], a
    ld a, [$db4c]
    cp $02
    jr c, jr_050_5d7a

    ld a, $02

jr_050_5d7a:
    ld c, a
    ld a, [$c899]
    and $01
    ld b, a
    add a
    add b
    add c
    add $09
    call Call_050_6a90
    ld a, $01
    ld [$db55], a
    ret


Call_050_5d8f:
    ld a, $ff
    ld hl, $db79
    ld bc, $000a
    call $12c7
    ld b, $08
    ld c, $00
    ld h, $00

jr_050_5da0:
    ld a, c
    ld e, a
    ld d, a
    ld a, c
    call $2f76
    ld a, d
    and a
    jr nz, jr_050_5dac

    inc h

jr_050_5dac:
    inc c
    dec b
    jr nz, jr_050_5da0

    ld a, h
    or a
    jr nz, jr_050_5db8

    ld hl, $d9ec
    inc [hl]

jr_050_5db8:
    ret


    ld hl, sp+$00
    ld a, l
    ld [$da79], a
    ld a, h
    ld [$da7a], a
    xor a
    ld hl, $c8da
    ld bc, $0008
    call $12c7
    xor a
    ld hl, $c827
    ld bc, $0012
    call $12c7
    ld hl, $99c1
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    xor a
    ld hl, $d9ec
    ld bc, $0008
    call $12c7
    xor a
    ld hl, $d9f4
    ld bc, $0008
    call $12c7
    xor a
    ld [$d9ed], a
    ld [$dd62], a
    call $1264
    xor a
    ld [$dd60], a
    xor a
    ld [$c8ec], a
    xor a
    ld [$c87e], a
    ld hl, $5100
    rst $10
    ret


    ld a, [$c86c]
    or a
    jr z, jr_050_5e2e

    call $047e
    ld a, [$c850]
    or a
    ret nz

    call $3001
    ld a, [$dd62]
    or a
    ret z

    di
    ld hl, $0200
    rst $10
    ei
    ret


jr_050_5e2e:
    ld a, [$c850]
    or a
    ret nz

    call $3001
    call Call_050_6d68
    ld a, [$c850]
    or a
    ret nz

    ld a, [$da80]
    cp $01
    jp nz, Jump_050_5ece

    ld a, [$da81]
    cp $ff
    ret z

    ld a, [$da81]
    ld [$c81e], a
    ld hl, $170d
    rst $10
    ld hl, $1708
    rst $10
    ld a, [$da81]
    ld hl, $5e74
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $8000
    call $1577
    ld a, $02
    ld [$da80], a
    ret


    nop
    ld e, d
    ld bc, $025a
    ld e, d
    inc bc
    ld e, d
    inc b
    ld e, d
    dec b
    ld e, d
    ld b, $5a
    rlca
    ld e, d
    ld [$095a], sp
    ld e, d
    ld a, [bc]
    ld e, d
    dec bc
    ld e, d
    inc c
    ld e, d
    dec c
    ld e, d
    ld c, $5a
    rrca
    ld e, d
    db $10
    ld e, d
    ld de, $125a
    ld e, d
    inc de
    ld e, d
    inc d
    ld e, d
    dec d
    ld e, d
    ld d, $5a
    rla
    ld e, d
    jr jr_050_5f00

    add hl, de
    ld e, d
    ld a, [de]
    ld e, d
    dec de
    ld e, d
    inc e
    ld e, d
    dec e
    ld e, d
    ld e, $5a
    rra
    ld e, d
    ld a, [bc]
    ld e, e
    dec bc
    ld e, e
    inc c
    ld e, e
    dec c
    ld e, e
    ld c, $5b
    rrca
    ld e, e
    db $10
    ld e, e
    ld de, $125b
    ld e, e
    inc de
    ld e, e
    inc d
    ld e, e
    dec d
    ld e, e
    ld d, $5b

Jump_050_5ece:
    ld a, [$dd62]
    or a
    jr z, jr_050_5ee9

    ld a, [$c86c]
    or a
    jr nz, jr_050_5ede

    ld hl, $0200
    rst $10

jr_050_5ede:
    ld a, [$dd62]
    or a
    ret nz

    ld a, $00
    ld [$da80], a
    ret


jr_050_5ee9:
    ld a, [$d9ec]
    cp $0d
    jr z, jr_050_5f07

    ld a, [$c825]
    or a
    jr z, jr_050_5f07

    ld a, [$da82]
    or a
    jr z, jr_050_5f07

    ld hl, $5f05
    rst $10

jr_050_5f00:
    ld a, [$c87e]
    or a
    jr nz, jr_050_5f07

    ret


jr_050_5f07:
    ld a, [$da82]
    or a
    jr z, jr_050_5f1f

    ld a, [$da83]
    cp $09
    jr nz, jr_050_5f1f

    ld hl, $5f05
    rst $10
    ld a, [$c87e]
    or a
    jr nz, jr_050_5f1f

    ret


jr_050_5f1f:
    ld a, [$db73]
    cp $ff
    jr z, jr_050_5f4e

    ld a, [$d9ec]
    rst $00
    ld e, l
    ld e, a
    add e
    ld e, a
    sbc [hl]
    ld e, a
    or c
    ld e, a
    ld b, c
    ld h, b
    ld e, a
    ld h, b
    ld l, c
    ld h, b
    and [hl]
    ld h, b
    cp e
    ld h, b
    sbc h
    ld l, d
    db $dd
    ld h, b
    ldh [$62], a
    or c
    ld h, e
    jp nz, $fa63

    ld h, e
    ld b, c
    ld l, c
    call z, $d665
    ld h, l

jr_050_5f4e:
    ld a, [$dd80]
    ld hl, $dd9a
    and [hl]
    cp $ff
    ret nz

    xor a
    ld [$db73], a
    ret


    ld hl, $1702
    rst $10
    ld hl, $1708
    rst $10
    ld a, [$ca8d]
    or a
    jr nz, jr_050_5f76

    ld hl, $0c00
    call $096d
    ld hl, $d9ec
    inc [hl]
    ret


jr_050_5f76:
    call Call_050_6964
    ld a, $05
    ld [$da33], a
    ld hl, $d9ec
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$da33]
    or a
    jr z, jr_050_5f93

    dec a
    ld [$da33], a
    ret


jr_050_5f93:
    ld a, [$ca8d]
    or a
    jp z, Jump_050_63fa

    call Call_050_69b4
    ret


    call Call_050_5d19
    call Call_050_68ec
    ld hl, $d9ec
    inc [hl]
    xor a
    ld [$d9ed], a
    xor a
    ld [$d9ee], a
    ret


    ld hl, $d9ec
    inc [hl]
    xor a
    ld [$c8da], a
    call Call_050_5d8f
    call Call_050_5ffd
    ld hl, $db42
    ld bc, $0008
    xor a
    call $12c7
    ld a, [$db74]
    ld b, a
    ld c, $00
    ld hl, $dd03
    call Call_050_5fe8
    ld a, [$c863]
    bit 1, a
    ret z

    ld a, [$db75]
    ld b, a
    ld c, $04
    ld hl, $dd07
    call Call_050_5fe8
    ret


Call_050_5fe8:
jr_050_5fe8:
    ld a, c
    call $2fa5
    jr c, jr_050_5ff4

    ld a, [hl]
    and $0f
    ld [hl+], a
    jr jr_050_5ff8

jr_050_5ff4:
    ld a, [hl]
    or $e0
    ld [hl+], a

jr_050_5ff8:
    inc c
    dec b
    jr nz, jr_050_5fe8

    ret


Call_050_5ffd:
    ld de, $dcec
    ld bc, $0800

jr_050_6003:
    ld a, c
    call $2fa5
    jr c, jr_050_6036

    ld a, c
    ld hl, $db06
    call $2f6c
    bit 2, [hl]
    jr z, jr_050_6036

    ld a, c
    ld hl, $c1cd
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 7, [hl]
    jr nz, jr_050_6036

    ld a, c
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 6, [hl]
    jr nz, jr_050_6036

    ld a, $ff
    ld [de], a
    inc de
    jr jr_050_603b

jr_050_6036:
    ld a, $ff
    ld [de], a
    inc de
    ld [de], a

jr_050_603b:
    inc de
    inc c
    dec b
    jr nz, jr_050_6003

    ret


    jr jr_050_6057

Call_050_6043:
    call Call_050_773e
    call Call_050_793c
    ld a, [$da88]
    or a
    jr nz, jr_050_6053

    call Call_050_799e
    ret


jr_050_6053:
    call Call_050_79a4
    ret


jr_050_6057:
    call Call_050_4017
    xor a
    ld [$d9ed], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $5800
    rst $10
    ret


    ld hl, $d9ec
    inc [hl]
    xor a
    ld [$d9ed], a
    ld [$d9ee], a
    ld [$dd75], a
    ld [$dd6c], a
    ld [$dd68], a
    ld a, [$c86c]
    or a
    jr z, jr_050_60a6

    ld a, [$c1ed]
    ld l, a
    ld a, [$c1ee]
    ld h, a
    ld a, l
    ld [$c899], a
    ld a, h
    ld [$c89a], a
    call $12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, l
    ld [$c1ed], a
    ld a, h
    ld [$c1ee], a

jr_050_60a6:
    ld hl, $5200
    rst $10
    call Call_050_79a4
    call Call_050_7617
    ld a, [$d9ec]
    cp $08
    ret nz

    ld a, $05
    ld [$da33], a
    ld a, [$da33]
    or a
    jr z, jr_050_60c6

    dec a
    ld [$da33], a
    ret


jr_050_60c6:
    ld hl, $d9ec
    inc [hl]
    xor a
    ld [$db4c], a
    ld [$db4d], a
    ld [$db4e], a
    ld [$d9ed], a
    call Call_050_6043
    jp Jump_050_6a9c


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c89b
    ld a, $d2
    ld [hl+], a
    ld a, $d2
    ld [hl+], a
    ld [hl], $e2
    ld a, [$db4e]
    cp $02
    jr nz, jr_050_6102

    ld hl, $5201
    rst $10
    xor a
    ld [$db4e], a
    ld a, $05
    ld [$da33], a
    ret


jr_050_6102:
    ld a, [$da33]
    or a
    jr z, jr_050_610d

    dec a
    ld [$da33], a
    ret


jr_050_610d:
    call Call_050_773e
    call Call_050_799e
    call Call_050_767e
    ld a, [$c86c]
    or a
    jr z, jr_050_6129

    ld a, $01
    ld [$c8c7], a
    ld a, $10
    ld [$d9ec], a
    jp Jump_050_6186


jr_050_6129:
    call Call_050_5c30
    ld hl, $5102
    rst $10
    ld a, [$db55]
    or a
    jr z, jr_050_6140

    xor a
    ld [$dd61], a
    ld hl, $d9ec
    inc [hl]
    jr jr_050_6186

jr_050_6140:
    ld hl, $dd23
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_050_6182

    call Call_050_61d2
    ld hl, $0106
    rst $10
    call Call_050_6187
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, e
    ldh [$d7], a
    ld hl, $c180
    call $09c7
    call Call_050_61bd
    ld a, b
    ld hl, $0b0e
    cp $01
    jr nz, jr_050_617f

    ld a, c
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c190
    call $0c80
    ld hl, $0b23

jr_050_617f:
    call $096d

jr_050_6182:
    ld hl, $d9ec
    inc [hl]

Jump_050_6186:
jr_050_6186:
    ret


Call_050_6187:
    call Call_050_61bd
    ld a, [$dd23]
    ld l, a
    ld a, [$dd24]
    ld h, a
    ld a, [$dd25]
    ld e, a
    ld a, b
    push af
    call $1e1e
    pop af
    cp $02
    ret z

    cp $03
    jr z, jr_050_61b0

    ld a, l
    sub $01
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, e
    sbc $00
    ld e, a
    ret


jr_050_61b0:
    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, e
    adc $00
    ld e, a
    ret


Call_050_61bd:
    ld b, $00
    ld a, [$ca8e]
    call Call_050_62cd
    ld a, [$ca8f]
    call Call_050_62cd
    ld a, [$ca90]
    call Call_050_62cd
    ret


Call_050_61d2:
    call Call_050_6187
    ld a, l
    ldh [$d8], a
    ld a, h
    ldh [$d9], a
    ld a, e
    ldh [$da], a
    ld a, [$dd23]
    ld l, a
    ld a, [$dd24]
    ld h, a
    ld a, [$dd25]
    ld e, a
    ld a, $10
    call $1e1e
    ld a, l
    ldh [$db], a
    ld a, h
    ldh [$dc], a
    ld a, e
    ldh [$dd], a
    ld hl, $cac1
    ld b, $14
    xor a
    ld [$cac0], a

Jump_050_6201:
    push hl
    ld a, [hl]
    or a
    jp z, Jump_050_62b4

    cp $02
    jr z, jr_050_6262

    ld a, l
    add $63
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_050_62b4

    ld a, l
    add $e8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, [hl]
    cp $63
    jp z, Jump_050_62b4

    push af
    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop af
    cp [hl]
    jp nc, Jump_050_62b4

    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ldh a, [$db]
    add [hl]
    ld [hl+], a
    ld e, a
    ldh a, [$dc]
    adc [hl]
    ld [hl+], a
    ld d, a
    ldh a, [$dd]
    adc [hl]
    ld [hl], a
    ld c, a
    ld a, e
    sub $7f
    ld a, d
    sbc $96
    ld a, c
    sbc $98
    jr c, jr_050_62b4

    ld de, $967f
    ld c, $98
    ld [hl], c
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    jr jr_050_62b4

jr_050_6262:
    ld a, l
    add $4a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    bit 7, [hl]
    jr nz, jr_050_62b4

    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $63
    jr z, jr_050_62b4

    push af
    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop af
    cp [hl]
    jr nc, jr_050_62b4

    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ldh a, [$d8]
    add [hl]
    ld [hl+], a
    ld e, a
    ldh a, [$d9]
    adc [hl]
    ld [hl+], a
    ld d, a
    ldh a, [$da]
    adc [hl]
    ld [hl], a
    ld c, a
    ld a, e
    sub $7f
    ld a, d
    sbc $96
    ld a, c
    sbc $98
    jr c, jr_050_62b4

    ld de, $967f
    ld c, $98
    ld [hl], c
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e

Jump_050_62b4:
jr_050_62b4:
    pop hl
    push bc
    push hl
    call Call_050_688e
    ld hl, $cac0
    inc [hl]
    pop hl
    pop bc
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jp nz, Jump_050_6201

    ret


Call_050_62cd:
    cp $ff
    ret z

    ld hl, $cb0b
    push af
    push bc
    call $223b
    pop bc
    pop af
    bit 7, [hl]
    ret nz

    ld c, a
    inc b
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$ca8e]
    call Call_050_6373
    jr nc, jr_050_62fd

    ld a, [$ca8f]
    call Call_050_6373
    jr nc, jr_050_62fd

    ld a, [$ca90]
    call Call_050_6373
    jr c, jr_050_6306

jr_050_62fd:
    ld hl, $d9ec
    inc [hl]
    xor a
    ld [$d9f4], a
    ret


jr_050_6306:
    ld b, $00

jr_050_6308:
    push bc
    ld a, b
    call Call_050_6373
    pop bc
    jr nc, jr_050_6327

    inc b
    ld a, b
    cp $14
    jr nz, jr_050_6308

    ld hl, $d9ec
    inc [hl]
    ld hl, $d9ec
    inc [hl]
    xor a
    ld [$d9f4], a
    ld hl, $5407
    rst $10
    ret


jr_050_6327:
    ld hl, $1302
    rst $10
    ld hl, $510d
    rst $10
    ret


    cp $ff
    ret z

    ld [$cac0], a
    ld a, b
    ld hl, $da15
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$cac0]
    ld d, a
    ld hl, $0107
    rst $10
    ld a, d
    pop hl
    cp [hl]
    ret z

    ld [hl], a
    ld l, a
    ld h, $0a
    ld de, $c190
    call $097a
    ld a, [$cac0]
    ld hl, $cac2
    call $223b
    ld e, l
    ld d, h
    ld hl, $c180
    call $0c80
    ld hl, $0b21
    call $096d
    ld a, [$c825]
    or a
    ret


Call_050_6373:
    cp $ff
    jr z, jr_050_6392

    ld [$cac0], a
    ld hl, $cb0c
    call $223b
    ld a, [hl]
    cp $63
    jr z, jr_050_6392

    ld a, [$cac0]
    ld hl, $cac1
    call $223b
    ld a, [hl]
    or a
    jr nz, jr_050_6394

jr_050_6392:
    scf
    ret


jr_050_6394:
    ld hl, $1300
    rst $10
    ld a, [$cac0]
    ld hl, $cb0e
    call $223b
    ldh a, [$d5]
    ld b, a
    ld a, [hl+]
    sub b
    ldh a, [$d6]
    ld b, a
    ld a, [hl+]
    sbc b
    ldh a, [$d7]
    ld b, a
    ld a, [hl+]
    sbc b
    ret


    ld a, [$db55]
    or a
    jr nz, jr_050_63bc

    ld hl, $510c
    rst $10
    ret


jr_050_63bc:
    ld a, $0e
    ld [$d9ec], a
    ret


    ld a, [$d9f4]
    cp $24
    jr z, jr_050_63ce

    ld a, [$c825]
    or a
    ret nz

jr_050_63ce:
    ld a, [$dd61]
    cp $ff
    jr nz, jr_050_63da

    ld hl, $d9ec
    inc [hl]
    ret


jr_050_63da:
    ld a, [$dd61]
    sub $04
    add a
    ld hl, $da03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$da12], a
    ld a, [hl]
    ld [$da13], a
    ld hl, $1406
    rst $10
    ld hl, $510e
    rst $10
    ret


Jump_050_63fa:
    ld a, [$c825]
    or a
    ret nz

    ld hl, $0106
    rst $10
    ld hl, $c8ea
    set 7, [hl]
    ld a, $04
    call $1688
    ld a, $01
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ld a, [$c968]
    cp $5d
    jp nz, Jump_050_64d0

    ld hl, $c8ea
    res 7, [hl]
    ld a, [$d999]
    cp $02
    jr z, jr_050_6490

    cp $01
    jr z, jr_050_6476

    call Call_050_66c3
    xor a
    ld [$d8d7], a
    ld a, [$db55]
    cp $01
    ret nz

    ld a, $ff
    ld [$d9cd], a
    ld hl, $0006
    ld a, l
    ld [$c96d], a
    ld a, h
    ld [$c96e], a
    ld hl, $00e8
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
    ret


jr_050_6476:
    call Call_050_66c3
    xor a
    ld [$d8d7], a
    ld a, [$db55]
    cp $01
    jr z, jr_050_649f

    ld a, [$d9cd]
    cp $02
    ret nz

    ld a, $02
    ld [$d999], a
    ret


jr_050_6490:
    xor a
    ld [$d8d7], a
    ld a, $03
    ld [$d999], a
    ld a, [$db55]
    cp $01
    ret nz

jr_050_649f:
    ld a, $08
    ld [$d92b], a
    ld hl, $0000
    ld a, l
    ld [$c96d], a
    ld a, h
    ld [$c96e], a
    ld hl, $00e8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0058
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld hl, $c8ea
    res 7, [hl]
    ret


Jump_050_64d0:
    ld a, [$c968]
    cp $52
    jr nz, jr_050_64e5

    call Call_050_679e
    xor a
    ld [$d8d7], a
    ld hl, $c8ea
    res 7, [hl]
    jr jr_050_6536

jr_050_64e5:
    ld a, [$da09]
    cp $02
    jr nz, jr_050_6536

    ld a, [$db55]
    cp $01
    ret nz

    ld b, $00
    ld c, $00
    ld a, [$ca8e]
    call Call_050_6525
    ld a, [$ca8f]
    call Call_050_6525
    ld a, [$ca90]
    call Call_050_6525
    ld a, b
    cp c
    ret nz

    ld a, [$ca8e]
    ld hl, $cb11
    call $223b
    ld [hl], $01
    inc hl
    ld [hl], $00
    ld a, [$ca8e]
    ld hl, $cb0b
    call $223b
    ld [hl], $00
    ret


Call_050_6525:
    cp $ff
    ret z

    inc b
    ld hl, $cb0b
    call $223b
    ld a, [hl]
    and $80
    ld [hl], a
    ret z

    inc c
    ret


jr_050_6536:
    ld a, [$db55]
    cp $01
    jr z, jr_050_6549

    ld a, [$da09]
    cp $03
    ret nz

    ld a, $0e
    ld [$c8ed], a
    ret


jr_050_6549:
    ld a, $08
    ld [$d92b], a
    ld hl, $0000
    ld a, l
    ld [$c96d], a
    ld a, h
    ld [$c96e], a
    ld hl, $00e8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0058
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld hl, $c8ea
    res 7, [hl]
    ld a, [$ca4b]
    ld l, a
    ld a, [$ca4c]
    ld h, a
    ld a, [$ca4d]
    ld e, a
    ld a, $02
    call $1e1e
    ld a, l
    ld [$ca4b], a
    ld a, h
    ld [$ca4c], a
    ld a, e
    ld [$ca4d], a
    ld hl, $ca51
    ld b, $14

jr_050_659b:
    ld a, [hl]
    or a
    jr z, jr_050_65b7

    cp $ff
    jr z, jr_050_65b7

    ld [$da5e], a
    push hl
    push bc
    ld hl, $0302
    rst $10
    pop bc
    pop hl
    ld a, [$da6d]
    bit 2, a
    jr nz, jr_050_65b7

    ld [hl], $ff

jr_050_65b7:
    inc hl
    dec b
    jr nz, jr_050_659b

    ld hl, $0305
    rst $10
    xor a
    ldh [$90], a
    xor a
    ld [$d8d7], a
    ld hl, $c8eb
    res 0, [hl]
    ret


    ld a, $01
    ld [$c873], a
    ld hl, $d9ec
    inc [hl]
    ret


    ld a, [$c86e]
    cp $01
    ret nz

    ld hl, $cacd
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_65e9

    ld hl, $cd21

jr_050_65e9:
    ld de, $c8bb
    ld b, $08
    call Call_050_66bc
    ld a, [$c8ba]
    cp $ff
    jr z, jr_050_6653

    ld a, [$db55]
    or a
    jr z, jr_050_6653

    di
    ld hl, $cac1
    ld de, $a1fb
    ld bc, $0ba4
    call Call_050_66a9
    ei
    ld a, [$c8ba]
    ld hl, $cac1
    call $223b
    ld de, $d665
    ld b, $95
    call Call_050_66bc
    ld a, [$c8ba]
    ld hl, $cac1
    call $223b
    ld [hl], $00
    di
    ld hl, $ca8d
    ld de, $a1c7
    ld bc, $0007
    call Call_050_66a9
    ei
    ld hl, $0105
    rst $10
    di
    call $2197
    ei
    ld a, $00
    call Call_050_668f
    ld a, $01
    call Call_050_668f
    ld a, $02
    call Call_050_668f
    ld a, $14
    ld [$c8ba], a

jr_050_6653:
    ld a, $04
    call $1688
    ld a, $06
    ld [$c88a], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    xor a
    ld [$c865], a
    ld [$c866], a
    xor a
    ld [$c863], a
    ld [$c864], a
    xor a
    ld [$c86c], a
    xor a
    ld [$c86e], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86d], a
    ret


Call_050_668f:
    ld c, a
    ld hl, $c8c4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    cp [hl]
    ret z

    ld a, [$c8ba]
    cp [hl]
    jr z, jr_050_66a6

    ret nc

    dec [hl]
    ret


jr_050_66a6:
    ld [hl], $14
    ret


Call_050_66a9:
    ld a, $0a
    ld [$0100], a

jr_050_66ae:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_050_66ae

    ld a, $00
    ld [$0100], a
    ret


Call_050_66bc:
jr_050_66bc:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_050_66bc

    ret


Call_050_66c3:
    ld a, [$d9cd]
    cp $03
    ret z

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
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$d9cd]
    add b
    add a
    ld hl, $6768
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
    call Call_050_6756
    ld [$d7ce], a
    ld a, $01
    ld [$d7cf], a
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    call Call_050_6756
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    call Call_050_6756
    ld [$d7d0], a
    ld a, $01
    ld [$d7d1], a
    ret


Call_050_6756:
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

Call_050_679e:
    ld hl, $d7ca
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
    ld a, [$d9cd]
    or a
    jr nz, jr_050_681d

    ld a, $01
    ld [$d9cd], a
    ld a, $02
    ld [$da02], a
    ld a, [$d9d1]
    ld l, a
    ld a, [$d9d2]
    ld h, a
    ld a, l
    ld [$da03], a
    ld a, h
    ld [$da04], a
    call Call_050_6756
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$da02]
    or a
    ret z

    ld a, [$d9d3]
    ld l, a
    ld a, [$d9d4]
    ld h, a
    ld a, l
    ld [$da05], a
    ld a, h
    ld [$da06], a
    call Call_050_6756
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld a, [$da02]
    cp $01
    ret z

    ld a, [$d9d5]
    ld l, a
    ld a, [$d9d6]
    ld h, a
    ld a, l
    ld [$da07], a
    ld a, h
    ld [$da08], a
    call Call_050_6756
    ld [$d7ce], a
    ld a, $01
    ld [$d7cf], a
    ret


jr_050_681d:
    cp $01
    jr nz, jr_050_6888

    ld a, $02
    ld [$d9cd], a
    ld a, $02
    ld [$da02], a
    ld a, [$d9d9]
    ld l, a
    ld a, [$d9da]
    ld h, a
    ld a, l
    ld [$da03], a
    ld a, h
    ld [$da04], a
    call Call_050_6756
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$da02]
    or a
    ret z

    ld a, [$d9db]
    ld l, a
    ld a, [$d9dc]
    ld h, a
    ld a, l
    ld [$da05], a
    ld a, h
    ld [$da06], a
    call Call_050_6756
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld a, [$da02]
    cp $01
    ret z

    ld a, [$d9dd]
    ld l, a
    ld a, [$d9de]
    ld h, a
    ld a, l
    ld [$da07], a
    ld a, h
    ld [$da08], a
    call Call_050_6756
    ld [$d7ce], a
    ld a, $01
    ld [$d7cf], a
    ret


jr_050_6888:
    ld a, $03
    ld [$d9cd], a
    ret


Call_050_688e:
    ld a, [hl]
    or a
    ret z

    ld a, l
    add $4b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $63
    jr z, jr_050_68eb

    push af
    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop af
    cp [hl]
    jr nc, jr_050_68eb

    push hl
    ld a, l
    add $b4
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, [hl]
    pop hl
    cp $01
    jr z, jr_050_68eb

    ld a, [hl]
    push af
    ld a, l
    add $ff
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    pop af
    ld b, [hl]
    ld [hl], a
    push bc
    push hl
    ld a, [$cac0]
    call Call_050_6373
    pop hl
    pop bc
    ld [hl], b
    jr c, jr_050_68eb

    ld a, l
    add $02
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ldh a, [$d5]
    sub $01
    ld [hl+], a
    ldh a, [$d6]
    sbc $00
    ld [hl+], a
    ldh a, [$d7]
    sbc $00
    ld [hl], a

jr_050_68eb:
    ret


Call_050_68ec:
    ld a, [$db55]
    cp $02
    jr z, jr_050_6903

    cp $01
    jr z, jr_050_68fd

    ld d, $00
    ld e, $03
    jr jr_050_6912

jr_050_68fd:
    ld d, $03
    ld e, $01
    jr jr_050_6912

jr_050_6903:
    ld a, [$c86c]
    or a
    jr nz, jr_050_690f

    ld d, $00
    ld e, $01
    jr jr_050_6912

jr_050_690f:
    ld de, $0000

jr_050_6912:
    ld hl, $dd13
    ld b, $04
    ld c, $00

jr_050_6919:
    ld a, c
    call $2fa5
    jr c, jr_050_6922

    ld [hl], d
    jr jr_050_6924

jr_050_6922:
    ld [hl], $ff

jr_050_6924:
    inc hl
    inc c
    dec b
    jr nz, jr_050_6919

    ld hl, $dd17
    ld b, $04
    ld c, $04

jr_050_6930:
    ld a, c
    call $2fa5
    jr c, jr_050_6939

    ld [hl], e
    jr jr_050_693b

jr_050_6939:
    ld [hl], $ff

jr_050_693b:
    inc hl
    inc c
    dec b
    jr nz, jr_050_6930

    ret


    ret


jr_050_6942:
    ld de, $cacd
    ld a, [$c863]
    bit 1, a
    jr nz, jr_050_694f

    ld de, $cd21

jr_050_694f:
    ld hl, $c180
    call $0c80
    ld a, $01
    ld [$c823], a
    jp Jump_050_6a3f


Call_050_695d:
    call Call_050_6964
    call Call_050_6a55
    ret


Call_050_6964:
    ld a, [$c86c]
    or a
    jr nz, jr_050_6942

    ld a, [$da02]
    or a
    jr z, jr_050_69ab

    cp $01
    jr z, jr_050_6989

    ld a, [$dc40]
    ld b, a
    ld a, [$dc41]
    cp b
    jr z, jr_050_699b

    ld b, a
    ld a, [$dc42]
    cp b
    jr z, jr_050_69a9

    ld a, $05
    jr jr_050_69ab

jr_050_6989:
    ld a, [$dc40]
    ld b, a
    ld a, [$dc41]
    cp b
    jr z, jr_050_6997

    ld a, $02
    jr jr_050_69ab

jr_050_6997:
    ld a, $01
    jr jr_050_69ab

jr_050_699b:
    ld a, [$dc41]
    ld b, a
    ld a, [$dc42]
    cp b
    jr z, jr_050_6997

    ld a, $03
    jr jr_050_69ab

jr_050_69a9:
    ld a, $04

jr_050_69ab:
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ret


Call_050_69b4:
    ld a, $00
    ld [$c822], a
    ld a, [$db4d]
    or a
    jr z, jr_050_69c3

    call Call_050_6a16
    ret


jr_050_69c3:
    ld a, [$db4c]
    cp $05
    jr z, jr_050_6a0c

    cp $04
    jr z, jr_050_6a02

    cp $03
    jr z, jr_050_69f8

    cp $02
    jr z, jr_050_69ee

    cp $01
    jr z, jr_050_69e4

    call Call_050_6a55
    ld a, $00
    ld [$c823], a
    jr jr_050_6a3f

jr_050_69e4:
    call Call_050_6a55
    ld a, $01
    ld [$c823], a
    jr jr_050_6a3f

jr_050_69ee:
    call Call_050_6a61
    ld a, $02
    ld [$c823], a
    jr jr_050_6a3f

jr_050_69f8:
    call Call_050_6a55
    ld a, $01
    ld [$c823], a
    jr jr_050_6a47

jr_050_6a02:
    call Call_050_6a55
    ld a, $00
    ld [$c823], a
    jr jr_050_6a47

jr_050_6a0c:
    call Call_050_6a61
    ld a, $02
    ld [$c823], a
    jr jr_050_6a47

Call_050_6a16:
    ld a, [$db4c]
    cp $05
    jr z, jr_050_6a35

    cp $04
    jr z, jr_050_6a2b

    call Call_050_6a84
    ld a, $00
    ld [$c823], a
    jr jr_050_6a3f

jr_050_6a2b:
    call Call_050_6a78
    ld a, $01
    ld [$c823], a
    jr jr_050_6a3f

jr_050_6a35:
    call Call_050_6a84
    ld a, $00
    ld [$c823], a
    jr jr_050_6a3f

Jump_050_6a3f:
jr_050_6a3f:
    call Call_050_6a93
    ld hl, $d9ec
    inc [hl]
    ret


jr_050_6a47:
    call Call_050_6a93
    ld a, $01
    ld [$db4d], a
    ld a, $05
    ld [$da33], a
    ret


Call_050_6a55:
    ld a, $04
    ld hl, $c180
    ld [$db50], a
    call Call_050_7d6f
    ret


Call_050_6a61:
    ld a, $04
    ld hl, $c180
    ld [$db50], a
    call Call_050_7d6f
    ld a, $05
    ld hl, $c190
    ld [$db50], a
    call Call_050_7d6f
    ret


Call_050_6a78:
    ld a, $05
    ld hl, $c180
    ld [$db50], a
    call Call_050_7d6f
    ret


Call_050_6a84:
    ld a, $06
    ld hl, $c180
    ld [$db50], a
    call Call_050_7d6f
    ret


Call_050_6a90:
    ld [$c823], a

Call_050_6a93:
    xor a
    ld [$c822], a
    ld hl, $4c00
    rst $10
    ret


Jump_050_6a9c:
    ld a, [$d9ed]
    rst $00
    xor h
    ld l, d
    ld bc, $156b
    ld l, e
    ld a, [c]
    ld l, e
    adc e
    ld l, h
    db $fc
    ld l, h
    ld hl, $db00
    res 4, [hl]
    res 6, [hl]
    inc hl
    res 4, [hl]
    res 6, [hl]
    inc hl
    ld b, $08

jr_050_6abb:
    inc hl
    inc hl
    res 7, [hl]
    inc hl
    inc hl
    ld a, [hl]
    rrca
    and $55
    ld [hl+], a
    ld a, [hl]
    and $30
    call nz, Call_050_6af6
    inc hl
    ld a, [hl]
    and $c0
    ld [hl+], a
    xor a
    ld [hl+], a
    dec b
    jr nz, jr_050_6abb

    ld b, $08
    xor a

jr_050_6ad9:
    ld [hl+], a
    dec b
    jr nz, jr_050_6ad9

    ld a, [hl]
    and $03
    ld [hl+], a
    ld a, [hl]
    and $03
    ld [hl+], a
    ld hl, $d9ed
    inc [hl]
    xor a
    ld [$db88], a
    ld [$d9f2], a
    ld [$d9f3], a
    jr jr_050_6b01

    ret


Call_050_6af6:
    ld a, [hl]
    and $cf
    ld e, a
    ld a, [hl]
    rrca
    and $10
    or e
    ld [hl], a
    ret


Jump_050_6b01:
jr_050_6b01:
    ld hl, $d9ed
    inc [hl]
    ld a, [$db88]
    call $2fa5
    jr nc, jr_050_6b15

    ld a, $05
    ld [$d9ed], a
    jp Jump_050_6cfc


jr_050_6b15:
    ld hl, $d9ed
    inc [hl]
    ld a, [$db88]
    ld hl, $db07
    call $2f6c
    ld a, [hl]
    and $3f
    ld d, a
    ld a, [hl]
    and $c0
    jp z, Jump_050_6b4e

    ld b, $00
    push hl
    push de
    sub $40
    jr nz, jr_050_6b3f

    call Call_050_7e0e
    ld a, $dd
    call Call_050_6a90
    xor a
    ld b, $01

jr_050_6b3f:
    pop de
    pop hl
    or d
    ld [hl], a
    ld a, $05
    ld [$d9ed], a
    ld a, b
    or a
    jp z, Jump_050_6cfc

    ret


Jump_050_6b4e:
    ld a, [$db88]
    ld hl, $db02
    call $2f6c
    ld a, [hl]
    and $03
    jr nz, jr_050_6b64

    ld a, $05
    ld [$d9ed], a
    jp Jump_050_6cfc


jr_050_6b64:
    bit 0, a
    jr z, jr_050_6b71

    ld a, $e1
    ld [$db4c], a
    ld d, $10
    jr jr_050_6b78

jr_050_6b71:
    ld a, $e2
    ld [$db4c], a
    ld d, $06

jr_050_6b78:
    ld a, [$db88]
    call $2fda
    ld a, d
    call $1e0d
    ld a, h
    or l
    jr nz, jr_050_6b89

    ld hl, $0001

jr_050_6b89:
    call Call_050_6bb4
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db88]
    call Call_050_7e0e
    ld hl, $c190
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call $0a7c
    ld a, [$db4c]
    call Call_050_6a90
    ld a, $05
    ld [$da33], a
    ret


Call_050_6bb4:
    ld a, [$db4c]
    cp $e1
    jr z, jr_050_6bd7

    ld bc, $001e
    call $2f45
    jr c, jr_050_6bf1

    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $0b
    call $1e0d
    add $1e
    ld l, a
    ld h, $00
    jr jr_050_6bf1

jr_050_6bd7:
    ld bc, $000a
    call $2f45
    jr c, jr_050_6bf1

    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $06
    call $1e0d
    add $0a
    ld l, a
    ld h, $00

jr_050_6bf1:
    ret


    ld a, [$da33]
    or a
    jr z, jr_050_6c04

    dec a
    ld [$da33], a
    or a
    ret nz

    ld a, $fd
    call Call_050_6a90
    ret


jr_050_6c04:
    ld hl, $d9ed
    inc [hl]
    ld a, [$db88]
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call $2f45
    jr z, jr_050_6c30

    jr c, jr_050_6c30

    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    jr jr_050_6c33

jr_050_6c30:
    ld bc, $0000

jr_050_6c33:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, b
    or c
    jr z, jr_050_6c49

    call Call_050_79a4
    call Call_050_7617
    ld a, $05
    ld [$d9ed], a
    jp Jump_050_6cfc


jr_050_6c49:
    ld a, [$db88]
    ld [$db89], a
    ld hl, $5801
    rst $10
    ld a, [$db88]
    ld [$db4c], a
    ld hl, $5103
    rst $10
    call Call_050_7c3d
    ld a, $04
    ld [$d9ed], a
    ld a, [$db88]
    call Call_050_7e0e
    ld a, $ea
    call Call_050_6a90
    call Call_050_79a4
    call Call_050_7617
    ld a, [$c86c]
    or a
    ret nz

    ld a, [$db88]
    cp $04
    ret c

    cp $07
    ret z

    ld a, [$db88]
    ld [$dd61], a
    ret


    ld hl, $d9ed
    inc [hl]
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld a, [$c86c]
    or a
    jr nz, jr_050_6cc3

    ld a, [$db88]
    cp $04
    jr c, jr_050_6cc3

jr_050_6ca4:
    ld a, c
    call $2fa5
    jr nc, jr_050_6cfc

    inc c
    dec b
    jr nz, jr_050_6ca4

jr_050_6cae:
    ld a, $00
    ld [$db55], a

jr_050_6cb3:
    ld a, $0a
    ld [$d9ec], a
    ld a, $02
    call $1ae1
    ld a, $02
    ld [$db4e], a
    ret


jr_050_6cc3:
    ld a, c
    call $2fa5
    jr c, jr_050_6cd4

    ld a, c
    ld hl, $db02
    call $2f6c
    bit 6, [hl]
    jr z, jr_050_6cfc

jr_050_6cd4:
    inc c
    dec b
    jr nz, jr_050_6cc3

    ld a, $01
    ld [$db55], a
    ld a, [$c86c]
    or a
    jr z, jr_050_6cb3

    ld a, [$c863]
    bit 1, a
    jr z, jr_050_6cf3

    ld a, [$db88]
    cp $04
    jr nc, jr_050_6cb3

    jr jr_050_6cae

jr_050_6cf3:
    ld a, [$db88]
    cp $04
    jr c, jr_050_6cb3

    jr jr_050_6cae

Jump_050_6cfc:
jr_050_6cfc:
    ld hl, $db88
    inc [hl]
    ld a, [hl]
    cp $08
    jr z, jr_050_6d12

    call $2fa5
    jr c, jr_050_6cfc

    ld a, $01
    ld [$d9ed], a
    jp Jump_050_6b01


jr_050_6d12:
    ld bc, $0300
    ld de, $0001
    ld hl, $dd13
    ld a, [$c86c]
    or a
    jr z, jr_050_6d23

    ld e, $00

jr_050_6d23:
    ld a, c
    call $2fa5
    jr c, jr_050_6d2c

    ld [hl], d
    jr jr_050_6d2e

jr_050_6d2c:
    ld [hl], $ff

jr_050_6d2e:
    inc hl
    inc c
    dec b
    jr nz, jr_050_6d23

    ld a, c
    call $2fa5
    jr c, jr_050_6d3b

    ld [hl], $01

jr_050_6d3b:
    inc hl
    inc c
    ld bc, $0304

jr_050_6d40:
    ld a, c
    call $2fa5
    jr c, jr_050_6d49

    ld [hl], e
    jr jr_050_6d4b

jr_050_6d49:
    ld [hl], $ff

jr_050_6d4b:
    inc hl
    inc c
    dec b
    jr nz, jr_050_6d40

    ld a, c
    call $2fa5
    jr c, jr_050_6d58

    ld [hl], $01

jr_050_6d58:
    inc hl
    inc c
    ld a, $03
    ld [$d9ec], a
    ld hl, $db76
    ld a, [hl]
    cp $ff
    ret z

    inc [hl]
    ret


Call_050_6d68:
    ld a, [$cab5]
    inc a
    ld [$cab5], a
    cp $3c
    ret nz

    xor a
    ld [$cab5], a
    ld a, [$cab6]
    inc a
    ld [$cab6], a
    cp $3c
    ret nz

    xor a
    ld [$cab6], a
    ld a, [$cab7]
    inc a
    ld [$cab7], a
    cp $3c
    ret nz

    xor a
    ld [$cab7], a
    ld a, [$cab8]
    inc a
    ld [$cab8], a
    cp $64
    ret nz

    ld a, $63
    ld [$cab8], a
    ld a, $3b
    ld [$cab7], a
    ld [$cab6], a
    xor a
    ld [$cab5], a
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

    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jp c, $74e0

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
    jp c, $74e0

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
    call nc, Call_050_7d7d
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
    jr c, jr_050_71da

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

jr_050_71da:
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
    jr nz, jr_050_7369

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
    jr z, jr_050_7391

    ld a, [hl+]

jr_050_7369:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_050_73a1

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

jr_050_7391:
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

jr_050_73a1:
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
    jr nc, jr_050_7448

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
    jr c, jr_050_746b

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

jr_050_7448:
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

jr_050_746b:
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


Call_050_755b:
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


Call_050_756a:
    ld a, [$d9f8]
    add l
    ld l, a
    ld a, [$d9f9]
    adc h
    and $03
    ld h, a
    ld a, [$d9f9]
    and $fc
    or h
    ld h, a
    ret


Call_050_757e:
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_050_7587:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_050_756a
    ld a, b
    and $1f
    jr z, jr_050_759c

    ld b, a

jr_050_7596:
    call Call_050_755b
    dec b
    jr nz, jr_050_7596

jr_050_759c:
    pop bc
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_050_7587
    ld a, l
    ld [$d9ea], a
    ld a, h
    ld [$d9eb], a

jr_050_75af:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_050_75d8

    ld a, [$d9ea]
    ld l, a
    ld a, [$d9eb]
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
    ld [$d9ea], a
    ld a, h
    ld [$d9eb], a
    jr jr_050_75af

jr_050_75d8:
    call $1aad
    call Call_050_755b
    jr jr_050_75af

Call_050_75e0:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_050_757e
    ld a, l
    ld [$d9ea], a
    ld a, h
    ld [$d9eb], a

jr_050_75f1:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_050_7614

    ld a, [$d9ea]
    ld l, a
    ld a, [$d9eb]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ld [$d9ea], a
    ld a, h
    ld [$d9eb], a
    jr jr_050_75f1

jr_050_7614:
    ld [hl+], a
    jr jr_050_75f1

Call_050_7617:
    ld a, [$db74]
    ld c, a
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_7626

    ld a, [$db75]
    ld c, a

jr_050_7626:
    push bc
    ld b, $25
    ld c, $62
    call Call_050_7646
    pop bc
    dec c
    ret z

    push bc
    ld b, $2b
    ld c, $68
    call Call_050_7646
    pop bc
    dec c
    ret z

    push bc
    ld b, $31
    ld c, $6e
    call Call_050_7646
    pop bc
    ret


Call_050_7646:
    ld l, b
    ld h, $98
    ld a, b
    ld de, $c500
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    call $1aad
    ld b, $03
    ld l, c
    ld h, $98
    ld a, c
    ld de, $c500
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_050_76a2
    ld b, $03
    ld a, c
    add $20
    ld l, a
    ld h, $98
    ld de, $c500
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_050_76a2
    ret


Call_050_767e:
    ld a, [$d9f8]
    ld l, a
    ld a, [$d9f9]
    ld h, a
    ld de, $c500
    ld c, $12

jr_050_768b:
    ld b, $20
    push hl
    call Call_050_76a2
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
    jr nz, jr_050_768b

    ret


Call_050_76a2:
jr_050_76a2:
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
    jr nz, jr_050_76a2

    ret


Call_050_76b7:
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


Call_050_76f0:
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


Call_050_773e:
    ld hl, $c500
    ld bc, $0240

jr_050_7744:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_050_7744

    ret


    ld hl, $9800
    ld bc, $0400

jr_050_7753:
    ld a, $e0
    call $1ab9
    dec bc
    ld a, b
    or c
    jr nz, jr_050_7753

    ret


Call_050_775e:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_050_77c5

    ld a, [$c847]
    bit 5, a
    jr z, jr_050_778b

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
    jr c, jr_050_77a9

    ld a, c
    dec a
    jr jr_050_77a9

jr_050_778b:
    ld a, [$c847]
    bit 4, a
    jr z, jr_050_77c5

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
    jr c, jr_050_77a9

    ld a, $00

jr_050_77a9:
    ld [hl-], a
    dec c
    cp c
    jr nz, jr_050_7808

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
    jr z, jr_050_7808

    dec a
    cp [hl]
    jr nc, jr_050_7808

    ld [hl], a
    jr jr_050_7808

Jump_050_77c5:
jr_050_77c5:
    push bc
    push de
    push hl
    call Call_050_78a0
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
    jr nz, jr_050_77e7

    ld a, [$c8e1]
    inc a
    ld b, a

Call_050_77e7:
jr_050_77e7:
    res 7, [hl]
    ld a, [$c847]
    bit 6, a
    jr z, jr_050_77f9

    ld a, [hl]
    dec a
    cp b
    jr c, jr_050_7807

    dec b
    ld a, b
    jr jr_050_7807

jr_050_77f9:
    ld a, [$c847]
    bit 7, a
    jr z, jr_050_7810

    ld a, [hl]
    inc a
    cp b
    jr c, jr_050_7807

    ld a, $00

Jump_050_7807:
jr_050_7807:
    ld [hl], a

jr_050_7808:
    xor a
    ld [$d9fb], a
    push hl
    push de
    pop de
    pop hl

Jump_050_7810:
jr_050_7810:
    ld a, [$c846]
    bit 0, a
    jr z, jr_050_7819

    set 7, [hl]

jr_050_7819:
    ld a, [hl]
    call Call_050_783d
    ret


Call_050_781e:
    res 7, [hl]
    ld a, [$c847]
    and $c0
    jr z, jr_050_782c

    ld a, [hl]
    xor $01
    jr jr_050_7807

jr_050_782c:
    ld a, [$c847]
    and $30
    jr z, jr_050_7810

    ld a, [hl]
    xor $02
    jr jr_050_7807

Call_050_7838:
    xor a
    ld [$d9fb], a
    ret


Call_050_783d:
    ld c, a
    bit 7, a
    jr nz, jr_050_7852

    ld a, [$d9fb]
    and $0f
    push af
    ld a, [$d9fb]
    inc a
    ld [$d9fb], a
    pop af
    ld a, c
    ret nz

jr_050_7852:
    ld c, a
    ld b, $00

jr_050_7855:
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
    ld [$d9ea], a
    ld a, h
    ld [$d9eb], a
    push de
    push bc
    call Call_050_7587
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_050_7887

    ld a, $e9
    bit 7, c
    jr nz, jr_050_7887

    ld a, [$d9fb]
    bit 4, a
    ld a, $e0
    jr nz, jr_050_7887

    ld a, $e8

jr_050_7887:
    call $1aad
    push af
    ld a, [$d9ea]
    ld l, a
    ld a, [$d9eb]
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
    jr jr_050_7855

Call_050_78a0:
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
    call Call_050_7587
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


Call_050_78d9:
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
    jr nc, jr_050_78f2

    ld a, $e7

jr_050_78f2:
    ld [hl-], a
    pop bc
    jr nc, jr_050_78fa

    ld a, [bc]
    add $f1
    ld [hl], a

jr_050_78fa:
    pop af

Call_050_78fb:
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
    ld [$d9ea], a
    ld a, h
    ld [$d9eb], a
    push de
    push bc
    call Call_050_7587
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_050_7928

    ld a, [$d9fb]
    bit 4, a
    ld a, $e0
    jr nz, jr_050_7928

    ld a, $e8

jr_050_7928:
    push af
    ld a, [$d9ea]
    ld l, a
    ld a, [$d9eb]
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


Call_050_793c:
    ld a, [$c86c]
    or a
    jr z, jr_050_794e

    ld a, [$c863]
    bit 1, a
    jr z, jr_050_794e

    ld a, [$db74]
    jr jr_050_7951

jr_050_794e:
    ld a, [$db75]

jr_050_7951:
    cp $03
    jr z, jr_050_7971

    cp $02
    jr z, jr_050_7962

    ld a, $00
    ld hl, $00c7
    call Call_050_7986
    ret


jr_050_7962:
    ld a, $00
    ld hl, $00c4
    call Call_050_7986
    ld hl, $00ca
    call Call_050_7986
    ret


jr_050_7971:
    ld a, $00
    ld hl, $00c1
    call Call_050_7986
    ld hl, $00c7
    call Call_050_7986
    ld hl, $00cd
    call Call_050_7986
    ret


Call_050_7986:
    ld c, $06

jr_050_7988:
    push hl
    push af
    call Call_050_757e
    pop af
    ld b, $06

jr_050_7990:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_050_7990

    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_050_7988

    ret


Call_050_799e:
    ld de, $2e07
    call Call_050_75e0

Call_050_79a4:
    ld a, [$d9f3]
    or a
    jp nz, Jump_050_7a77

Call_050_79ab:
    ld a, [$c86c]
    or a
    jr nz, jr_050_79b6

    ld a, [$ca8d]
    or a
    ret z

jr_050_79b6:
    call Call_050_79bb
    jr jr_050_79db

Call_050_79bb:
    ld hl, $7a6f
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_79ca

    ld a, [$db75]
    jr jr_050_79cd

jr_050_79ca:
    ld a, [$db74]

jr_050_79cd:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_050_75e0
    ret


jr_050_79db:
    ld hl, $dba3
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_79e8

    ld hl, $dbab

jr_050_79e8:
    push hl
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0062
    call Call_050_757e
    call $2071
    pop hl
    ld bc, $0020
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0082
    call Call_050_757e
    call $2071
    ld a, [$c1d9]
    cp $01
    ret z

    ld hl, $dba5
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_7a19

    ld hl, $dbad

jr_050_7a19:
    push hl
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0068
    call Call_050_757e
    call $2071
    pop hl
    ld bc, $0020
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0088
    call Call_050_757e
    call $2071
    ld a, [$c1d9]
    cp $02
    ret z

    ld hl, $dba7
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_7a4a

    ld hl, $dbaf

jr_050_7a4a:
    push hl
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $006e
    call Call_050_757e
    call $2071
    pop hl
    ld bc, $0020
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $008e
    call Call_050_757e
    call $2071
    ret


    db $db
    ld a, c
    ld b, $7a
    scf
    ld a, d
    adc d
    ld l, [hl]
    adc d
    ld l, [hl]
    ld l, $6e
    xor [hl]
    ld l, l

Call_050_7a77:
Jump_050_7a77:
    cp $03
    jp z, Jump_050_7b7f

    call Call_050_79bb
    ld hl, $9800
    ld a, l
    ld [$d9f8], a
    ld a, h
    ld [$d9f9], a
    ld a, [$c1d9]
    ld b, a
    ld c, $00
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_7a99

    ld c, $04

jr_050_7a99:
    ld hl, $7bde
    call $7bf6
    push hl
    ld a, c
    call $2fa5
    jr nc, jr_050_7aaa

    ld a, $d9
    jr jr_050_7aac

jr_050_7aaa:
    ld a, $e0

jr_050_7aac:
    pop hl
    ld [hl], a
    ld hl, $7be4
    call $7bf6
    ld [hl], $de
    inc hl
    ld a, $e4
    ld [hl-], a
    ld a, $20
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    inc c
    dec b
    jr nz, jr_050_7a99

    ld a, [$d9f3]
    cp $02
    jr z, jr_050_7afa

    call Call_050_767e
    ld hl, $8da0
    ld a, $02
    call Call_050_7c1a
    ld hl, $8db0
    ld a, $04
    call Call_050_7c1a
    ld hl, $8dc0
    ld a, $06
    call Call_050_7c1a
    ld hl, $8dd0
    ld a, $03
    call Call_050_7c1a
    ld hl, $d9f3
    inc [hl]

jr_050_7afa:
    ld a, [$c1d9]
    ld b, a
    ld c, $00
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_7b09

    ld c, $04

jr_050_7b09:
    ld hl, $7be4
    call $7bf6
    inc hl
    inc hl
    push bc
    ld a, c
    ld bc, $db9b
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    ld c, a
    ld b, $00
    call $2082
    pop bc
    ld a, c
    call $2fa5
    jr c, jr_050_7b77

    ld hl, $7bea
    call $7bf6
    push hl
    ld a, c
    ld hl, $db02
    call $2f6c
    pop de
    ld a, [hl]
    or a
    jr z, jr_050_7b77

    bit 6, [hl]
    jr z, jr_050_7b46

    ld a, $00
    call Call_050_7c0c

jr_050_7b46:
    inc de
    bit 5, [hl]
    jr z, jr_050_7b50

    ld a, $01
    call Call_050_7c0c

jr_050_7b50:
    inc de
    bit 4, [hl]
    jr z, jr_050_7b5a

    ld a, $02
    call Call_050_7c0c

jr_050_7b5a:
    inc de
    bit 7, [hl]
    jr z, jr_050_7b64

    ld a, $03
    call Call_050_7c0c

jr_050_7b64:
    inc de
    bit 1, [hl]
    jr z, jr_050_7b6e

    ld a, $04
    call Call_050_7c0c

jr_050_7b6e:
    bit 0, [hl]
    jr z, jr_050_7b77

    ld a, $05
    call Call_050_7c0c

jr_050_7b77:
    inc c
    dec b
    jr nz, jr_050_7b09

    call Call_050_767e
    ret


Call_050_7b7f:
Jump_050_7b7f:
    ld a, [$c1d9]
    ld b, a
    ld c, $00
    ld a, [$c863]
    bit 1, a
    jr z, jr_050_7b8e

    ld c, $04

jr_050_7b8e:
    ld hl, $7bde
    call $7bf6
    ld a, c
    and $03
    add $da
    ld [hl], a
    ld hl, $7be4
    call $7bf6
    ld [hl], $e1
    ld a, $20
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $e2
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, c
    ld [$db88], a
    ld [$db89], a
    push af
    push bc
    push de
    push hl
    ld hl, $da0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $ff
    call Call_050_7c3d
    pop hl
    pop de
    pop bc
    pop af
    inc c
    dec b
    jr nz, jr_050_7b8e

    xor a
    ld [$d9f3], a
    call Call_050_79ab
    call Call_050_767e
    ret


    dec h
    nop
    dec hl
    nop
    ld sp, $6100
    nop
    ld h, a
    nop
    ld l, l
    nop
    add c
    nop
    add a
    nop
    adc l
    nop
    call c, $dbd7
    db $dd
    jp c, $79d8

    and $03
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
    ret


Call_050_7c0c:
    push hl
    ld hl, $7bf0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [de], a
    pop hl
    ret


Call_050_7c1a:
    push hl
    ld hl, $7c2d
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    call $1577
    ret


    ld [bc], a
    ld e, e
    inc bc
    ld e, e
    inc b
    ld e, e
    dec b
    ld e, e
    ld b, $5b
    rlca
    ld e, e
    ld [$095b], sp
    ld e, e

Call_050_7c3d:
    ld a, [$c86c]
    or a
    jr z, jr_050_7c63

    ld a, [$c863]
    bit 1, a
    jr z, jr_050_7c63

    ld a, [$db89]
    ld c, a
    cp $04
    jr c, jr_050_7c57

    cp $07
    ret z

    jr jr_050_7c74

jr_050_7c57:
    ld a, [$db88]
    ld c, a
    cp $04
    ret c

    cp $07
    ret z

    jr jr_050_7c74

jr_050_7c63:
    ld a, [$db89]
    ld c, a
    cp $03
    jr c, jr_050_7c76

    ld a, [$db88]
    ld c, a
    cp $03
    jr c, jr_050_7c76

    ret


jr_050_7c74:
    xor $04

jr_050_7c76:
    push de
    swap a
    ld hl, $8da0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, c
    call $2fa5
    jr c, jr_050_7cac

    ld a, c
    ld hl, $db02
    call $2f6c
    bit 6, [hl]
    jr nz, jr_050_7cb0

    bit 5, [hl]
    jr nz, jr_050_7cb4

    bit 4, [hl]
    jr nz, jr_050_7cb8

    bit 7, [hl]
    jr nz, jr_050_7cbc

    bit 1, [hl]
    jr nz, jr_050_7cc0

    bit 0, [hl]
    jr nz, jr_050_7cc4

    ld a, $00
    jr jr_050_7cc6

jr_050_7cac:
    ld a, $07
    jr jr_050_7cc6

jr_050_7cb0:
    ld a, $06
    jr jr_050_7cc6

jr_050_7cb4:
    ld a, $05
    jr jr_050_7cc6

jr_050_7cb8:
    ld a, $04
    jr jr_050_7cc6

jr_050_7cbc:
    ld a, $03
    jr jr_050_7cc6

jr_050_7cc0:
    ld a, $02
    jr jr_050_7cc6

jr_050_7cc4:
    ld a, $01

jr_050_7cc6:
    push af
    ld a, c
    ld hl, $da0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, [hl]
    pop af
    cp d
    call nz, Call_050_7cdd
    pop hl
    call nz, Call_050_7c1a
    pop de
    ret


Call_050_7cdd:
    ld [hl], a
    ret


    ld a, [$c81d]
    or a
    ret z

    ld a, $01
    ldh [rVBK], a
    ld a, [$d9f8]
    ld l, a
    ld a, [$d9f9]
    ld h, a
    ld c, $12

jr_050_7cf2:
    ld b, $20
    push hl

jr_050_7cf5:
    ld a, $00
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
    dec b
    jr nz, jr_050_7cf5

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
    jr nz, jr_050_7cf2

    ld a, $00
    ldh [rVBK], a
    ret


Call_050_7d1e:
    cp $03
    jr nc, jr_050_7d3c

Call_050_7d22:
jr_050_7d22:
    push hl
    ld hl, $cac2
    call $2229
    ld e, l
    ld d, h
    pop hl
    push hl
    call $0c80
    pop hl

jr_050_7d31:
    ld a, [hl]
    cp $f0
    ret z

    inc hl
    jr jr_050_7d31

jr_050_7d38:
    ld a, b
    pop bc
    jr jr_050_7d22

jr_050_7d3c:
    push bc
    ld b, a
    and $03
    cp $03
    ld a, b
    pop bc
    jr z, jr_050_7d65

    push bc
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_050_7d38

    push hl
    ld a, b
    and $03
    ld hl, $c1ca
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    cp $ff
    jr nz, jr_050_7d62

    ld a, b

jr_050_7d62:
    pop bc
    jr nz, jr_050_7d8d

jr_050_7d65:
    push af
    call Call_050_7d6f
    pop af
    ld hl, $5104
    rst $10
    ret


Call_050_7d6f:
    ld [$db60], a
    push hl
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

Call_050_7d7d:
    ld l, a
    ld h, $05
    pop de
    ld a, e
    ld [$db5e], a
    ld a, d
    ld [$db5f], a
    call $097a
    ret


jr_050_7d8d:
    call Call_050_7d22
    ld a, $30
    ld [hl+], a
    ld a, $46
    ld [hl+], a
    ld a, $4a
    ld [hl+], a
    ld a, $42
    ld [hl+], a
    ld [hl], $f0
    push hl
    ld hl, $c1ca
    ld a, [$db50]
    and $03
    cp $01
    jr z, jr_050_7db9

    cp $02
    jr z, jr_050_7dc3

    ld a, [hl+]
    cp [hl]
    jr z, jr_050_7ddf

    inc hl
    cp [hl]
    jr z, jr_050_7ddf

    jr jr_050_7dee

jr_050_7db9:
    ld a, [hl+]
    cp [hl]
    jr z, jr_050_7de4

    ld a, [hl+]
    cp [hl]
    jr z, jr_050_7ddf

    jr jr_050_7dee

jr_050_7dc3:
    ld d, $00
    inc hl
    inc hl
    ld a, [hl-]
    dec hl
    cp [hl]
    jr nz, jr_050_7dcd

    inc d

jr_050_7dcd:
    inc hl
    cp [hl]
    jr nz, jr_050_7dd2

    inc d

jr_050_7dd2:
    ld a, d
    or a
    jr z, jr_050_7dee

    cp $01
    jr z, jr_050_7de4

    pop hl
    ld a, $03
    jr jr_050_7de7

jr_050_7ddf:
    pop hl
    ld a, $01
    jr jr_050_7de7

jr_050_7de4:
    pop hl
    ld a, $02

jr_050_7de7:
    ld [$db4d], a
    ld [hl+], a
    ld [hl], $f0
    ret


jr_050_7dee:
    pop hl
    xor a
    ld [$db4d], a
    ret


    ld hl, $c1a0
    jr jr_050_7dfc

    ld hl, $c180

jr_050_7dfc:
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db89]
    ld [$db50], a
    call Call_050_7d1e
    ret


Call_050_7e0e:
    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db88]
    ld [$db50], a
    call Call_050_7d1e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
