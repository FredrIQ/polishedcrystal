	db  95,  80, 105, 100,  40,  70 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM ; item 1
	db MOOMOO_MILK ; item 2
	dn ALL_FEMALE, 3 ; gender, step cycles to hatch
	dn 6, 6 ; frontpic dimensions
	db THICK_FAT ; ability 1
	db SCRAPPY ; ability 2
	db SAP_SIPPER ; hidden ability
	db SLOW ; growth rate
	dn FIELD, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   0,   2,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, BULLDOZE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, SANDSTORM, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, WATER_PULSE, GIGA_IMPACT, THUNDER_WAVE, GYRO_BALL, SURF, STRENGTH, WHIRLPOOL, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, IRON_HEAD, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON, ZEN_HEADBUTT
	; end
