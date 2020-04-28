; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $046", ROMX[$4000], BANK[$46]

    ld b, [hl]
    add hl, bc
    ld b, c
    ld h, $41
    ld b, e
    ld b, c
    add hl, bc
    ld b, b
    ld h, b
    ld b, c
    and e
    ld b, c
    rst $18
    ld b, c
    add hl, de
    ld b, d
    add h
    ld b, d
    ld [c], a
    ld b, d
    dec de
    ld b, e
    ld h, c
    ld b, e
    xor a
    ld b, e
    and $43
    inc h
    ld b, h
    adc l
    ld b, h
    and h
    ld b, h
    ld l, $45
    ld [hl], e
    ld b, l
    ld d, $46
    rra
    ld b, a
    add d
    ld b, a
    cp h
    ld b, a
    sub $47
    db $f4
    ld b, a
    add e
    ld c, b
    jp nz, $d548

    ld c, b
    ld sp, hl
    ld c, b
    rst $30
    ld c, c
    ld hl, $154a
    ld c, e
    ld b, c
    ld c, e
    inc de
    ld c, h
    adc c
    ld c, h
    dec e
    ld c, l
    ld [$234d], a
    ld c, [hl]
    sbc b
    ld c, [hl]
    push bc
    ld c, [hl]
    inc b
    ld c, a
    ccf
    ld c, a
    ld d, l
    ld c, a
    ld l, [hl]
    ld c, a
    call nz, $f84f
    ld c, a
    ld a, [hl-]
    ld d, b
    add e
    ld d, b
    or l
    ld d, b
    ld d, e
    ld d, c
    ldh a, [rHDMA1]
    ld a, l
    ld d, d
    jp c, Jump_046_4352

    ld d, e
    and [hl]
    ld d, e
    sub $53
    ld d, l
    ld d, h
    add a
    ld d, h
    ldh [rHDMA4], a
    add b
    ld d, l
    ld a, [hl+]
    ld d, [hl]
    ld b, c
    ld d, [hl]
    cp c
    ld d, [hl]
    dec de
    ld d, a
    cp e
    ld d, a
    push af
    ld d, a
    sub b
    ld e, b
    inc e
    ld e, c
    sub a
    ld e, c
    dec b
    ld e, d
    sbc l
    ld e, d
    daa
    ld e, e
    ld l, h
    ld e, e
    db $e4
    ld e, e
    ld bc, $8c5c
    ld e, h
    ret z

    ld e, h
    ld b, $5d
    dec sp
    ld e, l
    and d
    ld e, l
    ret nc

    ld e, l
    add hl, de
    ld e, [hl]
    ld l, a
    ld e, [hl]
    cp e
    ld e, [hl]
    ld h, l
    ld e, a
    inc b
    ld h, b
    ld b, e
    ld h, b
    adc d
    ld h, b
    ld e, l
    ld h, c
    and h
    ld h, c
    ret


    ld h, c
    cp $61
    cpl
    ld h, d
    ld a, a
    ld h, d
    call nc, $2e62
    ld h, e
    ld e, h
    ld h, e
    ld [c], a
    ld h, e
    ld c, [hl]
    ld h, h
    ret z

    ld h, h
    inc b
    ld h, l
    adc c
    ld h, l
    cp d
    ld h, l
    ld l, [hl]
    ld h, [hl]
    sbc [hl]
    ld h, [hl]
    ld c, c
    ld h, a
    ld de, $6a68
    ld l, b
    inc c
    ld l, c
    ld h, b
    ld l, c
    dec d
    ld l, d
    xor $6a
    ld d, d
    ld l, e
    call z, $086b
    ld l, h
    ld a, c
    ld l, h
    cp c
    ld l, h
    ld c, $6d
    ld a, d
    ld l, l
    or [hl]
    ld l, l
    jr nc, jr_046_4161

    add b
    ld l, [hl]
    db $fd
    ld l, [hl]
    ld d, d
    ld l, a
    ld [hl], c
    ld l, a
    add $70
    cp $70
    ld a, c
    ld [hl], c
    add hl, hl
    ld [hl], d
    ld e, h
    ld [hl], d
    db $ec
    ld [hl], d
    ld hl, $fa73
    inc hl
    ret z

    cp $80
    jr c, jr_046_411f

    sub $80
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1f00
    rst $10
    ret


jr_046_411f:
    ld de, $4007
    call $05b6
    ret


    ld a, [$c823]
    cp $80
    jr c, jr_046_411f

    sub $80
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1f01
    rst $10
    ret


    ld de, $4007
    call $05f6
    ret


    ld a, [$c823]
    cp $80
    jr c, jr_046_411f

    sub $80
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $1f02
    rst $10
    ret


    call $4109
    call $0609
    ret


    db $eb

jr_046_4161:
    sbc a
    ld h, h
    ld h, a
    inc h
    ld b, b
    ld b, l
    ld h, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, b
    ld e, l
    ld e, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $27
    ld b, [hl]
    ld b, d
    ccf
    ld h, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $4a
    ld d, d
    ld e, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
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
    ld c, c
    ld a, $43
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld b, c
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
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $40
    ld b, l
    ld e, h
    ld c, e
    sbc h
    rst $28
    xor $45
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$eb]
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
    ld b, c
    ld a, $4b
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_046_4235

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld a, $4b
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $54
    ld b, [hl]
    ld c, c
    ld c, c
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
    ld h, b
    rst $28
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, d
    ld a, $4b

jr_046_4235:
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    add hl, hl
    ld c, a
    ld a, $52
    ld h, h
    rst $28
    xor $52
    ld c, d
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, b
    ld h, a
    ld a, [$eff7]
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
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld a, $43
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, l
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld c, e
    ld b, d
    ld c, a
    ld d, e
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $49
    ld a, $4b
    ld b, h
    ld d, b
    ld a, $4a
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
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld a, $43
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
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
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld c, a
    ld a, $43
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld d, d
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    ld b, a
    ld a, $ef
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, c
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld a, $4b
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    and h
    rst $28
    xor $2c

Jump_046_4352:
    ld b, b
    ld b, l
    ld h, h
    ld c, d
    ld a, $44
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $4642
    ld c, e
    and h
    rst $28
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld d, c
    ld b, l
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $30
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld d, c
    ld b, l
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $30
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, [hl]
    ld a, [$eff7]
    xor $27
    ld a, $50
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $50
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, l
    ld h, l
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
    dec h
    ld b, d
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld e, e
    ld c, e
    ld b, h
    ld d, c
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
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $57
    ld d, d
    ld d, b
    ld a, $4a
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
    daa
    ld d, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld d, b
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld c, a
    ld d, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
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
    ld d, b
    ld a, [$eff7]
    xor $57
    ld d, d
    ld h, h
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    rst $28
    xor $2a
    ld b, d
    ld b, l
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $65
    ld h, h
    jr z, jr_046_44dd

    ld c, e
    ld d, b
    and h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    and h
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld d, h
    and h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld a, $43
    ld e, l
    ld c, a
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec h
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e

jr_046_44dd:
    ld d, d
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, d
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld c, a
    ld d, d
    ld b, c
    ld b, d
    ld c, a
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $64
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld d, b
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    daa
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
    ld a, [hl+]
    ld b, d
    ld b, l
    ld h, h
    ld c, d
    ld a, $49
    ld h, h
    ld d, a
    ld d, d
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld c, a
    ld d, d
    ld b, c
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $64
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld d, b
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    daa
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
    dec hl
    ld a, $49
    ld c, c
    ld c, h
    ld h, h
    or $61
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, l
    ld e, h
    ld c, a
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
    ld b, c
    ld a, $5e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $43
    ld e, l
    ld c, a
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld a, $49
    ld d, c
    ld a, $64
    ld c, c
    ld b, d
    ccf
    ld d, c
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    rst $28
    xor $52
    ld c, e
    ccf
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
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
    ld h, h
    ld b, l
    ld a, $3f
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
    ld a, $52
    ld d, b
    ld c, c
    ld e, e
    ld c, e
    sbc h
    rst $28
    xor $41
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_046_466f

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
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
    ld h, h
    jr nc, jr_046_469e

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
    dec a
    ld h, c
    dec h
    ld h, c
    ld h, h
    jr z, @+$48

    ld d, b
    ld b, e
    ld a, $49
    ld c, b
    ld b, d
    ld h, b
    rst $28

