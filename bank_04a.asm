; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04a", ROMX[$4000], BANK[$4a]

    ld c, d
    dec c
    ld b, e
    ld sp, $5543
    ld b, e
    dec c
    ld b, b
    ld c, l
    ld b, b
    ld c, l
    ld b, d
    ld a, c
    ld b, e
    sub d
    ld b, e
    ld b, b
    ld b, h
    ld a, l
    ld b, h
    sbc l
    ld b, h
    bit 0, h
    xor $44
    ld b, [hl]
    ld b, l
    add e
    ld b, l
    or e
    ld b, l
    bit 0, l
    sbc $45
    rlca
    ld b, [hl]
    ld h, d
    ld b, [hl]
    jp c, $0d46

    ld b, a
    adc a
    ld b, a
    add [hl]
    ld c, b
    call $1e48
    ld c, c
    ld l, $49
    sbc e
    ld c, c
    add b
    ld c, d
    db $f4
    ld c, d
    dec [hl]
    ld c, e
    inc [hl]
    ld c, h
    ld [hl], a
    ld c, h
    ret nz

    ld c, l
    or $4d
    add hl, de
    ld c, [hl]
    ld d, c
    ld c, [hl]
    dec de
    ld c, a
    ld e, e
    ld c, a
    sbc a
    ld c, a
    bit 1, a
    nop
    ld d, b
    ld [hl+], a
    ld d, b
    ld d, c
    ld d, b
    ld l, e
    ld d, b
    sub c
    ld d, b
    dec b
    ld d, c
    inc h
    ld d, c
    ld l, [hl]
    ld d, c
    or h
    ld d, c
    ldh a, [rHDMA1]
    db $10
    ld d, d
    ld c, c
    ld d, d
    ld c, c
    ld d, d
    ld c, c
    ld d, d
    ld h, e
    ld d, d
    sbc [hl]
    ld d, d
    cp c
    ld d, d
    db $ed
    ld d, d
    jr nz, jr_04a_40cc

    ld a, [hl-]
    ld d, e
    ld e, a
    ld d, e
    cp l
    ld d, e
    db $db
    ld d, e
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld d, h
    cp c
    ld d, h
    rst $20
    ld d, h
    ld b, $55
    ld a, $55
    db $76
    ld d, l
    adc l
    ld d, l
    xor h
    ld d, l
    dec l
    ld d, [hl]
    ld b, a
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    ld sp, hl
    ld d, [hl]
    daa
    ld d, a
    ld d, l
    ld d, a
    adc d
    ld d, a
    bit 2, a
    ei
    ld d, a
    ld e, $58
    and d
    ld e, b
    call nz, $2a58
    ld e, c
    ld a, [hl+]
    ld e, c
    ld a, [hl+]
    ld e, c
    ld a, [hl+]
    ld e, c
    ld a, [hl+]
    ld e, c
    ld a, [hl+]

jr_04a_40cc:
    ld e, c
    ld a, [hl+]
    ld e, c
    xor h
    ld e, c
    jp nc, $e659

    ld e, c
    ld [$3b5a], sp
    ld e, d
    ld d, a
    ld e, d
    ld l, b
    ld e, d
    push hl
    ld e, d
    ld a, [bc]
    ld e, e
    db $76
    ld e, e
    db $76
    ld e, e
    db $76
    ld e, e
    db $76
    ld e, e
    db $76
    ld e, e
    db $76
    ld e, e
    db $76
    ld e, e
    xor h
    ld e, e
    ret


    ld e, e
    db $dd
    ld e, e
    jr nz, jr_04a_4153

    ld c, e
    ld e, h
    ld h, l
    ld e, h
    add a
    ld e, h
    db $f4
    ld e, h
    inc de
    ld e, l
    add [hl]
    ld e, l
    ret nz

    ld e, l
    push af
    ld e, l
    push af
    ld e, l
    push af
    ld e, l
    push af
    ld e, l
    push af
    ld e, l
    scf
    ld e, [hl]
    ld a, h
    ld e, [hl]
    sub h
    ld e, [hl]
    rst $00
    ld e, [hl]
    db $fc
    ld e, [hl]
    ld d, $5f
    ld b, c
    ld e, a
    cp h
    ld e, a
    ldh [$5f], a
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    sub [hl]
    ld h, b
    xor [hl]
    ld h, b

jr_04a_4153:
    rst $08
    ld h, b
    and $60
    ld [bc], a
    ld h, c
    jr jr_04a_41bc

    ld c, c
    ld h, c
    ld [hl], b
    ld h, c
    and a
    ld h, c
    cp e
    ld h, c
    rst $28
    ld h, c
    dec e
    ld h, d
    ld [hl-], a
    ld h, d
    ld h, e
    ld h, d
    sbc b
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    xor h
    ld h, d
    rst $20
    ld h, d
    ld bc, $2363
    ld h, e
    ld b, e
    ld h, e
    ld e, b
    ld h, e
    ld [hl], l
    ld h, e
    xor h
    ld h, e
    jp nz, $f463

    ld h, e
    ld a, [hl+]
    ld h, h
    ld a, [hl-]
    ld h, h
    ld e, d
    ld h, h
    adc [hl]
    ld h, h
    call nz, $e264
    ld h, h
    add hl, bc
    ld h, l
    ld e, $65
    ld b, h
    ld h, l
    ld h, l
    ld h, l
    ld [hl], l
    ld h, l
    sub [hl]
    ld h, l
    and [hl]
    ld h, l
    or [hl]

