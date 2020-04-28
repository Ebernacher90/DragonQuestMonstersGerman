; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $045", ROMX[$4000], BANK[$45]

    ld b, l
    ld bc, $1e41
    ld b, c
    dec sp
    ld b, c
    add hl, bc
    ld b, b
    ld e, b
    ld b, c
    cp d
    ld b, c
    db $ec
    ld b, d
    xor [hl]
    ld b, e
    dec de
    ld b, h
    ld b, [hl]
    ld b, h
    ld e, a
    ld b, h
    inc b
    ld b, l
    ld d, e
    ld b, l
    db $ed
    ld b, l
    ld a, c
    ld b, [hl]
    add l
    ld b, a
    ret c

    ld b, a
    ld h, e
    ld c, b
    ld [hl], a
    ld c, b
    xor l
    ld c, b
    jp z, $dd48

    ld c, b
    ld b, a
    ld c, c
    ld d, d
    ld c, c
    rst $08
    ld c, c
    ld a, [de]
    ld c, d
    ld h, a
    ld c, d
    and d
    ld c, d
    ld l, e
    ld c, e
    and [hl]
    ld c, e
    ld a, $4c
    ld h, e
    ld c, h
    sub l
    ld c, h
    sub $4c
    or l
    ld c, l
    ld b, h
    ld c, [hl]
    ld d, e
    ld c, [hl]
    ld h, a
    ld c, [hl]
    adc h
    ld c, [hl]
    and b
    ld c, [hl]
    cp a
    ld c, [hl]
    inc c
    ld c, a
    inc a
    ld c, a
    adc h
    ld c, a
    or c
    ld c, a
    sbc $4f
    cp [hl]
    ld d, b
    rla
    ld d, c
    add l
    ld d, c
    rst $30
    ld d, c
    ld e, h
    ld d, d
    ld l, d
    ld d, h
    dec e
    ld d, l
    ld e, l
    ld d, l
    push af
    ld d, l
    ld d, e
    ld d, [hl]
    cp h
    ld d, [hl]
    ld a, [$4c56]
    ld d, a
    db $db
    ld d, a
    dec c
    ld e, b
    xor [hl]
    ld e, b
    inc de
    ld e, c
    or c
    ld e, c
    ld c, h
    ld e, d
    add a
    ld e, d
    dec h
    ld e, e
    ld e, c
    ld e, e
    rst $10
    ld e, e
    or e
    ld e, h
    sub d
    ld e, l
    add hl, bc
    ld e, [hl]
    adc c
    ld e, [hl]
    add hl, bc
    ld e, a
    ld [hl], d
    ld e, a
    and b
    ld e, a
    and h
    ld h, b
    and l
    ld h, c
    sbc $61
    ld d, [hl]
    ld h, d
    and $62
    inc de
    ld h, e
    dec l
    ld h, e
    add hl, sp
    ld h, e
    or e
    ld h, e
    ret


    ld h, e
    ldh [$63], a
    xor $63
    rst $38
    ld h, e
    adc l
    ld h, h
    add hl, hl
    ld h, l
    add l
    ld h, l
    rst $28
    ld h, l
    ld d, e
    ld h, [hl]
    push hl
    ld h, [hl]
    ld d, a
    ld h, a
    rst $20
    ld h, a
    ld [$6468], sp
    ld l, b
    sbc c
    ld l, b
    jp nz, $2368

    ld l, c
    ld e, h
    ld l, c
    add b
    ld l, c
    inc a
    ld l, d
    ld e, $6b
    adc l
    ld l, e
    jp z, Jump_045_426c

    ld l, l
    push bc
    ld l, l
    xor h
    ld l, a
    ld [hl+], a
    ld [hl], b
    ret c

    ld [hl], b
    dec c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    and d
    ld [hl], c
    dec b
    ld [hl], d
    ld b, [hl]
    ld [hl], d
    jp nc, Jump_045_7472

    ld [hl], e
    ld e, [hl]
    ld [hl], h
    or h
    ld [hl], h
    add hl, de
    ld [hl], l
    and b
    ld [hl], l
    ld d, $76
    ld a, h
    db $76
    dec bc
    ld [hl], a
    ld b, [hl]
    ld [hl], a

Call_045_4101:
    ld a, [$c823]
    cp $7c
    jr c, jr_045_4117

    sub $7c
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1b00
    rst $10
    ret


jr_045_4117:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c823]
    cp $7c
    jr c, jr_045_4117

    sub $7c
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1b01
    rst $10
    ret


    ld de, $4007
    call $05f6
    ret


    ld a, [$c823]
    cp $7c
    jr c, jr_045_4117

    sub $7c
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $1b02
    rst $10
    ret


    call Call_045_4101
    call $0609
    ret


    db $eb
    sbc a
    ld h, h
    ld h, a
    jr z, jr_045_41ad

    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld c, b
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $29
    ld c, h
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, e
    ld b, h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    ld h, l
    ld h, l
    ld h, h
    daa
    ld a, $50
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]

jr_045_41ad:
    xor $4a
    ld a, $40
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
    jr z, jr_045_4206

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
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, h
    ld b, [hl]
    ld b, b
    ld c, b
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld a, [$eff7]
    xor $57
    ld h, c
    dec h
    ld h, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld h, h
    jr nc, jr_045_4238

    ld b, h
    ld a, $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_045_4206:
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $4a
    ld a, $4b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $25
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d