jr_046_466f:
    xor $2f
    ld a, $53
    ld a, $41
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $28
    ld b, [hl]
    ld d, b
    ld b, c
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, b
    rst $28
    xor $33
    ld b, l
    ld e, h
    ld c, e
    ld b, [hl]
    ld d, l
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld a, $4f
    ld c, e
    ld b, d
    ld c, c

jr_046_469e:
    ld b, d
    ld h, b
    rst $28
    xor $29
    ld b, d
    ld c, c
    ld d, b
    ccf
    ld c, h
    ld c, d
    ccf
    ld b, d
    ld h, b
    ld a, [$eff7]
    xor $3c
    ld a, $4a
    ld a, $51
    ld a, $60
    and h
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, a
    ld b, d
    ld d, l
    ld h, b
    rst $28
    xor $30
    ld a, $41
    ld b, b
    ld c, c
    ld c, h
    ld d, h
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $3a
    ld e, e
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $33
    ld a, $4c
    ld b, e
    ld a, $4b
    ld d, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec hl
    ld c, h
    ld c, a
    ld c, e
    ld c, b
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $2f
    ld a, $53
    ld a, $50
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $28
    ld c, a
    ld d, a
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld [hl], $40
    ld b, l
    ld e, h
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $48
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld d, a
    ld d, d
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
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
    ld a, $4b
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
    ld a, [$eff7]
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
    rst $28
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
    ld h, [hl]
    ld h, a
    ldh a, [$f6]
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
    inc h
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $27
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld b, d
    ccf
    ld b, d
    ld c, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $3e
    ccf
    ld b, h
    ld b, d
    ccf
    ld c, a
    ld c, h
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, l
    rst $30
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    ld h, c
    rst $30
    ldh a, [$2c]
    ld c, e
    ld c, e
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
    rst $28
    xor $41
    ld c, a
    ld b, d
    ld b, [hl]
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, c
    rst $30
    ldh a, [$f6]
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
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld d, c
    ld d, a
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, l
    ld a, [$eff7]
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
    xor $01
    nop
    nop
    ld h, h
    jr nc, jr_046_48c7

    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld h, l
    rst $30
    ldh a, [$f6]
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
    inc h
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    ld c, l
    ld a, $50
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, c
    rst $28
    xor $28
    ld c, a
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    ld h, c
    rst $30
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    ld b, [hl]

jr_046_48c7:
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld c, b
    ld d, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$2c]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld c, l
    ld b, e
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr z, jr_046_493e

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld h, c
    rst $30
    ldh a, [$f6]
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
    and h
    and h
    ld h, h
    and h
    and h
    and h
    and h
    ld h, h
    and h
    and h
    ld a, [$eff7]

jr_046_493e:
    xor $2e
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    rst $28
    xor $28
    ld b, [hl]
    ld c, e
    and h
    ld a, [$eff7]
    xor $31
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
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
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $33
    ld a, $43
    ld b, e
    ld h, l
    ld h, l
    rst $28
    xor $f6
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld c, c
    ld e, e
    ld b, h
    ld d, c
    ld a, [$eff7]
    xor $44
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $24
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
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
    xor $27
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    ld h, h
    ld d, b
    ld c, l
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h
    jr nc, jr_046_4a2d

    ld c, e
    ld d, a
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld d, b
    ld h, c
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
    xor $02
    nop
    nop
    ld h, h
    jr nc, jr_046_4a3b

    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld h, l
    rst $30
    ldh a, [$27]
    ld b, d
    ld c, a
    ld h, h
    inc h
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld c, b
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
    ld d, c
    ld e, h
    ld c, a
    ld d, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$f6]
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

jr_046_4a2d:
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

jr_046_4a3b:
    ld b, d
    ld c, e
    ld h, c
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
    xor $38
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld c, a
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $41
    ld c, a
    ld b, d
    ld b, l
    ld b, d
    ld c, e
    and h
    and h
    and h
    ld a, [$eff7]
    xor $f6
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld e, h
    ld b, l
    ld c, e
    ld d, c
    rst $28
    xor $50
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
    ld a, $4b
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
    ld d, h
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, [hl]
    ld b, h
    ld c, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld h, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2b
    ld d, d
    ld a, $65
    ld h, h
    dec hl
    ld d, d
    ld a, $65
    ld h, h
    dec hl
    ld d, d
    ld a, $65
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $f6
    ld h, h
    ld d, c
    ld c, a
    ld a, $43
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $46
    ld c, e
    ld d, b
    ld h, h
    ld [hl], $40
    ld b, l
    ld d, h
    ld a, $4f
    ld d, a
    ld b, d
    ld h, l
    ld h, l
    ld a, [$eff7]
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
    nop
    ld h, h
    jr nc, jr_046_4b57

    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld h, l
    ld h, l
    ld h, l
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr c, @+$4d

    ld b, c
    ld h, [hl]
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
    xor $35
    ld a, $56
    ccf
    ld d, d
    ld c, a
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f0
    db $eb
    sbc a
    ld h, h
    ld h, a
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld b, d
    ld h, h
    ld b, e
    ld a, $50
    ld d, c
    rst $28
    xor $3e
    ld c, c

jr_046_4b57:
    ld c, c
    ld b, d
    ld h, h
    inc l
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, b
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, b
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld b, c
    ld a, $4b
    ld c, e
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld b, d
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
    xor $5c
    ld b, e
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
    dec hl
    ld b, [hl]
    ld c, c
    ld b, e
    ld d, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $46
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld b, [hl]
    ld b, d
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
    ld b, e
    ld c, a
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $41
    ld a, $4f
    ld a, $52
    ld b, e
    ld h, b
    ld h, h
    ld b, [hl]
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    sbc h
    ld a, [$eff7]
    xor $54
    ld a, $4b
    ld c, e
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld h, h
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_046_4c68

    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $4b
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $28
    ld c, a
    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c

jr_046_4c68:
    ld h, h
    ld b, l
    ld a, $4f
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld b, h
    ld c, c
    ld e, e
    ld c, e
    ld d, a
    ld b, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $50
    ld b, d
    ld b, [hl]
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
    ld d, d
    ld c, e
    ld d, b
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $42
    ld b, l
    ld c, a
    ld d, h
    ld e, l
    ld c, a
    ld b, c
    ld b, [hl]
    ld b, h
    ld b, d
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
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
    jr c, jr_046_4d0b

    ld b, c
    ld h, h
    ld b, [hl]
    ld b, l
    ld c, a
    ld h, h
    ld a, [hl+]
    ld a, $50
    ld d, c
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, l
    ld a, $51
    rst $28
    xor $46
    ld b, l
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld c, c
    ld a, $41
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]
    xor $41
    ld a, $64
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d

jr_046_4d0b:
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $5b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld d, c
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    rst $28
    xor $30
    ld b, d
    ld b, c
    ld a, $46
    ld c, c
    ld c, c
    ld b, d
    ld c, a
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
    ld d, b
    ld c, h
    ld c, c
    ld c, c
    rst $28
    xor $3e
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    rst $28
    xor $5b
    ld b, l
    ld c, e
    ld b, d
    ld c, c
    ld c, e
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
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $50
    ld a, $44
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, c
    ld a, $52
    ccf
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, b
    rst $28
    xor $50
    ld c, h
    ld h, h
    ld c, d
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
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
    ld h, c
    rst $28
    xor $32
    ld l, $66
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_046_4e36

    ld c, e
    ld h, h
    jr nc, jr_046_4e32

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $44
    ld c, c
    ld a, $52
    ccf
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
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
    ld d, d
    ld h, h
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld d, b
    ld d, c
    ld h, h

jr_046_4e32:
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, [hl]

jr_046_4e36:
    rst $28
    xor $27
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
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
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
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $29
    ld a, $4b
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
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
    xor $f0
    jr z, jr_046_4eeb

    ld d, h
    ld a, $50
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    inc h
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $67
    jr z, jr_046_4f09

    ld b, c
    ld b, d
    ld h, a
    rst $28
    xor $f7
    ldh a, [$28]
    ld d, c
    ld d, h
    ld a, $50
    ld h, h
    ld d, b
    ld d, c
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    inc h
    ld d, d
    ld d, c
    ld c, h
    ld c, d
    ld a, $51
    ld b, d
    ld c, e
    ld h, c
    ld a, [$eff7]
    xor $67
    inc sp
    ld c, a