jr_04a_41bc:
    ld h, l
    xor $65
    dec de
    ld h, [hl]
    jr nc, jr_04a_4229

    jr nc, jr_04a_422b

    jr nc, jr_04a_422d

    jr nc, jr_04a_422f

    jr nc, jr_04a_4231

    jr nc, jr_04a_4233

    jr nc, jr_04a_4235

    ld [hl], h
    ld h, [hl]
    sub e
    ld h, [hl]
    cp [hl]
    ld h, [hl]
    sbc $66
    inc h
    ld h, a
    ld b, [hl]
    ld h, a
    db $76
    ld h, a
    sbc c
    ld h, a
    xor h
    ld h, a
    adc $67
    db $fd
    ld h, a
    ld e, $68
    ld d, [hl]
    ld l, b
    add a
    ld l, b
    and [hl]
    ld l, b
    rst $10
    ld l, b
    ld a, [$0d68]
    ld l, c
    jr nz, jr_04a_425e

    inc sp
    ld l, c
    ld b, [hl]
    ld l, c
    ld [hl], l
    ld l, c
    sbc e
    ld l, c
    cp [hl]
    ld l, c
    jp nc, $e969

    ld l, c
    inc e
    ld l, d
    ld a, $6a
    ld d, c
    ld l, d
    adc a
    ld l, d
    xor c
    ld l, d
    rst $20
    ld l, d
    ld bc, $3a6b
    ld l, e
    ld l, d
    ld l, e
    sbc [hl]
    ld l, e
    dec bc
    ld l, h
    ld b, [hl]
    ld l, h
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld l, h

jr_04a_4229:
    ld a, [hl]
    ld l, h

jr_04a_422b:
    ld a, [hl]
    ld l, h

jr_04a_422d:
    ld a, [hl]
    ld l, h

jr_04a_422f:
    xor d
    ld l, h

jr_04a_4231:
    push bc
    ld l, h

jr_04a_4233:
    ldh a, [$6c]

jr_04a_4235:
    dec de
    ld l, l
    cpl
    ld l, l
    ld c, e
    ld l, l
    add c
    ld l, l
    jp $fa6d


    ld l, l
    ld e, [hl]
    ld l, [hl]
    sbc a
    ld l, [hl]
    pop de
    ld l, [hl]
    dec b
    ld l, a
    jr nc, jr_04a_42ba

    ld h, d
    ld l, a
    ret


    ld l, a
    db $fd
    ld l, a
    cpl
    ld [hl], b
    ld e, e
    ld [hl], b
    ld a, l
    ld [hl], b
    and a
    ld [hl], b
    db $db
    ld [hl], b
    rrca
    ld [hl], c
    dec sp

jr_04a_425e:
    ld [hl], c
    ld h, [hl]
    ld [hl], c
    sub c
    ld [hl], c
    and l
    ld [hl], c
    rst $08
    ld [hl], c
    inc sp
    ld [hl], d
    inc sp
    ld [hl], d
    ld d, l
    ld [hl], d
    ld l, d
    ld [hl], d
    and [hl]
    ld [hl], d
    call c, $0f72
    ld [hl], e
    ld b, d
    ld [hl], e
    ld e, l
    ld [hl], e
    adc [hl]
    ld [hl], e
    bit 6, e
    bit 6, e
    bit 6, e
    bit 6, e
    bit 6, e
    bit 6, e
    bit 6, e
    bit 6, e
    bit 6, e
    bit 6, e
    db $ed
    ld [hl], e
    cpl
    ld [hl], h
    sbc a
    ld [hl], h
    sbc $74
    inc e
    ld [hl], l
    ld e, h
    ld [hl], l
    dec h
    db $76
    ld h, e
    db $76
    and d
    db $76
    ld [c], a
    db $76
    xor c
    ld [hl], a
    nop
    ld a, b
    ld e, d
    ld a, b
    ldh [$78], a
    dec e
    ld a, c
    jr c, jr_04a_4328

    ld [hl], d
    ld a, c
    inc b
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e

jr_04a_42ba:
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    pop bc
    ld a, d
    rst $10
    ld a, d
    db $ec
    ld a, d
    ld [$477b], sp
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld b, a
    ld a, e
    ld h, b
    ld a, e
    ld a, h
    ld a, e
    or [hl]
    ld a, e
    db $ec
    ld a, e
    ld c, $7c
    ld h, h
    ld a, h
    and e
    ld a, h
    nop
    ld a, l
    ld d, [hl]
    ld a, l
    jp $f77d


    ld a, l
    jr nc, jr_04a_4385

    ld [hl], e
    ld a, [hl]
    sub l
    ld a, [hl]
    or [hl]
    ld a, [hl]

Call_04a_430d:
    ld a, [$c822]
    cp $02
    jr nz, jr_04a_432a

    ld a, [$c823]
    cp $60
    jr c, jr_04a_432a

    sub $60
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $2100

jr_04a_4328:
    rst $10
    ret


jr_04a_432a:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c822]
    cp $02
    jr nz, jr_04a_434e

    ld a, [$c823]
    cp $60
    jr c, jr_04a_434e

    sub $60
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $2101
    rst $10
    ret