jr_045_4238:
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld h, c
    dec h
    ld h, c
    ld b, c
    ld a, $5e
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2f
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, b
    ld h, h
    jr nc, jr_045_429f

Jump_045_426c:
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    rst $28
    xor $42
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld d, b
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $30
    ld b, d
    ld b, h
    ld a, $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h

jr_045_429f:
    ld b, d
    ld c, e
    ld c, e
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld [bc], a
    nop
    and d
    dec sp
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    rst $28
    xor $2f
    ld b, d
    ld d, e
    ld b, d
    ld c, c
    ld h, b
    ld h, h
    ld bc, $0000
    and d
    dec sp
    ld h, h
    jr nc, jr_045_42f9

    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_045_431c

    ld b, c
    ld h, h
    ld bc, $0000
    and d
    dec sp
    ld h, h
    inc l
    ld c, e
    ld d, c
    ld h, c
    rst $28
    xor $42
    ld c, a
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_045_433c

    ld b, h
    ld b, d
    ld c, e

jr_045_42f9:
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
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
    ld d, c
    ld h, h

jr_045_431c:
    ld b, [hl]
    ld b, l
    ld c, a
    ld b, d
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld a, $4f
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_045_4385

    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h

jr_045_433c:
    ld d, e
    ld c, h
    ld c, a
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld a, $45
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    inc sp
    ld c, c
    ld a, $4b
    rst $28
    xor $46
    ld b, h
    ld c, e
    ld c, h
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, b
    ld h, h

jr_045_4385:
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_045_43dc

    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld d, c
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld e, e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $33
    ld c, c
    ld a, $4b
    ld h, h
    ld a, $52
    ld d, b
    ld d, h
    ld e, e

jr_045_43dc:
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
    jr c, @+$4d

    ld b, c
    ld h, h
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $4b
    ld c, e
    rst $28
    xor $45
    ld e, h
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, b
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $39
    ld c, h
    ld c, a
    ld d, c
    ld b, d
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld h, l
    ld h, l
    and h
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, [hl]
    ld d, c
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld l, $52
    ld c, e
    ld b, c
    ld b, d
    rst $28
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld b, d
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
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, h
    ld [hl], $46
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4c
    ld h, c
    ld h, h
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
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, [hl]
    ld h, a
    ldh a, [$f6]
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld a, $52
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $42
    ld c, a
    ld d, a
    ld b, d
    and h
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld h, l
    ld h, l
    ld a, [$eff7]
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    and h
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $33
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $49
    ld b, d
    ccf
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
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    inc sp
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    inc l
    ld c, a
    ld c, a
    ld c, c
    ld b, d
    ld b, l
    ld c, a
    ld b, d
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
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $2c
    ld c, e
    ld b, e
    ld c, h
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
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
    ld b, c
    ld a, $50
    rst $28
    xor $2a
    ld b, d
    ld c, c
    ld b, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, b
    ld h, h
    ld c, b
    ld a, $52
    ld b, e
    ld l, b
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld c, a
    ld l, b
    ld c, e
    ld h, h
    add hl, hl
    ld b, [hl]
    ld c, c
    ld b, d
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
    add hl, hl
    ld a, $50
    ld d, c
    ld h, h
    ld b, a
    ld b, d
    ld b, c
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
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $29
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld d, b
    ld h, h
    ccf
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, c
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    rst $28
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
    ld a, [$eff7]
    xor $3e
    ld c, e
    ccf
    ld b, [hl]
    ld b, d
    ld d, c
    ld b, d
    ld d, c
    ld h, b
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    sbc h
    rst $28
    xor $57
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld a, $4b
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $42
    ld b, l
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld l, b
    ld d, b
    ld h, h
    ld a, $4b
    sbc h
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    ld e, l
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, h
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
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $26
    ld b, l
    ld a, $4b
    ld b, b
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
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
    ld d, b
    ld b, d
    ld c, c
    sbc h
    rst $28
    xor $51
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_045_478b

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld c, h
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    jr nc, jr_045_47bd

    ld c, e
    sbc h
    rst $28
    xor $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld d, a
    ld b, d
    ld d, d
    ld b, h
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]

jr_045_478b:
    ld b, b
    ld h, c
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
    ld b, [hl]
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ld c, h
    ld c, l
    ld d, b
    ld h, b
    ld h, h
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c

