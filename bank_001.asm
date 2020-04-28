; Disassembly of "DQM.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld bc, $401d
    db $d3
    ld c, l
    inc e
    ld b, d
    ld c, [hl]
    ld c, b
    ld b, l
    ld c, b
    or $46
    add [hl]
    ld b, [hl]
    ld e, b
    ld c, h
    ld [hl], d
    ld e, d
    pop bc
    ld c, e
    ld l, l
    ld e, l
    ld a, $68
    ret z

    ld l, c
    pop hl
    ld l, c
    ld hl, sp+$00
    ld a, l
    ld [$da7b], a
    ld a, h
    ld [$da7c], a
    xor a
    ld hl, $c827
    ld bc, $0012
    call $12c7
    call $3331
    xor a
    ld [$c8b5], a
    xor a
    ld [$c88f], a
    call Call_001_43e3
    call $1c89
    call Call_001_431a
    ld hl, $8b00
    ld de, $1202
    call $098f
    ld a, $fc
    call $1688
    call Call_001_4074
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $7f
    ldh [rLYC], a
    ld a, $63
    ld [$c8a1], a
    ld a, $01
    ld [$c892], a
    call $125d
    ld a, $03
    jp $11cb


Call_001_4074:
    call Call_001_421c
    call Call_001_42e4
    call Call_001_4429
    ld hl, $1702
    rst $10
    ld a, [$c8ab]
    or a
    call nz, Call_001_4c95
    call Call_001_46f6
    call Call_001_484e
    ld hl, $0b02
    rst $10
    ld hl, $0b07
    rst $10
    call Call_001_4c10
    ld a, [$c8a6]
    push af
    xor a
    ld [$c8a6], a
    ld hl, $0603
    rst $10
    pop af
    ld [$c8a6], a
    ld hl, $d7b6
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    xor a
    ld [$d7ba], a
    ld [$d7bb], a
    ld [$d7b6], a
    ldh a, [$8a]
    ld [$d7b7], a
    ldh a, [$8f]
    add $00
    ld [$d7b8], a
    ld hl, $0200
    rst $10
    ld a, [$d7ba]
    ldh [$8b], a
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    ld a, [$c968]
    ld [$c96a], a
    ld a, [$c969]
    ld [$c96b], a
    ld a, [$c969]
    or a
    jr nz, jr_001_4105

    ld a, [$c968]
    cp $5e
    jr nz, jr_001_4105

    ld hl, $5605
    rst $10
    jr jr_001_410b

jr_001_4105:
    call $2518
    call $25f1

jr_001_410b:
    ld a, $01
    ld [$c8ea], a
    xor a
    ld [$c8a8], a
    xor a
    ld [$c96c], a
    xor a
    ld [$c740], a
    ld [$c741], a
    ld a, $ff
    ld [$c742], a
    ldh a, [$b7]
    ldh [$b9], a
    ldh a, [$b8]
    ldh [$ba], a
    ldh a, [$bb]
    ldh [$bd], a
    ldh a, [$bc]
    ldh [$be], a
    ld hl, $010a
    rst $10
    ret


Jump_001_4139:
    ld a, [$c88f]
    cp $02
    jp z, Jump_001_41dc

    ld a, [$c850]
    or a
    ret nz

    call Call_001_43e3
    ld b, a
    ld a, [$c81b]
    cp b
    jr z, jr_001_4155

    ld hl, $c88e
    inc [hl]
    ret


jr_001_4155:
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $9800
    ld b, $00

jr_001_4161:
    ld a, $e0
    call $1ab9
    call $1ab9
    call $1ab9
    call $1ab9
    dec b
    jr nz, jr_001_4161

    call Call_001_4074
    call $122f
    ld a, [$c817]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    ld [$c85b], a
    ld a, h
    ld [$c85c], a
    inc hl
    ld a, l
    ld [$c85d], a
    ld a, h
    ld [$c85e], a
    inc hl
    ld a, l
    ld [$c85f], a
    ld a, h
    ld [$c860], a
    inc hl
    ld a, l
    ld [$c861], a
    ld a, h
    ld [$c862], a
    ld a, $b1
    ld [$c777], a
    ld a, [$c818]
    ld [$c778], a
    ld a, $ff
    ld [$c774], a
    ld hl, $0800
    rst $10
    call $1013
    ld hl, $0802
    rst $10
    xor a
    ld [$c842], a
    ld [$c843], a
    xor a
    ld [$c846], a
    ld [$c847], a
    xor a
    ld [$c848], a
    ld [$c849], a
    call Call_001_4dda
    ld a, $02
    ld [$c88f], a
    ret


Jump_001_41dc:
    xor a
    ld [$c842], a
    ld [$c843], a
    xor a
    ld [$c846], a
    ld [$c847], a
    xor a
    ld [$c848], a
    ld [$c849], a
    call Call_001_4dda
    xor a
    ld [$c88f], a
    ld hl, $c89b
    ld a, $d2
    ld [hl+], a
    ld a, $d2
    ld [hl+], a
    ld a, $e2
    ld [hl], a
    ld hl, $c89e
    ld a, [$c89b]
    ld [hl+], a
    ld a, [$c89c]
    ld [hl+], a
    ld a, [$c89d]
    ld [hl], a
    call $1660
    ld a, $fd
    call $1688
    ret


Call_001_421c:
    xor a
    ld [$c8aa], a
    xor a
    ldh [$d3], a
    ld a, $80
    ldh [$d4], a
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, [$c8ea]
    or a
    ret nz

    xor a
    ld [$c93e], a
    xor a
    ld [$ca3f], a
    xor a
    ld [$c8ec], a
    xor a
    ld [$c8eb], a
    xor a
    ld [$d8d7], a
    ld [$d8d8], a
    ld a, $04
    ld [$c8ee], a
    ld hl, $0064
    ld a, l
    ld [$ca3b], a
    ld a, h
    ld [$ca3c], a
    ld hl, $0014
    ld a, l
    ld [$ca3d], a
    ld a, h
    ld [$ca3e], a
    ld hl, $d92a
    ld bc, $00c0
    ld a, $00
    call $12c7
    ld a, [$c969]
    or a
    jr nz, jr_001_427d

    ld a, [$c968]
    cp $08
    jr z, jr_001_4291

jr_001_427d:
    ld a, $d3
    ld [$ca42], a
    ld a, $d4
    ld [$ca43], a
    ld a, $d5
    ld [$ca44], a
    ld a, $d6
    ld [$ca45], a

jr_001_4291:
    ld a, [$c899]
    ld [$ca4a], a
    ld a, [$c8ab]
    or a
    ret nz

    ld a, $00
    ld [$ca8d], a
    ld a, $ff
    ld [$ca8e], a
    ld a, $ff
    ld [$ca8f], a
    ld a, $ff
    ld [$ca90], a
    ld a, $00
    ld [$ca4b], a
    ld a, $00
    ld [$ca4c], a
    ld a, $00
    ld [$ca4d], a
    ld hl, $ca51
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $ca65
    ld bc, $0028
    ld a, $ff
    call $12c7
    ld hl, $cac1
    ld b, $14
    ld de, $0095

jr_001_42dd:
    ld [hl], $00
    add hl, de
    dec b
    jr nz, jr_001_42dd

    ret


Call_001_42e4:
    ld a, [$c88e]
    or a
    jr nz, jr_001_42f6

    ld a, [$c88f]
    or a
    jr z, jr_001_42f6

    ld a, [$d9e9]
    ld [$d988], a

jr_001_42f6:
    xor a
    ld [$d9e9], a
    ld hl, $0b00
    rst $10
    ld a, [$c8b5]
    ld b, a
    push bc
    call Call_001_432d
    pop bc
    cp b
    call nz, $1ae1
    ld a, [$c88f]
    or a
    ret nz

    ld de, $2e00
    ld hl, $8d00
    call $14cf
    ret


Call_001_431a:
    ld hl, $2add
    ld a, [hl]
    ld [$c817], a
    ld hl, $2ade
    ld a, [hl]
    ld [$c818], a
    ld hl, $0801
    rst $10
    ret


Call_001_432d:
    ld a, [$c969]
    or a
    jr nz, jr_001_4358

    ld a, [$c968]
    cp $50
    jr c, jr_001_4346

    cp $52
    jr z, jr_001_4346

    cp $5d
    jr c, jr_001_4358

    cp $61
    jr nc, jr_001_4358

jr_001_4346:
    ld hl, $4373
    ld a, [$c968]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld a, b
    cp $09
    ret nz

    ret


jr_001_4358:
    ld a, [$c939]
    ld b, a
    ld a, [$c93a]
    sub $02
    cp b
    ld a, $34
    ret nz

    ld hl, $4373
    ld a, [$c93b]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, $1e
    ld sp, $0931
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, $1e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sbc l
    inc [hl]
    inc c
    inc c
    jr jr_001_43bd

    inc c
    ld l, $18
    rrca
    jr @+$14

    ld l, $1b
    ld [de], a
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld [de], a
    dec de
    inc c
    rrca
    ld [de], a
    ld [de], a

jr_001_43bd:
    dec d
    dec d
    jr jr_001_43dc

    dec de
    dec de
    inc [hl]
    inc [hl]
    ld h, c
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld h, c
    ld [bc], a
    ld [bc], a
    dec de
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_001_43dc:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

Call_001_43e3:
    ld a, [$c968]
    ldh [$d5], a
    ld a, [$c969]
    ldh [$d6], a
    ld a, [$c96c]
    or a
    jr z, jr_001_43fd

    ld a, [$c96d]
    ldh [$d5], a
    ld a, [$c96e]
    ldh [$d6], a

jr_001_43fd:
    ldh a, [$d6]
    or a
    jr z, jr_001_4405

    ld a, $00
    ret


jr_001_4405:
    ldh a, [$d5]
    cp $5e
    jr z, jr_001_4425

    cp $5d
    jr nz, jr_001_4412

    ld a, $01
    ret


jr_001_4412:
    ldh a, [$d5]
    cp $2f
    jr nz, jr_001_441b

    ld a, $02
    ret


jr_001_441b:
    ldh a, [$d5]
    cp $30
    ld a, $03
    ret c

    ld a, $00
    ret


jr_001_4425:
    ld a, [$c81b]
    ret


Call_001_4429:
    ld de, $2f00
    ld hl, $8000
    call $1577
    ld de, $2e1d
    ld hl, $8180
    call $1577
    xor a
    ldh [$a1], a
    ldh [$a2], a
    ldh [$a3], a
    ldh [$a4], a
    ldh [$91], a
    ldh [$94], a
    ld a, [$c96c]
    or a
    jr z, jr_001_4464

    ld a, [$c96f]
    ldh [$92], a
    ld a, [$c970]
    ldh [$93], a
    ld a, [$c971]
    ldh [$95], a
    ld a, [$c972]
    ldh [$96], a
    jr jr_001_4498

jr_001_4464:
    ld a, [$c8ea]
    or a
    jp nz, Jump_001_44ba

    ld hl, $ff8a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ldh [$8f], a
    ldh [$8e], a
    ldh [$90], a
    ld [$d7bd], a
    ld a, [$c968]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add $06
    ld l, a
    ld a, h
    adc $45
    ld h, a
    ld a, [hl+]
    ldh [$92], a
    ld a, [hl+]
    ldh [$93], a
    ld a, [hl+]
    ldh [$95], a
    ld a, [hl]
    ldh [$96], a

jr_001_4498:
    ld b, $31
    ld hl, $c973

jr_001_449d:
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
    dec b
    jr nz, jr_001_449d

    xor a
    ld [$ca37], a

Jump_001_44ba:
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ldh [$97], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ldh [$98], a
    ldh a, [$92]
    ldh [$99], a
    ldh a, [$93]
    ldh [$9a], a
    ldh a, [$95]
    ldh [$9b], a
    ldh a, [$96]
    ldh [$9c], a
    ret


    ld hl, sp+$00
    ret c

    nop
    add sp, $00
    cp b
    nop
    ld c, b
    nop
    jr c, jr_001_4512

jr_001_4512:
    add sp, $00
    ret z

    nop
    add sp, $00
    xor b
    nop
    ld c, b
    nop
    jr c, jr_001_451e

jr_001_451e:
    add sp, $00
    jr c, jr_001_4522

jr_001_4522:
    add sp, $00
    jr c, jr_001_4526

jr_001_4526:
    ld c, b
    nop
    jr c, jr_001_452a

jr_001_452a:
    add sp, $00
    ld c, b
    nop
    ld c, b
    nop
    jr c, jr_001_4532

jr_001_4532:
    ld c, b
    nop
    jr c, jr_001_4536

jr_001_4536:
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    jr c, jr_001_453e

jr_001_453e:
    ld c, b
    nop
    jr c, jr_001_4542

jr_001_4542:
    ld c, b
    nop
    jr c, jr_001_4546

jr_001_4546:
    ld c, b
    nop
    jr c, jr_001_454a

jr_001_454a:
    ld c, b
    nop
    jr c, jr_001_454e

jr_001_454e:
    ld c, b
    nop
    jr c, jr_001_4552

jr_001_4552:
    ld c, b
    nop
    jr c, jr_001_4556

jr_001_4556:
    ld c, b
    nop
    jr c, jr_001_455a

jr_001_455a:
    ld c, b
    nop
    jr c, jr_001_455e

jr_001_455e:
    jr c, jr_001_4560

jr_001_4560:
    jr c, jr_001_4562

jr_001_4562:
    ld c, b
    nop
    jr c, jr_001_4566

jr_001_4566:
    ld c, b
    nop
    jr c, jr_001_456a

jr_001_456a:
    ld c, b
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld l, b
    nop
    ld c, b
    nop
    jr c, jr_001_4576

jr_001_4576:
    ld c, b
    nop
    jr c, jr_001_457a

jr_001_457a:
    ld c, b
    nop
    jr c, jr_001_457e

jr_001_457e:
    ld c, b
    nop
    jr c, jr_001_4582

jr_001_4582:
    ld c, b
    nop
    jr c, jr_001_4586

jr_001_4586:
    ld c, b
    nop
    jr c, jr_001_458a

jr_001_458a:
    ld c, b
    nop
    jr c, jr_001_458e

jr_001_458e:
    ld c, b
    nop
    jr c, jr_001_4592

jr_001_4592:
    ld c, b
    nop
    jr c, jr_001_4596

jr_001_4596:
    ld c, b
    nop
    jr c, jr_001_459a

jr_001_459a:
    ld c, b
    nop
    jr c, jr_001_459e

jr_001_459e:
    ld c, b
    nop
    jr c, jr_001_45a2

jr_001_45a2:
    ld c, b
    nop
    jr c, jr_001_45a6

jr_001_45a6:
    ld c, b
    nop
    jr c, jr_001_45aa

jr_001_45aa:
    ld c, b
    nop
    jr c, jr_001_45ae

jr_001_45ae:
    ld c, b
    nop
    jr c, jr_001_45b2

jr_001_45b2:
    ld c, b
    nop
    jr c, jr_001_45b6

jr_001_45b6:
    ld c, b
    nop
    jr c, jr_001_45ba

jr_001_45ba:
    ld c, b
    nop
    jr c, jr_001_45be

jr_001_45be:
    ld c, b
    nop
    jr c, jr_001_45c2

jr_001_45c2:
    ld c, b
    nop
    cp b
    nop
    ld c, b
    nop
    jr c, jr_001_45ca

jr_001_45ca:
    ld c, b
    nop
    jr c, jr_001_45ce