jr_04a_434e:
    ld de, $4007
    call $05f6
    ret


    ld a, [$c822]
    cp $02
    jr nz, jr_04a_4372

    ld a, [$c823]
    cp $60
    jr c, jr_04a_4372

    sub $60
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld hl, $2102
    rst $10
    ret


jr_04a_4372:
    call Call_04a_430d
    call $0609
    ret


    db $eb
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    add hl, sp
    ld b, d
    ld c, a

jr_04a_4385:
    ld c, l
    ld b, [hl]
    ld e, [hl]
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $2f
    ld e, l
    ld b, h
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld d, d
    ld c, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $31
    ld a, $4a
    ld b, d
    ld c, e
    and h
    ld b, c
    ld a, $4b
    ld c, e
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $51
    ld d, d
    ld c, e
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld c, e
    ld a, $52
    ld h, c
    ld h, h
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, c
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $36
    ld a, $4b
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld b, l
    ld b, d
    and h
    rst $28
    xor $2e
    ld c, h
    ld c, d
    ld c, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, c
    ld b, d
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld c, b
    ld d, d
    ld c, a
    ld d, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    ld [hl], $4d
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $24
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    dec [hl]
    ld b, d
    ld b, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld c, d
    ld h, h
    inc h
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $46
    ld b, l
    ld c, d
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld c, l
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $36
    ld a, $4b
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, b
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    jr nc, jr_04a_458e

    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld d, b
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld h, b
    ld h, h
    daa
    ld d, d
    ld h, h
    inc h
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    dec hl
    ld a, $51

jr_04a_458e:
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    and h
    rst $28
    xor $41
    ld a, $50
    ld h, h
    and h
    ld h, h
    scf
    ld c, h
    ld c, a
    and h
    and h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld c, h
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    and h
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, l
    rst $28
    xor $2e
    ld c, c
    ld a, $4d
    ld c, l
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    ld [hl], $3e
    ld c, e
    ld d, c
    ld b, [hl]
    ld h, h
    ld h, a
    and h
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, b
    ld h, h
    or $65
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $25
    ld a, $50
    ld a, $4f
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, @+$48

    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, d
    rst $28
    xor $37
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld a, [$eff7]
    xor $44
    ld c, a
    ld c, h
    ld b, h
    ld b, h
    ld d, [hl]
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld a, $64
    ld c, c
    ld a, $64
    ld c, c
    ld a, $60
    ld h, h
    or $ef
    xor $52
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_04a_46bf

    ld c, c
    ld a, $56
    ld a, $64
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    and h
    rst $28
    xor $49
    ld a, $49
    ld a, $49
    ld a, $61
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    cpl
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    inc l
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $2e

jr_04a_46bf:
    ld c, c
    ld a, $4f
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld h, h
    jr z, jr_04a_4726

    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $3e
    ld c, e
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $49
    ld c, c
    ld c, h
    ld h, l
    rst $28
    xor $2b
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c

jr_04a_4726:
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $4f
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04a_4798

    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr z, jr_04a_47a5

    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b

jr_04a_4798:
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    rst $28
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h

jr_04a_47a5:
    add hl, hl
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $48
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $60
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $48
    ld c, h
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr nc, @+$40

    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $27
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld c, b
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ccf
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld b, l
    ld a, $52
    ld c, l
    ld d, c
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld e, l
    ld c, a
    ld b, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $65
    ld h, h
    ld [hl-], a
    ld l, $61
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, a
    ld a, $64
    ld c, b
    ld c, c
    ld a, $4f
    ld h, l
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld b, d
    ld e, [hl]
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld c, e
    ld c, e
    ld d, [hl]
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld a, [$eff7]
    xor $4a
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    rst $28
    xor $a4
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, @+$4d

    ld b, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    and h
    ld a, [$eff7]
    xor $a4
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    rst $28
    xor $a4
    ld c, d
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    jr z, jr_04a_49d7

    ld b, e
    ld c, h
    ld c, c
    ld b, h
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld a, $49
    ld h, l
    rst $28
    xor $f6
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d

jr_04a_49d7:
    ld c, a
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld c, b
    ld e, e
    ld d, d
    ld b, e
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $43
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld c, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $45
    ld a, $50
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld a, [$eff7]
    xor $42
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $42
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    daa
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld b, d
    ld c, c
    ld b, c
    rst $28
    xor $53
    ld c, h
    ld c, e
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, l
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    or $65
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    rst $28
    xor $2f
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld c, b
    ld c, c
    ld a, $4f
    ld h, c
    rst $28
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld c, e
    ld e, h
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, e
    ld e, e
    ld b, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, b
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld a, [hl-]
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    ld [hl], $46
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld c, c
    ld a, $4b
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, [hl]
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $47
    ld a, $64
    ld d, b
    ld c, h
    ld h, l
    ld h, h
    ld [hl-], a
    ccf
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld h, b
    ld h, h
    jr nc, jr_04a_4c7c

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $f6
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa

jr_04a_4c7c:
    ld a, $64
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld d, c
    ld h, h
    ld d, h
    ld a, $50
    ld h, b
    rst $28
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $43
    ld b, d
    ld b, l
    ld c, c
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr c, @+$4d

    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld a, $49
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld b, e
    ld b, d
    ld b, l
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    or $65
    ld h, h
    ld l, $42
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, b
    ld a, [$eff7]
    xor $52
    ld c, d
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_4d6b

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04a_4d9d

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld c, d
    ld e, l
    ld d, b
    ld a, $4b