jr_045_47bd:
    ld b, d
    and h
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
    xor $26
    ld a, $51
    ld b, e
    ld c, c
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld c, l
    ld e, l
    ld c, a
    ld b, d
    ld h, h
    ld b, d
    ld d, b
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
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $4b
    ld c, e
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $47
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    jr nc, @+$40

    ld c, e
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    daa
    ld d, d
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
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d
    ld h, h
    cpl
    ld a, $4f
    ld a, $61
    rst $28
    xor $39
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld a, $4b
    ld c, b
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec a
    ld d, a
    ld d, a
    ld d, a
    and h
    and h
    dec a
    ld d, a
    ld d, a
    ld d, a
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec a
    ld d, a
    ld d, a
    ld d, a
    and h
    and h
    and h
    rst $28
    xor $2b
    ld c, d
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $51
    ld d, c
    ld b, d
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    rst $28
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld b, d
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    dec a
    ld d, a
    ld d, a
    and h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, b
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld d, d
    rst $28
    xor $48
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    ld d, b
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
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $41
    ld b, d
    ld h, l
    rst $28
    xor $31
    ld a, $64
    ld b, a
    ld a, $61
    ld a, [$eff7]
    xor $2f
    ld a, $5e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld b, h
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
    and h
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld a, $49
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $49
    ld a, $50
    ld d, b
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
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, [hl]
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld c, c
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
    ld h, h
    ld [hl], $51
    ld a, $41
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld e, l
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, h
    ld b, e
    ld d, c
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld a, $44
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
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
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
    ld b, h
    ld d, d
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
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $41
    ld d, c
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld d, c
    ld c, a
    ld c, h
    ld d, c
    ld d, a
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    ld h, l
    ld h, h
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
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld e, l
    ld e, [hl]
    ld b, d
    ld c, e
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
    add hl, sp
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld c, e
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    daa
    ld h, [hl]
    ld h, h
    inc sp
    ld a, $5e
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld a, $52
    ld b, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
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
    ld h, h
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $49
    ld a, $50
    ld d, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_045_4b77

    ld b, c
    ld h, h
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $4b
    ld c, e
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld l, b
    ld c, e
    ld h, h
    ld c, d
    ld e, e
    ld b, b
    ld b, l
    sbc h
    ld a, [$eff7]
    xor $51
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_045_4ba1

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $39
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld e, l

jr_045_4b77:
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, $4f
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld b, d

jr_045_4ba1:
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $64
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $49
    ld b, d
    ccf
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
    add hl, sp
    ld c, h
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld c, h
    ld d, b
    ld d, b
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $50
    ld c, h
    ld b, h
    ld a, $4f
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
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld c, a
    ld a, $52
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $2c
    ld c, e
    ld b, e
    ld c, h
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
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
    ld sp, $4046
    ld b, [hl]
    ld h, l
    rst $28
    xor $25
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    ccf
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
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
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, c
    ld a, $41
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
    ld d, d
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    and h
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld c, h
    ld b, e
    ld d, c
    rst $28
    xor $4b
    ld b, d
    ld c, a
    ld d, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, [hl]
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
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    inc h
    ld d, d
    ld b, e
    sbc h
    rst $28
    xor $41
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ccf
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
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
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
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
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
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
    ccf
    ld b, [hl]
    ld b, d
    ld d, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $28
    ld b, b
    ld b, l
    ld d, b
    ld c, d
    ld a, $4b
    ld c, e
    ld h, l
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
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $41
    ld d, c
    ld h, h
    ld b, d
    ld d, l
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld a, [$eff7]
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, d
    ld h, h
    dec hl
    ld b, [hl]
    ld c, a
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld a, $45
    ld b, d
    ld c, a
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
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $4f
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
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
    ld d, a
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    rst $28
    xor $2a
    ld c, a
    ld a, $64
    ld a, [hl+]
    ld c, a
    ld b, d
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    and h
    and h
    and h
    and h
    and h
    ld a, [hl+]
    ld d, h
    ld a, $52
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    and h
    rst $28
    xor $2a
    ld d, h
    ld a, $52
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $f6
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_045_4f0b

    ld a, $3e
    ld a, $52
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    rst $28
    xor $33
    ld a, $4b
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld e, e
    ld c, e
    ld b, h
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
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
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30

jr_045_4f0b:
    ldh a, [$f6]
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld [hl], $40
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, c
    ld h, c
    ld a, [$eff7]
    xor $67
    inc l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $35
    ld d, d
    ld b, l
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld e, e
    ld b, l
    ld e, e
    ld b, l
    ld e, e
    ld b, l
    ld e, e
    ld h, l
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
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
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    rst $28
    xor $2b
    ld e, e
    ld h, l
    ld h, h
    cpl
    ld e, e
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_045_4ffd

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
    jr z, jr_045_502a

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
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    jr nc, jr_045_5046

    ld c, e
    ld d, b
    ld d, c

jr_045_4ffd:
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $43
    ld c, a
    ld b, d
    ld c, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_045_504b

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $49
    ld e, e
    ld e, [hl]
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a

jr_045_502a:
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
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $3e
    ld c, c

jr_045_5046:
    ld d, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e

jr_045_504b:
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, b
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
    ld [hl], $3e
    ld b, h
    ld h, h
    dec h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, b
    rst $28
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $45
    ld a, $a4
    and h
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
    xor $35
    ld d, d
    ld b, l
    ld b, d
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $30
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    rst $28
    xor $30
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $49
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    ld d, c
    ld c, h
    ld c, a
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
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
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, [hl]
    ld h, h
    dec hl
    ld c, d
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_045_5191

    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, d
    ld a, $49
    ld d, b
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
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
    ld b, d
    ld d, [hl]
    ld h, l
    ld h, h
    daa
    ld d, d
    ld h, h

jr_045_5191:
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld c, h
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld b, d
    ld b, [hl]
    ld b, h
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    rst $28
    xor $3a
    ld a, $50
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, c
    ld a, $50
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $50
    ld c, h
    ld h, h
    ccf
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $45
    ld a, $3f
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    daa
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, d
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld e, l
    ld c, a
    ld b, e
    ld d, c
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
    ld a, $4b
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $45
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld e, e
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld a, $53
    ld c, h
    ld c, a
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec h
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $33
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $3a
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld a, $64
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_045_53b6

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    jr c, jr_045_53d3

    ld b, c
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld a, $4b
    ld d, b
    ld d, c
    ld a, $49
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    rst $28
    xor $4a
    ld e, l
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ld d, h