jr_001_45ce:
    ld c, b
    nop
    jr c, jr_001_45d2

jr_001_45d2:
    ld c, b
    nop
    jr c, jr_001_45d6

jr_001_45d6:
    ld c, b
    nop
    jr c, jr_001_45da

jr_001_45da:
    ld c, b
    nop
    jr c, jr_001_45de

jr_001_45de:
    ld c, b
    nop
    jr c, jr_001_45e2

jr_001_45e2:
    ld c, b
    nop
    jr c, jr_001_45e6

jr_001_45e6:
    ld c, b
    nop
    jr c, jr_001_45ea

jr_001_45ea:
    ld c, b
    nop
    jr c, jr_001_45ee

jr_001_45ee:
    ld c, b
    nop
    jr c, jr_001_45f2

jr_001_45f2:
    ld c, b
    nop
    jr c, jr_001_45f6

jr_001_45f6:
    ld c, b
    nop
    jr c, jr_001_45fa

jr_001_45fa:
    ld c, b
    nop
    ld a, b
    nop
    ld c, b
    nop
    jr c, jr_001_4602

jr_001_4602:
    ld c, b
    nop
    jr c, jr_001_4606

jr_001_4606:
    ld c, b
    nop
    jr c, jr_001_460a

jr_001_460a:
    ld c, b
    nop
    jr c, jr_001_460e

jr_001_460e:
    ld c, b
    nop
    jr c, jr_001_4612

jr_001_4612:
    ld c, b
    nop
    jr c, jr_001_4616

jr_001_4616:
    ld c, b
    nop
    jr c, jr_001_461a

jr_001_461a:
    ld c, b
    nop
    ld a, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    jr c, jr_001_462a

jr_001_462a:
    ld c, b
    nop
    jr c, jr_001_462e

jr_001_462e:
    ld c, b
    nop
    jr c, jr_001_4632

jr_001_4632:
    ld c, b
    nop
    jr c, jr_001_4636

jr_001_4636:
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    jr c, jr_001_463e

jr_001_463e:
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld l, b
    nop
    ld c, b
    nop
    ld l, b
    nop
    ld c, b
    nop
    ld l, b
    nop
    ld l, b
    nop
    ld l, b
    nop
    ld c, b
    nop
    ld l, b
    nop
    ret c

    nop
    ret c

    nop
    ld c, b
    nop
    ld l, b
    ld bc, $00e8
    cp b
    nop
    ld hl, sp+$00
    cp b
    nop
    jr jr_001_4668

jr_001_4668:
    jr z, jr_001_466a

jr_001_466a:
    jr jr_001_466c

jr_001_466c:
    jr z, jr_001_466e

jr_001_466e:
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld l, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    jr c, jr_001_467e

jr_001_467e:
    ld c, b
    nop
    jr c, jr_001_4682

jr_001_4682:
    ld c, b
    nop
    jr c, jr_001_4686

jr_001_4686:
    ld hl, $cac1
    ld b, $00

jr_001_468b:
    ld a, [hl]
    or a
    jr z, jr_001_4696

    push hl
    push bc
    call Call_001_46a5
    pop bc
    pop hl

jr_001_4696:
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc b
    ld a, b
    cp $14
    jr nz, jr_001_468b

    ret


Call_001_46a5:
    push bc
    ld a, b
    ld hl, $caea
    call $223b
    pop bc
    ld c, $08

jr_001_46b0:
    ld a, [hl+]
    cp $ff
    push hl
    push bc
    call nz, Call_001_46be
    pop bc
    pop hl
    dec c
    jr nz, jr_001_46b0

    ret


Call_001_46be:
    ld d, a
    push de
    ld a, b
    ld hl, $caf2
    call $223b
    pop de
    push hl
    ld c, $19

jr_001_46cb:
    ld a, [hl]
    cp d
    jr nz, jr_001_46d1

    ld [hl], $ff

jr_001_46d1:
    inc hl
    dec c
    jr nz, jr_001_46cb

    pop hl
    push hl
    ld de, $c0a0
    ld b, $19

jr_001_46dc:
    ld a, [hl]
    ld [de], a
    ld a, $ff
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_001_46dc

    pop hl
    ld de, $c0a0
    ld b, $19

jr_001_46eb:
    ld a, [de]
    cp $ff
    jr z, jr_001_46f1

    ld [hl+], a

jr_001_46f1:
    inc de
    dec b
    jr nz, jr_001_46eb

    ret


Call_001_46f6:
    ld a, [$ca8e]
    cp $ff
    jr z, jr_001_470c

    ld hl, $cac1
    call $223b
    ld a, [hl]
    or a
    jr nz, jr_001_470c

    ld a, $ff
    ld [$ca8e], a

jr_001_470c:
    ld a, [$ca8f]
    cp $ff
    jr z, jr_001_4722

    ld hl, $cac1
    call $223b
    ld a, [hl]
    or a
    jr nz, jr_001_4722

    ld a, $ff
    ld [$ca8f], a

jr_001_4722:
    ld a, [$ca90]
    cp $ff
    jr z, jr_001_4738

    ld hl, $cac1
    call $223b
    ld a, [hl]
    or a
    jr nz, jr_001_4738

    ld a, $ff
    ld [$ca90], a

jr_001_4738:
    ld hl, $cac1
    ld b, $14

jr_001_473d:
    ld a, [hl]
    or a
    jr z, jr_001_4743

    ld [hl], $01

jr_001_4743:
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_001_473d

    ld a, [$ca8e]
    call Call_001_480d
    ld a, [$ca8f]
    call Call_001_480d
    ld a, [$ca90]
    call Call_001_480d
    ld a, [$ca8e]
    cp $ff
    jr nz, jr_001_4774

    ld hl, $ca8e
    ld a, [$ca8f]
    ld [hl+], a
    ld a, [$ca90]
    ld [hl+], a
    ld [hl], $ff

jr_001_4774:
    ld a, [$ca8e]
    cp $ff
    jr nz, jr_001_4788

    ld hl, $ca8e
    ld a, [$ca8f]
    ld [hl+], a
    ld a, [$ca90]
    ld [hl+], a
    ld [hl], $ff

jr_001_4788:
    ld a, [$ca8f]
    cp $ff
    jr nz, jr_001_4798

    ld hl, $ca8f
    ld a, [$ca90]
    ld [hl+], a
    ld [hl], $ff

jr_001_4798:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call $12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_001_47ad:
    ld a, [de]
    or a
    jr z, jr_001_47b3

    ld [hl], c
    inc c

jr_001_47b3:
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc hl
    dec b
    jr nz, jr_001_47ad

    ld c, $14

jr_001_47c1:
    ld hl, $cac1
    ld b, $13

jr_001_47c6:
    ld a, [hl]
    or a
    call z, Call_001_4819
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_001_47c6

    dec c
    jr nz, jr_001_47c1

    ld a, [$ca8e]
    call Call_001_4837
    ld [$ca8e], a
    ld a, [$ca8f]
    call Call_001_4837
    ld [$ca8f], a
    ld a, [$ca90]
    call Call_001_4837
    ld [$ca90], a
    ld hl, $ca8e
    ld b, $03
    ld c, $00

jr_001_47fb:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_4801

    inc c

jr_001_4801:
    dec b
    jr nz, jr_001_47fb

    ld a, c
    ld [$ca8d], a
    ld hl, $0106
    rst $10
    ret


Call_001_480d:
    cp $ff
    ret z

    ld hl, $cac1
    call $223b
    ld [hl], $02
    ret


Call_001_4819:
    push bc
    push hl
    ld e, l
    ld d, h
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr z, jr_001_4834

    ld b, $95

jr_001_482b:
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_482b

jr_001_4834:
    pop hl
    pop bc
    ret


Call_001_4837:
    cp $ff
    ret z

    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


    ld a, [$ca8d]
    or a
    jr nz, jr_001_4869

    jr jr_001_4854

    ret


Call_001_484e:
    ld a, [$ca8d]
    or a
    jr nz, jr_001_4862

jr_001_4854:
    ld hl, $8dc0
    ld b, $10

jr_001_4859:
    ld a, $ff
    call $1ab9
    dec b
    jr nz, jr_001_4859

    ret


jr_001_4862:
    call Call_001_4869
    call Call_001_4942
    ret


Call_001_4869:
jr_001_4869:
    ld hl, $c0a0
    ld bc, $0004
    ld a, $ff
    call $12c7
    ld a, [$ca8d]
    or a
    jr z, jr_001_48c1

    ld hl, $c0a0
    push hl
    ld a, $00
    ld hl, $cb0b
    call $224a
    pop hl
    bit 7, a
    jr nz, jr_001_488f

    ld a, [$ca8e]
    ld [hl+], a

jr_001_488f:
    ld a, [$ca8d]
    cp $01
    jr z, jr_001_48c1

    push hl
    ld a, $01
    ld hl, $cb0b
    call $224a
    pop hl
    bit 7, a
    jr nz, jr_001_48a8

    ld a, [$ca8f]
    ld [hl+], a

jr_001_48a8:
    ld a, [$ca8d]
    cp $02
    jr z, jr_001_48c1

    push hl
    ld a, $02
    ld hl, $cb0b
    call $224a
    pop hl
    bit 7, a
    jr nz, jr_001_48c1

    ld a, [$ca90]
    ld [hl+], a

jr_001_48c1:
    ld a, [$ca8d]
    or a
    jr z, jr_001_492f

    push hl
    ld a, $00
    ld hl, $cb0b
    call $224a
    pop hl
    bit 7, a
    jr z, jr_001_48e5

    ld a, [$ca8e]
    ld [hl+], a
    push hl
    ld a, $00
    ld hl, $cb0b
    call $2229
    ld [hl], $80
    pop hl

jr_001_48e5:
    ld a, [$ca8d]
    cp $01
    jr z, jr_001_492f

    push hl
    ld a, $01
    ld hl, $cb0b
    call $224a
    pop hl
    bit 7, a
    jr z, jr_001_490a

    ld a, [$ca8f]
    ld [hl+], a
    push hl
    ld a, $01
    ld hl, $cb0b
    call $2229
    ld [hl], $80
    pop hl

jr_001_490a:
    ld a, [$ca8d]
    cp $02
    jr z, jr_001_492f

    push hl
    ld a, $02
    ld hl, $cb0b
    call $224a
    pop hl
    bit 7, a
    jr z, jr_001_492f

    ld a, [$ca90]
    ld [hl+], a
    push hl
    ld a, $02
    ld hl, $cb0b
    call $2229
    ld [hl], $80
    pop hl

jr_001_492f:
    ld a, [$c0a0]
    ld [$ca8e], a
    ld a, [$c0a1]
    ld [$ca8f], a
    ld a, [$c0a2]
    ld [$ca90], a
    ret


Call_001_4942:
    ld hl, $8da0
    ld b, $18

jr_001_4947:
    ld a, $ff
    call $1ab9
    xor a
    call $1ab9
    dec b
    jr nz, jr_001_4947

    ld a, [$ca8d]
    or a
    ret z

    ld a, $00
    ld [$cac0], a
    call Call_001_4986
    ld [$ca91], a
    ld a, [$ca8d]
    cp $01
    ret z

    ld a, $01
    ld [$cac0], a
    call Call_001_4986
    ld [$ca92], a
    ld a, [$ca8d]
    cp $02
    ret z

    ld a, $02
    ld [$cac0], a
    call Call_001_4986
    ld [$ca93], a
    ret


Call_001_4986:
    ld hl, $cac1
    call $2284
    or a
    ret z

    ld hl, $cb0b
    call $2284
    bit 7, a
    ld a, $01
    jr nz, jr_001_49a2

    ld hl, $caca
    call $2284
    add $10

jr_001_49a2:
    push af
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $df
    ld l, a
    ld a, h
    adc $49
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$cac0]
    add $82
    ld h, a
    ld l, $00
    call $1577
    ld hl, $cacb
    call $2284
    add a
    ld hl, $4bad
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$cac0]
    swap a
    add $a0
    ld l, a
    ld h, $8d
    call $1577
    pop af
    ret


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

    jr c, jr_001_4a26

    jr c, @+$05

jr_001_4a26:
    jr c, jr_001_4a2c

    jr c, @+$07

    jr c, jr_001_4a32

jr_001_4a2c:
    jr c, @+$09

    jr c, jr_001_4a38

    jr c, @+$0b

jr_001_4a32:
    jr c, jr_001_4a3e

    jr c, @+$0d

    jr c, jr_001_4a44

jr_001_4a38:
    jr c, @+$0f

    jr c, jr_001_4a4a

    jr c, @+$11

jr_001_4a3e:
    jr c, jr_001_4a50

    jr c, @+$13

    jr c, jr_001_4a56

jr_001_4a44:
    jr c, @+$15

    jr c, jr_001_4a5c

    jr c, @+$17

jr_001_4a4a:
    jr c, jr_001_4a62

    jr c, @+$19

    jr c, jr_001_4a68

jr_001_4a50:
    jr c, @+$1b

    jr c, jr_001_4a6e

    jr c, @+$1d

jr_001_4a56:
    jr c, jr_001_4a74

    jr c, @+$1f

    jr c, jr_001_4a7a

jr_001_4a5c:
    jr c, @+$21

    jr c, jr_001_4a80

    jr c, @+$23

jr_001_4a62:
    jr c, jr_001_4a86

    jr c, @+$25

    jr c, jr_001_4a8c

jr_001_4a68:
    jr c, @+$27

    jr c, jr_001_4a92

    jr c, @+$29

jr_001_4a6e:
    jr c, jr_001_4a98

    jr c, @+$2b

    jr c, jr_001_4a9e

jr_001_4a74:
    jr c, @+$2d

    jr c, jr_001_4aa4

    jr c, @+$2f

jr_001_4a7a:
    jr c, jr_001_4aaa

    jr c, @+$31

    jr c, jr_001_4ab0

jr_001_4a80:
    jr c, @+$33

    jr c, jr_001_4ab6

    jr c, jr_001_4ab9

jr_001_4a86:
    jr c, @+$36

    jr c, jr_001_4abf

    jr c, jr_001_4ac2

jr_001_4a8c:
    jr c, jr_001_4ac5

    jr c, jr_001_4ac8

    jr c, jr_001_4acb

jr_001_4a92:
    jr c, jr_001_4ace

    jr c, jr_001_4ad1

    jr c, jr_001_4ad4

jr_001_4a98:
    jr c, jr_001_4ad7

    jr c, jr_001_4ada

    jr c, jr_001_4add

jr_001_4a9e:
    jr c, @+$42

    jr c, jr_001_4ae3

    jr c, jr_001_4ae6

jr_001_4aa4:
    jr c, jr_001_4ae9

    jr c, @+$46

    jr c, jr_001_4aef

jr_001_4aaa:
    jr c, @+$48

    jr c, jr_001_4af5

    jr c, jr_001_4ab0

jr_001_4ab0:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_001_4ab6:
    add hl, sp
    inc b
    add hl, sp

jr_001_4ab9:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_001_4abf:
    ld [$0939], sp

jr_001_4ac2:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_001_4ac5:
    dec bc
    add hl, sp
    inc c

jr_001_4ac8:
    add hl, sp
    dec c
    add hl, sp

jr_001_4acb:
    ld c, $39
    rrca

jr_001_4ace:
    add hl, sp
    db $10
    add hl, sp

jr_001_4ad1:
    ld de, $1239

jr_001_4ad4:
    add hl, sp
    inc de
    add hl, sp

jr_001_4ad7:
    inc d
    add hl, sp
    dec d