jr_046_4eeb:
    ld c, h
    ld b, e
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $52
    ld c, e
    ld b, d
    ld c, a
    ld d, h
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]

jr_046_4f09:
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
    rst $28
    xor $26
    ld a, $50
    ld b, [hl]
    ld c, e
    ld c, h
    ld h, l
    ld h, h
    dec hl
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
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld d, d
    ld d, c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld b, c
    ld b, [hl]
    ld b, d
    ld c, e
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld c, e
    rst $28
    xor $2e
    ld c, a
    ld b, d
    ld b, c
    ld b, [hl]
    ld d, c
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
    ld l, $52
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, c
    ld a, $ef
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld d, d
    ld c, e
    ld c, d
    ld e, h
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $5c
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
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
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    sbc h
    ld a, [$eff7]
    xor $4b
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
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    rst $28
    xor $26
    ld a, $50
    ld b, [hl]
    ld c, e
    ld c, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld d, h
    ld a, $49
    ld d, c
    rst $28
    xor $52
    ld c, e
    ld b, d
    ld c, a
    ld d, h
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld h, c
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
    ld h, c
    ld h, h
    inc h
    inc h
    inc h
    dec [hl]
    ld h, l
    ld h, l
    rst $28
    xor $36
    ld h, $2b
    jr z, jr_046_503c

    ld [hl], $36
    ld a, [hl+]
    jr z, @+$37

    ld e, b
    scf
    ld h, l
    ld a, [$eff7]
    xor $3a
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld b, h
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
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
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a

jr_046_503c:
    ld h, h
    ld h, a
    jr c, jr_046_508b

    ld b, c
    ld h, h
    ld d, h
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld a, [$eff7]
    xor $50
    ld c, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld h, l
    ld h, [hl]
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ccf
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
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

jr_046_508b:
    jr nc, jr_046_50d9

    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
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
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
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
    daa
    ld a, $43
    ld e, l
    ld c, a
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    daa
    ld d, d
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, h
    ld b, d
    ld b, h
    ld c, c
    ld a, $52
    ccf
    ld d, c
    ld a, [$eff7]
    xor $45

jr_046_50d9:
    ld a, $50
    ld d, c
    ld h, b
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, h
    ld a, $50
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_046_514c

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
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
    dec [hl]
    ld a, $4f
    ld b, [hl]
    ld d, c
    ld e, e
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
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld c, a
    ld d, d
    ld c, e

jr_046_514c:
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
    jr z, jr_046_51a8

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
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
    dec [hl]
    ld a, $4f
    ld b, [hl]
    ld d, c
    ld e, e
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
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $43
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    dec h
    ld c, a
    ld d, d
    ld c, e

jr_046_51a8:
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld sp, $513e
    ld e, l
    ld c, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld d, d
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
    ld a, $50
    ld h, h
    ld a, [$eff7]
    xor $37
    ld c, h
    ld c, a
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld h, h
    rst $28
    xor $44
    ld b, d
    ld b, e
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld a, $50
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
    ld [hl], $46
    ld b, d
    rst $28
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld d, b
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, a
    ld b, d
    ld d, c
    ld d, c
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
    ld a, [$eff7]
    xor $3a
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
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3a
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
    ld b, c
    ld a, $50
    rst $28
    xor $33
    ld c, h
    ld d, h
    ld b, d
    ld c, a
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
    dec hl
    ld b, d
    ld c, a
    ld d, a
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $27
    ld a, $4b
    ld c, b
    ld h, b
    ld h, h
    or $65
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
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, e
    ld c, a
    ld b, d
    ld b, [hl]
    rst $28
    xor $45
    ld b, [hl]
    ld c, e
    ld b, d
    ld b, [hl]
    ld c, e
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
    or $65
    ld h, h
    dec hl
    ld a, $3f
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, h
    ld a, $4b
    ld d, a
    ld b, d
    ld h, h
    dec a
    ld b, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld [hl], $46
    ld b, d
    rst $28
    xor $44
    ld b, d
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
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
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, d
    ld c, a
    ld d, e
    ld e, h
    ld d, b
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
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
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    rst $28
    xor $2c
    ld b, l
    ld c, e
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, h
    jr nc, jr_046_53a3

    ld c, a
    ld a, [$eff7]
    xor $3f
    ld c, c
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld b, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
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
    rst $28
    xor $3f
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, d
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, d
    ld c, a
    ld d, e
    ld e, h
    ld d, b
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld h, l

jr_046_53a3:
    ld h, a
    rst $30
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
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld [hl], $52
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $27
    ld c, a
    ld a, $40
    ld b, l
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld c, h
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld a, $4b
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $2a
    ld b, d
    ld d, h
    ld c, h
    ld b, l
    ld c, e
    ld b, l
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld a, $52
    ld d, c
    ld h, h
    daa
    ld c, h
    ld c, b
    ld d, d
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld d, b
    ld h, h
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld e, e
    ld c, a
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, h
    jr nc, jr_046_548e

    ld c, a
    ld c, a
    ld d, [hl]
    ld h, c
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
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
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
    add hl, sp
    ld c, h
    ld b, h

jr_046_548e:
    ld b, d
    ld c, c
    ld h, h
    ld d, c
    ld a, $4b
    ld d, a
    ld d, c
    rst $28
    xor $3e
    ld d, d
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec h
    ld e, l
    ld b, l
    ld c, e
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_046_54f6

    ld c, e
    ld b, d
    ld h, h
    ld [hl], $51
    ld c, a
    ld c, h
    ld c, l
    ld b, l
    ld b, d
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $3e
    ld d, d
    ld d, b
    ld c, c
    ld e, e
    ld c, e
    ld b, c
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $2f
    ld b, [hl]
    ld b, d
    ld b, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_046_553c

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld e, h
    ld d, b
    ld b, d
    ld c, a
    rst $28
    xor $25
    ld c, a
    ld d, d
    ld c, e
    ld c, e

jr_046_54f6:
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld d, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    ld e, h
    ld d, b
    ld b, d
    ld c, d
    rst $28
    xor $31
    ld a, $51
    ld d, d
    ld c, a
    ld b, h
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld a, [hl+]
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $4d
    ld c, a
    ld e, l
    ld b, e
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $36
    ld b, d
    ld b, d
    ld c, c
    ld b, d

jr_046_553c:
    ld h, h
    ld b, c
    ld b, d
    ld d, b
    rst $28
    xor $35
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    rst $28
    xor $37
    ld a, $44
    ld b, d
    ccf
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $2b
    ld c, h
    ld c, c
    ld d, a
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
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
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld c, b
    ld d, [hl]
    ld b, c
    ld c, a
    ld a, $48
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
    jr z, jr_046_560c

    ld h, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld c, d
    ld a, $4b
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $48
    ld c, c
    ld d, d
    ld b, h
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, b
    ld h, h
    ld d, d
    ld c, d
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld d, a
    ld d, d
    ld h, h
    ld d, b
    ld b, d
    ld b, l
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
    or $a4
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, b
    ld b, d

jr_046_560c:
    ld b, [hl]
    ld b, c
    ld h, h
    ld a, [$eff7]
    xor $54
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, h
    ld d, c
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld d, b
    ld c, h
    rst $28
    xor $3f
    ld c, c
    ld a, $5e
    ld h, [hl]
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_046_5696

    ld h, h
    ld d, c
    ld d, d
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld h, b
    ld h, h
    ld a, $49
    ld d, b
    rst $28
    xor $4c
    ccf
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    ld h, h
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
    ld h, h
    ld d, h
    ld e, e
    ld c, a
    ld b, d
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
    ld b, b
    ld b, l
    ld h, h
    ld d, h
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, b
    rst $28
    xor $41
    ld a, $5e
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld d, b