jr_045_53b6:
    ld b, [hl]
    ld c, a
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $41
    ld a, $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h

jr_045_53d3:
    ld d, c
    ld d, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $24
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    ld c, c
    ld e, h
    ld d, b
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld a, $50
    ld h, h
    inc sp
    ld c, a
    ld c, h
    ccf
    ld c, c
    ld b, d
    ld c, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    and h
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $3f
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    jr z, jr_045_5485

    ld b, b
    ld b, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    add hl, sp
    ld b, [hl]
    ld b, d
    ld c, c
    rst $28
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld h, b
    ld h, h
    or $65
    ld a, [$eff7]
    xor $37
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    rst $28
    xor $51
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h

jr_045_5485:
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $32
    ld c, a
    ld b, c
    ld c, e
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    rst $28
    xor $51
    ld a, $52
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld b, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    add hl, hl
    ld c, h
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ccf
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    rst $28
    xor $4b
    ld a, $40
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $38
    ld c, a
    ld d, b
    ld a, $40
    ld b, l
    ld b, d
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
    ld c, a
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $46
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld c, a
    ld a, $52
    ld c, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
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
    xor $53
    ld b, d
    ld c, a
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld a, [$eff7]
    xor $3a
    ld a, $50
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $3f
    ld b, d
    ld b, c
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2f
    ld e, h
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $33
    ld c, a
    ld c, h
    ccf
    ld c, c
    ld b, d
    ld c, d
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    scf
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, h
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    scf
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    rst $28
    xor $51
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $67
    daa
    ld a, $50
    ld h, h
    ld [hl], $40
    ld b, l
    ld b, [hl]
    ld b, b
    ld c, b
    ld d, b
    ld a, $49
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    and h
    and h
    ld a, [$eff7]
    xor $a4
    and h
    and h
    and h
    and h
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $44
    ld c, a
    ld a, $4b
    ld b, c
    ld b, [hl]
    ld c, h
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, l
    rst $30
    ldh a, [$eb]
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
    ld sp, $4046
    ld b, [hl]
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, [hl]
    ld h, h
    jr c, jr_045_56bb

    ld b, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $4f
    ld a, $52
    ld b, e
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld d, c
    ld c, h
    ld c, c
    ld d, a
    ld h, [hl]
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
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
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld h, l
    ld h, a
    rst $30

jr_045_56bb:
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
    rst $28
    xor $4f
    ld a, $52
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, @+$48

    ld d, c
    ld d, c
    ld b, d
    ld h, l
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, c
    ld h, l
    ld h, a
    rst $30
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
    xor $37
    ld c, h
    ld c, a
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
    rst $28
    xor $4f
    ld a, $52
    ld c, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, $4b
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, a
    ld b, d
    ld d, l
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    sbc h
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ccf
    ld h, h
    ld a, $4b
    ld d, h
    ld b, d
    ld c, e
    ld b, c
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
    inc h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $65
    rst $28
    xor $38
    ld c, e
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $30
    ld b, d
    ld d, c
    ld a, $48
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54
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
    ld a, [$eff7]
    xor $54
    ld e, l
    ld d, c
    ld b, d
    ld c, e
    ld b, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld h, h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld h, h
    ld b, c
    ld a, $45
    ld b, [hl]
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    ld l, $4c
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    rst $28
    xor $57
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    daa
    ld a, $52
    ld c, d
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld d, b
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $33
    ld c, a
    ld c, h
    ccf
    ld c, c
    ld b, d
    ld c, d
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3a
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld c, c
    ld e, h
    ld d, b
    ld d, c
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $4f
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
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
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
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
    ld a, [$eff7]
    xor $49
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld c, e
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
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld b, [hl]
    ld h, b
    ld h, h
    or $65
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $35
    ld a, $4b
    ld b, h
    ld h, h
    daa
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, l
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
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, a
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, [hl]
    ld b, h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld d, b
    ld d, c
    ld c, a
    ld b, d
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
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2f
    ld a, $4b
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $37
    ld b, d
    ld d, d
    ld b, e
    ld b, d
    ld c, c
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $54
    ld a, $4f
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $30
    ld b, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
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
    ld l, b
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $2c
    ld c, e
    ld b, e
    ld c, h
    ld d, b
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld a, $43
    ld d, c
    ld c, h
    ld c, a
    ld h, c
    rst $28
    xor $2c
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld d, b
    ld b, d
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec a
    ld b, d
    ld b, l
    ld c, e
    ld h, h
    dec a
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $57
    ld b, [hl]
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld b, d
    ld b, l
    ld c, e
    ld a, [$eff7]
    xor $3d
    ld b, d
    ld c, e
    ld d, c
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld d, d
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    dec a
    ld c, h
    ld c, h
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, [hl]
    ld h, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld d, b
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, c
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld sp, $4046
    ld b, [hl]
    ld h, c
    ld a, [$eff7]
    xor $27
    ld d, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, h
    ld b, a
    ld a, $ef
    xor $4a
    ld a, $49
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
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
    inc h
    ld c, c
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    rst $28
    xor $27
    ld a, $4f
    ld b, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
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
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    daa
    ld a, $64
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $68
    ld c, a
    ld d, d
    ld c, d
    ld c, c
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $24
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld d, c
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, c
    ld a, $4b
    ld b, h
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $49
    ld a, $4b
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, l
    ld a, $61
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, h
    ld b, [hl]
    ld e, [hl]
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld b, a
    ld b, d
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $32
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $38
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_045_5c80

    ld d, c
    ld h, h
    ld c, e
    ld c, h
    ld c, a
    ld c, d
    ld a, $49
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $27
    ld d, d
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
    rst $28
    xor $54
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $5152
    ld d, a
    ld b, d