jr_04a_4d6b:
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $47
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, l
    ld c, c
    ld e, h
    ld d, c
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld c, b
    ld c, h

jr_04a_4d9d:
    ld c, d
    ld c, d
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $ef
    xor $50
    ld c, h
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_4e27

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld b, d
    ld c, a
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $3e
    ld d, d
    ccf
    ld b, d
    ld c, a
    ld h, l
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld b, h
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, a
    ld b, [hl]
    ld b, b
    ld c, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    rst $28
    xor $42
    ld d, c

jr_04a_4e27:
    ld d, h
    ld a, $50
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $45
    ld h, l
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $64
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, l
    ld h, h
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld a, $44
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld a, [$eff7]
    xor $37
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $36
    ld c, l
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld c, b
    ld c, c
    ld a, $4f
    ld h, c
    rst $28
    xor $27
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04a_4f4b

    ld h, h
    ld d, c
    ld d, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $2f
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    ld h, h
    or $61
    ld a, [$eff7]
    xor $27
    ld a, $43
    ld e, l
    ld c, a
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $28
    ld c, e

jr_04a_4f4b:
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, c
    ld b, c
    ld b, [hl]
    ld b, h
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_4fa7

    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld h, h
    dec h
    ld b, d
    sbc h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h

jr_04a_4fa7:
    ld d, h
    ld e, e
    ld c, a
    ld l, b
    ld d, b
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    jr nc, jr_04a_5007

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $f9
    nop
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_04a_5025

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $f9
    nop
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a

jr_04a_5007:
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $45
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a

jr_04a_5025:
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_5089

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e

jr_04a_5089:
    ld c, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld l, $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc h
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld b, c
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $51
    ld c, a
    ld c, h
    ld d, c
    ld d, a
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $28
    ld c, a
    ld b, h
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $50
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    ld b, c
    ld a, $4b
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld d, b
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr z, jr_04a_519b

    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_04a_51b6

    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    rst $28
    xor $49
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld h, h
    scf
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld a, $4f
    ld d, c
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b

jr_04a_519b:
    ld d, b
    ld b, d
    ld h, h
    ld a, $4b
    ld h, h
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a

jr_04a_51b6:
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_04a_520e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld [hl-], a
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    inc a
    ld b, d
    ld d, c
    ld b, [hl]
    ld h, [hl]
    ld h, a

jr_04a_520e:
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_04a_526a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    inc a
    ld b, d
    ld d, c
    ld b, [hl]
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, b
    and h
    ld c, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, h
    ld b, d
    rst $28
    xor $36
    ld a, $52
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]

jr_04a_526a:
    ld h, l
    ld h, h
    cpl
    ld a, $5e
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $47
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld h, $3e
    ld d, c
    ld b, e
    ld c, c
    ld d, [hl]
    rst $28
    xor $4d
    ld a, $3e
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04a_52ef

    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld l, b
    ld c, e
    ld h, h
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a

jr_04a_52ef:
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_5352

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $41
    ld a, $4a
    ld b, [hl]

jr_04a_5352:
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, h
    ld b, h
    ld b, d
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $50
    ld h, h
    jr z, jr_04a_53e8

    ld b, h
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    rst $28
    xor $32
    ld l, $66
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $65
    ld h, h
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld l, b
    ld d, b
    ld h, h
    ld c, c
    ld c, h
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld c, h
    ld b, e
    ld b, e
    ld b, d

jr_04a_53e8:
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr z, jr_04a_5468

    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $4b
    ld a, [$eff7]

jr_04a_5468:
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $60
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $28
    ld b, b
    ld b, l
    ld d, b
    ld c, d
    ld a, $4b
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $24
    ld d, d
    ld c, a
    ld d, d
    ld c, d
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $33
    ld a, $4f
    ld d, c
    ld c, e
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_5505

    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $28
    ld b, b
    ld b, l
    ld d, b
    ld c, d
    ld a, $4b
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    jr c, jr_04a_5538

    ld b, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a

jr_04a_5505:
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, l

jr_04a_5538:
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, h
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_55a8

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $4a
    ld b, [hl]
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d

jr_04a_55a8:
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    rst $28
    xor $24
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $41
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    jr z, jr_04a_5653

    ld b, h
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    rst $28
    xor $2c
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld a, $4b
    ld b, h
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3e
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c

jr_04a_5653:
    ld a, $5e
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $3e
    ccf
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld a, $4a
    rst $28
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld h, $64
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    sbc h
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld h, h
    rst $30
    ldh a, [$ea]
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld h, a
    jr z, @+$48

    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $2e
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$4631], a
    ld b, b
    ld b, [hl]
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $33
    ld a, $4f
    ld d, c
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $2e
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$4631], a
    ld b, b
    ld b, l
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld a, $4f
    ld d, c
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $4a
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    ld sp, $4046
    ld b, l
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $47
    ld a, $64
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    rst $28
    xor $41
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$4631], a
    ld b, b
    ld b, [hl]
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec [hl]
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$4631], a
    ld b, b
    ld b, [hl]
    ld h, h
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $4b
    ld b, e
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld l, b
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc h
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    ld a, [$eff7]
    xor $54
    ld a, $50
    ld h, h
    ld b, c
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    and h
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    jr z, jr_04a_58c8

    ld b, h
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    rst $28
    xor $2c
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $41
    ld a, $4b
    ld c, e
    ld h, h
    ld a, $4b
    ld b, e
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    ld sp, $4046