jr_001_4ada:
    add hl, sp
    ld d, $39

jr_001_4add:
    rla
    add hl, sp
    jr jr_001_4b1a

    add hl, de
    add hl, sp

jr_001_4ae3:
    ld a, [de]
    add hl, sp
    dec de

jr_001_4ae6:
    add hl, sp
    inc e
    add hl, sp

jr_001_4ae9:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_001_4aef:
    jr nz, jr_001_4b2a

    ld hl, $2239
    add hl, sp

jr_001_4af5:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_001_4b3a

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
    jr nc, jr_001_4b4a

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_001_4b1a:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_001_4b5a

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_001_4b2a:
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

jr_001_4b3a:
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

jr_001_4b4a:
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

jr_001_4b5a:
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
    jr jr_001_4bab

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
    jr nz, @+$3c

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
    jr z, jr_001_4bcb

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
    jr nc, @+$3c

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_001_4bab:
    ld [hl], $3a
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
    ld l, $21
    pop bc
    jp z, $1406

jr_001_4bc6:
    push hl
    ld a, [hl]
    or a
    jr z, jr_001_4c03

jr_001_4bcb:
    ld a, l
    add $4a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld [hl], $00
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld e, l
    ld d, h
    ld a, e
    add $fe
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, l
    add $03
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld e, l
    ld d, h
    ld a, e
    add $fe
    ld e, a
    ld a, d
    adc $ff
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a

jr_001_4c03:
    pop hl
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_001_4bc6

    ret


Call_001_4c10:
    ld a, [$c8ea]
    cp $80
    ret z

    ld hl, $d8e9
    ld bc, $0040
    xor a
    call $12c7
    xor a
    ld [$d9cb], a
    ld [$d9cc], a
    xor a
    ld [$d9df], a
    ld [$d9e0], a
    ld a, [$d8d7]
    or a
    ret nz

    ld a, [$c969]
    or a
    jr nz, jr_001_4c49

    ld a, $00
    ld [$d8d4], a
    ld a, [$c968]
    ld [$d8d3], a
    ld hl, $0405
    rst $10
    ret


jr_001_4c49:
    ld a, $00
    ld [$d8d4], a
    ld a, $70
    ld [$d8d3], a
    ld hl, $0405
    rst $10
    ret


    ld a, d
    ld hl, $cb25
    call $223b
    ld e, l
    ld d, h
    call Call_001_4c89
    ld a, $09
    call $1dbe
    ld b, l
    ld a, e
    add $01
    ld e, a
    ld a, d
    adc $00
    ld d, a
    call Call_001_4c89
    ld a, c
    add a
    add c
    add b
    ld b, a
    ld a, e
    add $02
    ld e, a
    ld a, d
    adc $00
    ld d, a
    call Call_001_4c89
    ld a, c
    add b
    ld d, a
    ret


Call_001_4c89:
    ld a, [de]
    ld c, $00
    cp $c0
    ret nc

    inc c
    cp $40
    ret nc

    inc c
    ret


Call_001_4c95:
    xor a
    ld [$c8ab], a
    ld a, $6e
    ld [$ca42], a
    ld a, $86
    ld [$ca43], a
    ld a, $9c
    ld [$ca44], a
    ld a, $f0
    ld [$ca45], a
    ld a, $00
    ld [$ca8e], a
    ld a, $01
    ld [$ca8f], a
    ld a, $02
    ld [$ca90], a
    ld b, $14
    ld c, $00

jr_001_4cc0:
    push bc
    ld a, c
    call Call_001_4d02
    pop bc
    inc c
    dec b
    jr nz, jr_001_4cc0

    ld a, $00
    ld [$ca4b], a
    ld a, $54
    ld [$ca4c], a
    ld a, $01
    ld [$ca4d], a
    ld a, $01
    ld [$ca51], a
    ld a, $02
    ld [$ca52], a
    ld a, $03
    ld [$ca53], a
    ld a, $04
    ld [$ca54], a
    ld a, $05
    ld [$ca55], a
    ld a, $06
    ld [$ca56], a
    ld a, $07
    ld [$ca57], a
    ld a, $08
    ld [$ca58], a
    ret


Call_001_4d02:
    push af
    ld [$da14], a
    call $12d0
    ld a, [$c899]
    and $3f
    inc a
    ld [$da12], a
    xor a
    ld [$da13], a
    ld hl, $1402
    rst $10
    pop af
    push af
    call $12d0
    and $7f
    ld [$da31], a
    ld hl, $cad6
    ld c, a
    pop af
    call Call_001_4da8
    push af
    pop af
    push af
    call $12d0
    and $7f
    ld [$da31], a
    ld hl, $cad7
    ld c, a
    pop af
    call Call_001_4da8
    push af
    pop af
    push af
    ld hl, $cacb
    call $223b
    ld a, [hl]
    ld c, a
    pop af
    ld hl, $cac2
    call Call_001_4db8
    push af
    call $12d0
    ld a, [$c899]
    and $07
    ld c, a
    pop af
    ld hl, $cad8
    call Call_001_4db8
    push af
    call $12d0
    ld a, [$c899]
    and $07
    ld c, a
    pop af
    ld hl, $cae1
    call Call_001_4db8
    push af
    ld hl, $cad6
    call $223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    ld c, a
    pop af
    ld hl, $cb44
    call Call_001_4db8
    push af
    ld hl, $cad7
    call $223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    ld c, a
    pop af
    ld hl, $cb4d
    call Call_001_4db8
    ret


Call_001_4da8:
    push af
    call $223b
    ld [hl], c
    pop af
    ret


    push af
    call $223b
    ld [hl], c
    inc hl
    ld [hl], b
    pop af
    ret


Call_001_4db8:
    push af
    push bc
    call $223b
    ld e, l
    ld d, h
    call $12d0
    ld a, [$c899]
    and $0f
    pop bc
    swap c
    or c
    ld l, a
    ld h, $03
    call $097a
    pop af
    ret


    ld a, [$c88f]
    or a
    jp nz, Jump_001_4139

Call_001_4dda:
    jr jr_001_4dfc

    ld a, [$c846]
    and $04
    jr z, jr_001_4dfc

    ld a, [$c8aa]
    or a
    jr nz, jr_001_4df3

    ldh a, [rNR50]
    ld [$c8aa], a
    xor a
    ldh [rNR50], a
    jr jr_001_4dfc

jr_001_4df3:
    ld a, [$c8aa]
    ldh [rNR50], a
    xor a
    ld [$c8aa], a

jr_001_4dfc:
    ld a, [$c8aa]
    or a
    jr nz, jr_001_4e0b

    call Call_001_60e7
    call Call_001_4eaa
    call Call_001_4efa

jr_001_4e0b:
    ld hl, $0404
    rst $10
    ld hl, $0606
    rst $10
    call Call_001_565e
    ld hl, $0601
    rst $10
    call Call_001_5f8b
    call Call_001_6611
    ld a, [$c8aa]
    or a
    jr nz, jr_001_4e29

    call Call_001_67f8

jr_001_4e29:
    ret


    ld a, [$c886]
    ld b, a
    ld a, [$c888]
    add b
    ld [$c888], a
    ld a, [$c889]
    adc $00
    ld [$c889], a
    ld a, [$c8a4]
    and $3f
    jr nz, jr_001_4e5b

    ld a, [$c888]
    ld b, a
    ld a, [$c889]
    rl b
    rla
    rl b
    rla
    ld [$c887], a
    xor a
    ld [$c888], a
    ld [$c889], a

jr_001_4e5b:
    ld hl, $c0a0
    ld a, [$c887]
    ld b, a
    ld a, $91
    sub b
    ld c, a
    ld b, $00
    call $20a1
    ld hl, $ffc3
    ld a, $80
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$c0a0]
    ldh [$c9], a
    ld hl, $0401
    rst $10
    ld a, $88
    ldh [$c3], a
    ld a, [$c0a1]
    ldh [$c9], a
    ld hl, $0401
    rst $10
    ld a, $90
    ldh [$c3], a
    ld a, [$c0a2]
    ldh [$c9], a
    ld hl, $0401
    rst $10
    ret


Call_001_4eaa:
    ld a, [$c8a6]
    add $01
    ld [$c8a6], a
    ld a, [$c8a7]
    adc $00
    ld [$c8a7], a
    ld a, [$c8a8]
    or a
    jr z, jr_001_4ed2

    dec a
    ld [$c8a8], a
    or a
    jr nz, jr_001_4ed2

    ld a, [$c850]
    or a
    jr nz, jr_001_4ed2

    ld a, $d2
    ld [$c89b], a

jr_001_4ed2:
    ld a, [$c8eb]
    bit 5, a
    jr nz, jr_001_4ef9

    bit 6, a
    jr nz, jr_001_4ef9

    ld a, [$c850]
    or a
    jr nz, jr_001_4ef9

    ld a, [$c8a8]
    or a
    jr nz, jr_001_4ef3

    call Call_001_4f70
    call Call_001_5277
    ld hl, $0602
    rst $10

jr_001_4ef3:
    call Call_001_5798
    call Call_001_53cf

jr_001_4ef9:
    ret


Call_001_4efa:
    ld a, [$d8d7]
    or a
    ret nz

    ld a, [$c8eb]
    bit 1, a
    ret nz

    bit 7, a
    ret nz

    bit 4, a
    ret nz

    bit 3, a
    ret nz

    bit 2, a
    ret nz

    ld hl, $ffb7
    ldh a, [$92]
    sub [hl]
    ld e, a
    inc hl
    ldh a, [$93]
    sbc [hl]
    bit 7, a
    jr nz, jr_001_4f49

    or a
    jr nz, jr_001_4f50

    ld a, e
    cp $07
    jr c, jr_001_4f49

    cp $99
    jr nc, jr_001_4f50

    ld hl, $ffbb
    ldh a, [$95]
    sub [hl]
    ld e, a
    inc hl
    ldh a, [$96]
    sbc [hl]
    bit 7, a
    jr nz, jr_001_4f57

    or a
    jr nz, jr_001_4f5e

    ld a, e
    cp $07
    jr c, jr_001_4f57

    cp $79
    jr nc, jr_001_4f5e

    jr jr_001_4f6f

jr_001_4f49:
    ld a, $00
    ld [$c91d], a
    jr jr_001_4f63

jr_001_4f50:
    ld a, $01
    ld [$c91d], a
    jr jr_001_4f63

jr_001_4f57:
    ld a, $02
    ld [$c91d], a
    jr jr_001_4f63

jr_001_4f5e:
    ld a, $03
    ld [$c91d], a

jr_001_4f63:
    ld hl, $c8eb
    set 2, [hl]
    xor a
    ld [$c91e], a
    ld [$c91f], a

jr_001_4f6f:
    ret


Call_001_4f70:
    ld a, [$c8eb]
    bit 2, a
    jp nz, Jump_001_5253

    bit 0, a
    jp nz, Jump_001_51fd

    bit 1, a
    jp nz, Jump_001_5253

    bit 7, a
    jp nz, Jump_001_5253

    bit 4, a
    jp nz, Jump_001_5253

    bit 3, a
    jp nz, Jump_001_5253

    ld hl, $ff90
    res 4, [hl]
    ldh a, [$90]
    bit 6, a
    jp nz, Jump_001_5253

    ldh a, [$90]
    bit 7, a
    jp nz, Jump_001_51fd

    bit 0, a
    jp nz, Jump_001_51b2

    ld a, [$d8d7]
    or a
    jp nz, Jump_001_51b2

    ld hl, $ffb7
    ldh a, [$92]
    sub [hl]
    ld e, a
    inc hl
    ldh a, [$93]
    sbc [hl]
    or a
    jp nz, Jump_001_51b2

    ld a, e
    cp $07
    jp c, Jump_001_51b2

    cp $99
    jp nc, Jump_001_51b2

    ld hl, $ffbb
    ldh a, [$95]
    sub [hl]
    ld e, a
    inc hl
    ldh a, [$96]
    sbc [hl]
    or a
    jp nz, Jump_001_51b2

    ld a, e
    cp $07
    jp c, Jump_001_51b2

    cp $79
    jp nc, Jump_001_51b2

    ld hl, $00c0
    ld a, [$c842]
    bit 4, a
    jr z, jr_001_5056

    ld a, $00
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    call Call_001_5254
    ldh a, [$8e]
    push af
    ld a, $03
    ldh [$8e], a
    pop af
    cp $03
    jr z, jr_001_5012

    xor a
    ldh [$a1], a
    ldh [$a2], a
    ld a, $05
    ld [$c8a8], a
    jp Jump_001_51b2


jr_001_5012:
    ld a, l
    ldh [$a1], a
    ld a, h
    ldh [$a2], a
    ldh a, [$95]
    and $0f
    cp $08
    jr nz, jr_001_5046

    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    ldh a, [$a9]
    cp $ff
    jp nz, Jump_001_51b2

jr_001_5046:
    xor a
    ldh [$a1], a
    ldh [$a2], a
    call Call_001_5487
    ld hl, $ff90
    set 4, [hl]
    jp Jump_001_51b2


jr_001_5056:
    ld a, [$c842]
    bit 5, a
    jr z, jr_001_50cf

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    ld a, $20
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    call Call_001_5254
    ldh a, [$8e]
    push af
    ld a, $01
    ldh [$8e], a
    pop af
    cp $01
    jr z, jr_001_508b

    xor a
    ldh [$a1], a
    ldh [$a2], a
    ld a, $05
    ld [$c8a8], a
    jp Jump_001_51b2


jr_001_508b:
    ld a, l
    ldh [$a1], a
    ld a, h
    ldh [$a2], a
    ldh a, [$95]
    and $0f
    cp $08
    jr nz, jr_001_50bf

    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    ldh a, [$a9]
    cp $ff
    jp nz, Jump_001_51b2

jr_001_50bf:
    xor a
    ldh [$a1], a
    ldh [$a2], a
    call Call_001_546d
    ld hl, $ff90
    set 4, [hl]
    jp Jump_001_51b2


jr_001_50cf:
    ld hl, $00c0
    ld a, [$c842]
    bit 7, a
    jp z, Jump_001_5145

    ld a, $00
    ldh [$8d], a
    ld a, $00
    ldh [$8f], a
    call Call_001_5254
    ldh a, [$8e]
    push af
    ld a, $00
    ldh [$8e], a
    pop af
    cp $00
    jr z, jr_001_50fe

    xor a
    ldh [$a3], a
    ldh [$a4], a
    ld a, $05
    ld [$c8a8], a
    jp Jump_001_51b2


jr_001_50fe:
    ld a, l
    ldh [$a3], a
    ld a, h
    ldh [$a4], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    and $f0
    ld l, a
    ld a, l
    add $18
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    call $1e31
    ldh a, [$a9]
    cp $ff
    jp nz, Jump_001_51b2

    xor a
    ldh [$a3], a
    ldh [$a4], a
    call Call_001_54c6
    ld hl, $ff90
    set 4, [hl]
    jr jr_001_51b2

Jump_001_5145:
    ld a, [$c842]
    bit 6, a
    jp z, Jump_001_51ea

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    ld a, $00
    ldh [$8d], a
    ld a, $02
    ldh [$8f], a
    ldh a, [$8e]
    push af
    ld a, $02
    ldh [$8e], a
    pop af
    cp $02
    jr z, jr_001_5178

    xor a
    ldh [$a3], a
    ldh [$a4], a
    ld a, $05
    ld [$c8a8], a
    jp Jump_001_51b2


