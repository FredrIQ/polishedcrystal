	newcharmap no_ngrams

; Control characters

	charmap "<START>",  $00
	charmap "<RAM>",    $01
	charmap "<WAIT>",   $02
	charmap "<ASM>",    $03
	charmap "<NUM>",    $04
	charmap "<EXIT>",   $05
	charmap "<SOUND>",  $06
	charmap "<DAY>",    $07
	charmap "<FAR>",    $08

	; n-grams: $09 - $52 (defined below)

	charmap "@",        $53
	charmap "¯",        $54
	charmap "<LNBRK>",  $55
	charmap "<NEXT>",   $56
	charmap "<LINE>",   $57
	charmap "<CONT>",   $58
	charmap "<PARA>",   $59
	charmap "<DONE>",   $5a
	charmap "<PROMPT>", $5b

	charmap "<TARGET>", $5c
	charmap "<USER>",   $5d
	charmap "<ENEMY>",  $5e

; Battle characters

BATTLEEXTRA_GFX_START EQU $5f

	charmap "<BALL>",   $5f
	charmap "<MALE>",   $60
	charmap "<FEMALE>", $61
	charmap "<STAR>",   $62

	charmap "<HP1>",    $63
	charmap "<HP2>",    $64
	charmap "<NOHP>",   $65
	; HP: $66 - $6c
	charmap "<FULLHP>", $6d
	charmap "<HPEND>",  $6e

	charmap "_",        $6f
	charmap "◢",        $70
	charmap "—",        $71
	charmap "◣",        $72

	charmap "<XP1>",    $73
	charmap "<XP2>",    $74
	charmap "<NOXP>",   $75
	; EXP: $76 - $7c
	charmap "<FULLXP>", $7d
	charmap "<XPEND>",  $7e

; Actual characters

; map tiles:

	charmap " ",        $7f

; typeface font:

	charmap "A",        $80
	charmap "B",        $81
	charmap "C",        $82
	charmap "D",        $83
	charmap "E",        $84
	charmap "F",        $85
	charmap "G",        $86
	charmap "H",        $87
	charmap "I",        $88
	charmap "J",        $89
	charmap "K",        $8a
	charmap "L",        $8b
	charmap "M",        $8c
	charmap "N",        $8d
	charmap "O",        $8e
	charmap "P",        $8f
	charmap "Q",        $90
	charmap "R",        $91
	charmap "S",        $92
	charmap "T",        $93
	charmap "U",        $94
	charmap "V",        $95
	charmap "W",        $96
	charmap "X",        $97
	charmap "Y",        $98
	charmap "Z",        $99

	charmap "(",        $9a
	charmap ")",        $9b
	charmap ".",        $9c
	charmap ",",        $9d
	charmap "?",        $9e
	charmap "!",        $9f

	charmap "a",        $a0
	charmap "b",        $a1
	charmap "c",        $a2
	charmap "d",        $a3
	charmap "e",        $a4
	charmap "f",        $a5
	charmap "g",        $a6
	charmap "h",        $a7
	charmap "i",        $a8
	charmap "j",        $a9
	charmap "k",        $aa
	charmap "l",        $ab
	charmap "m",        $ac
	charmap "n",        $ad
	charmap "o",        $ae
	charmap "p",        $af
	charmap "q",        $b0
	charmap "r",        $b1
	charmap "s",        $b2
	charmap "t",        $b3
	charmap "u",        $b4
	charmap "v",        $b5
	charmap "w",        $b6
	charmap "x",        $b7
	charmap "y",        $b8
	charmap "z",        $b9

	charmap "“",        $ba
	charmap "”",        $bb
	charmap "-",        $bc
	charmap ":",        $bd
	charmap "♂",        $be
	charmap "♀",        $bf

	charmap "'",        $c0
	charmap "'d",       $c1
	charmap "'l",       $c2
	charmap "'m",       $c3
	charmap "'r",       $c4
	charmap "'s",       $c5
	charmap "'t",       $c6
	charmap "'v",       $c7

	charmap "é",        $c8
	charmap "É",        $c9
	charmap "á",        $ca
	charmap "ê",        $cb
	charmap "í",        $cc
	charmap "ó",        $cd

	charmap "¿",        $ce
	charmap "¡",        $cf

	charmap "<PO>",     $d0
	charmap "<KE>",     $d1
	charmap "<PK>",     $d2
	charmap "<MN>",     $d3

	charmap "<ID>",     $d4
	charmap "№",        $d5
	charmap "<LV>",     $d6
	charmap "<BOLDP>",  $d7

	charmap "&",        $d8

	charmap "♪",        $d9
	charmap "♥",        $da

	charmap "×",        $db
	charmap "/",        $dc
	charmap "%",        $dd

	charmap "+",        $de
	charmap "<SHARP>",  $df

	charmap "0",        $e0
	charmap "1",        $e1
	charmap "2",        $e2
	charmap "3",        $e3
	charmap "4",        $e4
	charmap "5",        $e5
	charmap "6",        $e6
	charmap "7",        $e7
	charmap "8",        $e8
	charmap "9",        $e9

	charmap "¥",        $ea

	charmap "▲",        $eb
	charmap "▼",        $ec
	charmap "◀",        $ed
	charmap "▶",        $ee