jr_046_5696:
    ld b, d
    ld b, l
    ld c, a
    ld a, [$eff7]
    xor $52
    ld c, e
    ld c, a
    ld d, d
    ld b, l
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    and h
    rst $28
    xor $3e
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
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $37
    ld a, $4b
    ld d, a
    ld d, e
    ld c, h
    ld b, h
    ld b, d
    ld c, c
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
    inc h
    ccf
    ld h, h
    ld b, l
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $4b
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    jr z, jr_046_575c

    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $37
    ld a, $4b
    ld d, a
    or $65
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
    ld b, l
    ld a, $3f
    ld d, c
    ld a, [$eff7]
    xor $2a
    ld a, $4f
    ld c, e
    ld b, d
    ld c, c
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
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l

jr_046_575c:
    ld a, $3f
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld c, d
    ld a, $49
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    rst $28
    xor $44
    ld b, d
    ld b, l
    ld e, h
    ld c, a
    ld d, c
    ld h, [hl]
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
    ld c, c
    ld c, c
    ld b, d
    ld d, b
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
    ld a, [$eff7]
    xor $2c
    ld c, a
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld d, h
    ld a, $50
    ld h, h
    ccf
    ld e, h
    ld d, b
    ld b, d
    ld d, b
    rst $28
    xor $44
    ld b, d
    ld d, c
    ld c, a
    ld e, e
    ld d, d
    ld c, d
    ld d, c
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $50
    ld h, [hl]
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    ld h, $ef
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
    ld h, [hl]
    ld a, [$eff7]
    xor $24
    ld b, b
    ld b, l
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $4a
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld b, [hl]
    ld c, e
    ld c, b
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
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
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
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    jr nc, jr_046_587b

    ld d, c
    ld d, c
    ld b, d
    ld h, h
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
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $3a
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
    jr c, jr_046_58b0

    ld b, c
    ld h, h
    ld c, a
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    rst $28
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $35

jr_046_587b:
    ld d, d
    ld b, l
    ld b, d
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $30
    ld d, d
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr c, jr_046_58e0

    ld h, h
    jr z, jr_046_58e8

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    rst $28
    xor $57
    ld d, d
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld h, b
    ld a, [$eff7]

jr_046_58b0:
    xor $3f
    ld b, d
    ld c, e
    ld e, h
    ld d, c
    ld b, [hl]
    ld b, h
    ld d, c
    ld h, h
    ld c, d
    ld a, $4b
    rst $28
    xor $30
    ld b, d
    ld d, c
    ld a, $48
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld d, b
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
    xor $49

jr_046_58e0:
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    and h
    ld d, a
    ld h, c
    dec h

jr_046_58e8:
    ld h, c
    ld a, [$eff7]
    xor $2c
    ld c, a
    ld c, a
    ld c, l
    ld a, $4b
    ld d, a
    ld b, d
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
    ld l, $3e
    ld c, d
    ld c, l
    ld b, e
    ld c, a
    ld b, d
    ld d, l
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $3d
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ccf
    ld e, e
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_046_5974

    ld c, d
    ld b, [hl]
    ld b, d
    ld h, b
    ld h, h
    ld l, $3e
    ld c, b
    ld d, c
    ld b, d
    ld b, d
    rst $28
    xor $26
    ld b, l
    ld a, $4a
    ld e, e
    ld c, c
    ld b, d
    ld c, h
    ld c, e
    ld h, h
    ld d, d
    ld d, b
    ld d, h
    ld h, c
    ld a, [$eff7]
    xor $42
    ld c, a
    ld c, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, h
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
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld c, d
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    daa
    ld d, d
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

jr_046_5974:
    ld h, h
    ccf
    ld b, d
    ld b, [hl]
    ld c, d
    ld a, [$eff7]
    xor $24
    ld c, e
    ld b, h
    ld c, a
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, h
    ld c, c
    ld e, e
    ld b, l
    ld c, d
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
    rst $30
    ldh a, [$eb]
    sbc a
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
    ld h, h
    ld b, h
    ld b, d
    ld b, l
    ld d, c
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, d
    ld b, e
    and h
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, c
    ld e, e
    ld b, e
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $ef
    xor $57
    ld d, d
    ld h, h
    ld a, $49
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $44
    ld b, d
    ld d, h
    ld c, h
    ld c, a
    ld b, c
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
    ld l, $49
    ld a, $50
    ld d, b
    ld b, d
    ld h, l
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    rst $28
    xor $25
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
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
    ld b, l
    ld a, $51
    rst $28
    xor $27
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $52
    ld b, b
    ld b, l
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    rst $28
    xor $44
    ld b, d
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld c, h
    ld c, a
    ld d, c
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $50
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld b, d
    ld c, a
    ld b, d
    ld h, h
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
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld l, $49
    ld a, $50
    ld d, b
    ld b, d
    ld h, l
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    rst $28
    xor $25
    ld h, h
    ld b, h
    ld b, d
    ld d, b
    ld b, b
    ld b, l
    ld a, $43
    ld b, e
    ld d, c
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
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $36
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, b
    ld h, h
    ld b, c
    ld a, $57
    ld d, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    daa
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $44
    ld b, d
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
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
    ld a, [hl+]
    ld b, d
    ld b, h
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $29
    ld b, [hl]
    ld c, e
    ld a, $49
    ld c, a
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $5b
    ld d, d
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld l, $4b
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    ld h, c
    ld h, a
    ld h, h
    rst $30
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
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $4f
    ld c, b
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
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld c, h
    ld h, l
    rst $28
    xor $24
    ld b, b
    ld b, l
    ld h, h
    ld b, a
    ld a, $a4
    ld h, a
    ld a, [$eff7]
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
    ld h, h
    ld c, d
    ld b, [hl]
    ld d, c
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    rst $28
    xor $32
    ld c, b
    ld d, c
    ld c, h
    ld b, e
    ld d, d
    ld e, [hl]
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
    ccf
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld e, e
    ld c, a
    ld c, b
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld b, d
    ld d, d
    ld d, c
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $33
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld a, $44
    ld h, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ccf
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld b, h
    ld c, h
    ld c, c
    ld b, c
    ld h, l
    ld h, h
    daa
    ld a, $50
    ld a, [$eff7]
    xor $3f
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
    xor $42
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    and h
    and h
    dec hl
    ld a, $45
    ld e, e
    ld b, l
    ld e, e
    and h
    rst $28
    xor $2c
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $44
    ld d, d
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    scf
    ld a, $44
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
    dec hl
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $27
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $4a
    ld e, l
    ld d, b
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, [hl]
    ld a, [$eff7]
    xor $2f
    ld a, $5e
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
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $45
    ld a, $65
    rst $28
    xor $2c
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld a, $3f
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $2a
    ld b, [hl]
    ld b, h
    ld a, $4b
    ld d, c
    ld b, d
    ld d, b
    ld d, b
    ld h, h
    ld b, l
    ld c, h
    ld b, b
    ld b, l
    sbc h
    rst $28
    xor $4b
    ld e, e
    ld d, b
    ld b, [hl]
    ld b, h
    ld h, h
    ld b, h
    ld b, d
    ld c, d
    ld a, $40
    ld b, l
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, h
    ld d, d
    ld d, c
    ld h, c
    rst $28
    xor $29
    ld b, [hl]
    ld c, e
    ld b, c
    ld b, d
    ld h, h
    daa
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld b, d
    ld b, h
    ld h, h
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld d, b
    ld d, c
    rst $28
    xor $45
    ld b, d
    ld c, a
    ld a, $52
    ld d, b
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    xor $25
    ld a, $4b
    ld c, e
    ld c, c
    ld a, $4a
    ld c, l
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, e
    ld b, [hl]
    ld b, d
    ld d, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $44
    ld d, d
    ld b, b
    ld c, b
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
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
    ld h, l
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
    ld b, l
    ld c, e
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    inc h
    ccf
    ld d, h
    sbc h
    dec h
    ld b, d
    ld b, d
    ld c, a
    ld b, d
    ld h, c
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $50
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
    ld b, h
    ld b, d
    ccf
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $57
    ld d, d
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, h
    ld l, $4c
    ld c, d
    ld c, d
    ld d, c
    ld a, [$eff7]
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
    inc l
    ld b, l
    ld c, a
    rst $28
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
    ld b, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_046_5e65

    ld c, e
    ld h, h
    jr z, jr_046_5e72

    ld d, a
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld c, c
    ld e, e
    ld c, e
    ld d, a
    ld d, c
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
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
    ld h, l
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld h, h
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h