jr_001_5178:
    ld a, l
    ldh [$a3], a
    ld a, h
    ldh [$a4], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    call $1e31
    ldh a, [$a9]
    cp $ff
    jr nz, jr_001_51b2

    xor a
    ldh [$a3], a
    ldh [$a4], a
    call Call_001_54ac
    ld hl, $ff90
    set 4, [hl]
    jr jr_001_51b2

Jump_001_51b2:
jr_001_51b2:
    ldh a, [$90]
    bit 1, a
    jr nz, jr_001_51ea

    ldh a, [$8f]
    add $03
    ld b, a
    ld a, [$d7b8]
    cp b
    jr z, jr_001_51d1

    ld a, b
    ld [$d7b8], a
    xor a
    ld [$d7ba], a
    ld [$d7bb], a
    ld [$d7b6], a

jr_001_51d1:
    ld hl, $d7b6
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ldh a, [$8a]
    ld [$d7b7], a
    ld hl, $0200
    rst $10
    ld a, [$d7ba]
    ldh [$8b], a

Jump_001_51ea:
jr_001_51ea:
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31

Jump_001_51fd:
    ldh a, [$90]
    bit 0, a
    jp nz, Jump_001_5253

    ld a, [$d8d7]
    or a
    jp nz, Jump_001_5212

    ld a, [$c842]
    and $f0
    jr nz, jr_001_5253

Jump_001_5212:
    ld c, $00
    ld a, [$d8d7]
    or a
    jr z, jr_001_521c

    ld c, $06

jr_001_521c:
    ldh a, [$8f]
    add c
    ld b, a
    ld a, [$d7b8]
    cp b
    jr z, jr_001_5234

    ld a, b
    ld [$d7b8], a
    xor a
    ld [$d7ba], a
    ld [$d7bb], a
    ld [$d7b6], a

jr_001_5234:
    ld hl, $d7b6
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ldh a, [$8a]
    ld [$d7b7], a
    ld hl, $0200
    rst $10
    ld a, [$d7b6]
    or a
    jr z, jr_001_5253

    ld a, [$d7ba]
    ldh [$8b], a

Jump_001_5253:
jr_001_5253:
    ret


Call_001_5254:
    ld a, [$c969]
    or a
    ret nz

    ld a, [$c968]
    cp $18
    ret nz

    ldh a, [$95]
    ld e, a
    ldh a, [$96]
    ld d, a
    ld a, e
    sub $90
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    ret nc

    ld a, $00
    ldh [$8d], a
    ld a, $02
    ldh [$8f], a
    ret


Call_001_5277:
    ld a, [$c8eb]
    bit 2, a
    jr z, jr_001_5287

    call Call_001_5629
    call Call_001_5629
    call Call_001_5287

Call_001_5287:
jr_001_5287:
    ld hl, $ffa1
    ld a, [hl+]
    or [hl]
    jr z, jr_001_52ac

    ld b, $00
    ldh a, [$a2]
    bit 7, a
    jr z, jr_001_5297

    dec b

jr_001_5297:
    ld hl, $ff91
    ldh a, [$a1]
    add [hl]
    ld [hl+], a
    ldh a, [$a2]
    adc [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ld hl, $ff90
    set 0, [hl]
    jr jr_001_52cf

jr_001_52ac:
    ld hl, $ffa3
    ld a, [hl+]
    or [hl]
    jr z, jr_001_52cf

    ld b, $00
    ldh a, [$a4]
    bit 7, a
    jr z, jr_001_52bc

    dec b

jr_001_52bc:
    ld hl, $ff94
    ldh a, [$a3]
    add [hl]
    ld [hl+], a
    ldh a, [$a4]
    adc [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ld hl, $ff90
    set 0, [hl]

jr_001_52cf:
    ldh a, [$93]
    or a
    jr nz, jr_001_52e8

    ldh a, [$92]
    cp $08
    jr nc, jr_001_52e8

    ld a, $00
    ldh [$91], a
    ld a, $08
    ldh [$92], a
    ld a, $00
    ldh [$93], a
    jr jr_001_530a

jr_001_52e8:
    ldh a, [$9d]
    ld l, a
    ldh a, [$9e]
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ldh a, [$93]
    cp h
    jr c, jr_001_530a

    ldh a, [$92]
    cp l
    jr c, jr_001_530a

    ld a, $00
    ldh [$91], a
    ld a, l
    ldh [$92], a
    ld a, h
    ldh [$93], a

jr_001_530a:
    ldh a, [$96]
    or a
    jr nz, jr_001_5323

    ldh a, [$95]
    cp $08
    jr nc, jr_001_5323

    ld a, $00
    ldh [$94], a
    ld a, $08
    ldh [$95], a
    ld a, $00
    ldh [$96], a
    jr jr_001_5345

jr_001_5323:
    ldh a, [$9f]
    ld l, a
    ldh a, [$a0]
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ldh a, [$96]
    cp h
    jr c, jr_001_5345

    ldh a, [$95]
    cp l
    jr c, jr_001_5345

    ld a, $00
    ldh [$94], a
    ld a, l
    ldh [$95], a
    ld a, h
    ldh [$96], a

jr_001_5345:
    ldh a, [$90]
    bit 0, a
    jp z, Jump_001_53ce

    ldh a, [$92]
    and $0f
    cp $08
    jr nz, jr_001_5359

    xor a
    ldh [$a1], a
    ldh [$a2], a

jr_001_5359:
    ldh a, [$95]
    and $0f
    cp $08
    jr nz, jr_001_5366

    xor a
    ldh [$a3], a
    ldh [$a4], a

jr_001_5366:
    ld hl, $ffa1
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_53ce

    ld hl, $ffa3
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_53ce

    ld hl, $ff90
    res 0, [hl]
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ld b, a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    swap h
    swap l
    ld a, h
    and $f0
    ld h, a
    ld a, l
    and $0f
    or h
    ld c, a
    ldh a, [$97]
    cp b
    jr nz, jr_001_53a9

    ldh a, [$98]
    cp c
    jr z, jr_001_53ce

jr_001_53a9:
    ld a, b
    ldh [$97], a
    ld a, c
    ldh [$98], a
    call Call_001_5a66
    call Call_001_5a29
    call Call_001_5a4d
    ld hl, $0b06
    rst $10
    call Call_001_55d7
    call Call_001_5510
    call Call_001_5c65
    call Call_001_5e19
    call Call_001_5ea9
    call Call_001_5d6d

Jump_001_53ce:
jr_001_53ce:
    ret


Call_001_53cf:
    ld hl, $ff99
    ldh a, [$92]
    cp [hl]
    jr nz, jr_001_53e9

    inc hl
    ldh a, [$93]
    cp [hl]
    jr nz, jr_001_53e9

    inc hl
    ldh a, [$95]
    cp [hl]
    jr nz, jr_001_53e9

    inc hl
    ldh a, [$96]
    cp [hl]
    jr z, jr_001_53ec

jr_001_53e9:
    call Call_001_5629

jr_001_53ec:
    ldh a, [$92]
    ldh [$99], a
    ldh a, [$93]
    ldh [$9a], a
    ldh a, [$95]
    ldh [$9b], a
    ldh a, [$96]
    ldh [$9c], a
    call Call_001_5440
    ld a, [$d7b8]
    cp $03
    jr z, jr_001_540f

    cp $04
    jr z, jr_001_540f

    cp $05
    jr z, jr_001_540f

    ret


jr_001_540f:
    ld hl, $ff90
    bit 5, [hl]
    jr nz, jr_001_5425

    bit 4, [hl]
    ret z

    ld hl, $ffa1
    ld a, [hl+]
    or [hl]
    ret nz

    ld hl, $ffa3
    ld a, [hl+]
    or [hl]
    ret nz

jr_001_5425:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$d7b6]
    or a
    ret nz

    ld a, [$d8d7]
    or a
    ret nz

    ld a, $54
    call $1b2c
    ld a, $80
    ldh [$91], a
    ldh [$94], a
    ret


Call_001_5440:
    ld hl, $d7d2

jr_001_5443:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    ld a, l
    add $18
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld e, l
    ld d, h
    inc hl
    inc hl
    inc hl
    inc hl
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
    ld [hl], a
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_001_5443

    ret


Call_001_546d:
    ldh a, [$93]
    or a
    ret nz

    ldh a, [$92]
    cp $08
    ret nz

    ld a, $00
    ldh [$91], a
    ld a, $08
    ldh [$92], a
    ld a, $00
    ldh [$93], a
    ld hl, $0b09
    rst $10
    ret


Call_001_5487:
    ldh a, [$9d]
    ld l, a
    ldh a, [$9e]
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ldh a, [$93]
    cp h
    ret c

    ldh a, [$92]
    cp l
    ret nz

    ld a, $00
    ldh [$91], a
    ld a, l
    ldh [$92], a
    ld a, h
    ldh [$93], a
    ld hl, $0b09
    rst $10
    ret


Call_001_54ac:
    ldh a, [$96]
    or a
    ret nz

    ldh a, [$95]
    cp $08
    ret nz

    ld a, $00
    ldh [$94], a
    ld a, $08
    ldh [$95], a
    ld a, $00
    ldh [$96], a
    ld hl, $0b09
    rst $10
    ret


Call_001_54c6:
    ldh a, [$9f]
    ld l, a
    ldh a, [$a0]
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ldh a, [$96]
    cp h
    ret c

    ldh a, [$95]
    cp l
    ret nz

    ld a, $00
    ldh [$94], a
    ld a, l
    ldh [$95], a
    ld a, h
    ldh [$96], a
    ld hl, $0b09
    rst $10
    ret


Call_001_54eb:
    ld a, [$c968]
    cp $53
    ret z

    cp $61
    ret z

    cp $62
    ret z

    cp $63
    ret z

    cp $64
    ret z

    cp $54
    ret z

    cp $55
    ret z

    cp $56
    ret z

    cp $57
    ret z

    cp $58
    ret z

    cp $59
    ret z

    ret


Call_001_5510:
    ld a, [$c969]
    or a
    jr nz, jr_001_551a

    call Call_001_54eb
    ret nz

jr_001_551a:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c8eb]
    bit 6, a
    ret nz

    bit 2, a
    ret nz

    bit 0, a
    ret nz

    ld a, [$ca3b]
    ld l, a
    ld a, [$ca3c]
    ld h, a
    dec hl
    ld a, l
    ld [$ca3b], a
    ld a, h
    ld [$ca3c], a
    ld a, h
    or l
    jr nz, jr_001_555d

    ld hl, $0064
    ld a, l
    ld [$ca3b], a
    ld a, h
    ld [$ca3c], a
    ld a, [$ca8e]
    call Call_001_558c
    ld a, [$ca8f]
    call Call_001_558c
    ld a, [$ca90]
    call Call_001_558c

jr_001_555d:
    ld a, [$ca3d]
    ld l, a
    ld a, [$ca3e]
    ld h, a
    dec hl
    ld a, l
    ld [$ca3d], a
    ld a, h
    ld [$ca3e], a
    ld a, h
    or l
    jr nz, jr_001_558b

    ld hl, $0014
    ld a, l
    ld [$ca3d], a
    ld a, h
    ld [$ca3e], a
    ld b, $14
    ld c, $00

jr_001_5581:
    push bc
    ld a, c
    call Call_001_55b1
    pop bc
    inc c
    dec b
    jr nz, jr_001_5581

jr_001_558b:
    ret


Call_001_558c:
    cp $ff
    ret z

    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $02
    ret nz

    ld a, l
    add $4a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    bit 7, [hl]
    ret nz

    ld a, l
    add $16
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_001_55b1:
    cp $ff
    ret z

    ld hl, $cac1
    call $223b
    ld a, [hl]
    cp $01
    ret nz

    ld a, l
    add $4a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    bit 7, [hl]
    ret nz

    ld a, l
    add $16
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    inc [hl]
    ret


Call_001_55d7:
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    ldh [$db], a
    ld a, h
    ldh [$dc], a
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    ldh [$dd], a
    ld a, h
    ldh [$de], a
    ld hl, $0b05
    rst $10
    ldh a, [$d5]
    cp $ff
    ret z

    ld [$d8d4], a
    ld a, [$c968]
    ld [$d8d3], a
    xor a
    ld [$d8d7], a
    ld hl, $0405
    rst $10
    ld a, [$d8d7]
    or a
    ret z

    bit 1, a
    ret z

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


Call_001_5629:
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


Call_001_565e:
    ld a, [$d8d7]
    or a
    jr nz, jr_001_5690

    ld a, [$c969]
    or a
    jr nz, jr_001_568c

    ld a, [$c968]
    cp $06
    jr z, jr_001_5690

    cp $5d
    jr z, jr_001_5690

    ld a, [$d92b]
    cp $07
    jr nz, jr_001_568c

    ld a, [$da09]
    cp $03
    jr nz, jr_001_568c

    ld a, [$c8ed]
    cp $0e
    jr nz, jr_001_568c

    jr jr_001_5690

jr_001_568c:
    xor a
    ld [$c8ed], a

jr_001_5690:
    ld a, [$c8ec]
    or a
    ret nz

    ld a, [$c8eb]
    bit 1, a
    ret nz

    bit 3, a
    ret nz

    bit 7, a
    ret nz

    bit 4, a
    jr z, jr_001_56ab

    ld a, [$c8ef]
    cp $0f
    ret z

jr_001_56ab:
    ldh a, [$90]
    bit 6, a
    ret nz

    ld hl, $ffc3
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$93]
    ld [hl+], a
    ldh a, [$95]
    add $08
    ld [hl+], a
    ldh a, [$96]
    adc $00
    ld [hl+], a
    ldh a, [$8a]
    ld [hl+], a
    ldh a, [$8b]
    ld [hl+], a
    ldh a, [$8c]
    ld [hl+], a
    ldh a, [$8d]
    ld [hl], a
    ldh a, [$c8]
    cp $ff
    ret z

    ld a, [$c8ed]
    bit 0, a
    jr nz, jr_001_56df

    ld hl, $0402
    rst $10

jr_001_56df:
    ld a, [$ca8d]
    cp $00
    ret z

    ld a, [$ca91]
    ldh [$c7], a
    ld a, $20
    ldh [$c9], a
    ld b, $10
    ld a, [$c8ed]
    bit 1, a
    call z, Call_001_572b
    ld a, [$ca8d]
    cp $01
    ret z

    ld a, [$ca92]
    ldh [$c7], a
    ld a, $30
    ldh [$c9], a
    ld b, $20
    ld a, [$c8ed]
    bit 2, a
    call z, Call_001_572b
    ld a, [$ca8d]
    cp $02
    ret z

    ld a, [$ca93]
    ldh [$c7], a
    ld a, $40
    ldh [$c9], a
    ld b, $30
    ld a, [$c8ed]
    bit 3, a
    call z, Call_001_572b
    ret


Call_001_572b:
    ld a, [$ca37]
    sub b
    jr nc, jr_001_5733

    add $31

jr_001_5733:
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
    ld e, l
    ld d, h
    ld hl, $ffc3
    ld a, [de]
    ld [hl+], a
    inc de
    inc de
    ld a, [de]
    swap a
    and $0f
    ld [hl+], a
    dec de
    ld a, [de]
    inc de
    add $08
    ld [hl+], a
    ld a, [de]
    inc de
    adc $00
    and $0f
    ld [hl+], a
    inc hl
    ld a, [de]
    and $0f
    ld [hl+], a
    inc hl
    ld a, [de]
    and $f0
    ld [hl+], a
    inc de
    call Call_001_576f
    ld hl, $0402
    rst $10
    ret