jr_04a_58c8:
    ld b, [hl]
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr z, jr_04a_5917

    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld b, d
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld b, h
    ld b, d
    rst $28
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld c, e
    ld b, c
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]

jr_04a_5917:
    ld b, b
    ld c, b
    ld b, d
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $3e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $25
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld l, b
    ld d, b
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_04a_59ba

    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld a, $56
    ccf
    ld d, d
    ld c, a
    ld c, e
    rst $28
    xor $3f
    ld b, d
    ld d, e
    ld c, h
    ld c, a
    ld d, a
    ld d, d
    ld b, h
    ld d, c
    ld a, [$eff7]
    xor $39
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $33
    ld a, $4f
    ld d, c
    ld c, e
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld sp, $663e
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e

jr_04a_59ba:
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    dec [hl]
    ld a, $56
    ccf
    ld d, d
    ld c, a
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04a_5a23

    ld b, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    cpl
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $45
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_5a6d

    ld c, e
    ld d, b

jr_04a_5a23:
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $35
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld [hl-], a
    ld l, $66
    ld h, a
    rst $28
    xor $f0
    db $eb
    sbc a
    ld h, h
    ld h, a
    inc l

jr_04a_5a6d:
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $24
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    ld h, h
    ld d, h
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $41
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, h
    ld c, a
    ld a, $52
    ld d, b
    sbc h
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    jr z, jr_04a_5b0b

    ld b, h
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, b
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    rst $28
    xor $2c
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, l
    ld h, h
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, c
    ld c, h
    ld d, b
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]

jr_04a_5b0b:
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $41
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_04a_5b7f

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $3e
    ld b, h
    ld h, h
    ld b, d

jr_04a_5b7f:
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    rst $28
    xor $25
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld c, a
    ld b, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    ld sp, hl
    nop
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04a_5c1a

    ld b, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, b
    ld h, h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, h
    jr z, jr_04a_5c3f

    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $2f
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d

jr_04a_5c1a:
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld [hl], $4c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_5c83

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]

jr_04a_5c3f:
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $5c
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld h, h
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $4b
    ld b, e
    ld a, $4b
    ld b, h
    ld b, d

jr_04a_5c83:
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, h
    ld c, a
    ld a, $52
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $28
    ld c, a
    ld b, h
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $50
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, c
    ld h, h
    inc l
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld [hl-], a
    ld l, $66
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld c, c
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $3f
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    rst $28
    xor $28
    ld c, a
    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04a_5e11

    ld b, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    jr z, jr_04a_5e2c

    ld d, a
    sbc h
    ld a, [$eff7]
    xor $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld c, l
    ld a, $3e
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    jr nc, @+$48

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h

jr_04a_5e11:
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d

jr_04a_5e2c:
    ld b, h
    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    jr nc, jr_04a_5e80

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    cpl
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $36
    ld c, b
    ld b, d
    ld c, c
    ld b, h
    ld c, c
    ld a, $41
    ld a, $64
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ldh a, [$eb]
    jr nc, jr_04a_5ec5

    ld c, c

jr_04a_5e80:
    ld a, $56
    ld a, $64
    ld h, a
    jr c, jr_04a_5ed2

    ld b, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    jr nc, jr_04a_5edd

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    jr z, jr_04a_5eef

    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld b, c
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, l
    ld h, a
    rst $28
    xor $fa

jr_04a_5ec5:
    rst $30
    ldh a, [$eb]
    jr nc, jr_04a_5f10

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    daa
    ld d, d

jr_04a_5ed2:
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l

jr_04a_5edd:
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_5f30

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, d

jr_04a_5eef:
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    jr nc, jr_04a_5f45

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld [hl], $4c
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld c, a
    ld b, c
    ld c, e

jr_04a_5f10:
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    jr nc, jr_04a_5f5f

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld l, $5c
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c

jr_04a_5f30:
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, e
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    jr nc, @+$48

    ld c, c

jr_04a_5f45:
    ld a, $56
    ld a, $64
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, b
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]

jr_04a_5f5f:
    ld c, e
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    and h
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $28
    ld c, a
    ld b, h
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    rst $28
    xor $50
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    jr nc, jr_04a_6005

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    cpl
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    jr nc, jr_04a_6029

    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld b, e
    ld b, d
    ld c, e
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d

jr_04a_6005:
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28

jr_04a_6029:
    xor $30
    ld b, [hl]
    ld c, c
    ld a, $56
    ld a, $64
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr z, jr_04a_607e

    rst $28
    xor $3f
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld c, c
    ld a, $41
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h

jr_04a_607e:
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, c
    ld d, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld a, $4b
    ld c, b
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, d
    ld e, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, l
    ld e, e
    ld d, c
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $41
    ld a, $53
    ld c, h
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, hl
    nop
    ld h, h
    ld d, l
    ld h, h
    ld sp, hl
    db $10
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld sp, hl
    jr nz, jr_04a_6158

    ld h, c
    ld a, [$eff7]
    xor $2c
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld c, e