jr_046_5e65:
    ld b, l
    ld c, e
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$f6]
    ld h, h
    ld c, c

jr_046_5e72:
    ld b, [hl]
    ld b, d
    ld d, b
    ld d, c
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $3e
    ld d, c
    ld d, a
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $43
    ld b, d
    ld c, c
    ld h, c
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $67
    jr c, jr_046_5ee6

    ld d, b
    ld b, d
    ld c, a
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld b, d
    ld c, b
    ld d, c
    ld c, h
    ld c, a
    rst $28
    xor $45
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl+]
    ld c, c
    ld a, $51
    ld d, a
    ld b, d
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, d
    ld b, [hl]
    ld h, h
    inc sp
    ld a, $3e
    ld c, a
    ld d, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $57
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, h
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e

jr_046_5ee6:
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld c, h
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, a
    ld h, h
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, b
    ld b, d
    ld c, c
    ccf
    ld b, d
    ld c, e
    ld h, h
    jr nc, jr_046_5f5a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld h, [hl]
    ld a, [$eff7]
    xor $25
    ld b, d
    ld b, [hl]
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $4b
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    rst $28
    xor $3e
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    inc h
    ld d, d

jr_046_5f5a:
    ld d, b
    ld c, e
    ld a, $45
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld b, c
    ld b, [hl]
    ld b, d
    rst $28
    xor $37
    ld a, $46
    ld b, a
    ld d, [hl]
    ld d, d
    sbc h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld h, h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld d, d
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld c, e
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
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld d, c
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_046_602e

    ld c, e
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
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
    add hl, hl
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, l
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
    daa
    ld d, d
    ld h, h
    ld a, [hl-]
    ld a, $40
    ld b, l
    ld d, b
    sbc h
    rst $28
    xor $4a
    ld a, $50
    ld c, b
    ld b, d
    ld c, e
    ld h, h
    ld c, d
    ld a, $44
    ld d, b
    ld d, c
    and e
    ld a, [$eff7]
    xor $30
    ld a, $55
    ld h, h
    ld c, d

jr_046_602e:
    ld a, $40
    ld b, l
    ld d, c
    rst $28
    xor $3a
    ld a, $40
    ld b, l
    ld d, b
    ld c, d
    ld a, $50
    ld c, b
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld sp, $663e
    ld h, h
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
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld a, $4b
    ld b, h
    ld h, h
    dec h
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
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
    ld b, h
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $5b
    ld d, d
    ld b, e
    ld b, d
    ld c, a
    ld h, h
    ld a, $52
    ld d, b
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld l, $4b
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    rst $28
    xor $48
    ld e, e
    ld c, d
    ld c, l
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_046_611d

    ld h, h
    ld b, l
    ld a, $51
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $41
    ld b, c
    ld c, a
    ld a, $48
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld d, a
    ld d, h
    ld b, d
    ld b, [hl]
    rst $28
    xor $2e
    ld c, a
    ld a, $3f
    ccf
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    jr nc, jr_046_6144

    ld b, c
    ld b, c
    ld c, a
    ld a, $48
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld h, h
    ld b, a
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]

jr_046_611d:
    xor $45
    ld b, d
    ld c, a
    ld b, e
    ld e, e
    ld c, c
    ld c, c
    ld d, c
    ld h, b
    ld h, h
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld d, b
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld c, a
    ld c, e
    ld d, b
    ld d, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a

jr_046_6144:
    inc sp
    ld a, $5e
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec hl
    inc sp
    ld h, h
    ld a, $52
    ld b, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec h
    ld b, [hl]
    ld b, h
    ld h, h
    dec h
    ld a, $4b
    ld b, h
    ld h, b
    rst $28
    xor $25
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld b, d
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $30
    ld b, d
    ld b, h
    ld a, $64
    dec sp
    and h
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
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, b
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, [hl]
    ld h, a
    rst $38
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld [hl-], a
    ld l, $61
    ld h, h
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
    xor $33
    ld c, a
    ld c, h
    ld b, e
    ld b, [hl]
    sbc h
    jr nc, jr_046_61ff

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld a, $45
    ld a, $65
    rst $28
    xor $27
    ld a, $50
    ld h, h
    ld h, h
    ld d, h
    ld a, $4f
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld sp, $4a3e
    ld b, d
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
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
    rst $30
    ldh a, [$ea]

jr_046_61ff:
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    dec a
    ld c, h
    ld c, d
    ccf
    ld b, [hl]
    ld b, d
    ld d, b
    rst $28
    xor $4a
    ld e, h
    ld b, h
    ld b, d
    ld c, e
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $48
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    dec [hl]
    ld a, $51
    ld d, c
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    ld h, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    jr nc, jr_046_6298

    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $4b
    ld a, $4a
    ld b, d
    ld c, e
    ld d, b
    ld h, h
    ld [hl], $61
    ld h, c
    ld h, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld d, h
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld d, b
    ld h, h
    scf
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $5c
    ld b, e
    ld b, e
    ld c, e
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
    jr z, jr_046_62cb

    ld c, e
    ld h, h
    add hl, hl
    ld c, c
    ld d, d
    ld b, h
    ld d, b
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, l
    rst $28
    xor $3a
    ld b, [hl]
    ld b, d
    ld h, h
    ld c, e

jr_046_6298:
    ld b, [hl]
    ld b, d
    ld b, c
    ld c, c
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl+]
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
    ld h, l
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld d, h
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld c, c
    ld c, h
    ld b, l

jr_046_62cb:
    ld c, e
    ld d, c
    ld h, l
    ld h, a
    rst $28
    xor $fa
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    and h
    and h
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld h, h
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $4c
    ld c, d
    ld c, d
    ld d, c
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld b, d
    ld d, c
    ld d, h
    ld a, $50
    ld a, [$eff7]
    xor $51
    ld c, a
    ld a, $44
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld e, h
    ld c, e
    ld c, e
    ld d, c
    ld h, c
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
    add hl, hl
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld h, c
    rst $28
    xor $39
    ld b, d
    ld c, a
    ld d, b
    ld b, b
    ld b, l
    ld d, h
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_046_63b1

    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld b, d
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $4b
    ld e, e
    ld b, b
    ld b, l
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $3a
    ld d, d
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
    dec h
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, d
    ld h, h
    ld c, d
    ld b, [hl]
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld c, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_046_63f7

jr_046_63b1:
    ld c, e
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, b
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $3e
    ld d, d
    ld d, b
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $49
    ld b, [hl]
    ld c, d
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $42
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
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
    xor $29
    ld c, a
    ld b, d