Call_001_576f:
    ld a, [$d7b8]
    cp $00
    jr z, jr_001_578b

    cp $01
    jr z, jr_001_578b

    cp $02
    jr z, jr_001_578b

    cp $03
    jr z, jr_001_578b

    cp $04
    jr z, jr_001_578b

    cp $05
    jr z, jr_001_578b

    ret


jr_001_578b:
    ldh a, [$c8]
    and $fe
    ld b, a
    ldh a, [$8b]
    and $01
    add b
    ldh [$c8], a
    ret


Call_001_5798:
    ld hl, $0600
    rst $10
    call Call_001_59c4
    ld hl, $ff90
    bit 5, [hl]
    jr nz, jr_001_57ab

    xor a
    ld [$d7bc], a
    ret


jr_001_57ab:
    ld a, [$d7bc]
    inc a
    ld [$d7bc], a
    cp $02
    jp nz, Jump_001_5921

    xor a
    ld [$d7bc], a
    xor a
    ldh [$a1], a
    ldh [$a2], a
    xor a
    ldh [$a3], a
    ldh [$a4], a
    ld hl, $ff90
    res 0, [hl]
    ldh a, [$92]
    and $f0
    add $08
    ldh [$92], a
    ldh a, [$95]
    and $f0
    add $08
    ldh [$95], a
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    ldh a, [$a9]
    cp $ff
    jr z, jr_001_57fc

    ld hl, $0600
    rst $10
    ldh a, [$90]
    bit 5, a
    ret z

jr_001_57fc:
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    call $1e31
    ldh a, [$a9]
    cp $ff
    jr z, jr_001_5852

    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$95], a
    ld a, h
    ldh [$96], a
    ld hl, $0600
    rst $10
    ldh a, [$90]
    bit 5, a
    ret z

    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$95], a
    ld a, h
    ldh [$96], a

jr_001_5852:
    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    ldh a, [$92]
    ldh [$a5], a
    ldh a, [$93]
    ldh [$a6], a
    call $1e31
    ldh a, [$a9]
    cp $ff
    jr z, jr_001_58a8

    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$95], a
    ld a, h
    ldh [$96], a
    ld hl, $0600
    rst $10
    ldh a, [$90]
    bit 5, a
    ret z

    ldh a, [$95]
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$95], a
    ld a, h
    ldh [$96], a

jr_001_58a8:
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ldh a, [$95]
    ldh [$a7], a
    ldh a, [$96]
    ldh [$a8], a
    call $1e31
    ldh a, [$a9]
    cp $ff
    jr z, jr_001_58fe

    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$92], a
    ld a, h
    ldh [$93], a
    ld hl, $0600
    rst $10
    ldh a, [$90]
    bit 5, a
    ret z

    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$92], a
    ld a, h
    ldh [$93], a

jr_001_58fe:
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$92], a
    ld a, h
    ldh [$93], a
    ld hl, $0600
    rst $10
    ldh a, [$90]
    bit 5, a
    jr nz, jr_001_58fe

    ret


    xor a
    ld [$d7bc], a

Jump_001_5921:
    ldh a, [$99]
    ldh [$92], a
    ldh a, [$9a]
    ldh [$93], a
    ldh a, [$9b]
    ldh [$95], a
    ldh a, [$9c]
    ldh [$96], a
    call Call_001_5935
    ret


Call_001_5935:
    ld hl, $d7d2

jr_001_5938:
    ld a, [hl]
    cp $ff
    ret z

    call Call_001_594a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_001_5938

    ret


Call_001_594a:
    push hl
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    bit 5, [hl]
    jr z, jr_001_599c

    ld a, l
    add $13
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld e, l
    ld d, h
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    and $0f
    cp $08
    jr nz, jr_001_599c

    inc hl
    ld a, [hl-]
    and $0f
    cp $08
    jr nz, jr_001_599c

    dec hl
    ld a, [hl+]
    ld [de], a
    ld c, a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld b, a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, c
    and $0f
    cp $08
    jr nz, jr_001_599c

    ld a, b
    and $0f
    cp $08
    jr nz, jr_001_599c

    pop hl
    push hl
    ld a, l
    add $07
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld [hl], $20

jr_001_599c:
    pop hl
    ret


    ldh a, [$8a]
    ld [$d7b7], a
    ld a, l
    ld [$d7b8], a
    ld a, h
    ld [$d7b9], a
    ld hl, $d7b6
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    xor a
    ld [$d7b6], a
    ld hl, $0200
    rst $10
    ld a, [$d7ba]
    ldh [$8b], a
    ret


Call_001_59c4:
    ld a, [$c969]
    or a
    ret z

    ld hl, $d793

jr_001_59cc:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    and $f8
    jr z, jr_001_59f3

    bit 7, a
    jr nz, jr_001_59f3

    inc hl
    inc hl
    ld de, $ff92
    call Call_001_59fe
    jr nc, jr_001_59f3

    inc hl
    ld de, $ff95
    call Call_001_59fe
    jr nc, jr_001_59f3

    pop hl
    ld hl, $ff90
    set 5, [hl]
    ret


jr_001_59f3:
    pop hl
    ld a, l
    add $04
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_001_59cc

Call_001_59fe:
    ld a, [hl]
    swap a
    ld b, a
    and $f0
    or $08
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ld a, [de]
    inc de
    sub c
    ld c, a
    ld a, [de]
    sbc b
    ld b, a
    bit 7, b
    jr z, jr_001_5a20

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_001_5a20:
    ld a, c
    sub $10
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    ret


Call_001_5a29:
    ld a, [$c969]
    or a
    ret z

    ld a, [$d793]
    cp $ff
    ret z

    ld hl, $d793

jr_001_5a37:
    ld a, l
    add $04
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    bit 7, a
    ret z

    cp $ff
    jr nz, jr_001_5a37

    ld a, $04
    ld [$c92d], a
    ret


Call_001_5a4d:
    ld a, [$c969]
    or a
    ret z

    ld a, [$c92e]
    inc a
    ld [$c92e], a
    cp $c8
    ret c

    xor a
    ld [$c92e], a
    ld a, $07
    ld [$c92d], a
    ret


Call_001_5a66:
    ldh a, [$97]
    ldh [$db], a
    ldh a, [$98]
    ldh [$dd], a
    xor a
    ld [$d78f], a
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c969]
    or a
    ret z

    ld hl, $d793

jr_001_5a7f:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    bit 7, a
    jr nz, jr_001_5aa0

    ld a, [$d78f]
    or a
    jr z, jr_001_5a93

    ld a, [hl]
    and $78
    jr z, jr_001_5aa0

jr_001_5a93:
    inc hl
    inc hl
    ldh a, [$db]
    cp [hl]
    jr nz, jr_001_5aa0

    inc hl
    ldh a, [$dd]
    cp [hl]
    jr z, jr_001_5aab

jr_001_5aa0:
    pop hl
    ld a, l
    add $04
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_001_5a7f

jr_001_5aab:
    xor a
    ld [$c92e], a
    pop hl
    inc hl
    ld a, [hl]
    ld [$d78f], a
    dec hl
    cp $ff
    jp z, Jump_001_5b57

    cp $00
    jp nz, Jump_001_5b43

    push hl
    ld hl, $010d
    rst $10
    ld a, [$c93c]
    cp $01
    jr nz, jr_001_5ae0

    ld a, [$c899]
    ld b, a
    ld a, $0d
    call $1dfb
    add $07
    ld [$d791], a
    xor a
    ld [$d792], a
    jr jr_001_5b22

jr_001_5ae0:
    cp $02
    jr nz, jr_001_5af8

    ld a, [$c899]
    ld b, a
    ld a, $1e
    call $1dfb
    add $28
    ld [$d791], a
    xor a
    ld [$d792], a
    jr jr_001_5b22

jr_001_5af8:
    ld a, [$ca38]
    add $0a
    ld c, a
    ld a, [$c939]
    inc a
    call $1dbe
    push hl
    ld a, [$c899]
    ld b, a
    ld a, $32
    call $1dfb
    add $32
    pop bc
    call $1de6
    ld a, $64
    call $1e1e
    ld a, l
    ld [$d791], a
    ld a, h
    ld [$d792], a

jr_001_5b22:
    ld hl, $d791
    ld a, [$ca4b]
    add [hl]
    ld e, a
    inc hl
    ld a, [$ca4c]
    adc [hl]
    ld d, a
    inc hl
    ld a, [$ca4d]
    adc $00
    ld c, a
    pop hl
    ld a, e
    sub $a0
    ld a, d
    sbc $86
    ld a, c
    sbc $01
    jr jr_001_5b57

Jump_001_5b43:
    ld de, $ca51
    ld b, $14

jr_001_5b48:
    ld a, [de]
    or a
    jr z, jr_001_5b57

    cp $ff
    jr z, jr_001_5b57

    inc de
    dec b
    jr nz, jr_001_5b48

    jp Jump_001_5bfd


Jump_001_5b57:
jr_001_5b57:
    set 7, [hl]
    ld a, [hl]
    and $78
    jr z, jr_001_5b68

    set 5, [hl]
    inc hl
    ld [hl], $20
    ld a, $53
    call $1b2c

jr_001_5b68:
    ld a, [$d78f]
    cp $ff
    jr nz, jr_001_5b87

    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld hl, $0217
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ret


jr_001_5b87:
    or a
    jr nz, jr_001_5bc3

    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, [$d791]
    ldh [$d5], a
    ld a, [$d792]
    ldh [$d6], a
    ld a, $00
    ldh [$d7], a
    ld hl, $c180
    call $09c7
    ld hl, $0215
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld a, [$d791]
    ld l, a
    ld a, [$d792]
    ld h, a
    ld e, $00
    call $241a
    ret


jr_001_5bc3:
    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, [$d78f]
    ld l, a
    ld h, $08
    ld de, $c180
    call $097a
    ld hl, $0208
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld hl, $ca51
    ld b, $14

jr_001_5beb:
    ld a, [hl]
    or a
    jr z, jr_001_5bf3

    cp $ff
    jr nz, jr_001_5bf8

jr_001_5bf3:
    ld a, [$d78f]
    ld [hl], a
    ret


jr_001_5bf8:
    inc hl
    dec b
    jr nz, jr_001_5beb

    ret


Jump_001_5bfd:
    ld a, [hl]
    and $78
    jr z, jr_001_5c09

    set 5, [hl]
    ld a, $53
    call $1b2c

jr_001_5c09:
    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, [$d78f]
    ld l, a
    ld h, $08
    ld de, $c180
    call $097a
    ld hl, $0211
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ret


    ld a, [hl]
    and $78
    jr z, jr_001_5c39

    set 5, [hl]
    ld a, $53
    call $1b2c

jr_001_5c39:
    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ld a, [$d791]
    ldh [$d5], a
    ld a, [$d792]
    ldh [$d6], a
    ld a, $00
    ldh [$d7], a
    ld hl, $c180
    call $09c7
    ld hl, $0216
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ret


Call_001_5c65:
    ld a, [$c969]
    or a
    jr nz, jr_001_5c6f

    call Call_001_54eb
    ret nz

jr_001_5c6f:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c8eb]
    bit 5, a
    ret nz

    bit 6, a
    ret nz

    bit 2, a
    ret nz

    bit 0, a
    ret nz

    ld a, [$ca3b]
    ld l, a
    ld a, [$ca3c]
    ld h, a
    ld a, $0a
    call $1e0d
    cp $01
    jr nz, jr_001_5cac

    ld hl, $0001
    ld a, $00
    call Call_001_5cd3
    ld a, $01
    call Call_001_5cd3
    ld a, $02
    call Call_001_5cd3
    call $2518
    call $25f1

jr_001_5cac:
    ld a, [$ca3b]
    ld l, a
    ld a, [$ca3c]
    ld h, a
    ld a, $05
    call $1e0d
    cp $04
    jr nz, jr_001_5cd2

    ld a, $00
    call Call_001_5d33
    ld a, $01
    call Call_001_5d33
    ld a, $02
    call Call_001_5d33
    call $2518
    call $25f1

jr_001_5cd2:
    ret


Call_001_5cd3:
    ld b, a
    ld a, [$ca8d]
    cp b
    ret z

    ret c

    ld a, b
    push bc
    ld hl, $cb0b
    call $2229
    bit 0, [hl]
    pop bc
    ret nz

    push bc
    ld hl, $cb0b
    call $2229
    bit 7, [hl]
    pop bc
    ret nz

    ld a, b
    ld hl, $0001
    call $22d2
    ret


    ld b, a
    ldh a, [$90]
    bit 1, a
    ret nz

    ld a, [$ca8d]
    cp b
    ret z

    ret c

    ld a, b
    push bc
    ld hl, $cb0b
    call $2229
    bit 0, [hl]
    pop bc
    ret z

    push bc
    ld hl, $cb0b
    call $2229
    bit 7, [hl]
    pop bc
    ret nz

    ld a, b
    ld hl, $0001
    call $22f0
    ld a, $6c
    call $1b2c
    ld a, $08
    ld [$c8a8], a
    ld a, $2d
    ld [$c89b], a
    ret


Call_001_5d33:
    ld b, a
    ldh a, [$90]
    bit 1, a
    ret nz

    ld a, [$ca8d]
    cp b
    ret z

    ret c

    ld a, b
    push bc
    ld hl, $cb0b
    call $2229
    bit 2, [hl]
    pop bc
    ret z

    push bc
    ld hl, $cb0b
    call $2229
    bit 7, [hl]
    pop bc
    ret nz

    ld a, b
    ld hl, $0001
    call $22be
    ld a, $6c
    call $1b2c
    ld a, $08
    ld [$c8a8], a
    ld a, $2d
    ld [$c89b], a
    ret


Call_001_5d6d:
    ldh a, [$90]
    bit 7, a
    ret nz

    bit 1, a
    jr z, jr_001_5d9c

    ld hl, $ff90
    res 1, [hl]
    call Call_001_5d9c
    ldh a, [$90]
    bit 1, a
    ret nz

    ld a, [$c8eb]
    bit 2, a
    ret nz

    ld a, $01
    ld [$d8d4], a
    ld a, $54
    ld [$d8d3], a
    xor a
    ld [$d8d7], a
    ld hl, $0405
    rst $10
    ret


Call_001_5d9c:
jr_001_5d9c:
    ld a, [$c969]
    or a
    ret nz

    ld a, [$c850]
    cpl
    inc a
    bit 7, a
    ret nz

    ld a, [$c88f]
    or a
    ret nz

    ld a, [$c8eb]
    bit 6, a
    ret nz

    bit 2, a
    ret nz

    bit 0, a
    ret nz

    call Call_001_54eb
    ret nz

    ldh a, [$aa]
    srl a
    srl a
    cp $0f
    jr z, jr_001_5dd5

    cp $10
    jr z, jr_001_5de6

    cp $11
    jr z, jr_001_5df7

    cp $12
    jr z, jr_001_5e08

    ret


jr_001_5dd5:
    ld hl, $0100
    ld a, l
    ldh [$a1], a
    ld a, h
    ldh [$a2], a
    ld hl, $ff90
    set 1, [hl]
    set 0, [hl]
    ret


jr_001_5de6:
    ld hl, $ff00
    ld a, l
    ldh [$a1], a
    ld a, h
    ldh [$a2], a
    ld hl, $ff90
    set 1, [hl]
    set 0, [hl]
    ret


jr_001_5df7:
    ld hl, $0100
    ld a, l
    ldh [$a3], a
    ld a, h
    ldh [$a4], a
    ld hl, $ff90
    set 1, [hl]
    set 0, [hl]
    ret