jr_045_5c80:
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, b
    rst $28
    xor $41
    ld a, $4a
    ld b, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $3f
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    rst $28
    xor $46
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $45
    ld a, $51
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $44
    ld b, d
    ld c, b
    ld c, c
    ld a, $4d
    ld c, l
    ld d, c
    ld h, l
    ld h, a
    ld h, h
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    scf
    ld c, h
    ld c, l
    ld b, e
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $48
    ld c, h
    ld c, d
    ld c, l
    ld c, c
    ld b, d
    ld d, c
    ld d, c
    ld a, [$eff7]
    xor $57
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld c, a
    ld b, d
    ld c, e
    ld b, h
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
    jr z, @+$52

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
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $24
    ld d, b
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, e
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld b, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $45
    ld a, $3f
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_045_5de8

    ld h, h
    ld c, b
    ld c, c
    ld a, $4d
    ld c, l
    ld d, c
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, c
    ld h, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $24
    ld d, b
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, e
    rst $28
    xor $3f
    ld c, c
    ld b, d
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld c, e
    ld d, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    rst $28
    xor $41
    ld a, $50
    ld h, h
    scf

jr_045_5de8:
    ld c, h
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld c, e
    ld d, c
    ld b, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $45
    ld a, $3f
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_045_5e5e

    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    daa
    ld a, $50
    ld a, [$eff7]
    xor $48
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, c
    ld a, $53
    ld c, h
    ld c, e
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
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
    ld b, l
    ld a, $3f
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, a

jr_045_5e5e:
    ld d, d
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld d, h
    ld a, $4f
    ld d, a
    ld c, l
    ld d, d
    ld c, c
    ld d, e
    ld b, d
    ld c, a
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld h, c
    ld h, h
    dec hl
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
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
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_045_5ee0

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, c
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_045_5f02

    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld c, d
    ld a, $64
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, b

jr_045_5ee0:
    ld d, c
    ld d, d
    ld c, d
    sbc h
    rst $28
    xor $54
    ld a, $4b
    ld b, c
    ld c, c
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
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

jr_045_5f02:
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $64
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    rst $28
    xor $42
    ld d, h
    ld b, [hl]
    ld b, h
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $39
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $49
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld c, e
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
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
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$e9]
    ld h, b
    or $64
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $46
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld a, $4b
    ld c, b
    ld h, c
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld b, c
    ld c, a
    ld b, [hl]
    ld c, e
    ld h, c
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld a, $44
    ld b, d
    ld c, e
    ld h, [hl]
    ld a, [$eff7]
    xor $2b
    ld a, $51
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    inc sp
    ld a, $3e
    sbc h
    rst $28
    xor $4f
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld c, h
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld e, d
    ccf
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld d, b
    ld h, b
    rst $28
    xor $4a
    ld a, $4b
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    scf
    ld b, d
    ld b, b
    ld b, l
    ld c, e
    ld b, [hl]
    ld c, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_045_6080

    ld c, e
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $3e
    ld c, e
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $29
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    inc sp
    ld b, e
    ld c, c
    ld a, $4b
    ld d, a
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, [hl]
    ld b, e

jr_045_6080:
    ld d, c
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    cpl
    ld e, e
    ld b, l
    ld c, d
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4f
    ld b, d
    ld d, b
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld h, b
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
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
    ld d, a
    ld e, e
    ld b, l
    ld c, c
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
    ld a, $52
    ld b, e
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    rst $28
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr nc, jr_045_6130

    ld c, e
    ld b, c
    ld c, a
    ld a, $44
    ld c, a
    ld a, $60
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, b
    ld a, [$eff7]
    xor $25
    ld d, d
    ld c, e
    ld d, c
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
    ld h, b
    rst $28
    xor $2e
    ld a, $4a
    ld c, l
    ld b, e
    ld c, a
    ld c, h
    ld d, b
    ld b, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    cpl
    ld b, d

jr_045_6130:
    ld c, h
    ld h, b
    rst $28
    xor $36
    ld c, b
    ld c, h
    ld c, a
    ld c, l
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $3a
    ld e, l
    ld c, a
    ld b, h
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $2a
    ld c, h
    ld c, c
    ld b, c
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, h
    ld c, c
    ld b, c
    ld b, h
    ld c, h
    ld c, c
    ld b, d
    ld c, d
    rst $28
    xor $52
    ld c, e
    ld b, c
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
    ld a, [$eff7]
    xor $9f
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
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, b
    ld c, h
    ld c, d
    ld c, d
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
    add hl, sp
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld b, d
    ld h, c
    ld h, h
    daa
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    or $fa
    rst $30
    rst $28
    xor $45
    ld a, $51
    ld h, h
    ld d, b
    ld c, h
    ld d, h
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4b
    ld e, h
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_045_622f

    ld d, b
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld b, l
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $f6
    ld h, l
    ld a, [$eff7]
    xor $2a
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, h
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld b, h
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
    ld b, l
    ld a, $3f
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
    scf
    ld b, d
    ld b, b
    ld b, l

