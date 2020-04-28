; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    add hl, de
    inc bc
    ld b, b
    ld a, [$c905]
    rst $00
    ld h, h
    ld b, e
    ld de, $7440
    ld b, b
    ld c, c
    ld b, d
    ld b, e
    ld b, h
    ld b, $10
    ld c, $00

jr_019_4015:
    push bc
    ld hl, $4054
    ld a, c
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c969]
    or a
    ld a, $f0
    jr z, jr_019_4047

    ld de, $c950
    ld a, c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    or a
    ld a, $f0
    jr z, jr_019_4047

    ld de, $c940
    ld a, c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]

jr_019_4047:
    call Call_019_4492
    pop bc
    inc c
    dec b
    jr nz, jr_019_4015

    ld hl, $c905
    inc [hl]
    ret


    nop
    nop
    dec b
    nop
    ld a, [bc]
    nop
    rrca
    nop
    add b
    nop
    add l
    nop
    adc d
    nop
    adc a
    nop
    nop
    ld bc, $0105
    ld a, [bc]
    ld bc, $010f
    add b
    ld bc, $0185
    adc d
    ld bc, $018f
    ld a, [$c969]
    or a
    jp z, Jump_019_413e

    ld hl, $ca51
    ld b, $14

jr_019_4080:
    ld a, [hl+]
    cp $26
    jr z, jr_019_408a

    dec b
    jr nz, jr_019_4080

    jr jr_019_40e8

jr_019_408a:
    call Call_019_4269
    push af
    ld hl, $ffc3
    ld a, $88
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$c966]
    ld l, a
    ld a, [$c967]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ldh a, [$bb]
    ld b, a
    ld a, l
    sub b
    add $04
    cp $20
    jr nc, jr_019_40e4

    ld a, [$c964]
    ld l, a
    ld a, [$c965]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ldh a, [$b7]
    ld b, a
    ld a, l
    sub b
    sub $84
    jr c, jr_019_40e4

    cp $20
    jr nc, jr_019_40e4

    ld a, $68
    ldh [$c5], a

jr_019_40e4:
    ld hl, $0401
    rst $10

jr_019_40e8:
    ld hl, $ffc3
    ld a, $4b
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $3c
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $a9
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10
    ld a, [$c960]
    ld hl, $c950
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_019_413e

    ld a, [$c964]
    ld e, a
    ld a, [$c965]
    ld d, a
    ld a, e
    sub $10
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ld a, [$c966]
    ld c, a
    ld a, [$c967]
    ld b, a
    ld a, c
    sub $10
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    call Call_019_4221
    ld hl, $0400
    rst $10

Jump_019_413e:
jr_019_413e:
    ld hl, $ffc3
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10
    ld hl, $c0a0
    ld a, [$c939]
    ld c, a
    ld b, $00
    inc bc
    call $20ad
    ld a, [$c0a0]
    cp $f0
    jr z, jr_019_4193

    and $0f
    add a
    push af
    ld hl, $ffc3
    ld a, $28
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10

jr_019_4193:
    ld a, [$c0a1]
    and $0f
    add a
    push af
    ld hl, $ffc3
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10
    ld hl, $c0a0
    ld a, [$c93a]
    ld c, a
    ld b, $00
    dec bc
    call $20ad
    ld a, [$c0a0]
    cp $f0
    jr z, jr_019_41ee

    and $0f
    add a
    push af
    ld hl, $ffc3
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10

jr_019_41ee:
    ld a, [$c0a1]
    and $0f
    add a
    push af
    ld hl, $ffc3
    ld a, $48
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld hl, $0401
    rst $10
    ld a, [$c846]
    and $f7
    jr z, jr_019_4220

    ld hl, $c905
    inc [hl]
    jr jr_019_4220

jr_019_4220:
    ret


Call_019_4221:
    srl d
    rr e
    srl d
    rr e
    srl b
    rr c
    srl b
    rr c
    ld hl, $ffc3
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $ac
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ret


    call Call_019_4426
    ldh a, [$bf]
    ld l, a
    ldh a, [$c0]
    ld h, a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ldh a, [$c1]
    ld l, a
    ldh a, [$c2]
    ld h, a
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    ld hl, $c905
    inc [hl]
    ret