jr_04a_6158:
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld c, e
    ld e, l
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, c
    ld b, c
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    jr nc, jr_04a_61b8

    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld h, h
    ld [bc], a
    nop
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $51
    ld c, a
    ld a, $44
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    daa
    ld a, $4b
    ld c, b
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld h, l
    ld h, a
    rst $28

jr_04a_61b8:
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld a, $3f
    ld c, b
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    rst $28
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld a, [$eff7]
    xor $3e
    ccf
    ld c, b
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    rst $28
    xor $41
    ld a, $53
    ld c, h
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, hl
    nop
    ld h, h
    ld d, l
    ld h, h
    ld sp, hl
    db $10
    rst $28
    xor $4a
    ld a, $40
    ld b, l
    ld d, c
    ld h, h
    ld sp, hl
    jr nz, jr_04a_6272

    ld h, c
    ld a, [$eff7]
    xor $2c
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $32
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28

jr_04a_6272:
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld d, b
    ld h, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    rst $28
    xor $51
    ld c, a
    ld a, $44
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    daa
    ld a, $4b
    ld c, b
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $25
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, c
    ld d, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $3a
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    jr nc, jr_04a_63bd

    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    rst $28
    xor $49
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $41
    ld a, $53

jr_04a_63bd:
    ld c, h
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld [hl], $4c
    ld c, a
    ld b, h
    ld b, e
    ld a, $49
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld [hl], $4c
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    cpl
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld [hl], $4c
    ld c, a
    ld b, h
    ld b, e
    ld a, $49
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $3e
    ccf
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2a
    ld b, d
    ld c, c
    ld b, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    inc l
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    dec h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld [hl], $4c
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $51
    ld c, a
    ld a, $44
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, h
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04a_6689

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld c, a

jr_04a_6689:
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $50
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld a, $65
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld a, $3f
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, h
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, c
    ld h, h
    jr z, jr_04a_6736

    ld c, e
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
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    rst $28
    xor $3f
    ld b, d
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a

jr_04a_6736:
    rst $28
    xor $44
    ld a, $4b
    ld d, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr nc, jr_04a_67c5

    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld d, c
    ld a, $52
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr nc, @+$48

    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $44
    ld a, $4b
    ld d, a
    ld h, h

jr_04a_67c5:
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld sp, hl
    db $10
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld b, h
    ld b, d
    ld d, c
    ld a, $52
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld a, $3f
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_6882

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr nc, jr_04a_68a1

    ld b, l
    ld c, a
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a

jr_04a_6882:
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $4f
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]

jr_04a_68a1:
    ld b, h
    ld b, d
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr z, jr_04a_68ff

    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $49
    ld a, $4b
    ld b, h
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr nc, jr_04a_6926

    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld d, c
    ld a, $52
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h

jr_04a_68ff:
    ld h, h
    ld h, a
    jr nc, jr_04a_6949

    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr nc, jr_04a_695c

    ld d, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h

jr_04a_6926:
    ld h, a
    jr nc, jr_04a_696f

    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr nc, jr_04a_6982

    ld d, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a

jr_04a_6949:
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld h, h

jr_04a_695c:
    ld sp, hl
    db $10
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld b, h
    ld b, d
    ld d, c
    ld a, $52
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, l

jr_04a_696f:
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld d, h
    ld c, h

jr_04a_6982:
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld a, $4b
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld a, $53
    ld c, h
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    add hl, sp
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld a, $50
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld d, c
    ld c, a
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld a, $53
    ld c, h
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld h, h
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    add hl, sp
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $2c
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $43
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld a, [$f0f7]
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $2c
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$f9]
    nop
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $43
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld a, [$f0f7]
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr c, jr_04a_6b54

    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $3e
    ccf
    ld d, a
    ld d, d
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $54
    ld e, e
    ld b, l
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $67
    inc h
    ccf
    ld b, l
    ld c, h
    ld c, c
    ld b, d
    ld c, e
    ld h, a
    ld h, c
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a

jr_04a_6b54:
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_04a_6bf7

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $33
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    jr c, jr_04a_6c26

    ld b, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d

jr_04a_6bf7:
    ld c, e
    ld h, h
    ld a, $52
    ld b, e
    sbc h
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e

jr_04a_6c26:
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    inc sp
    ld c, a
    ld b, [hl]
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld b, h
    ld b, d
    ld d, h
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $51
    ld d, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    jr c, jr_04a_6cfb

    ld b, c
    ld h, h
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    rst $28
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $50
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, @+$51

    ld d, b
    ld d, c
    ld c, a
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld c, c

jr_04a_6cfb:
    ld c, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $36
    ld d, c
    ld a, $4a
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    jr c, jr_04a_6d6c

    ld b, c
    ld h, h
    inc sp
    ld a, $4f
    ld d, c
    ld c, e
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    inc l
    ld d, b
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $4f
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_04a_6d97

    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h

jr_04a_6d6c:
    daa
    ld d, d
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_6dd7

    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld d, c
    ld e, e
    ld c, a

jr_04a_6d97:
    ld c, b
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4d
    ld a, $3e
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    jr nc, jr_04a_6e0f

    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $2a

jr_04a_6dd7:
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $48
    ld c, c
    ld a, $4d
    ld c, l
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld h, l
    ld h, a
    ld h, h
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, c
    ld b, [hl]
    ld c, l
    ld c, l
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $f9

