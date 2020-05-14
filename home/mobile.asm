Timer::
; Mobile System GB timeout check
	push hl
	push de
	push bc
	push af

	; Do nothing if mobile is disabled
	ldh a, [hMobile]
	and a
	jr z, .pop_ret

	; Disable the timer
	xor a
	ldh [rTAC], a
	ld hl, rIF
	res TIMER, [hl]

	ldh a, [rTMA]
	ldh [rTIMA], a

	ld a, 1 << rTAC_ON | rTAC_65536_HZ
	ldh [rTAC], a

.pop_ret
	pop af
	pop bc
	pop de
	pop hl
	reti