Call_019_4269:
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
    jr nc, jr_019_4291

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_019_4291:
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
    jr nc, jr_019_42b9

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_019_42b9:
    push hl
    push de
    ld a, h
    or a
    jr nz, jr_019_42de

    ld a, d
    or a
    jr nz, jr_019_42de

    ld a, l
    cp $20
    jr nz, jr_019_42d1

    ld a, e
    cp $50
    jr c, jr_019_42de

    ld b, $00
    jr jr_019_42fe

jr_019_42d1:
    cp $10
    jr nz, jr_019_42de

    ld a, e
    cp $30
    jr c, jr_019_42de

    ld b, $00
    jr jr_019_42fe

jr_019_42de:
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
    jr c, jr_019_42fe

    ld a, h
    or l
    ld b, $03
    jr nz, jr_019_42fe

    ld b, $00

jr_019_42fe:
    pop de
    pop hl
    ld a, h
    or a
    jr nz, jr_019_4323

    ld a, d
    or a
    jr nz, jr_019_4323

    ld a, e
    cp $20
    jr nz, jr_019_4316

    ld a, l
    cp $50
    jr c, jr_019_4323

    ld a, $00
    jr jr_019_4343

jr_019_4316:
    cp $10
    jr nz, jr_019_4323

    ld a, l
    cp $30
    jr c, jr_019_4323

    ld a, $00
    jr jr_019_4343

jr_019_4323:
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
    jr c, jr_019_4343

    ld a, h
    or l
    ld a, $01
    jr nz, jr_019_4343

    ld a, $00

jr_019_4343:
    add b
    ld hl, $434e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


    or h
    or [hl]
    or b
    cp b
    cp d
    or d
    cp h
    cp [hl]

Call_019_4357:
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


    xor a
    ldh [$b7], a
    ldh [$b8], a
    xor a
    ldh [$bb], a
    ldh [$bc], a
    ld hl, $ffb7
    call Call_019_4357
    ld hl, $ffbb
    call Call_019_4357
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
    ld de, $281c
    ld hl, $8800
    call $1577
    ld de, $281f
    ld hl, $8900
    call $1577
    ld de, $281d
    ld hl, $8a90
    call $1577
    ld de, $281e
    ld hl, $8ac0
    call $1577
    ld de, $2e23
    ld hl, $8b00
    call $1577
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sub $50
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$b7], a
    ld a, h
    ldh [$b8], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    sub $09
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sub $40
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$bb], a
    ld a, h
    ldh [$bc], a
    call Call_019_4426
    ld hl, $170a
    rst $10
    ld hl, $c905
    inc [hl]
    ret


Call_019_4426:
    ld hl, $9800
    ld b, $00

jr_019_442b:
    ld a, $e0
    call $1ab9
    ld a, $e0
    call $1ab9
    ld a, $e0
    call $1ab9
    ld a, $e0
    call $1ab9
    dec b
    jr nz, jr_019_442b

    ret


    ld a, $ff
    ldh [$b6], a
    ld hl, $0b02
    rst $10
    call $25f1
    ld hl, $c8eb
    res 3, [hl]
    xor a
    ld [$c905], a
    ret


Call_019_4458:
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


Call_019_4467:
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


Call_019_447b:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_019_4467
    ld a, b
    and $1f
    jr z, jr_019_4490

    ld b, a

jr_019_448a:
    call Call_019_4458
    dec b
    jr nz, jr_019_448a

jr_019_4490:
    pop bc
    ret


Call_019_4492:
    push hl
    push af
    swap a
    and $0f
    ld l, a
    ld h, $00
    ld de, $4500
    ld a, [$c93f]
    cp $02
    jr nz, jr_019_44a8

    ld de, $4520

jr_019_44a8:
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop af
    and $0f
    ld c, $14
    call $1dbe
    add hl, de
    ld e, l
    ld d, h
    pop hl
    call Call_019_447b
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    call Call_019_44cb
    call Call_019_44cb
    call Call_019_44cb

Call_019_44cb:
    call Call_019_44f5
    call Call_019_44f5
    call Call_019_44f5
    call Call_019_44f5
    call Call_019_44f5
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
    ret