jr_045_622f:
    ld c, e
    ld b, [hl]
    ld c, b
    sbc h
    ld a, [$eff7]
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld a, $44
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $4b
    ld c, h
    ld d, c
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, h
    cpl
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    ld sp, $4046
    ld b, [hl]
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
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
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $33
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld h, h
    ld h, a
    jr z, jr_045_6307

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
    ld h, l
    ld h, a
    rst $28
    xor $f0
    ld [$649f], a
    ld h, a
    dec hl
    ld b, [hl]
    ld h, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld h, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld h, c
    ld h, h
    jr z, @+$51

    rst $28
    xor $45
    ld a, $51
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3f

jr_045_6307:
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
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
    ld h, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld h, b
    ld h, h
    rst $28
    xor $64
    ld h, h
    ld b, l
    ld b, [hl]
    ld h, b
    ld h, h
    ld b, l
    ld b, [hl]
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    and h
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld a, [hl-]
    ld a, $49
    ld b, c
    ld c, c
    ld a, $3f
    ld d, [hl]
    ld c, a
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, c
    rst $28
    xor $2a
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    jr z, jr_045_63cf

    ld c, e
    ld h, h
    jr c, jr_045_63d7

    ld d, h
    ld b, d
    ld b, h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld a, $41
    ld b, d
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
    and h
    and h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]

jr_045_63cf:
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    and h
    and h
    ld d, b
    ld b, d

jr_045_63d7:
    ld b, l
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    and h
    and h
    and h
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    and h
    ld h, h
    and h
    and h
    and h
    and h
    ld h, h
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $41
    ld d, c
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_045_6474

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $57
    ld b, d
    ld c, a
    ld d, c
    ld c, a
    ld e, l
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    add hl, sp
    ld c, h
    ld c, a
    rst $28
    xor $49
    ld a, $4b
    ld b, h
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $49
    ld a, $4b
    ld b, h
    ld b, d
    ld c, a
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a

jr_045_6474:
    cpl
    ld a, $5e
    ld d, c
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
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    rst $28
    xor $66
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [$eff7]
    xor $f6
    ld h, h
    ccf
    ld b, d
    ld b, c
    ld b, [hl]
    ld b, d
    ld c, e
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, c
    ld b, c
    ld a, $52
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    dec h
    ld b, [hl]
    ld c, c
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld c, a
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]
    xor $2e
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, l
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    ld h, h
    daa
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f6
    ld h, h
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
    ld d, c
    rst $28
    xor $05
    nop
    ld h, h
    jr nc, @+$4e

    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld h, l
    ld h, l
    rst $30
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
    ld a, [$eff7]
    xor $4a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
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
    ld h, l
    ld h, a
    rst $28
    xor $f0
    ld [$4631], a
    ld b, b
    ld b, [hl]
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    rst $28
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, d
    ld b, h
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
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
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, [hl]
    ld d, d
    ld a, $49
    ld b, [hl]
    sbc h
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld d, a
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    or $65
    ld h, h
    dec hl
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
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
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $50
    rst $28
    xor $50
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    ld a, [hl-]
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, l
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
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    sbc h
    rst $28
    xor $54
    ld a, $50
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld c, e
    and h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld d, b
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, e
    ld a, $45
    ld c, a
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    or $65
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4a
    ld c, d
    ld b, d
    ld d, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3a
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld h, c
    ld h, h
    jr z, jr_045_677b

    ld b, d
    ld h, h
    daa
    ld d, d
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    dec a
    ld c, h
    ld c, a
    ld c, e
    ld a, [$eff7]
    xor $50
    ld c, l
    ld e, l
    ld c, a
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4a

jr_045_677b:
    ld c, d
    ld b, d
    ld d, b
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $3a
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, l
    ld a, $50
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr z, jr_045_67f2

    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    add hl, sp
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld h, b
    rst $28
    xor $42
    ld b, l
    ld b, d
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3d
    ld c, h
    ld c, a
    ld c, e
    ld h, h
    ld d, b
    ld c, l
    ld e, l
    ld c, a
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld b, d

jr_045_67f2:
    ld h, l
    ld h, h
    inc h
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, a
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, [hl]
    rst $28
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld a, $65
    ld h, h
    jr z, @+$48

    ld c, e
    rst $28
    xor $3a
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld h, b
    ld h, h
    ld b, c
    ld a, $50
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    jr z, jr_045_68bd

    ld h, c
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_045_68ce

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld e, l
    ld c, l
    ld b, e
    ld d, c
    ld h, h
    ld a, $52
    ld d, b
    ld h, l
    ld h, l
    rst $30
    ldh a, [$f6]
    ld h, h
    ld b, h
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    jr z, jr_045_68f2

    ld h, c
    ld a, [$eff7]
    xor $28
    ld d, b
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $48
    ld a, $4d
    ld d, d

jr_045_68bd:
    ld d, c
    ld d, c
    ld h, c
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    inc h
    inc h
    ld a, $4f
    ld c, a
    ld c, a
    ld c, a
    ld h, l

jr_045_68ce:
    ld h, l
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $45
    ld a, $3f
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld h, h
    jr z, jr_045_6927

    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $57
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    rst $28

jr_045_68f2:
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
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld b, [hl]
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

