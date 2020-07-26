	db  90,  92,  87,  76,  75,  85 ; 505 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND
	db 45 ; catch rate
	db 194 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn ALL_FEMALE, 3 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db POISON_POINT ; ability 1
	db RIVALRY ; ability 2
	db SHEER_FORCE ; hidden ability
	db MEDIUM_SLOW ; growth rate
	dn MONSTER, FIELD ; egg groups

	; ev_yield
	ev_yield   3,   0,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, SANDSTORM, FIRE_BLAST, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, DRAGON_PULSE, WATER_PULSE, SHADOW_CLAW, POISON_JAB, AVALANCHE, GIGA_IMPACT, STONE_EDGE, CUT, SURF, STRENGTH, WHIRLPOOL, AQUA_TAIL, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, SEISMIC_TOSS, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH
	; end