Call_019_44f5:
    ld a, [de]
    or $80
    inc de
    call $1aad
    call Call_019_4458
    ret


    ld b, b
    ld b, l
    ld b, h
    ld b, [hl]
    ld c, b
    ld b, a
    ld c, h
    ld c, b
    ld d, b
    ld c, c
    ld d, h
    ld c, d
    ld e, b
    ld c, e
    ld e, h
    ld c, h
    ld h, b
    ld c, l
    ld h, h
    ld c, [hl]
    ld l, b
    ld c, a
    ld l, h
    ld d, b
    ld [hl], b
    ld d, c
    ld [hl], h
    ld d, d
    ld a, b
    ld d, e
    ld a, h
    ld d, h
    add b
    ld d, l
    sbc b
    ld d, [hl]
    inc h
    ld d, a
    or b
    ld d, a
    inc a
    ld e, b
    ret z

    ld e, b
    jr @+$5b

    ld a, h
    ld e, c
    ldh [$59], a
    ld b, h
    ld e, d
    xor b
    ld e, d
    ld hl, sp+$5a
    inc [hl]
    ld e, e
    ld [hl], b
    ld e, e
    xor h
    ld e, e
    ld a, h
    ld d, h
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld bc, $0101
    dec bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    dec bc
    nop
    nop
    rlca
    inc c
    ld [$0400], sp
    inc bc
    ld [bc], a
    ld bc, $0b0d
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    ld bc, $0101
    rlca
    ld b, $06
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    dec bc
    ld bc, $0704
    ld b, $03
    ld bc, $060c
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    dec bc
    ld b, $0a
    dec c
    ld a, [bc]
    dec c
    rlca
    inc c
    dec bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    dec c
    ld bc, $0d0c
    ld a, [bc]
    dec bc
    ld bc, $0b0a
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld a, [bc]
    nop
    nop
    dec b
    nop
    add hl, bc
    ld bc, $0a0d
    nop
    add hl, bc
    ld bc, $020b
    ld b, $01
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    dec b
    ld bc, $0106
    inc b
    ld a, [bc]
    ld [$0900], sp
    dec bc
    nop
    ld b, $01
    ld b, $00
    nop
    nop
    dec bc
    nop
    nop
    inc c
    ld a, [bc]
    dec c
    rlca
    dec c
    inc bc
    nop
    nop
    nop
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    ld a, [bc]
    nop
    nop
    dec b
    inc b
    inc c
    nop
    rlca
    ld b, $06
    ld [$0b00], sp
    nop
    nop
    ld bc, $0306
    nop
    nop
    dec bc
    nop
    nop
    inc c
    ld bc, $0008
    inc b
    ld b, $06
    ld a, [bc]
    ld bc, $000b
    nop
    inc c
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0a0b
    rlca
    ld a, [bc]
    ld bc, $0008
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0707
    ld b, $06
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    rlca
    ld b, $01
    ld bc, $0601
    nop
    ld b, $01
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $01
    ld b, $0d
    ld b, $00
    ld bc, $0600
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld bc, $0a0d
    rlca
    dec b
    nop
    dec bc
    nop
    nop
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0001
    inc b
    ld a, [bc]
    ld bc, $0001
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc c
    ld bc, $030d
    nop
    nop
    add hl, bc
    ld b, $00
    nop
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [bc]
    nop
    nop
    inc b
    ld b, $09
    rlca
    rlca
    dec bc
    nop
    ld [bc], a
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    ld b, $0d
    ld a, [bc]
    rlca
    inc c
    nop
    ld b, $02
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld a, [bc]
    dec c
    inc bc
    nop
    nop
    add hl, bc
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $01
    ld bc, $030d
    nop
    ld a, [bc]
    ld bc, $000b
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld [$0304], sp
    inc b
    rlca
    ld [$000b], sp
    ld [bc], a
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [bc]
    nop
    dec bc
    dec c
    ld b, $09
    rlca
    ld [$0006], sp
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [bc]
    ld bc, $0d01
    ld b, $09
    ld bc, $0b01
    nop
    ld [bc], a
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    dec c
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    dec b
    add hl, bc
    ld b, $06
    dec c
    ld a, [bc]
    inc c
    nop
    nop
    ld b, $02
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    nop
    ld bc, $0400
    ld b, $0a
    ld bc, $060b
    nop
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld [$0606], sp
    dec c
    ld a, [bc]
    ld [$0507], sp
    dec bc
    ld [bc], a
    ld b, $03
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld [$0900], sp
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $06
    nop
    inc b
    ld a, [bc]
    nop
    nop
    nop
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    dec bc
    ld b, $0a
    dec c
    inc bc
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
    nop
    ld bc, $0000
    inc c
    ld a, [bc]
    ld bc, $0405
    inc bc
    nop
    nop
    ld [$000b], sp
    nop
    nop
    ld b, $03
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    dec bc
    nop
    inc b
    ld a, [bc]
    ld bc, $0008
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    dec b
    nop
    add hl, bc
    ld bc, $0a0d
    ld bc, $000c
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    ld bc, $0106
    rlca
    ld b, $01
    rlca
    ld bc, $0002
    ld b, $06
    ld b, $00
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0707
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0d01
    nop
    nop
    ld bc, $0b01
    nop
    nop
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $06
    nop
    inc b
    add hl, bc
    rlca
    rlca
    inc c
    ld b, $00
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $06
    ld b, $0d
    add hl, bc
    dec b
    nop
    nop
    dec bc
    ld [bc], a
    inc bc
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0707
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld [$0900], sp
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc b
    inc c
    ld b, $06
    dec c
    add hl, bc
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld [$0109], sp
    dec c
    add hl, bc
    ld bc, $030b
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b
    ld [$0400], sp
    nop
    add hl, bc
    dec bc
    ld b, $06
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld a, [bc]
    dec c
    nop
    nop
    nop
    add hl, bc
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $03
    inc b
    rlca
    add hl, bc
    rlca
    rlca
    inc c
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc b
    ld bc, $060b
    dec c
    add hl, bc
    nop
    dec c
    rlca
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0707
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0001
    nop
    ld a, [bc]
    ld bc, $0001
    nop
    ld [bc], a
    ld b, $01
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0000
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    ld [$080a], sp
    nop
    add hl, bc
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $06
    ld a, [bc]
    ld [$0006], sp
    nop
    add hl, bc
    ld [$0000], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    rlca
    add hl, bc
    ld bc, $0801
    ld a, [bc]
    nop
    nop
    nop
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0a06
    dec b
    inc bc
    nop
    inc b
    inc c
    ld [$0000], sp
    inc c
    ld b, $03
    nop
    nop
    ld bc, $0000
    rlca
    ld bc, $0003
    nop
    ld b, $01
    dec b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    dec b
    ld [bc], a
    ld b, $08
    ld a, [bc]
    ld bc, $0507
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    inc c
    dec bc
    inc bc
    inc b
    dec b
    ld a, [bc]
    dec c
    dec b
    inc c
    inc bc
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $01
    ld b, $08
    ld a, [bc]
    rlca
    ld bc, $0807
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    nop
    nop
    ld bc, $0000
    dec b
    nop
    ld bc, $0000
    ld b, $0d
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0000
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0108
    dec c
    ld b, $01
    ld [$0b01], sp
    nop
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    rlca
    dec b
    nop
    dec bc
    dec c
    ld a, [bc]
    dec c
    rlca
    ld [$0206], sp
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld [$0607], sp
    inc b
    rlca
    ld [$000b], sp
    ld [bc], a
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    ld a, [bc]
    nop
    ld bc, $0b00
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    add hl, bc
    dec c
    ld a, [bc]
    dec c
    inc c
    dec bc
    ld b, $00
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    rlca
    nop
    inc b
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld bc, $020b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    inc b
    inc bc
    add hl, bc
    ld bc, $0601
    nop
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $0a
    ld b, $0d
    inc bc
    inc b
    inc c
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $0a
    ld [$0a07], sp
    dec b
    nop
    ld [$020b], sp
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    add hl, bc
    dec c
    ld a, [bc]
    ld bc, $060b
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0701
    rlca
    add hl, bc
    ld bc, $0601
    ld b, $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    dec bc
    ld b, $06
    dec c
    add hl, bc
    ld [$0000], sp
    ld b, $02
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $06
    inc bc
    rlca
    add hl, bc
    nop
    rlca
    rlca
    dec bc
    ld [bc], a
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $06
    ld a, [bc]
    dec c
    add hl, bc
    rlca
    nop
    add hl, bc
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
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
    nop
    nop
    inc b
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $000d
    add hl, bc
    ld bc, $0b01
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0000
    inc b
    add hl, bc
    ld bc, $0400
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0601
    dec c
    add hl, bc
    ld bc, $000b
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $000d
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $090d
    ld bc, $030b
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld b, $08
    ld b, $04
    rlca
    rlca
    ld [$0200], sp
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld a, [bc]
    ld [$000a], sp
    nop
    add hl, bc
    ld [$0602], sp
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0801
    ld b, $06
    ld bc, $0801
    nop
    nop
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    inc c
    dec bc
    ld bc, $0801
    ld a, [bc]
    ld [$0101], sp
    ld [$0302], sp
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld b, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    dec b
    inc bc
    nop
    nop
    add hl, bc
    ld [$0000], sp
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    dec bc
    ld a, [bc]
    nop
    nop
    inc bc
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc c
    ld b, $0a
    dec b
    ld a, [bc]
    nop
    nop
    inc c
    ld [$0602], sp
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    ld bc, $0801
    ld a, [bc]
    add hl, bc
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    nop
    ld a, [bc]
    add hl, bc
    ld bc, $0009
    ld [bc], a
    ld b, $01
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0707
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    add hl, bc
    dec bc
    ld b, $00
    inc b
    add hl, bc
    ld [$0900], sp
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0400
    add hl, bc
    ld bc, $0601
    ld b, $02
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $060b
    dec c
    add hl, bc
    ld [$0700], sp
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld [$0606], sp
    dec c
    add hl, bc
    nop
    nop
    nop
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    dec c
    inc b
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $01
    dec c
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0008
    inc b
    add hl, bc
    ld bc, $0601
    ld b, $02
    ld b, $02
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc b
    dec bc
    ld b, $0d
    inc b
    ld [bc], a
    dec c
    nop
    add hl, bc
    dec bc
    nop
    ld [bc], a
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    rlca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    ld bc, $040d
    rlca
    add hl, bc
    ld b, $06
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0707
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0000
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    rlca
    nop
    ld b, $0a
    ld [$000a], sp
    nop
    add hl, bc
    ld [$0602], sp
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $0a
    ld bc, $0a08
    nop
    nop
    nop
    ld [$0602], sp
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    dec b
    inc b
    ld bc, $0801
    ld b, $01
    ld bc, $0801
    nop
    nop
    ld b, $03
    nop
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $06
    ld bc, $0600
    nop
    nop
    ld bc, $0005
    nop
    nop
    ld b, $03
    nop
    nop
    ld bc, $0000
    inc c
    dec bc
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
    nop
    nop
    ld bc, $0000
    dec b
    nop
    add hl, bc
    nop
    nop
    ld a, [bc]
    ld bc, $0009
    nop
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    nop
    ld [bc], a
    ld a, [bc]
    ld [$0a06], sp
    rlca
    inc c
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    nop
    add hl, bc
    ld bc, $0a08
    ld bc, $060b
    inc bc
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    ld bc, $0000
    dec b
    inc b
    ld [$0000], sp
    ld b, $06
    dec c
    rlca
    dec b
    nop
    nop
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    inc c
    ld b, $0a
    nop
    nop
    ld a, [bc]
    rlca
    inc c
    nop
    nop
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    rlca
    ld bc, $0000
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0006
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $01
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $06
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $01
    ld b, $00
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0801
    nop
    nop
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0001
    nop
    ld [bc], a
    ld b, $01
    ld bc, $0008
    nop
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    add hl, bc
    dec bc
    ld b, $0a
    ld [$0809], sp
    nop
    add hl, bc
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    ld [$0000], sp
    add hl, bc
    dec bc
    inc bc
    nop
    nop
    ld [bc], a
    dec c
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0008
    nop
    nop
    ld bc, $0008
    nop
    inc c
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    dec c
    nop
    add hl, bc
    dec c
    nop
    ld bc, $0008
    ld b, $01
    ld b, $03
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $01
    ld b, $08
    add hl, bc
    dec b
    ld bc, $0804
    ld [bc], a
    inc bc
    ld bc, $0302
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0008
    nop
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $0000
    nop
    inc c
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld b, $06
    nop
    nop
    add hl, bc
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $06
    ld [$0000], sp
    nop
    nop
    ld [$0000], sp
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    inc b
    rlca
    ld bc, $0801
    add hl, bc
    ld bc, $060b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $060b
    ld [$0009], sp
    nop
    nop
    ld [$0602], sp
    ld b, $06
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0008
    nop
    nop
    ld b, $03
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
    nop
    add hl, bc
    dec c
    dec b
    add hl, bc
    dec c
    nop
    ld bc, $0008
    ld b, $06
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b
    ld [$0000], sp
    inc b
    inc c
    dec c
    inc c
    ld [$0602], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    add hl, bc
    ld bc, $0000
    add hl, bc
    ld bc, $0006
    nop
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add hl, bc
    ld bc, $0408
    ld [$0309], sp
    ld a, [bc]
    ld bc, $0008
    nop
    nop
    ld b, $00
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0101
    ld [$0000], sp
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $06
    ld b, $08
    add hl, bc
    nop
    nop
    inc b
    ld [$0602], sp
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $060b
    ld [$0009], sp
    nop
    rlca
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0001
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    inc bc
    add hl, bc
    ld bc, $0005
    nop
    nop
    ld [bc], a
    dec c
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0008
    nop
    nop
    ld a, [bc]
    ld bc, $0008
    nop
    inc c
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0806
    nop
    nop
    nop
    inc b
    ld [$0000], sp
    inc c
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0001
    nop
    ld [bc], a
    ld a, [bc]
    ld b, $00
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0101
    ld [$0802], sp
    nop
    add hl, bc
    inc bc
    nop
    ld b, $01
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    dec b
    ld b, $06
    ld b, $06
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
    rlca
    ld bc, $0606
    ld [$0003], sp
    nop
    nop
    ld [$0600], sp
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    add hl, bc
    ld b, $08
    ld b, $0a
    ld bc, $0800
    nop
    ld [bc], a
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc c
    ld bc, $0608
    ld b, $01
    ld bc, $0008
    nop
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    ld bc, $0806
    ld b, $01
    ld [$0804], sp
    nop
    ld [bc], a
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    inc b
    ld bc, $0a08
    dec c
    ld bc, $0306
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
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
    ld bc, $0801
    ld a, [bc]
    ld bc, $0008
    nop
    ld [bc], a
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $06
    ld a, [bc]
    ld [$070a], sp
    dec b
    nop
    nop
    nop
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $000d
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add hl, bc
    ld bc, $0001
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld b, $00
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    dec b
    ld b, $06
    ld b, $06
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
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0707
    rlca
    add hl, bc
    ld bc, $0606
    ld b, $02
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $0a
    ld [$0904], sp
    nop
    nop
    nop
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0701
    inc b
    inc c
    add hl, bc
    dec bc
    ld b, $02
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0109
    dec c
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0008
    inc b
    nop
    ld b, $01
    inc c
    dec bc
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    ld b, $06
    nop
    nop
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
    inc c
    ld bc, $000d
    add hl, bc
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
    nop
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    dec bc
    ld bc, $0704
    add hl, bc
    ld [$0901], sp
    ld b, $00
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $070d
    nop
    ld a, [bc]
    ld bc, $020b
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0c01
    ld bc, $0101
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $010a
    ld bc, $0b01
    rlca
    rlca
    ld bc, $0707
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    dec c
    ld bc, $0101
    ld bc, $010b
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld bc, $0606
    add hl, bc
    ld bc, $0101
    ld bc, $010c
    ld bc, $0101
    ld a, [bc]
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    inc c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0d01
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
    ld bc, $010b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    ld bc, $0101
    ld bc, $0704
    ld bc, $0707
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0707
    ld bc, $0507
    ld bc, $0101
    ld bc, $010d
    ld bc, $0101
    dec bc
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0d01
    ld bc, $0101
    ld bc, $060b
    ld b, $01
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld bc, $010c
    ld bc, $0101
    ld a, [bc]
    ld bc, $0101
    ld bc, $0602
    ld bc, $0606
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $010d
    ld bc, $0101
    dec bc
    ld bc, $0101
    ld bc, $0708
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld bc, $0606
    inc b
    rlca
    rlca
    rlca
    rlca
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $010d
    ld bc, $0101
    dec bc
    ld a, [bc]
    ld bc, $0101
    ld [$0704], sp
    rlca
    rlca
    rlca
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    dec bc
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $010a
    ld bc, $0b01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    ld bc, $0707
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0d01
    ld bc, $0101
    ld bc, $060b
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld bc, $010c
    ld bc, $0101
    ld a, [bc]
    ld bc, $0101
    ld bc, $0602
    ld b, $06
    ld b, $0c
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0d01
    ld bc, $0101
    ld bc, $060b
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    dec c
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    inc c
    ld bc, $0101
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $09
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    inc b
    rlca
    ld bc, $0707
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $01
    ld b, $06
    inc b
    rlca
    ld bc, $0707
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    dec bc
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $01
    ld b, $06
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    dec bc
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0708
    rlca
    ld bc, $0507
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld b, $06
    ld bc, $0306
    add hl, bc
    ld bc, $0101
    ld [$010c], sp
    ld bc, $0801
    ld a, [bc]
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    rlca
    rlca
    ld bc, $0507
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    inc c
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0608
    ld b, $01
    ld b, $03
    inc c
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0a08
    ld bc, $0101
    ld [$0707], sp
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $010d
    ld bc, $0101
    dec bc
    ld b, $06
    ld b, $06
    inc bc
    inc b
    rlca
    rlca
    rlca
    rlca
    inc c
    ld bc, $0101
    ld bc, $010a
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    rlca
    rlca
    rlca
    dec b
    inc c
    ld bc, $0101
    dec c
    ld a, [bc]
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    inc b
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0704
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    add hl, bc
    ld bc, $0101
    ld [$0704], sp
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $01
    ld b, $06
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $01
    ld b, $03
    inc b
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    dec bc
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0606], sp
    ld bc, $0306
    inc b
    rlca
    rlca
    rlca
    dec b
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0704], sp
    rlca
    rlca
    dec b
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    add hl, bc
    ld bc, $0101
    ld bc, $0602
    ld b, $06
    ld b, $04
    rlca
    ld bc, $0707
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0d01
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    inc b
    rlca
    ld bc, $0507
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld b, $06
    ld b, $06
    inc bc
    rlca
    rlca
    ld bc, $0507
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0606], sp
    ld b, $06
    inc bc
    add hl, bc
    ld bc, $0101
    ld [$010c], sp
    ld bc, $0801
    ld a, [bc]
    ld bc, $0101
    ld [$0602], sp
    ld b, $06
    inc bc
    inc b
    rlca
    ld bc, $0507
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    inc c
    ld bc, $0101
    ld [$0101], sp
    ld bc, $0801
    ld bc, $0101
    ld bc, $0608
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    inc b
    rlca
    ld bc, $0507
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    inc b
    rlca
    ld bc, $0507
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld b, $06
    inc bc
    inc b
    rlca
    ld bc, $0507
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld bc, $0306
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0704], sp
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    ld [bc], a
    ld b, $01
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld bc, $0306
    rlca
    rlca
    rlca
    rlca
    dec b
    ld bc, $0101
    ld bc, $0108
    ld bc, $0101
    ld [$0606], sp
    ld b, $06
    inc bc
    inc b
    rlca
    rlca
    rlca
    dec b
    inc c
    ld bc, $0101
    ld [$010a], sp
    ld bc, $0801
    ld [bc], a
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld bc, $0306
    inc b
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld bc, $0101
    ld bc, $0109
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    ld bc, $0101
    dec c
    add hl, bc
    ld bc, $0101
    dec bc
    ld [bc], a
    ld b, $06
    ld b, $03
    add hl, bc
    ld bc, $0101
    ld [$0109], sp
    ld bc, $0801
    add hl, bc
    ld bc, $0101
    ld [$0602], sp
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