jr_045_6927:
    daa
    ld d, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, d
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld d, a
    ld b, d
    ld b, [hl]
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
    daa
    ld b, d
    ld c, a
    ld h, h
    ld l, $5b
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld e, e
    ld b, l
    ld c, e
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    and h
    ld h, a
    rst $30
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_045_69d5

    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, d
    ld c, c
    ld b, c
    ld h, h
    ld a, $4b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $39
    ld b, d
    ld c, a
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, d
    ld c, e

jr_045_69d5:
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld d, b
    ld h, h
    rst $28
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
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
    xor $57
    ld d, d
    ld c, a
    ld e, l
    ld b, b
    ld c, b
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $25
    ld b, d
    ld d, b
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
    ld b, c
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc l
    ld c, d
    ld h, h
    scf
    ld c, h
    ld c, a
    ld h, h
    ld d, c
    ld c, a
    ld b, d
    ld b, e
    ld b, e
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, h
    ld b, e
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $33
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
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
    rst $28
    xor $49
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld b, c
    ld a, $4f
    ld a, $4b
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
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
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld d, b
    ld a, $4a
    ld c, d
    ld c, c
    ld b, d
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $3e
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld l, b
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    inc l
    ld c, e
    ld b, e
    ld c, h
    ld a, [$eff7]
    xor $54
    ld a, $50
    ld h, h
    ld a, $4b
    ld b, e
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
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
    xor $50
    ld b, b
    ld b, l
    ld c, h
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld h, l
    ld h, l
    and h
    and h
    dec hl
    ld c, d
    ld h, [hl]
    ld h, l
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
    cpl
    ld a, $4b
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $53
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    cpl
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $43
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $42
    ld b, l
    ld c, a
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld b, l
    ld a, $43
    ld d, c
    ld h, c
    rst $28
    xor $24
    ld c, c
    ld c, c
    ld b, d
    ld d, b
    ld h, h
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld d, b
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld b, d
    ld d, b
    ld h, [hl]
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
    ld c, e
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, d
    ld c, e
    ld d, b
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    and h
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld c, c
    ld c, b
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
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld a, $4b
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $36
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, d
    ld c, a
    ld c, b
    ld b, d
    ld c, e
    ld c, e
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld a, $4b
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, b
    ld c, l
    ld e, e
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
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld c, l
    ld a, $4b
    ld c, e
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
    ld sp, $4246
    ld c, d
    ld a, $4b
    ld b, c
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $4c
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld d, b
    ld a, $44
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_045_6d1b

    ld b, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld a, [$eff7]
    xor $49
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld c, a
    ld h, c
    ld h, h
    dec h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $27
    ld d, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld a, $52
    ld c, b
    ld c, c
    ld b, d
    ld c, a
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $2e

jr_045_6d1b:
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld a, $52
    ld d, b
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, b
    ld h, l
    ld a, [$eff7]
    xor $38
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld a, $49
    ld d, c
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, b
    ld c, b
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    and h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    ld a, [$eff7]
    xor $4b
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_045_6db3

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld c, c
    ld c, b
    ld c, b
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld b, d
    ld b, l
    ld c, d
    ld d, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $fa
    rst $30
    rst $28
    xor $44
    ld a, $4f
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c

jr_045_6db3:
    rst $28
    xor $51
    ld b, d
    ld b, [hl]
    ld c, c
    ld h, [hl]
    ld h, h
    dec hl
    ld b, d
    ld h, b
    ld h, h
    ld b, l
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $46
    ld b, l
    ld c, d
    ld h, h
    ld d, a
    ld b, d
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $a4
    rst $28
    xor $25
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, c
    ld b, c
    ld b, [hl]
    ld b, h
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld e, h
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc h
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $43
    ld c, a
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    rst $28
    xor $3e
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    jr z, jr_045_6ec9

    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $57
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $60
    ld h, h
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, e
    ld a, $40
    ld b, l
    ld a, [$eff7]
    xor $44
    ld c, a
    ld c, h
    ld e, [hl]
    ld a, $4f
    ld d, c
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28

jr_045_6ec9:
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, c
    ld e, l
    ld c, a
    ld b, e
    ld d, c
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    ld a, $4a
    ld a, [$eff7]
    xor $45
    ld e, h
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
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
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld [hl], $60
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld c, [hl]
    ld d, d
    ld a, $49
    ld b, [hl]
    ld b, e
    ld b, [hl]
    sbc h
    rst $28
    xor $57
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, d
    ld d, d
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld a, $4f
    ccf
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    scf
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    rst $28
    xor $37
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    dec h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld a, $4f
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
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld d, b
    ld h, h
    rst $28
    xor $3a
    ld a, $40
    ld b, l
    ld d, b
    ld d, c
    ld d, d
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $41
    ld d, c
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    ld a, $52
    ld d, b
    sbc h
    rst $28
    xor $50
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld d, d
    ld c, a
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    dec h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld d, c
    ld h, c
    ld h, h
    jr nc, jr_045_7094

    ld c, e
    rst $28
    xor $4a
    ld e, l
    ld e, [hl]
    ld d, c
    ld b, d
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld d, h
    ld c, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $4a
    ld a, $4b
    ld h, h
    ld d, a
    ld d, d
    ld d, e