jr_001_5e08:
    ld hl, $ff00
    ld a, l
    ldh [$a3], a
    ld a, h
    ldh [$a4], a
    ld hl, $ff90
    set 1, [hl]
    set 0, [hl]
    ret


Call_001_5e19:
    ld a, [$c969]
    or a
    jr nz, jr_001_5e23

    call Call_001_54eb
    ret nz

jr_001_5e23:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c8eb]
    bit 6, a
    ret nz

    bit 2, a
    ret nz

    bit 0, a
    ret nz

    ld a, [$c93e]
    bit 0, a
    ret nz

    ldh a, [$aa]
    srl a
    srl a
    cp $0e
    jr nz, jr_001_5e7c

    ld a, [$c968]
    ld hl, $5e7d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_001_5e7c

    ld c, a
    ld l, a
    ld h, $00
    ld a, $00
    call Call_001_5e8d
    ld a, $01
    call Call_001_5e8d
    ld a, $02
    call Call_001_5e8d
    ld a, $6c
    call $1b2c
    ld a, $08
    ld [$c8a8], a
    ld a, $2d
    ld [$c89b], a
    call $2518
    call $25f1

jr_001_5e7c:
    ret


    nop
    nop
    nop
    dec b
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_001_5e8d:
    ld b, a
    ld a, [$ca8d]
    cp b
    ret z

    ret c

    ld a, b
    push bc
    push hl
    ld hl, $cb0b
    call $2229
    bit 7, [hl]
    pop hl
    pop bc
    ret nz

    push hl
    ld a, b
    call $22be
    pop hl
    ret


Call_001_5ea9:
    ld c, $00
    ld a, $00
    call Call_001_5f25
    ld a, $01
    call Call_001_5f25
    ld a, $02
    call Call_001_5f25
    ld a, c
    or a
    ret z

    push bc
    ld c, $00
    ld a, $00
    call Call_001_5f76
    ld a, $01
    call Call_001_5f76
    ld a, $02
    call Call_001_5f76
    ld a, [$ca8d]
    cp c
    pop bc
    jr nz, jr_001_5f01

    call Call_001_484e
    call $2518
    call $25f1
    ld hl, $ff90
    res 1, [hl]
    ld a, $4f
    call $1ae1
    ld hl, $021a
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


jr_001_5f01:
    ld a, $17
    add c
    ld l, a
    ld h, $02
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld hl, $c8eb
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    call Call_001_484e
    call $2518
    call $25f1
    ret


Call_001_5f25:
    ld b, a
    ld a, [$ca8d]
    cp b
    jr z, jr_001_5f74

    jr c, jr_001_5f74

    ld a, b
    push bc
    ld hl, $cb0b
    call $2229
    bit 7, [hl]
    pop bc
    jr nz, jr_001_5f74

    ld a, b
    push bc
    ld hl, $cb11
    call $224f
    ld a, b
    or c
    pop bc
    jr nz, jr_001_5f74

    ld a, b
    push bc
    ld hl, $cb0b
    call $2229
    set 7, [hl]
    pop bc
    ld a, c
    push bc
    swap a
    ld hl, $c180
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld hl, $cac2
    ld a, b
    call $2229
    ld e, l
    ld d, h
    pop hl
    call $0c80
    pop bc
    inc c
    ld a, $01
    or a
    ret


jr_001_5f74:
    xor a
    ret


Call_001_5f76:
    ld b, a
    ld a, [$ca8d]
    cp b
    ret z

    ret c

    ld a, b
    push bc
    ld hl, $cb0b
    call $2229
    bit 7, [hl]
    pop bc
    ret z

    inc c
    ret


Call_001_5f8b:
    ld a, [$c8ec]
    or a
    ret nz

    ld a, [$c8eb]
    bit 1, a
    ret nz

    bit 3, a
    ret nz

    bit 7, a
    ret nz

    bit 4, a
    jr z, jr_001_5fa6

    ld a, [$c8ef]
    cp $0f
    ret z

jr_001_5fa6:
    ld a, [$c969]
    or a
    ret z

    ld de, $d793

jr_001_5fae:
    ld a, [de]
    cp $ff
    ret z

    push de
    call Call_001_5fc1
    pop de
    ld a, e
    add $04
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jr jr_001_5fae

Call_001_5fc1:
    bit 7, a
    jr z, jr_001_5fde

    and $78
    ret z

    inc de
    ld a, [de]
    or a
    ret z

    ld a, [$c8eb]
    bit 0, a
    jr nz, jr_001_5fdd

    bit 6, a
    jr nz, jr_001_5fdd

    ld a, [de]
    dec a
    ld [de], a
    and $01
    ret z

jr_001_5fdd:
    dec de

jr_001_5fde:
    ld a, [de]
    and $7f
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, c
    cp $08
    jr nc, jr_001_5ff6

    ld a, b
    ld hl, $60b7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

jr_001_5ff6:
    push af
    ld hl, $6037
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ldh [$c9], a
    pop af
    ld hl, $6077
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ldh [$ca], a
    ld hl, $ffc3
    ld a, [de]
    swap a
    ld c, a
    and $f0
    ld [hl+], a
    ld a, c
    and $0f
    ld [hl+], a
    inc de
    ld a, [de]
    swap a
    ld c, a
    and $f0
    ld [hl+], a
    ld a, c
    and $0f
    ld [hl+], a
    ld a, $01
    ldh [$c7], a
    ld a, $00
    ldh [$c8], a
    ld hl, $0400
    rst $10
    ret


    ld d, b
    ld d, h
    ld e, b
    ld e, h
    ld h, b
    ld h, h
    ld l, b
    ld l, h
    jr jr_001_6059

    jr jr_001_605b

    jr jr_001_605d

    jr jr_001_605f

    jr jr_001_6061

    jr jr_001_6063

    jr jr_001_6065

    jr jr_001_6067

    jr jr_001_6069

    jr jr_001_606b

    jr jr_001_606d

    jr jr_001_606f

    inc e
    inc e

jr_001_6059:
    inc e
    inc e

jr_001_605b:
    inc e
    inc e

jr_001_605d:
    inc e
    inc e

jr_001_605f:
    inc e
    inc e

jr_001_6061:
    inc e
    inc e

jr_001_6063:
    inc e
    inc e

jr_001_6065:
    inc e
    inc e

jr_001_6067:
    inc e
    inc e

jr_001_6069:
    inc e
    inc e

jr_001_606b:
    inc e
    inc e

jr_001_606d:
    inc e
    inc e

jr_001_606f:
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld bc, $0602
    rlca
    nop
    rlca
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0100
    ld bc, $0001
    nop
    ld [bc], a
    nop
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    ld bc, $0000
    nop
    nop
    dec b
    nop
    dec b

Call_001_60e7:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c88f]
    or a
    ret nz

    ld a, [$c969]
    or a
    ret nz

    ld a, [$c8eb]
    bit 5, a
    ret nz

    bit 6, a
    ret nz

    bit 2, a
    ret nz

    bit 1, a
    ret nz

    bit 3, a
    ret nz

    bit 7, a
    ret nz

    bit 4, a
    jr z, jr_001_6115

    ld a, [$c8ef]
    cp $0f
    ret z

jr_001_6115:
    ld a, [$c968]
    rst $00
    ld sp, hl
    ld h, c
    nop
    ld h, d
    inc b
    ld h, d
    rra
    ld h, d
    rra
    ld h, d
    rra
    ld h, d
    rra
    ld h, d
    rra
    ld h, d
    jr nz, jr_001_618d

    or d
    ld h, d
    or e
    ld h, d
    or a
    ld h, d
    or a
    ld h, d
    or a
    ld h, d
    or a
    ld h, d
    or a
    ld h, d
    cp b
    ld h, d
    cp b
    ld h, d
    cp b
    ld h, d
    cp b
    ld h, d
    cp b
    ld h, d
    cp b
    ld h, d
    cp b
    ld h, d
    cp b
    ld h, d
    cp b
    ld h, d
    cp c
    ld h, d
    cp c
    ld h, d
    call $ce62
    ld h, d
    ld [c], a
    ld h, d
    db $e3
    ld h, d
    db $e4
    ld h, d
    push hl
    ld h, d
    push hl
    ld h, d
    ld sp, hl
    ld h, d
    ld a, [$0e62]
    ld h, e
    rrca
    ld h, e
    db $10
    ld h, e
    dec [hl]
    ld h, e
    ld [hl], $63
    dec a
    ld h, e
    ld h, d
    ld h, e
    db $76
    ld h, e
    ld h, d
    ld h, e
    ld [hl], a
    ld h, e
    ld a, [hl]
    ld h, e
    sbc l
    ld h, e
    or c
    ld h, e
    cp b
    ld h, e
    cp c
    ld h, e
    cp d
    ld h, e
    cp e
    ld h, e
    cp h
    ld h, e
    cp l
    ld h, e
    cp [hl]
    ld h, e
    jp nc, $d363

    ld h, e

jr_001_618d:
    call nc, $d563
    ld h, e
    sub $63
    db $dd
    ld h, e
    cp [hl]
    ld h, e
    db $e4
    ld h, e
    ld hl, sp+$63
    ld sp, hl
    ld h, e
    ld a, [$fb63]
    ld h, e
    db $fc
    ld h, e
    ld [hl+], a
    ld h, h
    inc hl
    ld h, h
    ld a, [hl+]
    ld h, h
    ld c, c
    ld h, h
    ld e, l
    ld h, h
    adc l
    ld h, h
    adc [hl]
    ld h, h
    or h
    ld h, h
    or l
    ld h, h
    jp c, $db64

    ld h, h
    rst $28
    ld h, h
    rst $28
    ld h, h
    ldh a, [$64]
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, e
    ld h, l
    sbc [hl]
    ld h, l
    sbc [hl]
    ld h, l
    ld a, [$4263]
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld b, d
    ld h, l
    ld a, [$fa63]
    ld h, e
    ld a, [$fa63]
    ld h, e
    ld a, [$fa63]
    ld h, e
    ld a, [$fa63]
    ld h, e
    ld a, [$fa63]
    ld h, e
    ld a, [$2163]
    ret nc

    sub h
    call Call_001_65e0
    ret


    call Call_001_659f
    ret


    ret


    ld hl, $9210
    call Call_001_6636
    ld hl, $93f0
    call Call_001_6636
    ret


    ld hl, $9210
    call Call_001_668f
    ld hl, $93f0
    call Call_001_668f
    ret


    ret


    ld a, [$d9cb]
    cp $02
    jp z, $62b1

    or a
    jr nz, jr_001_6260

    ld a, [$c8a6]
    ld l, a
    ld a, [$c8a7]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    and $07
    ld hl, $6258
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c89b], a
    ret


    jp nc, $d2d2

    pop de
    pop bc
    pop bc
    pop bc
    pop de

jr_001_6260:
    ld a, [$c8a6]
    ld l, a
    ld a, [$c8a7]
    ld h, a
    ld c, l
    ld b, h
    add hl, hl
    add hl, bc
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    and $1f
    ld hl, $6291
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c89b], a
    ret


    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    and $e6
    and $d2
    jp nc, $d1d2

    pop de
    pop de
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop de
    pop de
    pop de
    jp nc, $d2d2

    and $e6
    and $c9
    ret


    call Call_001_659f
    ret


    ret


    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9320
    ld de, $93d0
    ld b, $20
    call Call_001_6602
    ret


    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9240
    ld de, $92c0
    ld b, $20
    call Call_001_6602
    ret


    ret


    ret


    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9320
    ld de, $9380
    ld b, $20
    call Call_001_6602
    ret


    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9130
    ld de, $9190
    ld b, $40
    call Call_001_6602
    ret


    ret


    ret


    ld hl, $9240
    call Call_001_65e0
    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9060
    ld de, $9200
    ld b, $20
    call Call_001_6602
    ld hl, $9160
    ld de, $9220
    ld b, $20
    call Call_001_6602
    ret


    ret


    ld hl, $9250
    call Call_001_65e0
    ret


    ld hl, $90a0
    call Call_001_65e0
    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9060
    ld de, $90c0
    ld b, $20
    call Call_001_6602
    ld hl, $9160
    ld de, $90e0
    ld b, $20
    call Call_001_6602
    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9060
    ld de, $91a0
    ld b, $40
    call Call_001_6602
    ret


    ret


    ld hl, $9180
    call Call_001_65e0
    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9060
    ld de, $9200
    ld b, $20
    call Call_001_6602
    ld hl, $9160
    ld de, $9220
    ld b, $20
    call Call_001_6602
    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $94e0
    ld de, $94f0
    ld b, $10
    call Call_001_6602
    ret


    ld hl, $91e0
    call Call_001_65e0
    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9230
    ld de, $9240
    ld b, $10
    call Call_001_6602
    ret


    ret


    ret


    ret


    ret


    ld hl, $9560
    call Call_001_65e0
    ret


    ld hl, $90a0
    call Call_001_65e0
    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9380
    ld de, $93c0
    ld b, $40
    call Call_001_6602
    ret


    ret


    ret


    ret


    ret


    ld a, [$c8a6]
    and $3f
    cp $03
    ld hl, $90e0
    ld de, $90f0
    ld b, $10
    call z, Call_001_6602
    ld a, [$c8a6]
    and $3f
    cp $23
    ret nz

    ld hl, $91e0
    ld de, $91f0
    ld b, $10
    call Call_001_6602
    ret


    ret


    ld hl, $9460
    call Call_001_65e0
    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $94c0
    ld de, $95a0
    ld b, $10
    call Call_001_6602
    ld hl, $94e0
    ld de, $95b0
    ld b, $10
    call Call_001_6602
    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $9190
    ld de, $91a0
    ld b, $10
    call Call_001_6602
    ret


    ld hl, $9310
    call Call_001_65e0
    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $92a0
    ld de, $92c0
    ld b, $20
    call Call_001_6602
    ld hl, $93a0
    ld de, $93c0
    ld b, $20
    call Call_001_6602
    ld hl, $9400
    ld de, $9420
    ld b, $20
    call Call_001_6602
    ret


    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ld hl, $90c0
    ld de, $90d0
    ld b, $10
    call z, Call_001_6602
    ld a, [$c8a6]
    and $1f
    cp $13
    ret nz

    ld hl, $90e0
    ld de, $90f0
    ld b, $10
    call Call_001_6602
    ret


    ret


    ld hl, $9340
    call Call_001_65e0
    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $90a0
    ld de, $90c0
    ld b, $20
    call Call_001_6602
    ld hl, $9200
    ld de, $9220
    ld b, $20
    call Call_001_6602
    ret


    ret


    ld a, [$c8a6]
    and $1f
    cp $03
    ret nz

    ld hl, $95c0
    ld de, $95e0
    ld b, $20
    call Call_001_6602
    ret


    ret


    ld a, [$c8a6]
    ld l, a
    ld a, [$c8a7]
    ld h, a
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, $20
    call $1e0d
    or a
    jr nz, jr_001_651e

    ld hl, $91b0
    ld de, $90d0
    ld b, $10
    call Call_001_6602
    ld hl, $91c0
    ld de, $91d0
    ld b, $10
    call Call_001_6602

jr_001_651e:
    ld a, [$c8a6]
    ld l, a
    ld a, [$c8a7]
    ld h, a
    ld a, l
    add $0a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, $19
    call $1e0d
    or a
    jr nz, jr_001_6541

    ld hl, $9200
    ld de, $9220
    ld b, $20
    call Call_001_6602