jr_046_63f7:
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
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
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
    ld d, c
    ld d, c
    ld c, h
    ld c, a
    ld h, b
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld c, c
    ld b, [hl]
    ld c, e
    ld c, b
    ld d, b
    rst $28
    xor $41
    ld a, $50
    ld h, h
    add hl, hl
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
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
    dec hl
    ld b, [hl]
    ld b, b
    ld h, b
    ld h, h
    ld d, h
    ld c, h
    ld h, h
    ccf
    ld b, [hl]
    ld c, e
    rst $28
    xor $46
    ld b, b
    ld b, l
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld l, $4c
    ld c, c
    ld c, h
    ld d, b
    ld d, b
    ld b, d
    ld d, d
    ld c, d
    ld h, [hl]
    rst $28
    xor $31
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld l, $4b
    ld b, d
    ld b, [hl]
    ld c, l
    ld b, d
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, d
    ld b, h
    ld a, $49
    ld h, c
    rst $28
    xor $2b
    ld b, [hl]
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
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, h
    ld a, $52
    ld b, b
    ld b, l
    rst $28
    xor $3e
    ccf
    ld c, a
    ld b, d
    ld a, $44
    ld b, [hl]
    ld b, d
    ld c, a
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
    ld b, [hl]
    ld b, b
    ld h, b
    ld h, h
    daa
    ld d, d
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, b
    rst $28
    xor $45
    ld a, $50
    ld d, c
    ld h, h
    daa
    ld d, d
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld c, d
    ld a, $49
    ld a, [$eff7]
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld d, c
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld b, d
    ld c, a
    ld d, c
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
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
    ld h, h
    ld c, d
    ld a, $49
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    dec h
    ld a, $50
    ld a, $4f
    ld h, h
    ld c, h
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $51
    ld a, $49
    ld c, c
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld b, h
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
    daa
    ld a, $64
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    rst $28
    xor $3f
    ld a, $49
    ld b, c
    ld h, h
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld d, c
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, d
    ld d, b
    ld h, h
    ccf
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    rst $28
    xor $3e
    ld c, d
    ld e, l
    ld d, b
    ld a, $4b
    ld d, c
    ld h, l
    ld h, a
    rst $30
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
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
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
    inc l
    ld c, e
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, d
    ld h, h
    cpl
    ld a, $4b
    ld b, c
    rst $28
    xor $45
    ld b, [hl]
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $35
    ld b, d
    ld b, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_046_6649

    ld h, h
    ld d, h
    ld a, $4f
    ld h, h
    ld d, b
    ld c, h
    ld h, h
    rst $28
    xor $42
    ld c, a
    ld c, e
    ld d, b
    ld d, c
    ld h, b
    ld h, h
    ld b, c
    ld a, $5e
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $42
    ld d, b
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld a, $4b
    ld d, b
    ld c, l
    ld c, a
    ld b, d
    sbc h
    rst $28
    xor $40
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld c, b
    ld c, h
    ld c, e
    ld c, e
    ld d, c
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld d, b
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld h, h
    rst $28
    xor $25
    ld b, d
    ld c, a
    ld b, [hl]

jr_046_6649:
    ld b, b
    ld b, l
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $52
    ld c, e
    ccf
    ld b, d
    ld c, b
    ld a, $4b
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, c
    ld h, a
    rst $30
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
    ld a, [$eff7]
    xor $41
    ld a, $50
    ld h, h
    ld [hl], $52
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
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    daa
    ld b, d
    ld c, a
    ld h, h
    daa
    ld e, e
    ld c, d
    ld c, h
    ld c, e
    ld h, h
    ccf
    ld b, d
    sbc h
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld e, h
    ld c, a
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $38
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, c
    ld a, $4b
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
    ld a, $50
    ld h, h
    ccf
    ld c, a
    ld b, d
    ld c, e
    ld c, e
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    rst $28
    xor $27
    ld c, h
    ld c, a
    ld b, e
    ld h, h
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld b, d
    ld a, [$eff7]
    xor $4b
    ld d, d
    ld c, a
    ld h, h
    ld a, $52
    ld b, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $2b
    ld b, d
    ld c, c
    ld b, c
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr z, jr_046_675c

    ld c, e
    ld b, d
    ld h, h
    ld [hl], $3e
    ld b, h
    ld b, d
    ld h, h
    ld a, $52
    ld d, b
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld h, h
    ld c, d
    ld d, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld b, [hl]
    sbc h
    ld a, [$eff7]
    xor $5c
    ld d, b
    ld b, d
    ld c, e
    ld h, h
    daa
    ld c, h
    ld c, a
    ld b, e
    rst $28
    xor $2f
    ld b, [hl]
    ld b, e
    ld b, d
    ld c, b
    ld c, h
    ld b, c
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld e, e
    ld b, l
    ld c, c
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    rst $28
    xor $41
    ld b, d
    ld c, a

jr_046_675c:
    ld h, h
    inc bc
    ld h, h
    scf
    ld e, l
    ld c, a
    ld b, d
    ld c, e
    ld h, l
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld b, l
    ld c, a
    ld d, c
    rst $28
    xor $57
    ld d, d
    ld c, d
    ld h, h
    ld l, $5c
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $50
    ld e, l
    ld e, [hl]
    ld b, d
    ld c, e
    ld h, h
    dec [hl]
    ld a, $52
    ld c, d
    ld h, b
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, c
    ld c, a
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, d
    ld h, h
    ld d, a
    ld d, d
    ld c, d
    rst $28
    xor $2f
    ld b, [hl]
    ld c, l
    ld c, l
    ld b, d
    ld c, e
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec a
    ld b, [hl]
    ld d, c
    ld a, $51
    and e
    ld h, h
    ld [hl], $4c
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    sbc h
    rst $28
    xor $45
    ld a, $49
    ld d, c
    ld b, d
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    ld h, b
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld c, e
    ld h, h
    ld [hl], $46
    ld b, d
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $4a
    ld a, $49
    ld h, h
    ld d, e
    ld b, d
    ld c, a
    ld c, c
    ld a, $52
    ld b, e
    ld b, d
    ld c, e
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
    or $67
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    dec l
    ld a, $4a
    ld b, [hl]
    ld c, a
    ld d, d
    ld d, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld b, [hl]
    ld b, d
    ld b, h
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
    jr nc, jr_046_6887

    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_046_68a0

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4b
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld h, l
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
    ld e, d
    ccf
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld b, l
    ld c, d
    ld d, c
    rst $28
    xor $28
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c

jr_046_6887:
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
    inc l
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld e, l
    ld e, [hl]
    ld d, c
    ld h, h
    rst $28
    xor $45

jr_046_68a0:
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $4a
    ld b, [hl]
    ld d, c
    ld h, h
    ld b, c
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
    rst $28
    xor $4f
    ld b, d
    ld b, c
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
    or $65
    ld h, h
    inc l
    ld b, b
    ld b, l
    rst $28
    xor $3f
    ld b, [hl]
    ld c, e
    ld l, b
    ld d, b
    ld h, l
    ld h, h
    daa
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $28
    ld c, d
    ld c, l
    ld b, e
    ld a, $4b
    ld b, h
    ld d, b
    ld b, c
    ld a, $4a
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
    ld d, d
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, h
    ld b, d
    ld c, e
    ld b, [hl]
    ld a, $49
    ld h, l
    rst $28
    xor $30
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld h, l
    ld h, h
    ld [hl], $40
    ld b, l
    ld c, d
    ld a, $51
    ld d, a
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
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld a, [$eff7]
    xor $27
    ld e, e
    ld c, d
    ld c, h
    ld c, e
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
    ld a, [hl-]
    ld a, $50
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, [hl]
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $24
    ld c, e
    ld b, h
    ld b, d
    ccf
    ld c, h
    ld d, c
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $3e
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    ld h, [hl]
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
    ld d, b
    ld b, d
    ld b, [hl]
    ld b, c
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld d, h
    ld a, $45
    ld c, a
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld b, d
    ld c, c
    ld b, c
    ld h, l
    ld a, [$eff7]
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    rst $28
    xor $42
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, c
    ld c, c
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
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    ld h, h
    inc a
    ld a, $4a
    ld a, $51
    ld a, $fa
    rst $30
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
    inc h
    ld c, c
    ld d, b
    ld c, h
    ld h, h
    ld b, l
    ld a, $3f
    ld d, c
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, l
    ld c, a
    ld h, h
    ld a, $49
    ld d, b
    ld a, [$eff7]
    xor $01
    nop
    nop
    ld h, h
    jr nc, jr_046_6ab7

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $44
    ld b, d
    ld d, b
    ld a, $4a
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, [hl]
    ld b, b
    ld b, l
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, d
    ld c, a
    ld d, h
    ld a, $4f
    ld d, c
    ld b, d
    ld d, c
    ld a, [$eff7]
    xor $45
    ld a, $3f
    ld b, d
    ld h, l
    rst $28
    xor $2a
    ld c, a
    ld a, $4b
    ld b, c
    ld b, [hl]
    ld c, h
    ld d, b
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $2e
    ld e, h

jr_046_6ab7:
    ld c, e
    ld b, [hl]
    ld b, h
    ld h, h
    ld h, a
    ld [hl], $3e
    ld c, d
    ld c, d
    ld b, d
    ld c, c
    ld d, c
    ld h, h
    ld d, b
    ld c, h
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
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
    xor $01
    ld h, c
    nop
    nop
    nop
    ld h, c
    nop
    nop
    nop
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_046_6b44

    ld h, h
    ld c, d
    ld d, d
    ld e, [hl]
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, e
    ld h, h
    rst $28
    xor $2a
    ld c, a
    ld d, d
    ld c, e
    ld b, c
    ld h, h
    ld b, c
    ld a, $43
    ld e, l
    ld c, a
    ld a, [$eff7]
    xor $44
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
    ld d, h
    ld a, $4f
    ld d, d
    ld c, d
    ld h, h
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, b
    rst $28
    xor $39
    ld c, h
    ld c, a
    ld b, e
    ld a, $45
    ld c, a
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $37
    ld d, d
    ld c, a
    ld c, e
    ld b, [hl]
    ld b, d

