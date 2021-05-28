UpdatePlayerSprite::
	farjp _UpdatePlayerSprite

LoadStandardOpaqueFont::
	farjp _LoadStandardOpaqueFont

LoadStandardFont::
	farjp _LoadStandardFont

LoadFontsBattleExtra::
	farjp _LoadFontsBattleExtra

LoadFontsExtra::
	farjp LoadFrame

ApplyTilemap::
; Tell VBlank to update BG Map
	ld a, 1
	ldh [hBGMapMode], a
	ld a, [wSpriteUpdatesEnabled]
	and a
	ld b, 3
	jr nz, SafeCopyTilemapAtOnce
	ld b, 1 << 3 | 3

; fallthrough
SafeCopyTilemapAtOnce::
; copies the tile&attr map at once
; without any tearing
; input:
; b: 0 = no palette copy
;    1 = copy raw palettes
;    2 = set palettes and copy
;    3 = use whatever was in hCGBPalUpdate
; bit 2: if set, clear hOAMUpdate
; bit 3: if set, only update tilemap
	farjp _SafeCopyTilemapAtOnce

CopyTilemapAtOnce::
	farjp _CopyTilemapAtOnce

CopyUsingHDMA::
; Returns z if we should copy with HDMA.
	; Is HDMA copy disabled globally?
	ldh a, [hDisableHDMACopy]
.fail
	and a
	ret nz

	; HDMA copy only works with source+dest being a multiple of 16.
	ld a, l
	or e
	and $f
	ret nz

	; HDMA copy only works from non-VRAM to VRAM.
	ld a, d
	call .IsInVRAM
	ret c ; also nz
	ld a, h
	call .IsInVRAM
	jr nc, .fail ; a is definitely nonzero (so and a+ret nz is correct)
	xor a
	ret

.IsInVRAM
	; Returns carry if a is between $80 and $9f.
	sub $80
	cp $20
	ret

PrepareHDMATransfer::
.wait_for_hdma
	ldh a, [rHDMA5]
	inc a
	jr nz, .wait_for_hdma

	ld a, d
	ldh [rHDMA1], a
	ld a, e
	ldh [rHDMA2], a
	ld a, h
	ldh [rHDMA3], a
	ld a, l
	ldh [rHDMA4], a
	ret

DecompressRequest2bpp::
; Decompress lz data from b:hl to scratch space at 6:d000, then copy c tiles to de.
	push de
	push bc
	call FarDecompressWRA6InB
	pop bc
	pop hl
	ld de, wDecompressScratch
	; fallthrough

Request2bppInWRA6::
	ldh a, [hROMBank]
	ld b, a
	call RunFunctionInWRA6

Get2bpp::
	ldh a, [rLCDC]
	bit 7, a ; lcd on?
	jr nz, Request2bpp

Copy2bpp::
	call CopyUsingHDMA
	jr nz, Copy2bpp_NoHDMA
	call StackCallInBankB

.Function:
	call PrepareHDMATransfer

.loop
	; Copy up to 10 tiles unless we're in rLY $8f.
	; In the latter case, if VBlank is enabled, DelayFrame.
	; Otherwise, continue anyway.
	ldh a, [rLY]
	cp $8f
	jr c, .not_yet_vblank
	ldh a, [rIE]
	bit VBLANK, a

	; If vblank interrupt is enabled, deliberately trigger it.
	call nz, DelayFrame
.not_yet_vblank
	ld a, c
	sub 10
	jr c, .final_copy
	ld c, a
	ld a, 9
	ldh [rHDMA5], a
	jr .loop

.final_copy
	ld a, c
	and a
	ret z
	dec a
	ldh [rHDMA5], a
	ret

Get2bpp_NoHDMA:
	ldh a, [rLCDC]
	bit 7, a ; lcd on?
	jr nz, Request2bpp_NoHDMA

Copy2bpp_NoHDMA::
; copy c 2bpp tiles from b:de to hl
	call StackCallInBankB

.Function:
	call WriteVCopyRegistersToHRAM
	ld b, c
	jmp _Serve2bppRequest

Request2bpp::
	call CopyUsingHDMA
	jr nz, Request2bpp_NoHDMA
	call StackCallInBankB

.Function:
	call PrepareHDMATransfer

	ld b, c
	ld hl, rSTAT

	; Wait until mode 2 so we don't end up badly timing the first iteration.
.busyloop
	ld a, [hl]
	and %11
	cp 2
	jr nz, .busyloop

	; If LCD interrupt is enabled, copy min 2 tiles per line. Otherwise, min 4.
	; After copying those 4, continue copying 2 lines until we leave mode0.
	ld d, 4
	ld c, LOW(rHDMA5)
	ld a, [rIE]
	bit LCD_STAT, a
	jr z, .loop
	ld d, 2