; common font:
	charmap "▷",        $ef
	charmap "…",        $f0
	charmap "<PHONE>",  $f1
	charmap "<BLACK>",  $f2
	charmap "<NONO>",   $f3
	charmap "′",        $f4
	charmap "″",        $f5
	charmap "★",        $f6
	charmap "↑",        $f7
	charmap "↓",        $f8
	charmap "<UPDN>",   $f9

; frame:
	charmap "┌",        $fa
	charmap "─",        $fb
	charmap "┐",        $fc
	charmap "│",        $fd
	charmap "└",        $fe
	charmap "┘",        $ff


	newcharmap default, no_ngrams

NGRAMS_START EQU $09

	charmap "e ",       $09
	charmap " t",       $0a
	charmap "ou",       $0b
	charmap "in",       $0c
	charmap "th",       $0d
	charmap "he",       $0e
	charmap "t ",       $0f
	charmap "er",       $10
	charmap "on",       $11
	charmap "re",       $12
	charmap "s ",       $13
	charmap "at",       $14
	charmap "an",       $15
	charmap "to",       $16
	charmap "ha",       $17
	charmap "ng",       $18
	charmap "it",       $19
	charmap "is",       $1a
	charmap "ea",       $1b
	charmap "ve",       $1c
	charmap "ar",       $1d
	charmap "st",       $1e
	charmap "le",       $1f
	charmap "or",       $20
	charmap "te",       $21
	charmap "as",       $22
	charmap "yo",       $23
	charmap "y ",       $24
	charmap "r ",       $25
	charmap " b",       $26
	charmap "en",       $27
	charmap "me",       $28
	charmap "e t",      $29
	charmap ", ",       $2a
	charmap "es",       $2b
	charmap "e you",    $2c
	charmap "se",       $2d
	charmap "ne",       $2e
	charmap " h",       $2f
	charmap "I ",       $30
	charmap "our",      $31
	charmap "You",      $32
	charmap "nd",       $33
	charmap "ow",       $34
	charmap " c",       $35
	charmap " wa",      $36
	charmap "ome",      $37
	charmap "are",      $38
	charmap "The",      $39
	charmap "t's",      $3a
	charmap "ut",       $3b
	charmap "nt",       $3c
	charmap "the",      $3d
	charmap "you",      $3e
	charmap "ing",      $3f
	charmap "hat",      $40
	charmap "and",      $41
	charmap "for",      $42
	charmap "all",      $43
	charmap "here",     $44
	charmap "that",     $45
	charmap "have",     $46
	charmap "rain",     $47
	charmap "this",     $48
	charmap "ight",     $49
	charmap "with",     $4a
	charmap "ould",     $4b
	charmap "thing",    $4c
	charmap "attle",    $4d
	charmap "#",        $4e
	charmap "#mon",     $4f
	charmap "<PLAYER>", $50
	charmap "<RIVAL>",  $51
	charmap "<TRENDY>", $52