jr_046_6b44:
    ld c, a
    ld h, h
    ld d, h
    ld c, h
    ld c, c
    ld c, c
    ld d, c
    ld b, d
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
    ld h, l
    ld h, h
    dec h
    ld a, $49
    ld b, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
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
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    inc h
    ld d, d
    ld b, b
    ld b, l
    ld h, h
    ld b, c
    ld a, $50
    ld h, h
    rst $28
    xor $30
    ld e, e
    ld b, c
    ld b, b
    ld b, l
    ld b, d
    ld c, e
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $46
    ld d, b
    ld d, c
    ld h, h
    ld a, $52
    ld b, e
    rst $28
    xor $27
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, a
    ld h, h
    ld [hl], $42
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    jr nc, jr_046_6c14

    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    add hl, sp
    ld b, d
    ld c, a
    ld d, h
    ld a, $4b
    ld b, c
    ld d, c
    ld b, d
    rst $28
    xor $54
    ld c, h
    ld b, l
    ld c, e
    ld d, c
    ld h, h
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $2f
    ld a, $4b
    ld b, c
    ld h, h
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, b
    rst $28
    xor $25
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld h, h
    ld b, l

jr_046_6c14:
    ld a, $51
    rst $28
    xor $3f
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld c, a
    ld h, h
    ld c, e
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld c, c
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld b, d
    ld h, h
    jr nc, jr_046_6c70

    ld d, b
    ld d, c
    ld b, d
    ld c, a
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
    daa
    ld d, d
    rst $28
    xor $50
    ld b, b
    ld b, l
    ld b, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $44
    ld a, $4b
    ld d, a
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    rst $28
    xor $57
    ld d, d

jr_046_6c70:
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $30
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
    daa
    ld a, $64
    ld c, b
    ld a, $4a
    ld a, [$eff7]
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $2f
    ld a, $41
    ld b, d
    ld c, e
    ld h, h
    ld b, l
    ld b, [hl]
    ld c, e
    ld d, a
    ld d, d
    ld h, l
    ld h, a
    rst $30
    ldh a, [$eb]
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
    ld b, a
    ld a, $ef
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
    ld h, h
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $50
    ld b, b
    ld b, l
    ld d, h
    ld a, $40
    ld b, l
    and h
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
    ld c, e
    ld c, b
    ld d, b
    ld d, c
    ld h, h
    daa
    ld d, d
    rst $28
    xor $5d
    ccf
    ld b, d
    ld c, a
    ld b, l
    ld a, $52
    ld c, l
    ld d, c
    ld a, [$eff7]
    xor $4b
    ld a, $40
    ld b, l
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
    ld h, l
    ld h, h
    ld sp, $4542
    ld c, d
    ld d, c
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld b, d
    ld c, l
    ld c, l
    ld b, d
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, b
    ld b, l
    ld c, a
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    ld h, l
    ld h, a
    ld a, [$eff7]
    xor $9f
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
    rst $28
    xor $42
    ld b, [hl]
    ld c, e
    ld h, h
    dec [hl]
    ld a, $52
    ld c, d
    ld a, [$eff7]
    xor $53
    ld c, h
    ld c, e
    ld h, h
    jr nc, jr_046_6dad

    ld b, c
    ld b, l
    ld a, $4b
    ld b, c
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
    ld c, c
    ld c, c
    ld c, b
    ld c, h
    ld c, d
    ld c, d
    ld b, d
    ld c, e
    rst $28
    xor $46
    ld c, d
    ld h, h
    dec h
    ld a, $50
    ld a, $4f
    ld h, l
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld a, [$eff7]
    xor $45
    ld a, $3f
    ld b, d
    ld c, e
    ld h, h
    ld b, a
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    rst $28
    xor $4a
    ld b, d
    ld b, l
    ld c, a
    ld h, h

jr_046_6dad:
    cpl
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
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ccf
    ld b, d
    rst $28
    xor $29
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, l
    ld h, h
    inc l
    ld b, b
    ld b, l
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    ld a, [$eff7]
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
    ld c, e
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $2f
    ld e, e
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, h
    ld a, $52
    ld b, e
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, $4b
    ld b, c
    ld b, d
    ld c, a
    ld b, d
    ld c, e
    rst $28
    xor $36
    ld b, d
    ld b, [hl]
    ld d, c
    ld b, d
    ld h, l
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
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld b, c
    ld h, h
    ld b, [hl]
    ld c, d
    ld c, d
    ld b, d
    ld c, a
    ld h, h
    ld a, [$eff7]
    xor $49
    ld b, d
    ccf
    ld b, l
    ld a, $43
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
    jr z, jr_046_6eb3

    ld h, h
    ld c, c
    ld b, [hl]
    ld b, d
    ld b, h
    ld d, c
    ld h, h
    ld a, $49
    ld c, c
    ld b, d
    ld d, b
    rst $28
    xor $3e
    ld c, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
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
    ld a, [hl-]
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, e
    ld h, h
    ld a, $4a
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, h
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
    ld b, d

jr_046_6eb3:
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
    inc h
    ld d, d
    ld e, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld c, d
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld c, d
    ld h, l
    ld h, h
    rst $28
    xor $30
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, h
    ld a, [hl-]
    ld e, l
    ld c, e
    ld d, b
    ld b, b
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $54
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld c, e
    ld c, h
    ld b, b
    ld b, l
    rst $28
    xor $4b
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, d
    ld c, a
    ld b, e
    ld e, l
    ld c, c
    ld c, c
    ld d, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    jr z, jr_046_6f53

    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    ld h, h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    rst $28
    xor $4b
    ld b, d
    ld d, d
    ld b, d
    ld h, h
    cpl
    ld e, e
    ld b, c
    ld b, d
    ld c, e
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
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld b, d
    ld c, d
    ld d, b
    ld h, h
    ld b, d
    ld c, a
    ld d, a
    ld e, e
    ld b, l
    ld c, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $ff
    ldh a, [$ea]

jr_046_6f53:
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
    ld b, d
    ld b, [hl]
    ld c, e
    rst $28
    xor $33
    ld c, a
    ld c, h
    ld b, e
    ld b, [hl]
    ld h, h
    ld d, b
    ld b, d
    ld b, [hl]
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    add hl, hl
    ld b, [hl]
    ld c, c
    ld b, d
    ld d, c
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld b, c
    ld a, $50
    rst $28
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld b, d
    ld h, h
    add hl, hl
    ld c, c
    ld b, d
    ld b, [hl]
    ld d, b
    ld b, b
    ld b, l
    ld a, [$eff7]
    xor $41
    ld b, d
    ld c, a
    ld h, h
    ld a, [hl-]
    ld b, d
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
    jr nc, @+$48

    ld d, c
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    ld h, h
    dec hl
    ld a, $4f
    ld b, e
    ld b, d
    rst $28
    xor $48
    ld a, $4b
    ld c, e
    ld h, h
    ld c, d
    ld a, $4b
    ld a, [$eff7]
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    rst $28
    xor $4f
    ld d, d
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld e, e
    ccf
    ld b, d
    rst $28
    xor $54
    ld b, [hl]
    ld c, a
    ld c, b
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $54
    ld b, [hl]
    ld b, d
    ld h, h
    ld b, e
    ld c, h
    ld c, c
    ld b, h
    ld d, c
    and e
    ld h, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    ld h, h
    ld h, a
    dec h
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld d, b
    ld d, c
    ld a, $3f
    and e
    rst $28
    xor $64
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr nc, jr_046_705a

    ld b, h
    ld a, $3f
    ld c, c
    ld b, [hl]
    ld d, c
    ld d, a
    ld a, [$eff7]
    xor $36
    ld d, c
    ld c, a
    ld a, $43
    ld d, b
    ld d, c
    ld a, $3f
    and e
    rst $28
    xor $64
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld a, [hl-]
    ld b, [hl]
    ld c, e
    ld b, c
    and h
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    cpl
    ld a, $53
    ld a, $50
    ld d, c
    ld a, $3f
    and e
    ld h, h
    jr nc, jr_046_7077

    ld b, [hl]
    ld c, a
    ld b, d
    rst $28
    xor $28
    ld b, [hl]
    ld d, b
    ld d, b
    ld d, c
    ld a, $3f

