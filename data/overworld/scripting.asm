ScriptCommandTable:
	dw Script_scall                      ; 00
	dw Script_farscall                   ; 01
	dw Script_ptcall                     ; 02
	dw Script_jump                       ; 03
	dw Script_farjump                    ; 04
	dw Script_ptjump                     ; 05
	dw Script_ifequal                    ; 06
	dw Script_ifnotequal                 ; 07
	dw Script_iffalse                    ; 08
	dw Script_iftrue                     ; 09
	dw Script_ifgreater                  ; 0a
	dw Script_ifless                     ; 0b
	dw Script_jumpstd                    ; 0c
	dw Script_callstd                    ; 0d
	dw Script_callasm                    ; 0e
	dw Script_special                    ; 0f
	dw Script_ptcallasm                  ; 10
	dw Script_checkmapscene              ; 11
	dw Script_setmapscene                ; 12
	dw Script_checkscene                 ; 13
	dw Script_setscene                   ; 14
	dw Script_writebyte                  ; 15
	dw Script_addvar                     ; 16
	dw Script_random                     ; 17
	dw Script_copybytetovar              ; 18
	dw Script_copyvartobyte              ; 19
	dw Script_loadvar                    ; 1a
	dw Script_checkcode                  ; 1b
	dw Script_writevarcode               ; 1c
	dw Script_writecode                  ; 1d
	dw Script_giveitem                   ; 1e
	dw Script_takeitem                   ; 1f
	dw Script_checkitem                  ; 20
	dw Script_givemoney                  ; 21
	dw Script_takemoney                  ; 22
	dw Script_checkmoney                 ; 23
	dw Script_givecoins                  ; 24
	dw Script_takecoins                  ; 25
	dw Script_checkcoins                 ; 26
	dw Script_addcellnum                 ; 27
	dw Script_delcellnum                 ; 28
	dw Script_checkcellnum               ; 29
	dw Script_checktime                  ; 2a
	dw Script_checkpoke                  ; 2b
	dw Script_givepoke                   ; 2c
	dw Script_giveegg                    ; 2d
	dw Script_givepokeitem               ; 2e
	dw Script_checkpokeitem              ; 2f
	dw Script_checkevent                 ; 30
	dw Script_clearevent                 ; 31
	dw Script_setevent                   ; 32
	dw Script_checkflag                  ; 33
	dw Script_clearflag                  ; 34
	dw Script_setflag                    ; 35
	dw Script_wildon                     ; 36
	dw Script_wildoff                    ; 37
	dw Script_warpmod                    ; 38
	dw Script_blackoutmod                ; 39
	dw Script_warp                       ; 3a
	dw Script_readmoney                  ; 3b
	dw Script_readcoins                  ; 3c
	dw Script_RAM2MEM                    ; 3d
	dw Script_pokenamemem                ; 3e
	dw Script_itemtotext                 ; 3f
	dw Script_mapnametotext              ; 40
	dw Script_trainertotext              ; 41
	dw Script_stringtotext               ; 42
	dw Script_itemnotify                 ; 43
	dw Script_pocketisfull               ; 44
	dw Script_opentext                   ; 45
	dw Script_refreshscreen              ; 46
	dw Script_closetext                  ; 47
	dw Script_farwritetext               ; 48
	dw Script_writetext                  ; 49
	dw Script_repeattext                 ; 4a
	dw Script_yesorno                    ; 4b
	dw Script_loadmenu                   ; 4c
	dw Script_closewindow                ; 4d
	dw Script_jumptextfaceplayer         ; 4e
	dw Script_farjumptext                ; 4f
	dw Script_jumptext                   ; 50
	dw Script_waitbutton                 ; 51
	dw Script_buttonsound                ; 52
	dw Script_pokepic                    ; 53
	dw Script_closepokepic               ; 54
	dw Script__2dmenu                    ; 55
	dw Script_verticalmenu               ; 56
	dw Script_randomwildmon              ; 57
	dw Script_loadmemtrainer             ; 58
	dw Script_loadwildmon                ; 59
	dw Script_loadtrainer                ; 5a
	dw Script_startbattle                ; 5b
	dw Script_reloadmapafterbattle       ; 5c
	dw Script_catchtutorial              ; 5d
	dw Script_trainertext                ; 5e
	dw Script_trainerflagaction          ; 5f
	dw Script_winlosstext                ; 60
	dw Script_scripttalkafter            ; 61
	dw Script_end_if_just_battled        ; 62
	dw Script_check_just_battled         ; 63
	dw Script_setlasttalked              ; 64
	dw Script_applymovement              ; 65
	dw Script_applymovement2             ; 66
	dw Script_faceplayer                 ; 67
	dw Script_faceobject                 ; 68
	dw Script_variablesprite             ; 69
	dw Script_disappear                  ; 6a
	dw Script_appear                     ; 6b
	dw Script_follow                     ; 6c
	dw Script_stopfollow                 ; 6d
	dw Script_moveobject                 ; 6e
	dw Script_writepersonxy              ; 6f
	dw Script_loademote                  ; 70
	dw Script_showemote                  ; 71
	dw Script_turnobject                 ; 72
	dw Script_follownotexact             ; 73
	dw Script_earthquake                 ; 74
	dw Script_changemap                  ; 75
	dw Script_changeblock                ; 76
	dw Script_reloadmap                  ; 77
	dw Script_reloadmappart              ; 78
	dw Script_writecmdqueue              ; 79
	dw Script_delcmdqueue                ; 7a
	dw Script_playmusic                  ; 7b
	dw Script_encountermusic             ; 7c
	dw Script_musicfadeout               ; 7d
	dw Script_playmapmusic               ; 7e
	dw Script_dontrestartmapmusic        ; 7f
	dw Script_cry                        ; 80
	dw Script_playsound                  ; 81
	dw Script_waitsfx                    ; 82
	dw Script_warpsound                  ; 83
	dw Script_specialsound               ; 84
	dw Script_passtoengine               ; 85
	dw Script_newloadmap                 ; 86
	dw Script_pause                      ; 87
	dw Script_deactivatefacing           ; 88
	dw Script_priorityjump               ; 89
	dw Script_warpcheck                  ; 8a
	dw Script_ptpriorityjump             ; 8b
	dw Script_return                     ; 8c
	dw Script_end                        ; 8d
	dw Script_reloadandreturn            ; 8e
	dw Script_endall                     ; 8f
	dw Script_pokemart                   ; 90
	dw Script_elevator                   ; 91
	dw Script_trade                      ; 92
	dw Script_askforphonenumber          ; 93
	dw Script_phonecall                  ; 94
	dw Script_hangup                     ; 95
	dw Script_describedecoration         ; 96
	dw Script_fruittree                  ; 97
	dw Script_specialphonecall           ; 98
	dw Script_checkphonecall             ; 99
	dw Script_verbosegiveitem            ; 9a
	dw Script_verbosegiveitem2           ; 9b
	dw Script_swarm                      ; 9c
	dw Script_halloffame                 ; 9d
	dw Script_credits                    ; 9e
	dw Script_warpfacing                 ; 9f
	dw Script_battletowertext            ; a0
	dw Script_landmarktotext             ; a1
	dw Script_trainerclassname           ; a2
	dw Script_name                       ; a3
	dw Script_wait                       ; a4
	dw Script_check_save                 ; a5
	dw Script_count_seen_caught          ; a6
	dw Script_trainerpic                 ; a7
	dw Script_givetmhm                   ; a8
	dw Script_checktmhm                  ; a9
	dw Script_verbosegivetmhm            ; aa
	dw Script_tmhmnotify                 ; ab
	dw Script_tmhmtotext                 ; ac
	dw Script_checkdarkness              ; ad
	dw Script_checkunits                 ; ae
	dw Script_unowntypeface              ; af
	dw Script_restoretypeface            ; b0
	dw Script_jumpstashedtext            ; b1
	dw Script_jumpopenedtext             ; b2
	dw Script_iftrue_jumptext            ; b3
	dw Script_iffalse_jumptext           ; b4
	dw Script_iftrue_jumptextfaceplayer  ; b5
	dw Script_iffalse_jumptextfaceplayer ; b6
	dw Script_iftrue_jumpopenedtext      ; b7
	dw Script_iffalse_jumpopenedtext     ; b8
	dw Script_writethistext              ; b9
	dw Script_jumpthistext               ; ba
	dw Script_jumpthistextfaceplayer     ; bb
	dw Script_jumpthisopenedtext         ; bc
	dw Script_showtext                   ; bd
	dw Script_showtextfaceplayer         ; be
	dw Script_applyonemovement           ; bf
	dw Script_showcrytext                ; c0
	dw Script_endtext                    ; c1
	dw Script_waitendtext                ; c2
	dw Script_iftrue_endtext             ; c3
	dw Script_iffalse_endtext            ; c4
	dw Script_loadgrottomon              ; c5
	dw Script_giveapricorn               ; c6
	dw Script_paintingpic                ; c7
	dw Script_checkegg                   ; c8
	dw Script_givekeyitem                ; c9
	dw Script_checkkeyitem               ; ca
	dw Script_takekeyitem                ; cb
	dw Script_verbosegivekeyitem         ; cc
	dw Script_keyitemnotify              ; cd