jr_001_6541:
    ret


    ret


    ld a, [$c8a6]
    and $07
    ret nz

    ld a, [$c8a6]
    ld b, a
    ld a, $38
    call $1dfb
    or a
    jr nz, jr_001_6560

    ld hl, $93c0
    ld de, $9440
    ld b, $20
    call Call_001_6602

jr_001_6560:
    ld a, [$c8a6]
    add $08
    ld b, a
    ld a, $20
    call $1dfb
    or a
    jr nz, jr_001_6584

    ld hl, $93e0
    ld de, $9460
    ld b, $20
    call Call_001_6602
    ld hl, $9520
    ld de, $94a0
    ld b, $20
    call Call_001_6602

jr_001_6584:
    ld a, [$c8a6]
    add $10
    ld b, a
    ld a, $18
    call $1dfb
    or a
    jr nz, jr_001_659d

    ld hl, $9500
    ld de, $9480
    ld b, $20
    call Call_001_6602

jr_001_659d:
    ret


    ret


Call_001_659f:
    ld a, [$c8a6]
    and $1f
    cp $05
    jr z, jr_001_65a9

    ret


jr_001_65a9:
    ld a, [$c8a7]
    bit 1, a
    jr z, jr_001_65c8

    ld hl, $9400
    call Call_001_65d4
    call Call_001_65bc
    call Call_001_65d4

Call_001_65bc:
    call Call_001_668f
    call Call_001_668f
    call Call_001_668f
    jp Jump_001_668f


jr_001_65c8:
    ld hl, $9400
    call Call_001_65bc
    call Call_001_65d4
    call Call_001_65bc

Call_001_65d4:
    call Call_001_6636
    call Call_001_6636
    call Call_001_6636
    jp Jump_001_6636


Call_001_65e0:
    ld a, [$c8a6]
    and $7f
    cp $07
    jr z, jr_001_65f6

    cp $27
    jr z, jr_001_65f6

    cp $47
    jr z, jr_001_65f6

    cp $67
    jr z, jr_001_65fc

    ret


jr_001_65f6:
    call Call_001_6636
    jp Jump_001_6636


jr_001_65fc:
    call Call_001_668f
    jp Jump_001_668f


Call_001_6602:
jr_001_6602:
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
    jr nz, jr_001_6602

    ret


Call_001_6611:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c88f]
    or a
    ret nz

    ld a, [$c969]
    or a
    ret nz

    ld a, [$d8d7]
    or a
    ret nz

    ld a, [$c968]
    cp $08
    ret nz

    ld a, [$d951]
    cp $07
    ret nz

    ld hl, $0203
    rst $10
    ret


Call_001_6636:
Jump_001_6636:
    di
    call $1aa6
    rrc [hl]
    inc l
    rrc [hl]
    ei
    inc hl
    di
    call $1aa6
    rrc [hl]
    inc l
    rrc [hl]
    ei
    inc hl
    di
    call $1aa6
    rrc [hl]
    inc l
    rrc [hl]
    ei
    inc hl
    di
    call $1aa6
    rrc [hl]
    inc l
    rrc [hl]
    ei
    inc hl
    di
    call $1aa6
    rrc [hl]
    inc l
    rrc [hl]
    ei
    inc hl
    di
    call $1aa6
    rrc [hl]
    inc l
    rrc [hl]
    ei
    inc hl
    di
    call $1aa6
    rrc [hl]
    inc l
    rrc [hl]
    ei
    inc hl
    di
    call $1aa6
    rrc [hl]
    inc l
    rrc [hl]
    ei
    inc hl
    ret


Call_001_668f:
Jump_001_668f:
    di
    call $1aa6
    rlc [hl]
    inc l
    rlc [hl]
    ei
    inc hl
    di
    call $1aa6
    rlc [hl]
    inc l
    rlc [hl]
    ei
    inc hl
    di
    call $1aa6
    rlc [hl]
    inc l
    rlc [hl]
    ei
    inc hl
    di
    call $1aa6
    rlc [hl]
    inc l
    rlc [hl]
    ei
    inc hl
    di
    call $1aa6
    rlc [hl]
    inc l
    rlc [hl]
    ei
    inc hl
    di
    call $1aa6
    rlc [hl]
    inc l
    rlc [hl]
    ei
    inc hl
    di
    call $1aa6
    rlc [hl]
    inc l
    rlc [hl]
    ei
    inc hl
    di
    call $1aa6
    rlc [hl]
    inc l
    rlc [hl]
    ei
    inc hl
    ret


    ld e, l
    ld d, h
    dec de
    dec de
    di
    call $1aa6
    ld c, [hl]
    dec hl
    ld b, [hl]
    inc hl
    ei
    push bc
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl-], a
    dec de
    ei
    pop bc
    di
    call $1aa6
    ld [hl], c
    dec hl
    ld [hl], b
    ei
    ret


    ld e, l
    ld d, h
    inc de
    inc de
    di
    call $1aa6
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    ei
    push bc
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    di
    call $1aa6
    ld a, [de]
    ld [hl+], a
    inc de
    ei
    pop bc
    di
    call $1aa6
    ld [hl], c
    inc hl
    ld [hl], b
    ei
    ret


Call_001_67f8:
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


    call Call_001_69e1
    ld a, [$ca38]
    ld bc, $001a
    call $1de6
    ld a, l
    add $b0
    ld l, a
    ld a, h
    adc $6a
    ld h, a
    ld b, $00
    ld de, $c0d8
    call Call_001_69ad
    call Call_001_69ad
    call Call_001_69ad
    ld hl, $c0d8
    call Call_001_6989
    ld [$da02], a
    ld a, [$ca38]
    ld bc, $001a
    call $1de6
    ld a, l
    add $b3
    ld l, a
    ld a, h
    adc $6a
    ld h, a
    ld de, $c0d8
    call Call_001_69ad
    call Call_001_69ad
    call Call_001_69ad
    call Call_001_69ad
    call Call_001_69ad
    ld a, $ff
    ld [$da03], a
    ld [$da05], a
    ld [$da07], a
    ld hl, $c0d8
    call Call_001_6989
    ld [$da03], a
    call Call_001_696c
    cp $01
    jr z, jr_001_68d8

    ld a, [$da02]
    or a
    jr z, jr_001_68d8

jr_001_68ad:
    ld hl, $c0d8
    call Call_001_6989
    ld [$da05], a
    call Call_001_6941
    jr c, jr_001_68ad

    cp $01
    jr z, jr_001_68ad

    ld a, [$da02]
    cp $01
    jr z, jr_001_68d8

jr_001_68c6:
    ld hl, $c0d8
    call Call_001_6989
    ld [$da07], a
    call Call_001_6941
    jr c, jr_001_68c6

    cp $01
    jr z, jr_001_68c6

jr_001_68d8:
    ld a, [$ca38]
    ld bc, $001a
    call $1de6
    ld a, l
    add $b8
    ld l, a
    ld a, h
    adc $6a
    ld h, a
    ld a, [$da03]
    cp $ff
    jr z, jr_001_6940

    add a
    push hl
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
    pop hl
    ld a, [$da05]
    cp $ff
    jr z, jr_001_6940

    add a
    push hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$da05], a
    ld a, [hl]
    ld [$da06], a
    ld a, $01
    ld [$da02], a
    pop hl
    ld a, [$da07]
    cp $ff
    jr z, jr_001_6940

    add a
    push hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$da07], a
    ld a, [hl]
    ld [$da08], a
    ld a, $02
    ld [$da02], a
    pop hl

jr_001_6940:
    ret


Call_001_6941:
    ld b, $00
    push af
    ld c, a
    ld a, [$da03]
    cp $ff
    jr z, jr_001_6966

    cp c
    jr nz, jr_001_6950

    inc b

jr_001_6950:
    ld a, [$da05]
    cp $ff
    jr z, jr_001_6966

    cp c
    jr nz, jr_001_695b

    inc b

jr_001_695b:
    ld a, [$da07]
    cp $ff
    jr z, jr_001_6966

    cp c
    jr nz, jr_001_6966

    inc b

jr_001_6966:
    pop af
    call Call_001_696c
    cp b
    ret


Call_001_696c:
    push af
    push bc
    ld a, [$ca38]
    ld bc, $001a
    call $1de6
    ld a, l
    add $c2
    ld l, a
    ld a, h
    adc $6a
    ld h, a
    pop bc
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


Call_001_6989:
    push hl
    call $12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $64
    call $1e0d
    pop hl
    ld c, a
    ld b, $ff

jr_001_699e:
    ld a, [hl]
    inc b
    inc hl
    or a
    jr z, jr_001_699e

    cp $64
    jr z, jr_001_69ab

    cp c
    jr c, jr_001_699e

jr_001_69ab:
    ld a, b
    ret


Call_001_69ad:
    ld a, [hl]
    push hl
    ld hl, $69c0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    add b
    ld b, a
    ld [de], a
    inc de
    inc hl
    ret


    nop
    ld a, [bc]
    inc d
    ld e, $28
    ld [hl-], a
    ld b, [hl]
    ld h, h
    call Call_001_69e1
    ld a, [$ca38]
    ld bc, $001a
    call $1de6
    ld a, l
    add $c7
    ld l, a
    ld a, h
    adc $6a
    ld h, a
    ld a, [hl]
    ld [$c93d], a
    ret


Call_001_69e1:
    ld a, [$c935]
    ld hl, $6a22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld a, [$c935]
    add a
    ld hl, $6a42
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $ff

jr_001_6a01:
    ld a, [$c939]
    inc a
    cp [hl]
    inc c
    inc hl
    jr nc, jr_001_6a01

    pop af
    add c
    ld [$ca38], a
    ld bc, $001a
    call $1de6
    ld a, l
    add $ae
    ld l, a
    ld a, h
    adc $6a
    ld h, a
    ld a, [hl]
    ld [$c8a9], a
    ret


    nop
    ld bc, $0503
    rlca
    add hl, bc
    inc c
    rrca
    ld [de], a
    ld d, $1a
    ld e, $22
    daa
    inc l
    ld sp, $3b36
    ld b, b
    ld b, l
    ld c, d
    ld c, a
    ld d, l
    ld e, c
    ld e, l
    ld h, c
    ld h, l
    ld l, c
    ld l, l
    ld [hl], c
    ld [hl], l
    ld a, c
    add d
    ld l, d
    add e
    ld l, d
    add e
    ld l, d
    add e
    ld l, d
    add e
    ld l, d
    add e
    ld l, d
    add [hl]
    ld l, d
    add [hl]
    ld l, d
    add [hl]
    ld l, d
    adc d
    ld l, d
    adc d
    ld l, d
    adc d
    ld l, d
    adc [hl]
    ld l, d
    add e
    ld l, d
    adc [hl]
    ld l, d
    sub e
    ld l, d
    sub e
    ld l, d
    add [hl]
    ld l, d
    sbc b
    ld l, d
    sbc b
    ld l, d
    sbc b
    ld l, d
    sbc l
    ld l, d
    and e
    ld l, d
    and e
    ld l, d
    and e
    ld l, d
    and e
    ld l, d
    and e
    ld l, d
    and e
    ld l, d
    and e
    ld l, d
    and e
    ld l, d
    and e
    ld l, d
    and a
    ld l, d
    rst $38
    inc bc
    ld b, $ff
    inc b
    ld b, $09
    rst $38
    inc b
    ld b, $09
    rst $38
    inc b
    ld b, $09
    dec c
    rst $38
    dec b
    add hl, bc
    dec c
    ld de, $06ff
    dec bc
    db $10
    dec d
    rst $38
    ld b, $0b
    db $10
    dec d
    ld a, [de]
    rst $38
    ld b, $0b
    dec d
    rst $38
    ld b, $0b
    dec d
    add hl, hl
    dec a
    ld d, c
    rst $38
    inc bc
    ld bc, $0007
    nop
    inc bc
    dec b
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld [$0203], sp
    dec b
    dec b
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec b
    nop
    ld b, $00
    inc bc
    nop
    ld c, $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0800
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0500
    nop
    ld b, $00
    rlca
    nop
    rrca
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [$0303], sp
    inc bc
    dec b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [$0a00], sp
    nop
    inc bc
    nop
    dec c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0800
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0800
    nop
    add hl, bc
    nop
    ld a, [bc]
    nop
    ld c, $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [$0303], sp
    inc bc
    ld b, $00
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    add hl, bc
    nop
    rrca
    nop
    ld de, $1300
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [$0303], sp
    ld [bc], a
    inc bc
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0e00
    nop
    inc d
    nop
    inc de
    nop
    add hl, de
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [$0303], sp
    inc bc
    ld b, $00
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec c
    nop
    dec d
    nop
    ld de, $1900
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [$0303], sp
    ld [bc], a
    inc bc
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $1200
    nop
    ld d, $00
    add hl, de
    nop
    stop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [$0304], sp
    inc bc
    dec b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc d
    nop
    dec d
    nop
    add hl, de
    nop
    ld a, [de]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    inc bc
    dec b
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    ld bc, $1500
    nop
    ld de, $1300
    nop
    dec de
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $1600
    nop
    inc de
    nop
    stop
    inc e
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $1500
    nop
    add hl, de
    nop
    dec e
    nop
    ld a, [de]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld [bc], a
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $1100
    nop
    ld a, [de]
    nop
    rla
    nop
    ld hl, $0000
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $1000
    nop
    ld a, [de]
    nop
    ld hl, $2200
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $1600
    nop
    dec de
    nop
    inc e
    nop
    inc hl
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld [bc], a
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $1b00
    nop
    inc hl
    nop
    jr jr_001_6c5e

jr_001_6c5e:
    inc h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $1b00
    nop
    inc hl
    nop
    inc h
    nop
    ld [hl+], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc b
    inc bc
    nop
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld bc, $1700
    nop
    ld hl, $2300
    nop
    ld h, $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc b
    inc bc
    nop
    ld b, $03
    inc b
    inc bc
    ld [bc], a
    ld bc, $2100
    nop
    jr z, jr_001_6caa

jr_001_6caa:
    inc hl
    nop
    ld h, $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc b
    inc bc
    nop
    ld b, $03
    inc b
    inc bc
    ld [bc], a
    ld bc, $2400
    nop
    ld [hl+], a
    nop
    inc hl
    nop
    daa
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc b
    inc bc
    nop
    ld b, $03
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0022
    jr jr_001_6cde

jr_001_6cde:
    inc hl
    nop
    daa
    nop
    ld e, $00
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0405
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    daa
    nop
    jr z, jr_001_6cf8

jr_001_6cf8:
    dec h
    nop
    cpl
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0405
    inc bc
    inc bc
    inc bc
    ld bc, $2700
    nop
    dec h
    nop
    cpl
    nop
    dec hl
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0405
    inc b
    inc bc
    ld [bc], a
    ld bc, $2800
    nop
    dec h
    nop
    dec hl
    nop
    ld l, $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0405
    inc b
    inc bc
    ld [bc], a
    ld bc, $2800
    nop
    dec hl
    nop
    cpl
    nop
    ld l, $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0405
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc h
    nop
    ld h, $00
    add hl, hl
    nop
    ld a, [hl+]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0405
    inc bc
    inc bc
    inc bc
    ld bc, $2600
    nop
    add hl, hl
    nop
    ld a, [hl+]
    nop
    inc l
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0405
    inc b
    inc bc
    ld [bc], a
    ld bc, $2a00
    nop
    add hl, hl
    nop
    inc l
    nop
    dec l
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0405
    inc b
    inc bc
    ld [bc], a
    ld bc, $2a00
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc b
    inc bc
    nop
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    cpl
    nop
    ld sp, $3200
    nop
    jr nc, jr_001_6dcc