jr_04a_6e0f:
    jr nz, jr_04a_6e75

    ld a, [$eff7]
    xor $41
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $51
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld c, d
    ld a, $49
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_6eaa

    ld c, e
    ld h, h
    jr nc, jr_04a_6eb4

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $41
    ld a, $50
    ld h, h
    daa

jr_04a_6e75:
    ld d, d
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $45
    ld a, $51
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b

jr_04a_6eaa:
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $28
    ld c, a
    ld b, h

jr_04a_6eb4:
    ld b, d
    ccf
    ld c, e
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $50
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    jr z, @+$48

    ld c, e
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $3a
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld h, h
    ld c, d
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld sp, hl
    nop
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld sp, hl
    db $10
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld d, c
    ld b, h
    ld b, d
    ld b, h
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    and h
    rst $28
    xor $f7
    ldh a, [$ea]
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
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld b, d
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld b, d
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    jr nc, jr_04a_6fa7

    ld d, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_6fae

    ld c, e
    ld h, h
    jr z, jr_04a_6fb2

    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $f9
    jr nz, jr_04a_6fd9

    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    dec h
    ld c, a
    ld e, l
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld c, h
    ld d, b
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld sp, hl
    jr nc, jr_04a_6fd0

    ld h, c

jr_04a_6fa7:
    ld a, [$eff7]
    xor $36
    ld c, h
    ld c, c

jr_04a_6fae:
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b

jr_04a_6fb2:
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_7015

    ld c, e

jr_04a_6fd0:
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d

jr_04a_6fd9:
    ld c, e
    ld h, l
    rst $28
    xor $3a
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld h, h
    ld c, d
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d

jr_04a_7015:
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ccf
    ld b, d
    ld d, h
    ld a, $45
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    jr z, @+$48

    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld e, l
    ld d, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld d, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld h, h
    jr z, jr_04a_70be

    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld c, b
    ld c, h
    ld d, b
    ld d, c
    ld b, d
    ld d, c
    rst $28
    xor $f9
    jr nc, jr_04a_70ba

    ld h, c
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    jr z, jr_04a_70f3

    ld c, e
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    rst $28

jr_04a_70ba:
    xor $3a
    ld a, $4f

jr_04a_70be:
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, [hl]
    ld d, b
    ld h, h
    ld c, d
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$f9]
    db $10
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld b, [hl]

jr_04a_70f3:
    ld b, d
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $3f
    ld b, d
    ld c, e
    ld a, $4b
    ld c, e
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld sp, hl
    nop
    rst $28
    xor $44
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    dec hl
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld a, [hl+]
    ld a, $4b
    ld d, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld sp, hl
    nop
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld b, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, c
    ld b, [hl]
    ld c, l
    ld c, l
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    rst $28
    xor $f9
    jr nz, jr_04a_724a

    ld a, [$eff7]
    xor $41
    ld a, $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr nc, jr_04a_725a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $45
    ld a, $51
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld c, d
    ld a, $49
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld c, e
    ld d, d

jr_04a_724a:
    ld b, h
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, c
    ld b, c
    and h
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    inc sp

jr_04a_725a:
    ld a, $5e
    ld d, c
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $24
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $51
    ld b, d
    ld b, [hl]
    ld c, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, d
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $51
    ld b, d
    ld b, [hl]
    ld c, c
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld c, d
    ld a, $49
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $41
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld sp, hl
    nop
    ld h, b
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld [hl-], a
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    scf
    ld b, a
    ld a, $a4
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld d, d
    ld b, h
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld c, c
    ld b, c
    ld h, h
    ld b, c
    ld a, $3f
    ld b, d
    ld b, [hl]
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, c
    ld b, [hl]
    ld c, h
    ld d, c
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $3e
    ld c, e
    ld d, c
    ld c, a
    ld b, d
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld a, $4a
    ld c, d
    ld c, c
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $4a
    ld b, [hl]
    ld d, c
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, [hl]
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $41
    ld a, $4b
    ld c, b
    ld b, d
    ld c, e
    ld b, c
    ld h, h
    ld a, $4b
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld sp, hl
    nop
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $64
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $f9
    db $10
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $45
    ld a, $50
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    jr z, jr_04a_74eb

    ld c, e
    ld h, h
    jr z, jr_04a_74ef

    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $27
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, a
    ld b, d
    ld c, a
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_752a

    ld c, e
    ld h, h
    jr z, jr_04a_752e

    ld h, h
    ld d, e
    ld c, h

jr_04a_74eb:
    ld c, e
    rst $28
    xor $33

jr_04a_74ef:
    ld a, $4c
    ld b, e
    ld a, $4b
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_7568

    ld c, e
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, e
    ld c, h
    ld c, e

jr_04a_752a:
    rst $28
    xor $27
    ld b, d

jr_04a_752e:
    ld c, e
    ld d, a
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_75a8

    ld c, e
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, e

jr_04a_7568:
    ld c, h
    ld c, e
    rst $28
    xor $2f
    ld a, $53
    ld a, $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    and h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e

jr_04a_75a8:
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $3e
    ccf
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld a, $4a
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_7671

    ld c, e
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $33
    ld a, $4c
    ld b, e
    ld a, $4b
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_76af

    ld c, e
    ld h, h
    jr z, jr_04a_76b3

    ld h, h
    ld d, e
    ld c, h
    ld c, e