jr_045_7094:
    ld c, h
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $48
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    inc h
    ld c, e
    ld d, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld l, $42
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $2a
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3a
    ld d, d
    ld d, c
    sbc h
    scf
    ld c, h
    ld c, a
    ld b, d
    ld d, b
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld b, d
    ld c, c
    ld b, c
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $38
    ld c, e
    ld c, d
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld b, d
    ld c, a
    ld c, e
    rst $28
    xor $57
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld c, e
    ld a, $52
    ld h, c
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    cpl
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    ld a, [$eff7]
    xor $f6
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld d, b
    ld d, b
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
    ld a, $50
    ld a, [$eff7]
    xor $33
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld d, c
    ld c, h
    ld c, a
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld c, c
    ld d, b
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $52
    ld c, d
    ld b, c
    ld c, a
    ld b, d
    ld b, l
    ld d, c
    ld b, d
    and h
    ld d, b
    ld a, $45
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    rst $28
    xor $36
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_045_722d

    ld c, e
    ld h, h
    ld [hl], $3e
    ld d, c
    ld d, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    rst $28
    xor $5a
    ccf
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $4b
    ld c, e
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
    ld h, c
    ld a, [$eff7]
    xor $28
    ld c, e
    ld d, c
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, c
    ld b, c

jr_045_722d:
    ld b, [hl]
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld e, h
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld e, l
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    sbc h
    rst $28
    xor $49
    ld b, [hl]
    ld b, b
    ld b, l
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
    ld d, b
    ld c, l
    ld e, e
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $52
    ld c, e
    ld b, h
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl], $4d
    ld c, a
    ld d, d
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld h, h
    jr nc, jr_045_72ee

    ld c, e
    ld c, e
    ld b, d
    ld d, b
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, c
    ld b, d
    ld b, h
    ld d, c
    rst $28
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $65
    ld h, h
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]

jr_045_72ee:
    xor $36
    ld d, c
    ld a, $51
    ld d, d
    ld b, d
    ld h, h
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld a, $51
    ld d, d
    ld b, d
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld b, [hl]
    ld b, e
    ld d, c
    ld h, h
    ld a, $4b
    ld b, h
    ld b, d
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld a, $4b
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, l
    ld e, e
    ld c, c
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
    xor $f7
    ldh a, [$ea]
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    or $a4
    rst $28
    xor $35
    ld b, d
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld b, d
    ld d, h
    ld c, h
    ld b, l
    ld c, e
    ld b, d
    ld c, a
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld a, $41
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, h
    ld c, c
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, l
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $48
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, d
    ld h, h
    ld b, c
    ld a, $3f
    ld b, d
    ld b, [hl]
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $47
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    scf
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    rst $28
    xor $51
    ld a, $4d
    ld h, h
    ld d, c
    ld a, $4d
    and h
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, e
    ld a, $45
    ld c, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec h
    ld d, d
    ld b, b
    ld b, l
    ld h, c
    ld a, [$eff7]

Jump_045_7472:
    xor $67
    ld [hl], $4c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, c
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, [hl+]
    ld b, d
    ld c, c
    ld b, c
    ld h, a
    ld a, [$eff7]
    xor $67
    jr z, jr_045_74dd

    ld c, e
    ld b, d
    ld h, h
    add hl, hl
    ld e, e
    ld c, c
    ld d, b
    ld b, b
    ld b, l
    ld d, d
    ld c, e
    ld b, h
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, d
    ld b, h
    ld a, $49
    ld h, c
    ld h, a
    rst $30
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
    rst $28
    xor $36
    ld b, b
    ld b, l
    ld c, c
    ld c, h
    ld e, [hl]
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld b, h
    ld b, d

jr_045_74dd:
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    ld h, h
    jr z, jr_045_7534

    ld b, c
    sbc h
    rst $28
    xor $3f
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld a, $41
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld d, c
    ld a, $4b
    ld h, c
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
    add hl, sp
    ld c, h
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld h, h
    ld d, e
    ld c, h
    ld c, e
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h

jr_045_7534:
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $5e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_045_758c

    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $50
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    sbc h
    rst $28
    xor $51
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld d, b
    ld d, c
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b

jr_045_758c:
    ld c, h
    ld c, c
    ld c, c
    ld h, c
    rst $28
    xor $24
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld d, d
    ld c, d
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    jr nc, jr_045_7605

    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    rst $28
    xor $41
    ld a, $50
    ld h, h
    ld b, e
    ld c, a
    ld e, l
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld b, h
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld c, l
    ld b, d
    ld c, a
    ld c, a
    ld d, c
    ld b, d
    and h
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
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $46
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $46
    ld c, d
    ld h, h
    ld l, $4c
    ld c, c
    ld c, h
    ld d, b

jr_045_7605:
    ld d, b
    ld b, d
    ld d, d
    ld c, d
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld a, $50
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    ld h, h
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, b
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld c, e
    ld a, $45
    ld b, d
    ld d, a
    ld d, d
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld c, c
    ld c, b
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
    ld [hl-], a
    ccf
    ld h, h
    scf
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $4b
    ld c, e
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, h
    ld b, d
    ld c, c
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
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
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $41
    ld a, $50
    ld h, h
    scf
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    rst $28
    xor $3a
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
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
    ld a, $50
    ld a, $4f
    ld h, l
    ld h, h
    dec l
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    rst $28
    xor $2f
    ld e, e
    ld b, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld b, c
    ld a, $50
    rst $28
    xor $28
    ld c, a
    ld b, c
    ccf
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, d
    ld b, d
    ld c, a
    ld c, b
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