jr_001_6dcc:
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $2f00
    nop
    ld [hl-], a
    nop
    jr nc, jr_001_6de4

jr_001_6de4:
    add hl, sp
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    dec b
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $2e00
    nop
    ld [hl-], a
    nop
    jr nc, jr_001_6dfe

jr_001_6dfe:
    ld a, [hl-]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    dec b
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $2e00
    nop
    jr nc, jr_001_6e16

jr_001_6e16:
    add hl, sp
    nop
    ld a, [hl-]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec sp
    nop
    inc a
    nop
    ld a, $00
    dec a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0f00
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    inc bc
    inc bc
    ld bc, $3b00
    nop
    inc a
    nop
    ld a, $00
    dec a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $3c00
    nop
    ld a, $00
    ccf
    nop
    dec a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $3c00
    nop
    ccf
    nop
    ld b, c
    nop
    ld b, b
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc b
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $4100
    nop
    ccf
    nop
    dec a
    nop
    ld b, b
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld a, [hl-]
    nop
    ld b, e
    nop
    ld b, h
    nop
    ld b, d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0f00
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    inc bc
    inc bc
    ld bc, $3a00
    nop
    ld b, e
    nop
    ld b, h
    nop
    ld b, d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $4300
    nop
    ld b, h
    nop
    ld b, d
    nop
    ld b, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $4300
    nop
    ld b, d
    nop
    ld b, l
    nop
    ld b, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc b
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $4200
    nop
    ld b, l
    nop
    ld b, a
    nop
    ld b, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc b
    inc bc
    nop
    inc bc
    ld b, $03
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld c, c
    nop
    ld c, b
    nop
    ld b, a
    nop
    ld c, d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0300
    inc b
    inc bc
    nop
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld bc, $4900
    nop
    ld c, b
    nop
    ld b, a
    nop
    ld c, d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $4800
    nop
    ld b, a
    nop
    ld c, d
    nop
    ld d, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $4800
    nop
    ld c, d
    nop
    ld d, e
    nop
    ld d, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $4a00
    nop
    ld d, e
    nop
    ld d, c
    nop
    ld d, d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld d, l
    nop
    ld d, [hl]
    nop
    ld d, a
    nop
    ld d, d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    inc bc
    inc bc
    ld bc, $5500
    nop
    ld d, [hl]
    nop
    ld d, a
    nop
    ld e, b
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $5500
    nop
    ld d, [hl]
    nop
    ld d, a
    nop
    ld e, b
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $5600
    nop
    ld d, a
    nop
    ld e, b
    nop
    ld d, h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc b
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $5600
    nop
    ld e, b
    nop
    ld e, c
    nop
    ld d, h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld e, c
    nop
    ld e, e
    nop
    ld e, h
    nop
    ld e, d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    inc bc
    inc bc
    ld bc, $5900
    nop
    ld e, e
    nop
    ld e, h
    nop
    ld e, d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $5b00
    nop
    ld e, h
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $5b00
    nop
    ld e, d
    nop
    ld e, l
    nop
    ld e, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc b
    inc bc
    ld bc, $0504
    inc b
    inc bc
    ld [bc], a
    ld bc, $5a00
    nop
    ld e, l
    nop
    ld e, a
    nop
    ld e, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    inc b
    inc bc
    nop
    inc bc
    ld b, $03
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld h, b
    nop
    ld h, d
    nop
    ld l, e
    nop
    ld l, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0300
    inc b
    inc bc
    nop
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld bc, $6000
    nop
    ld h, d
    nop
    ld l, e
    nop
    ld l, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $6200
    nop
    ld l, e
    nop
    ld l, c
    nop
    ld h, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $6200
    nop
    ld l, c
    nop
    ld l, d
    nop
    ld h, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $6900
    nop
    ld l, d
    nop
    ld l, e
    nop
    ld h, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $006c
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], c
    nop
    ld l, e
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $006c
    ld l, a
    nop
    ld [hl], b
    nop
    ld [hl], c
    nop
    ld l, e
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $006c
    ld l, a
    nop
    ld [hl], b
    nop
    ld l, e
    nop
    ld [hl], d
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $006c
    ld l, a
    nop
    ld [hl], c
    nop
    ld l, e
    nop
    ld [hl], d
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    rrca
    inc b
    inc bc
    ld bc, $0504
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, h
    nop
    ld l, a
    nop
    ld l, e
    nop
    ld [hl], d
    nop
    ld [hl], e
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0074
    ld [hl], a
    nop
    ld a, b
    nop
    ld a, c
    nop
    ld [hl], l
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0077
    ld a, b
    nop
    ld a, c
    nop
    ld a, d
    nop
    ld [hl], l
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0077
    ld a, c
    nop
    ld a, d
    nop
    ld [hl], l
    nop
    halt
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    rrca
    inc bc
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0077
    ld a, c
    nop
    add c
    nop
    ld [hl], l
    nop
    halt
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    rrca
    inc b
    inc bc
    ld bc, $0504
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], a
    nop
    ld a, b
    nop
    add c
    nop
    ld [hl], l
    nop
    halt
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc b
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0082
    add h
    nop
    adc b
    nop
    adc c
    nop
    add e
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0082
    add h
    nop
    add [hl]
    nop
    adc c
    nop
    add e
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0082
    add h
    nop
    add [hl]
    nop
    adc c
    nop
    add l
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0082
    add e
    nop
    add [hl]
    nop
    adc c
    nop
    add l
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add d
    nop
    add e
    nop
    add l
    nop
    add [hl]
    nop
    add a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $008a
    adc e
    nop
    adc h
    nop
    adc l
    nop
    adc [hl]
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $008a
    adc e
    nop
    adc l
    nop
    adc [hl]
    nop
    adc a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $008e
    adc l
    nop
    sub b
    nop
    sub c
    nop
    adc a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $008e
    sub b
    nop
    sub d
    nop
    sbc l
    nop
    adc a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc bc
    inc bc
    nop
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0090
    sub d
    nop
    sbc l
    nop
    sbc [hl]
    nop
    adc a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc b
    inc bc
    nop
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc a
    nop
    sub d
    nop
    sbc l
    nop
    sbc [hl]
    nop
    sbc a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld b, $00
    ld a, [bc]
    nop
    inc de
    nop
    inc h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld h, $00
    inc l
    nop
    ld sp, $4600
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld d, [hl]
    nop
    ld e, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld a, d
    nop
    add c
    nop
    adc c
    nop
    sub d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec b
    nop
    ld [de], a
    nop
    dec de
    nop
    inc hl
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec hl
    nop
    ld a, $00
    ld b, l
    nop
    ld d, l
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [hl], b
    nop
    ld a, c
    nop
    adc b
    nop
    sub c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    sub c
    nop
    and e
    nop
    xor c
    nop
    cp l
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    ld c, $00
    dec d
    nop
    ld [hl+], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [hl-], a
    nop
    dec a
    nop
    ld b, h
    nop
    ld d, h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld e, l
    nop
    ld l, a
    nop
    ld a, b
    nop
    add a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    sub b
    nop
    and d
    nop
    push bc
    nop
    add $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    add hl, de
    nop
    ld e, $00
    jr z, jr_001_749a

jr_001_749a:
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld l, $00
    dec sp
    nop
    ld b, c
    nop
    ld c, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld d, c
    nop
    ld e, d
    nop
    ld h, d
    nop
    ld l, h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld l, h
    nop
    ld [hl], l
    nop
    adc l
    nop
    or l
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    rlca
    nop
    ld d, $00
    inc e
    nop
    dec h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ccf
    nop
    ld b, a
    nop
    ld d, a
    nop
    ld e, a
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld l, c
    nop
    ld [hl], d
    nop
    add d
    nop
    adc d
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    sbc l
    nop
    and h
    nop
    xor d
    nop
    cp [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [$1000], sp
    nop
    rla
    nop
    dec l
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    add hl, sp
    nop
    ld b, b
    nop
    ld e, b
    nop
    ld h, b
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld l, d
    nop
    ld [hl], e
    nop
    add e
    nop
    adc e
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sbc [hl]
    nop
    and l
    nop
    xor e
    nop
    cp d
    nop
    cp a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    add hl, bc
    nop
    jr jr_001_75ce

jr_001_75ce:
    dec e
    nop
    daa
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld a, [hl-]
    nop
    ld c, b
    nop
    ld e, c
    nop
    ld h, c
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, e
    nop
    add h
    nop
    adc h
    nop
    sbc a
    nop
    and [hl]
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    xor h
    nop
    or a
    nop
    cp e
    nop
    ret nz

    nop
    pop bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rrca
    nop
    inc d
    nop
    ld hl, $2a00
    nop
    jr nc, jr_001_763c

jr_001_763c:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc a
    nop
    ld b, e
    nop
    ld c, d
    nop
    ld d, e
    nop
    ld e, h
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    nop
    ld [hl], a
    nop
    add [hl]
    nop
    adc a
    nop
    and c
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    xor b
    nop
    xor [hl]
    nop
    or [hl]
    nop
    cp c
    nop
    jp $0300


    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec c
    nop
    ld de, $1a00
    nop
    add hl, hl
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cpl
    nop
    ld b, d
    nop
    ld d, d
    nop
    ld e, e
    nop
    ld l, l
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    inc bc
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    halt
    add l
    nop
    adc [hl]
    nop
    and b
    nop
    and a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    xor l
    nop
    cp b
    nop
    cp h
    nop
    jp nz, $c400

    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    cp d
    nop
    cp c
    nop
    cp e
    nop
    cp h
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    cp e
    nop
    cp h
    nop
    cp l
    nop
    cp [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    cp l
    nop
    cp [hl]
    nop
    cp a
    nop
    ret nz

    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    cp a
    nop
    ret nz

    nop
    pop bc
    nop
    jp nz, RST_00

    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    pop bc
    nop
    jp nz, $c300

    nop
    call nz, RST_00
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    jp $c400


    nop
    push bc
    nop
    add $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    inc b
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    push bc
    nop
    add $00
    ld e, $00
    or l
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rrca
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld e, e
    cp $fd
    ld h, a
    ld l, b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld l, c
    ld l, d
    cp $fd
    ld [hl], a
    ld a, b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, c
    ld a, d
    cp $fd
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fd
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $fd
    ei
    rra
    dec de
    inc d
    db $10
    ld [hl+], a
    inc d
    ei
    ei
    db $fd
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $fd
    ei
    ei
    inc hl
    ld hl, $fb28
    ei
    ei
    ei
    db $fd
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $fd
    ei
    db $10
    ld d, $10
    jr jr_001_7828

    ld c, l
    ei
    ei
    db $fd
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $fd
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7828:
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
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
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $47
    ld c, b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, c
    ld c, d
    cp $fe
    ld d, a
    ld e, b
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld e, c
    ld e, d
    cp $fe
    ld e, h
    ld l, h
    ld d, $10
    inc e
    inc d
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    ld e, $25
    inc d
    ld hl, $5b7c
    cp $fe
    ld h, a
    ld l, b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld l, c
    ld l, d
    cp $fe
    ld [hl], a
    ld a, b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, c
    ld a, d
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fb
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rra
    dec de
    inc d
    db $10
    ld [hl+], a
    inc d
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    inc hl
    ld hl, $fb28
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $10
    ld d, $10
    jr jr_001_79a4

    ld c, l
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_79a4:
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $47
    ld c, b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, c
    ld c, d
    cp $fe
    ld d, a
    ld e, b
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld e, c
    ld e, d
    cp $fe
    ld e, h
    ld l, h
    ld d, $10
    inc e
    inc d
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    ld e, $25
    inc d
    ld hl, $5b7c
    cp $fe
    ld h, a
    ld l, b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld l, c
    ld l, d
    cp $fe
    ld [hl], a
    ld a, b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, c
    ld a, d
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fb
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rra
    dec de
    inc d
    db $10
    ld [hl+], a
    inc d
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    inc hl
    ld hl, $fb28
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $10
    ld d, $10
    jr jr_001_7a62

    ld c, l
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7a62:
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $47
    ld c, b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, c
    ld c, d
    cp $fe
    ld d, a
    ld e, b
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld e, c
    ld e, d
    cp $fe
    ld e, h
    ld l, h
    ld d, $10
    inc e
    inc d
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    ld e, $25
    inc d
    ld hl, $5b7c
    cp $fe
    ld h, a
    ld l, b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld l, c
    ld l, d
    cp $fe
    ld [hl], a
    ld a, b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, c
    ld a, d
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fb
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rra
    dec de
    inc d
    db $10
    ld [hl+], a
    inc d
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    inc hl
    ld hl, $fb28
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $10
    ld d, $10
    jr jr_001_7b20

    ld c, l
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7b20:
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ld [c], a
    db $e3
    db $e4
    db $eb
    db $ec
    db $ed
    xor $ef
    ld de, $13fb
    dec d
    rla
    add hl, de
    ld a, [de]
    jr nz, jr_001_7b98

    daa
    add hl, hl
    ei
    ld a, [$5453]
    ld d, l
    ld d, [hl]
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ei
    ei
    ld h, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei

jr_001_7b98:
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
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
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    add c
    add d
    add e
    add h
    add l
    add [hl]
    ei
    ei
    ei
    ei
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ei
    ei
    ei
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ei
    ei
    ei
    ei
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ei
    ei
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ei
    ei
    ret z

    ret


    jp z, $cccb

    call $cfce
    ldh [$fb], a
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
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
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    add c
    add d
    add e
    add h
    add l
    add [hl]
    ei
    ei
    ei
    ei
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ei
    ei
    ei
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ei
    ei
    ei
    ei
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ei
    ei
    ei
    ei
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ei
    ei
    ei
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ei
    ei
    ei
    ei
    cp h
    cp l
    cp [hl]
    cp a
    add a
    adc a
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
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
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $47
    ld c, b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, c
    ld c, d
    cp $fe
    ld d, a
    ld e, b
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld e, c
    ld e, d
    cp $fe
    ld e, h
    ld l, h
    inc hl
    jr jr_001_7da8

    inc d
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    ld e, $25
    inc d
    ld hl, $5b7c
    cp $fe
    ld h, a
    ld l, b
    ld a, e

jr_001_7da8:
    ld a, e
    ld a, e
    ld a, e
    ld l, c
    ld l, d
    cp $fe
    ld [hl], a
    ld a, b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, c
    ld a, d
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fb
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rra
    dec de
    inc d
    db $10
    ld [hl+], a
    inc d
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    inc hl
    ld hl, $fb28
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $10
    ld d, $10
    jr jr_001_7e18

    ld c, l
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7e18:
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $47
    ld c, b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, c
    ld c, d
    cp $fe
    ld d, a
    ld e, b
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld e, c
    ld e, d
    cp $fe
    ld e, h
    ld l, h
    ld d, $10
    inc e
    inc d
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld e, e
    cp $fe
    ld e, h
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld e, e
    cp $fe
    ld h, a
    ld l, b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld l, c
    ld l, d
    cp $fe
    ld [hl], a
    ld a, b
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, c
    ld a, d
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fb
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rra
    dec de
    inc d
    db $10
    ld [hl+], a
    inc d
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    inc hl
    ld hl, $fb28
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $10
    ld d, $10
    jr jr_001_7ed6

    ld c, l
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7ed6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