jr_04a_7671:
    rst $28
    xor $30
    ld a, $41
    ld b, b
    ld c, c
    ld c, h
    ld d, h
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_76ee

    ld c, e
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, e
    ld c, h

jr_04a_76af:
    ld c, e
    rst $28
    xor $27

jr_04a_76b3:
    ld b, d
    ld c, e
    ld d, a
    ld a, $52
    ld c, a
    ld d, d
    ld d, b
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_772e

    ld c, e
    ld h, h
    jr z, @+$48

    ld h, h
    ld d, e

jr_04a_76ee:
    ld c, h
    ld c, e
    rst $28
    xor $2f
    ld a, $53
    ld a, $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2b
    ld c, h
    ld b, e
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    and h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e

jr_04a_772e:
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $3e
    ccf
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld a, $4a
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld d, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, c
    ld c, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $30
    ld a, $49
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld sp, hl
    nop
    ld a, [$eff7]
    xor $44
    ld b, d
    ccf
    ld c, a
    ld a, $40
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, [hl]
    ld h, h
    ld sp, hl
    db $10
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $f9
    jr nz, jr_04a_78bc

    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    and h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $3e
    ccf
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c

jr_04a_78bc:
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld a, $4a
    ld d, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld c, a
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    rst $28
    xor $27
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld b, d
    ld d, c
    ld d, c
    and h
    daa
    ld d, d
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, h
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    and h
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    jr z, jr_04a_796d

    ld c, e
    ld b, d
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld h, l
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    inc h
    ld b, l
    ld h, l
    rst $28
    xor $f9
    nop
    ld h, h
    jr nc, jr_04a_7988

    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_04a_79a9

    ld c, e
    ld c, e

jr_04a_796d:
    and h
    ld h, a
    ld a, [$f0f7]
    ld [$649f], a
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $27

jr_04a_7988:
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, b
    ld h, a

jr_04a_79a9:
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $42
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    daa
    ld c, a
    ld a, $48
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld h, h
    ld c, d
    ld a, $44
    rst $28
    xor $42
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld b, c
    ld c, a
    ld a, $48
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
    ccf
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_04a_7a90

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h

jr_04a_7a90:
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $25
    ld b, [hl]
    ccf
    ld c, c
    ld b, [hl]
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, b
    ld h, c
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld c, d
    ld e, h
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld c, e
    ld a, $40
    ld b, l
    ld c, c
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $4c
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld a, $50
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_04a_7b6f

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, a
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld a, $3f
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    or $49
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld sp, $404c
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a

jr_04a_7b6f:
    ld b, d
    rst $28
    xor $3a
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, b
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_04a_7c10

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld a, $49
    ld d, [hl]
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, l
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $3e
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_04a_7c4f

    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a

jr_04a_7c10:
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld c, b
    ld c, h
    ld d, b
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $02
    nop
    ld h, h
    ld a, [hl+]
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld [hl-], a
    ld l, $66
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $eb
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b

jr_04a_7c4f:
    ld b, d
    ld d, b
    rst $28
    xor $28
    ld b, [hl]
    ld h, h
    ld a, $4b
    ld a, $49
    ld d, [hl]
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_04a_7cb4

    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld h, l
    rst $28
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld e, l
    ld e, [hl]
    ld b, d
    ld d, b
    ld h, h
    jr z, @+$48

    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld a, $5e
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $4d
    ld c, c
    ld a, $52
    ld b, c
    ld b, d
    ld c, a
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld d, d
    ld b, [hl]
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28

jr_04a_7cb4:
    xor $50
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld d, d
    ld c, e
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04a_7d1b

    ld h, h
    ld d, b
    ld a, $44
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04a_7d5a

    ld a, $4c
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    inc h
    ld c, b
    ld d, c
    ld b, [hl]

jr_04a_7d1b:
    ld d, e
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, @+$52

    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld l, b
    ld d, b
    ld h, h
    ld c, b
    ld a, $52
    ld c, d
    rst $28
    xor $42
    ld c, a
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a

jr_04a_7d5a:
    ld h, l
    ld h, l
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, h
    ld c, a
    ld c, h
    ld e, [hl]
    ld a, $4f
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_04a_7dde

    ld h, h
    ld d, b
    ld a, $44
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    ld b, d
    ld d, b
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e

jr_04a_7dde:
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $5a
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, l
    ld a, $66
    ld h, h
    jr z, @+$52

    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $44
    ld a, $4b
    ld d, a
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $37
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr c, jr_04a_7e8a

    ld a, $4c
    ld h, l
    ld h, h
    ld sp, $4046
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, h
    jr z, jr_04a_7e9d

    ld h, h
    ld b, l
    ld a, $51
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $37
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_7ec9

    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    ld sp, $ef52
    xor $3e
    ld d, d
    ld d, b
    ld d, h

jr_04a_7e8a:
    ld a, $40
    ld b, l
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_7eeb

    ld h, h
    ld d, h

jr_04a_7e9d:
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    rst $28
    xor $54
    ld a, $40
    ld b, l
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$f0f7]
    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, jr_04a_7f0c

    ld h, h
    ccf
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $42
    ld d, c
    ld d, h

jr_04a_7ec9:
    ld a, $50
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld a, $52
    ld d, b
    ld d, h
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30

jr_04a_7eeb:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04a_7f0c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