NGRAMS_END EQU $52

	; Used for mobile communication
	newcharmap ascii

	charmap "<NUL>",    $00
	charmap "<SOH>",    $01
	charmap "<STX>",    $02
	charmap "<ETX>",    $03
	charmap "<EOT>",    $04
	charmap "<ENQ>",    $05
	charmap "<ACK>",    $06
	charmap "<BEL>",    $07
	charmap "<BS>",     $08
	charmap "<TAB>",    $09
	charmap "<LF>",     $0a
	charmap "<VT>",     $0b
	charmap "<FF>",     $0c
	charmap "<CR>",     $0d
	charmap "<SO>",     $0e
	charmap "<SI>",     $0f
	charmap "<DLE>",    $10
	charmap "<DC1>",    $11
	charmap "<DC2>",    $12
	charmap "<DC3>",    $13
	charmap "<DC4>",    $14
	charmap "<NAK>",    $15
	charmap "<SYN>",    $16
	charmap "<ETB>",    $17
	charmap "<CAN>",    $18
	charmap "<EM>",     $19
	charmap "<SUB>",    $1a
	charmap "<ESC>",    $1b
	charmap "<FS>",     $1c
	charmap "<GS>",     $1d
	charmap "<RS>",     $1e
	charmap "<US>",     $1f
	charmap " ",        $20
	charmap "!",        $21
	charmap "<QUOTE>",  $22
	charmap "#",        $23
	charmap "$",        $24
	charmap "%",        $25
	charmap "&",        $26
	charmap "'",        $27
	charmap "(",        $28
	charmap ")",        $29
	charmap "*",        $2a
	charmap "+",        $2b
	charmap ",",        $2c
	charmap "-",        $2d
	charmap ".",        $2e
	charmap "/",        $2f
	charmap "0",        $30
	charmap "1",        $31
	charmap "2",        $32
	charmap "3",        $33
	charmap "4",        $34
	charmap "5",        $35
	charmap "6",        $36
	charmap "7",        $37
	charmap "8",        $38
	charmap "9",        $39
	charmap ":",        $3a
	charmap ";",        $3b
	charmap "<",        $3c
	charmap "=",        $3d
	charmap ">",        $3e
	charmap "?",        $3f
	charmap "@",        $40
	charmap "A",        $41
	charmap "B",        $42
	charmap "C",        $43
	charmap "D",        $44
	charmap "E",        $45
	charmap "F",        $46
	charmap "G",        $47
	charmap "H",        $48
	charmap "I",        $49
	charmap "J",        $4a
	charmap "K",        $4b
	charmap "L",        $4c
	charmap "M",        $4d
	charmap "N",        $4e
	charmap "O",        $4f
	charmap "P",        $50
	charmap "Q",        $51
	charmap "R",        $52
	charmap "S",        $53
	charmap "T",        $54
	charmap "U",        $55
	charmap "V",        $56
	charmap "W",        $57
	charmap "X",        $58
	charmap "Y",        $59
	charmap "Z",        $5a
	charmap "[",        $5b
	charmap "<BSLASH>", $5c
	charmap "]",        $5d
	charmap "^",        $5e
	charmap "_",        $5f
	charmap "`",        $60
	charmap "a",        $61
	charmap "b",        $62
	charmap "c",        $63
	charmap "d",        $64
	charmap "e",        $65
	charmap "f",        $66
	charmap "g",        $67
	charmap "h",        $68
	charmap "i",        $69
	charmap "j",        $6a
	charmap "k",        $6b
	charmap "l",        $6c
	charmap "m",        $6d
	charmap "n",        $6e
	charmap "o",        $6f
	charmap "p",        $70
	charmap "q",        $71
	charmap "r",        $72
	charmap "s",        $73
	charmap "t",        $74
	charmap "u",        $75
	charmap "v",        $76
	charmap "w",        $77
	charmap "x",        $78
	charmap "y",        $79
	charmap "z",        $7a

	setcharmap default

rawchar: MACRO
	setcharmap no_ngrams
	rept _NARG
		db \1
		shift
	endr
	setcharmap default
ENDM

asciichar: MACRO
	setcharmap ascii
	rept _NARG
		db \1
		shift
	endr
	setcharmap default
ENDM

asciistr: MACRO
	setcharmap ascii
	rept _NARG
		db \1
		shift
	endr
	; null terminator
	db 0
	setcharmap default
ENDM