jr_046_705a:
    and e
    ld h, h
    dec h
    ld c, c
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld b, c
    ld a, [$eff7]
    xor $29
    ld b, d
    ld d, d
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $3f
    and e
    rst $28
    xor $64
    ld h, h
    ld h, h

jr_046_7077:
    ld h, h
    ld h, h
    ld h, h
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ld a, $3f
    ld a, $49
    ld c, c
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld e, e
    ccf
    ld b, d
    ld h, h
    ld c, b
    ld a, $4b
    ld c, e
    rst $28
    xor $4a
    ld a, $4b
    ld h, h
    ld a, $4b
    sbc h
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, b
    ld h, h
    ccf
    ld b, [hl]
    ld d, b
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    rst $28
    xor $48
    ld a, $4d
    ld d, d
    ld d, c
    ld d, c
    ld h, h
    ld d, b
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, l
    ld h, a
    rst $30
    ldh a, [$f6]
    ld h, h
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $41
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld b, l
    ld b, d
    ld h, l
    ld a, [$eff7]
    xor $27
    ld b, [hl]
    ld b, d
    ld h, h
    scf
    ld c, a
    ld d, d
    ld b, l
    ld b, d
    ld h, h
    ld b, [hl]
    ld d, b
    ld d, c
    rst $28
    xor $53
    ld b, d
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, h
    ld b, d
    ld c, c
    ld d, c
    ld h, l
    rst $30
    ldh a, [$eb]
    sbc a
    ld h, h
    ld h, a
    dec hl
    ld c, d
    and h
    ld b, l
    ld b, [hl]
    ld b, d
    ld c, a
    ld h, h
    ld b, h
    ld b, [hl]
    ccf
    ld d, c
    rst $28
    xor $42
    ld d, b
    ld h, h
    ld b, d
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, d
    ld h, h
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld b, d
    ld b, b
    ld c, b
    ld d, c
    ld b, d
    rst $28
    xor $37
    ld c, h
    ld c, a
    ld b, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, d
    ld b, [hl]
    ld e, [hl]
    ld h, h
    ld d, a
    ld d, h
    ld a, $4f
    ld h, h
    ld c, e
    ld b, [hl]
    ld b, b
    ld b, l
    ld d, c
    rst $28
    xor $54
    ld c, h
    ld h, b
    ld h, h
    ld a, $3f
    ld b, d
    ld c, a
    ld h, h
    ld d, b
    ld b, [hl]
    ld b, d
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    daa
    ld b, [hl]
    ld c, a
    ld h, h
    ccf
    ld b, d
    sbc h
    rst $28
    xor $50
    ld d, c
    ld b, [hl]
    ld c, d
    ld c, d
    ld d, c
    ld h, h
    ld b, l
    ld b, d
    ld c, c
    ld b, e
    ld b, d
    ld c, e
    ld h, c
    ld h, a
    rst $30
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    cpl
    ld b, [hl]
    ld c, e
    ld c, b
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
    xor $29
    ld c, a
    ld b, d
    ld d, d
    ld b, c
    ld b, d
    ld c, e
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $2a
    ld b, d
    ld b, [hl]
    ld d, b
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
    jr nc, jr_046_71f8

    ld d, c
    ld d, c
    ld b, d
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
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    dec [hl]
    ld b, d
    ld b, b
    ld b, l
    ld d, c
    ld d, b
    ld h, h
    dec [hl]
    ld d, d
    ld b, l
    ld b, d
    sbc h
    rst $28
    xor $52
    ld c, e
    ld b, c
    ld h, h
    jr nc, jr_046_7238

    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    jr c, jr_046_7241

    ld b, c
    ld h, h

jr_046_71f8:
    ld d, d
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $37
    ld c, a
    ld b, d
    ld c, l
    ld c, l
    ld b, d
    ld h, b
    ld h, h
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    sbc h
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld h, h
    ld [hl], $52
    ld b, b
    ld b, l
    ld d, c
    ld c, a
    ld a, $52
    ld c, d
    ld h, c
    ld h, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl+]
    ld c, c
    ld e, l
    ld b, b
    ld c, b
    ld d, b
    sbc h
    ld h, h
    ld d, d
    ld c, e
    ld b, c

jr_046_7238:
    ld h, h
    rst $28
    xor $36
    ld d, d
    ld b, b
    ld b, l
    ld d, c
    ld c, a

jr_046_7241:
    ld a, $52
    ld c, d
    ld h, h
    ld d, h
    ld d, d
    ld c, a
    ld b, c
    ld b, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld e, h
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    ld d, c
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
    ld b, d
    ld c, e
    ld h, h
    daa
    ld a, $4b
    ld c, b
    ld h, h
    ld b, e
    ld e, l
    ld c, a
    rst $28
    xor $2c
    ld b, l
    ld c, a
    ld b, d
    ld h, h
    jr nc, jr_046_72d5

    ld b, l
    ld b, d
    ld h, l
    ld h, h
    dec hl
    ld a, $3f
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $36
    ld b, [hl]
    ld b, d
    ld h, h
    ld d, b
    ld d, c
    ld a, $4f
    ld c, b
    ld b, d
    ld h, h
    jr nc, jr_046_72de

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
    ld b, e
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    daa
    ld b, [hl]
    ld b, d
    ld h, h
    jr nc, jr_046_72fe

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, d
    ld h, h
    ld [hl], $51
    ld a, $49
    ld c, c
    ld h, h
    ld b, l
    ld a, $3f
    ld b, d
    ld c, e
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld d, c
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, d
    ld c, c
    ld b, d
    ld h, h

jr_046_72d5:
    ld b, h
    ld d, d
    ld d, c
    ld b, d
    rst $28
    xor $2c
    ld c, e
    ld b, e

jr_046_72de:
    ld c, h
    ld c, a
    ld c, d
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld b, d
    ld c, e
    ld h, l
    ld h, a
    rst $30
    ldh a, [$27]
    ld c, h
    ld c, e
    ld b, h
    ld h, l
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2d
    ld b, d
    ld d, c
    ld d, a
    ld d, c
    ld h, h
    ld b, l

jr_046_72fe:
    ld a, $51
    ld h, h
    ld b, d
    ld c, a
    rst $28
    xor $41
    ld b, d
    ld c, e
    ld h, h
    ld l, $4c
    ld c, l
    ld b, e
    ld h, h
    ld d, e
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld d, b
    ld d, c
    ld h, c
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    ld h, h
    ld h, a
    ld a, [hl-]
    ld b, [hl]
    ld c, a
    ld h, h
    jr nc, jr_046_7377

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $54
    ld b, d
    ld c, a
    ld b, c
    ld b, d
    ld c, e
    ld h, h
    ld d, e
    ld c, h
    ld c, a
    ld h, h
    ld b, c
    ld b, d
    ld c, d
    ld a, [$eff7]
    xor $36
    ld d, c
    ld b, d
    ld c, a
    ld c, e
    ld d, c
    ld a, $44
    ld h, h
    rst $28
    xor $3e
    ld c, b
    ld d, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld c, a
    ld h, c
    ld h, a
    ld a, [$eff7]
    xor $9f
    ld h, h
    ld h, a
    ld [hl-], a
    ccf
    ld h, h
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, h
    ld [hl], $51
    ld b, d
    ld c, a
    ld c, e
    ld b, d
    rst $28
    xor $52
    ld c, e
    ld d, b
    ld h, h
    ld l, $4f
    ld a, $43
    ld d, c

jr_046_7377:
    ld a, [$eff7]
    xor $53
    ld b, d
    ld c, a
    ld c, c
    ld b, d
    ld b, [hl]
    ld b, l
    ld b, d
    ld c, e
    ld h, [hl]
    ld h, a
    rst $28
    xor $f7
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