.loop
	; If we're too late into rLY, delay until after vblank.
	; TODO: continue this in vblank.
	ldh a, [rLY]
	cp $8e
	jr c, .not_yet_vblank
	ldh a, [rIE]
	bit VBLANK, a
	call nz, DelayFrame
.not_yet_vblank
	ld a, b
	sub d
	jr c, .final_copy
	ld e, a
	ld a, 3

.busyloop2
	bit 1, [hl]
	jr nz, .busyloop2
	ld [c], a

.loop2
	; Potential bonus copying on the same line.
	ld b, e
	ld a, e
	sub 2
	jr c, .loop
	ld e, a
	ld a, 1

.busyloop3
	; This is deliberate. If we're in mode 2-3, return to regular copying.
	bit 1, [hl]
	jr nz, .loop
	ld [c], a
	jr .loop2

.final_copy
	ld a, b
	and a
	ret z
	dec a
.busyloop4
	bit 1, [hl]
	jr nz, .busyloop4
	ld [c], a
	ret

Request2bpp_NoHDMA::
; Load 2bpp at b:de to occupy c tiles of hl.
	call StackCallInBankB

.Function:
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a

	call WriteVCopyRegistersToHRAM
	ldh a, [rLY]
	cp $88
	jr c, .handleLoop
; fallthrough to vblank copy handler if LY is too high
.loop
	ldh a, [hTilesPerCycle]
	sub $10
	ldh [hTilesPerCycle], a
	jr c, .copyRemainingTilesAndExit
	jr nz, .copySixteenTilesAndContinue
.copyRemainingTilesAndExit
	add $10
	ldh [hRequested2bpp], a
	xor a
	ldh [hTilesPerCycle], a
	call DelayFrame
	ldh a, [hRequested2bpp]
	and a
	jr z, .clearTileCountAndFinish
.addUncopiedTilesToCount
	ld b, a
	ldh a, [hTilesPerCycle]
	add b
	ldh [hTilesPerCycle], a
	xor a
	ldh [hRequested2bpp], a
	jr .handleLoop
.clearTileCountAndFinish
	xor a
	ldh [hTilesPerCycle], a
	jr .done
.copySixteenTilesAndContinue
	ld a, $10
	ldh [hRequested2bpp], a
	call DelayFrame
	ldh a, [hRequested2bpp]
	and a
	jr nz, .addUncopiedTilesToCount
.handleLoop
	call HBlankCopy2bpp
	jr c, .loop
.done

	pop af
	ldh [hBGMapMode], a
	ret

GetMaybeOpaque1bpp::
	ldh a, [rLCDC]
	bit 7, a
	jr nz, _Request1bpp
	jr _Copy1bpp

GetOpaque1bppSpaceTile::
	ld de, TextboxSpaceGFX
GetOpaque1bppFontTile::
; Two bytes in VRAM define eight pixels (2 bits/pixel)
; Bits are paired from the bytes, e.g. %ABCDEFGH %abcdefgh defines pixels
; %Aa, %Bb, %Cc, %Dd, %Ee, %Ff, %Gg, %Hh
; %00 = white, %11 = black, %10 = light, %01 = dark
	lb bc, BANK(FontTiles), 1
GetOpaque1bpp::
	ldh a, [rLCDC]
	bit 7, a ; lcd on?
	jr nz, RequestOpaque1bpp
CopyOpaque1bpp:
	ld a, 1
	ldh [hRequestOpaque1bpp], a
	jr _Copy1bpp

Get1bpp::
	ldh a, [rLCDC]
	bit 7, a ; lcd on?
	jr nz, Request1bpp
Copy1bpp::
	xor a
	ldh [hRequestOpaque1bpp], a
_Copy1bpp::
; copy c 1bpp tiles from b:de to hl
	call StackCallInBankB

.Function:
	call WriteVCopyRegistersToHRAM
	ld b, c
	jmp _Serve1bppRequest

RequestOpaque1bpp:
	ld a, 1
	ldh [hRequestOpaque1bpp], a
	jr _Request1bpp
Request1bpp::
	xor a
	ldh [hRequestOpaque1bpp], a
_Request1bpp:
; Load 1bpp at b:de to occupy c tiles of hl.
	call StackCallInBankB

.Function:
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a

	call WriteVCopyRegistersToHRAM
	ldh a, [rLY]
	cp $88
	jr c, .handleLoop
.loop
	ldh a, [hTilesPerCycle]
	sub 16
	ldh [hTilesPerCycle], a
	jr c, .copyRemainingTilesAndExit
	jr nz, .copySixteenTilesAndContinue
.copyRemainingTilesAndExit
	add 16
	ldh [hRequested1bpp], a
	xor a
	ldh [hTilesPerCycle], a
	call DelayFrame
	ldh a, [hRequested1bpp]
	and a
	jr z, .clearTileCountAndFinish
.addUncopiedTilesToCount
	ld b, a
	ldh a, [hTilesPerCycle]
	add b
	ldh [hTilesPerCycle], a
	xor a
	ldh [hRequested1bpp], a
	jr .handleLoop
.clearTileCountAndFinish
	xor a
	ldh [hTilesPerCycle], a
	jr .done
.copySixteenTilesAndContinue
	ld a, 16
	ldh [hRequested1bpp], a
	call DelayFrame
	ldh a, [hRequested1bpp]
	and a
	jr nz, .addUncopiedTilesToCount
.handleLoop
	call HBlankCopy1bpp
	jr c, .loop
.done
	pop af
	ldh [hBGMapMode], a
	ret

HBlankCopy1bpp:
	di
	ld [hSPBuffer], sp
	ld hl, hRequestedVTileDest
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a ; destination

	ld a, [hli] ; source
	ld h, [hl]
	ld l, a
	ld sp, hl ; set source to sp
	ld h, d ; exchange hl and de
	ld l, e
	jr .innerLoop
.outerLoop
	ldh a, [rLY]
	cp $88
	jr nc, ContinueHBlankCopy
.innerLoop
	pop bc
	pop de
	ldh a, [hRequestOpaque1bpp]
	dec a
	jr z, .waitNoHBlankOpaque
.waitNoHBlank
	ldh a, [rSTAT]
	and 3
	jr z, .waitNoHBlank
.waitHBlank
	ldh a, [rSTAT]
	and 3
	jr nz, .waitHBlank
; preloads r us
	ld a, c
	ld [hli], a
	ld [hli], a
	ld a, b
	ld [hli], a
	ld [hli], a
	ld a, e
	ld [hli], a
	ld [hli], a
	ld a, d
	ld [hli], a
	ld [hli], a
rept 2
	pop de
	ld a, e
	ld [hli], a
	ld [hli], a
	ld a, d
	ld [hli], a
	ld [hli], a
endr
	ldh a, [hTilesPerCycle]
	dec a
	ldh [hTilesPerCycle], a
	jr nz, .outerLoop
	jr DoneHBlankCopy

.waitNoHBlankOpaque
	ldh a, [rSTAT]
	and 3
	jr z, .waitNoHBlankOpaque
.waitHBlankOpaque
	ldh a, [rSTAT]
	and 3
	jr nz, .waitHBlankOpaque
; preloads r us
	ld a, $ff
	ld [hli], a
	ld a, c
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, b
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, e
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, d
	ld [hli], a
rept 2
	pop de
	ld a, $ff
	ld [hli], a
	ld a, e
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, d
	ld [hli], a
endr
	ldh a, [hTilesPerCycle]
	dec a
	ldh [hTilesPerCycle], a
	jr nz, .outerLoop
	jr DoneHBlankCopy

ContinueHBlankCopy:
	ld [hRequestedVTileSource], sp
	ld sp, hl
	ld [hRequestedVTileDest], sp
	scf
DoneHBlankCopy:
	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	reti

WriteVCopyRegistersToHRAM:
	ld a, e
	ldh [hRequestedVTileSource], a
	ld a, d
	ldh [hRequestedVTileSource + 1], a
	ld a, l
	ldh [hRequestedVTileDest], a
	ld a, h
	ldh [hRequestedVTileDest + 1], a
	ld a, c
	ldh [hTilesPerCycle], a
	ret

VRAMToVRAMCopy::
	lb bc, %11, LOW(rSTAT) ; predefine bitmask and rSTAT source for speed and size
	jr .waitNoHBlank2
.outerLoop2
	ldh a, [rLY]
	cp $88
	jr nc, ContinueHBlankCopy
.waitNoHBlank2
	ldh a, [c]
	and b
	jr z, .waitNoHBlank2
.waitHBlank2
	ldh a, [c]
	and b
	jr nz, .waitHBlank2
rept 8
	pop de
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
endr
	ld a, l
	and $f
	jr nz, .waitNoHBlank2
	ldh a, [hTilesPerCycle]
	dec a
	ldh [hTilesPerCycle], a
	jr nz, .outerLoop2
	jr DoneHBlankCopy
