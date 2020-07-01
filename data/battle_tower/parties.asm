; Battle Tower Pokemon proposed by Salamandar, organized by data/pokemon/dex_order_new.asm
; Sets classification: (A) = Average, (G) = Good, (E) = Excellent

BattleTowerMons
BattleTowerPokemon1:
	; MEGANIUM type: Grass, Fairy
	; 80,  82, 100,  80,  83, 100
	; hp  atk  def  spd  sat  sdf
	db MEGANIUM, LEFTOVERS ;(A)
	db PETAL_DANCE, MOONBLAST, HIDDEN_POWER, CALM_MIND ; HP Rock
	db BTDVS_HP_ROCK
	db ABILITY_2 | BOLD, MALE ; Natural Cure, +Def -Atk

BattleTowerPokemon2:
	db MEGANIUM, BIG_ROOT ;(A)
	db GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	db PERFECT_DVS
	db ABILITY_2 | CALM, FEMALE ; Natural Cure, +SpDef -Atk

	; TYPHLOSION type: Fire, Ground
	; 78,  84,  78, 100, 109,  85
	; hp  atk  def  spd  sat  sdf
	db TYPHLOSION, CHOICE_SPECS ;(G)
	db FLAMETHROWER, EARTH_POWER, HIDDEN_POWER, FOCUS_BLAST
	db BTDVS_HP_GRASS
	db ABILITY_2 | TIMID, FEMALE ; Flame Body, +Speed -Atk

	; FERALIGATR type: Water, Dark
	; 85, 105, 100,  78,  79,  83
	; hp  atk  def  spd  sat  sdf
	db FERALIGATR, LIFE_ORB ;(E)
	db WATERFALL, CRUNCH, ICE_PUNCH, DRAGON_DANCE
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, MALE ; Sheer Force, +Speed -SpAtk

	; PIDGEOT type: Normal, Flying
	; 93,  81,  75, 101,  90,  70
	; hp  atk  def  spd  sat  sdf
	db PIDGEOT, LIFE_ORB ;(A)
	db HURRICANE, FOCUS_BLAST, ROOST, U_TURN
	db PERFECT_DVS
	db HIDDEN_ABILITY | TIMID, MALE ; No Guard, +Speed -Atk

	; NOCTOWL type: Ghost, Flying
	; 100, 50, 50,  70,   96,  96
	; hp  atk  def  spd  sat  sdf
	db NOCTOWL, LEFTOVERS ;(A)
	db AIR_SLASH, SHADOW_BALL, ROOST, TOXIC
	db PERFECT_DVS
	db ABILITY_1 | CALM, MALE ; Insomnia, +SpDef -Atk

	; RATICATE => terrible
	; FURRET => terrible

	; RAICHU(alola) type: Electric, Psychic
	; 60, 95,  50, 121, 105,  85
	; hp  atk  def  spd  sat  sdf
	db RAICHU, LIFE_ORB ;(E)
	db THUNDERBOLT, PSYCHIC_M, SURF, NASTY_PLOT
	db PERFECT_DVS
	db ABILITY_1 | TIMID, MALE | ALOLAN_FORM ; Static, +Speed -Atk

	; BUTTERFREE type: Bug, Psychic
	; 60,  45, 50,  80,  110, 110
	; hp  atk  def  spd  sat  sdf
	db BUTTERFREE, LIFE_ORB ;(A)
	db BUG_BUZZ, PSYCHIC_M, HIDDEN_POWER, SLEEP_POWDER ; HP Ground
	db BTDVS_HP_GROUND
	db HIDDEN_ABILITY | MODEST, FEMALE ; Tinted Lens, +SpAtk -Atk

	; BEEDRILL type: Bug, Poison
	; 65,  100,  40, 115, 45,  90
	; hp  atk  def  spd  sat  sdf
	db BEEDRILL, CHOICE_BAND ;(A)
	db U_TURN, POISON_JAB, KNOCK_OFF, OUTRAGE
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, MALE ; Adaptability, +Speed -SpA

	; LEDIAN => Bug, Fighting  Atk+60, SpAtk-20
	; ARIADOS => Bug, Poison   Speed+40

	; GOLEM type: Rock, Ground
	; 80, 120, 130,  45,  55,  65
	; hp  atk  def  spd  sat  sdf
	db GOLEM, CUSTAP_BERRY ;(A)
	db EARTHQUAKE, STONE_EDGE, SUCKER_PUNCH, EXPLOSION
	db PERFECT_DVS
	db ABILITY_2 | ADAMANT, MALE ; Sturdy, +Atk -SpAtk

	; GOLEM(alola)  type: Rock, Electric
	; 80, 120, 130,  45,  55,  65
	; hp  atk  def  spd  sat  sdf
	db GOLEM, AIR_BALLOON ;(A)
	db DOUBLE_EDGE, STONE_EDGE, EARTHQUAKE, EXPLOSION ; Double Edge is Electric
	db PERFECT_DVS
	db HIDDEN_ABILITY | ADAMANT, FEMALE | ALOLAN_FORM ; Galvanize, +Atk -SpAtk

	; CROBAT type: Poison, Flying
	; 85,  90,  80, 130,  70,  80
	; hp  atk  def  spd  sat  sdf
	db CROBAT, BLACK_SLUDGE ;(A)
	db BRAVE_BIRD, POISON_JAB, SUPER_FANG , CONFUSE_RAY
	db PERFECT_DVS
	db HIDDEN_ABILITY | ADAMANT, MALE ; Infiltrator, +Atk -SpAtk

	; CLEFABLE type: Fairy
	; 95,  70,  73,  60,  95,  90
	; hp  atk  def  spd  sat  sdf
	db CLEFABLE, LIFE_ORB ;(E)
	db MOONBLAST, FLAMETHROWER, FRESH_SNACK, CALM_MIND
	db PERFECT_DVS
	db ABILITY_2 | BOLD, FEMALE ; Magic Guard, +Def -Atk

	; WIGGLYTUFF => Normal, Fairy  Def+10, SpDef+15, Soundproof

	; TOGEKISS type: Fairy, Flying
	; 85,  50,  95,  80, 120, 115
	; hp  atk  def  spd  sat  sdf
	db TOGEKISS, LEFTOVERS ;(G)
	db AIR_SLASH, AURA_SPHERE, ROOST, THUNDER_WAVE
	db PERFECT_DVS
	db ABILITY_2 | BOLD, MALE ; Serene Grace, +Def -Atk

	db TOGEKISS, CHOICE_SCARF ;(G)
	db AIR_SLASH, FIRE_BLAST, AURA_SPHERE, TRICK
	db PERFECT_DVS
	db ABILITY_2 | TIMID, FEMALE ; Serene Grace, +Speed -Atk

	; SANDSLASH(alola) type: Ice, Steel
	; 75, 100, 120,  65,  25,  65
	; hp  atk  def  spd  sat  sdf
	db SANDSLASH, LIFE_ORB ;(A)
	db ICICLE_CRASH, IRON_HEAD, EARTHQUAKE, HAIL
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, FEMALE | ALOLAN_FORM ; Slush Rush, +Speed -SpAtk

	; ARBOK => bad
	; DUNSPARCE => Normal, Ground  Hp+5, Atk+10

	; AMPHAROS type: Electric, Dragon
	; 95,  75,  90,  65, 125,  95
	; hp  atk  def  spd  sat  sdf
	db AMPHAROS, ASSAULT_VEST ;(A)
	db THUNDERBOLT, DRAGON_PULSE, FOCUS_BLAST, HIDDEN_POWER ; HP Grass
	db BTDVS_HP_GRASS
	db HIDDEN_ABILITY | MODEST, MALE ; Mold Breaker, +SpAtk -Atk

	; QUAGSIRE type: Water, Ground
	; 95,  95,  95,  35,  65,  65
	; hp  atk  def  spd  sat  sdf
	db QUAGSIRE, LEFTOVERS ;(A)
	db SCALD, EARTHQUAKE, RECOVER, TOXIC
	db PERFECT_DVS
	db HIDDEN_ABILITY | RELAXED, MALE ; Unaware, +Def -Speed

	; GENGAR type: Ghost, Poison
	; 60,  65,  60, 110, 130,  75
	; hp  atk  def  spd  sat  sdf
	db GENGAR, LIFE_ORB ;(E)
	db SHADOW_BALL, SLUDGE_BOMB, THUNDERBOLT, NASTY_PLOT
	db PERFECT_DVS
	db ABILITY_2 | TIMID, MALE ; Levitate, +Speed -Atk

	db GENGAR, BLACK_SLUDGE ;(G)
	db HEX, SLUDGE_BOMB, DESTINY_BOND, WILL_O_WISP
	db PERFECT_DVS
	db HIDDEN_ABILITY | TIMID, FEMALE ; Shadow Tag, +Speed -Atk

	; WOBBUFFET	type: Psychic
	; 190,  33,  58,  33,  33,  58
	; hp  atk  def  spd  sat  sdf
	db WOBBUFFET, LEFTOVERS ;(E)
	db COUNTER, MIRROR_COAT, RECOVER, ENCORE
	db PERFECT_DVS
	db ABILITY_1 | BOLD, FEMALE ; Shadow Tag, +Def -Atk

	; STEELIX type: Steel, Ground
	; 75,  90, 200,  30,  55,  65
	; hp  atk  def  spd  sat  sdf
	db STEELIX, LEFTOVERS ;(A)
	db GYRO_BALL, EARTHQUAKE, STONE_EDGE, CURSE
	db $ff, $f0, $ff ; Minimize speed for Gyro Ball (DV too?)
	db ABILITY_2 | BRAVE, MALE ; Sturdy, +Atk -Speed

	; VICTREEBEL type: Grass, Poison
	; 80, 115,  65,  70, 110,  70
	; hp  atk  def  spd  sat  sdf
	db VICTREEBEL, FIGY_BERRY ;(A)
	db POWER_WHIP, POISON_JAB, KNOCK_OFF, SWORDS_DANCE
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, MALE ; Gluttony, +Speed -SpAtk

	; PARASECT type: Bug, Grass
	; 60, 115, 100,  30,  60,  80
	; hp  atk  def  spd  sat  sdf
	db PARASECT, LEFTOVERS ;(A)
	db LEECH_LIFE, SEED_BOMB, KNOCK_OFF, SPORE
	db PERFECT_DVS
	db ABILITY_2 | IMPISH, FEMALE ; Dry Skin, +Def -SpAtk

	; POLIWRATH type: Water, Fighting
	; 90,  95, 100,  70,  70,  90
	; hp  atk  def  spd  sat  sdf
	db POLIWRATH, LEFTOVERS ;(A)
	db WATERFALL, CLOSE_COMBAT, ICE_PUNCH, BULK_UP
	db PERFECT_DVS
	db ABILITY_1 | IMPISH, MALE ; Water Absorb +Def -SpAtk

	db POLIWRATH, SITRUS_BERRY ;(A)
	db AQUA_JET, MACH_PUNCH, HYPNOSIS, BELLY_DRUM
	db PERFECT_DVS
	db ABILITY_1 | ADAMANT, FEMALE ; Water Absorb +Atk -SpAtk

	; POLITOED type: Water, Grass
	; 90,  75,  80,  80,  90, 100
	; hp  atk  def  spd  sat  sdf
	db POLITOED, LEFTOVERS ;(A)
	db SCALD, GIGA_DRAIN, ICE_BEAM, PERISH_SONG
	db PERFECT_DVS
	db ABILITY_1 | MODEST, FEMALE

	; GYARADOS  type: Water, Flying
	; 95, 125,  79,  81,  60, 100
	; hp  atk  def  spd  sat  sdf
	db GYARADOS, LIFE_ORB ;(E)
	db WATERFALL, FLY, EARTHQUAKE, DRAGON_DANCE
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, MALE | GYARADOS_RED_FORM ; Moxie, +Speed -SpAt

	db GYARADOS, LEFTOVERS ;(G)
	db WATERFALL, STONE_EDGE, POWER_WHIP, THUNDER_WAVE
	db PERFECT_DVS
	db ABILITY_1 | ADAMANT, FEMALE ; Intimidate, +Atk -SpA

	; SLOWBRO type: Water, Psychic
	; 95,  75, 120,  30, 100,  80
	; hp  atk  def  spd  sat  sdf
	db SLOWBRO, LEFTOVERS ;(E)
	db SCALD, ICE_BEAM, RECOVER, TOXIC
	db PERFECT_DVS
	db HIDDEN_ABILITY | BOLD, MALE ; Regenerator, +Def -Atk

	; SLOWKING type: Water, Psychic
	; 95,  75,  80,  30, 100, 120
	; hp  atk  def  spd  sat  sdf
	db SLOWKING, LEFTOVERS ;(E)
	db SCALD, ICE_BEAM, RECOVER, TOXIC
	db PERFECT_DVS
	db HIDDEN_ABILITY | CALM, FEMALE ; Regenerator, +SpDef -Atk

	; VILEPLUME type: Grass, Poison
	; 75,  80,  85,  50, 110, 100
	; hp  atk  def  spd  sat  sdf
	db VILEPLUME, BLACK_SLUDGE ;(A)
	db GIGA_DRAIN, SLUDGE_BOMB, HEALINGLIGHT, SLEEP_POWDER
	db PERFECT_DVS
	db HIDDEN_ABILITY | BOLD, MALE ; Efzfect Spore, +Def -Atk

	db VILEPLUME, BIG_ROOT ;(A)
	db GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	db PERFECT_DVS
	db HIDDEN_ABILITY | CALM, FEMALE ; Effect Spore, +SpDef -Atk

	; BELLOSSOM type: Grass, Fairy
	; 75,  80,  95,  50, 100, 110
	; hp  atk  def  spd  sat  sdf
	db BELLOSSOM, LEFTOVERS ;(A)
	db PETAL_DANCE, MOONBLAST, HIDDEN_POWER, SLEEP_POWDER ; HP Rock
	db BTDVS_HP_ROCK
	db HIDDEN_ABILITY | BOLD, MALE ; Own Tempo, +Def -Atk

	db BELLOSSOM, LIFE_ORB ;(A)
	db SOLAR_BEAM, HIDDEN_POWER, HEALINGLIGHT, SUNNY_DAY ; HP Fire
	db BTDVS_HP_FIRE
	db ABILITY_1 | MODEST, FEMALE ; Chlorophyll, +SpAtk

	; HYPNO type Psychic
	; 85,  73,  70,  67,  73, 115
	; hp  atk  def  spd  sat  sdf
	db HYPNO, SITRUS_BERRY ;(A)
	db ZEN_HEADBUTT, DRAIN_PUNCH, BELLY_DRUM, HYPNOSIS
	db PERFECT_DVS
	db ABILITY_1 | JOLLY, MALE ; Insomia, +Speed -SpAtk

	; ALAKAZAM type: Psychic
	; 55,  50,  45, 120, 135,  95
	; hp  atk  def  spd  sat  sdf
	db ALAKAZAM, LIFE_ORB ;(E)
	db PSYCHIC_M, FOCUS_BLAST, SHADOW_BALL, HIDDEN_POWER ; HP Ice
	db BTDVS_HP_ICE
	db HIDDEN_ABILITY | TIMID, MALE ; Magic Guard, +Speed -Atk

	; SCIZOR type: Bug, Steel
	; 70, 130, 100,  65,  55,  80
	; hp   atk  def  spd  sat  sdf
	db SCIZOR, CHOICE_BAND ;(E)
	db BULLET_PUNCH, U_TURN, CLOSE_COMBAT, PURSUIT
	db PERFECT_DVS
	db ABILITY_2 | ADAMANT, MALE ; Technician, +Atk -SpAtk

	db SCIZOR, LIFE_ORB ;(G)
	db BULLET_PUNCH, CLOSE_COMBAT, ROOST, SWORDS_DANCE
	db PERFECT_DVS
	db ABILITY_2 | ADAMANT, MALE ; Technician, +Atk -SpAtk

	; DUGTRIO type: Ground
	; 35, 100,  50, 120,  50,  70
	; hp   atk  def  spd  sat  sdf
	db DUGTRIO, CHOICE_BAND ;(A)
	db EARTHQUAKE, STONE_EDGE, SUCKER_PUNCH, CUT
	db PERFECT_DVS
	db ABILITY_2 | JOLLY, MALE ; Arena Trap, +Speed -Sp.Atk

	; DUGTRIO(alola) type: Ground, Steel
	; 35, 100,  60, 110,  50,  70
	; hp   atk  def  spd  sat  sdf
	db DUGTRIO, LEFTOVERS ;(A)
	db EARTHQUAKE, IRON_HEAD, STONE_EDGE, SANDSTORM
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, MALE | ALOLAN_FORM ; Sand Force, +Speed -Sp.Atk

	; MACHAMP type: Fighting
	; 90, 130,  80,  55,  65,  85
	; hp   atk  def  spd  sat  sdf
	db MACHAMP, ASSAULT_VEST ;(A)
	db DYNAMICPUNCH, KNOCK_OFF, BULLET_PUNCH, ICE_PUNCH
	db PERFECT_DVS
	db ABILITY_2 | ADAMANT, MALE ; No Guard, +Atk -SpAtk

	db MACHAMP, FLAME_ORB ;(A)
	db CLOSE_COMBAT, KNOCK_OFF, BULLET_PUNCH, FACADE
	db PERFECT_DVS
	db ABILITY_1 | ADAMANT, FEMALE ; Guts, +Atk -SpAtk

	; SYLVEON type: Fairy
	; 95,  65,  65,  60, 110, 130
	; hp   atk  def  spd  sat  sdf
	db SYLVEON, CHOICE_SPECS ;(A)
	db HYPER_VOICE, SHADOW_BALL, HIDDEN_POWER, EARTH_POWER ; HP Fire
	db BTDVS_HP_FIRE
	db HIDDEN_ABILITY | CALM, FEMALE ; Pixelate, +SpDef -Atk

	; URSARING type: Normal
	; 90, 130,  75,  55,  75,  75
	; hp   atk  def  spd  sat  sdf
	db URSARING, FLAME_ORB ;(A)
	db FACADE, EARTHQUAKE, CRUNCH, SWORDS_DANCE
	db PERFECT_DVS
	db ABILITY_1 | ADAMANT, MALE ; Guts, +Atk -SpAtk

	db URSARING, TOXIC_ORB ;(A)
	db FACADE, CLOSE_COMBAT, CRUNCH, SWORDS_DANCE
	db PERFECT_DVS
	db ABILITY_2 | JOLLY, FEMALE ; Quick Feet, +Speed -SpAtk

	; KANGASKHAN type: Normal
	; 105,  95,  80,  90,  40,  80
	; hp   atk  def  spd  sat  sdf
	db KANGASKHAN, KINGS_ROCK ;(E)
	db BODY_SLAM, SEISMIC_TOSS, EARTHQUAKE, SUCKER_PUNCH
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, FEMALE ; Parental Bond, +Speed -SpAtk

	; VENUSAUR type: Grass, Poison
	; 80,  82,  83,  80, 100, 100
	; hp  atk  def  spd  sat  sdf
	db VENUSAUR, LIFE_ORB ;(G)
	db GIGA_DRAIN, SLUDGE_BOMB, HIDDEN_POWER, HEALINGLIGHT
	db BTDVS_HP_FIRE
	db HIDDEN_ABILITY | MODEST, MALE ; Thick Fat, +SpAtk -Atk

	db VENUSAUR, BIG_ROOT ;(A)
	db GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	db PERFECT_DVS
	db HIDDEN_ABILITY | CALM, FEMALE ; Thick Fat, +SpDef -Atk

	db VENUSAUR, BLACK_SLUDGE ;(A)
	db POWER_WHIP, EARTHQUAKE, SLUDGE_BOMB, SLEEP_POWDER
	db PERFECT_DVS
	db HIDDEN_ABILITY | BRAVE, MALE ; Thick Fat, +Atk -Speed

	; CHARIZARD type: Fire, Dragon
	; 78,  94,  78, 100,  99,  85
	; hp  atk  def  spd  sat  sdf
	db CHARIZARD, LIFE_ORB ;(G)
	db FLARE_BLITZ, DRAGON_CLAW, ROOST, DRAGON_DANCE
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, MALE ; Tough Claws, +Speed -SpAtk

	db CHARIZARD, CHOICE_SPECS ;(G)
	db FIRE_BLAST, DRAGON_PULSE, HIDDEN_POWER, FOCUS_BLAST ; HP Grass
	db BTDVS_HP_GRASS
	db ABILITY_1 | TIMID, FEMALE ; Blaze, +Speed -Atk

	; BLASTOISE type: Water, Steel
	; 79,  83, 100,  78,  85, 105
	; hp  atk  def  spd  sat  sdf
	db BLASTOISE, WHITE_HERB ;(G)
	db WATERFALL, IRON_HEAD, CLOSE_COMBAT, SHELL_SMASH
	db PERFECT_DVS
	db ABILITY_1 | CAREFUL, MALE ; Torrent, +SpDef -SpAtk

	db BLASTOISE, CHOICE_SPECS ;(A)
	db WATER_PULSE, FLASH_CANNON, DARK_PULSE, AURA_SPHERE
	db PERFECT_DVS
	db HIDDEN_ABILITY | TIMID, FEMALE ; Mega Launcher, +Speed -SpAtk

	db BLASTOISE, LEFTOVERS ;(A)
	db SCALD, ICE_BEAM, REST, SLEEP_TALK
	db PERFECT_DVS
	db ABILITY_1 | BOLD, MALE ; Torrent, +Def -Atk

	; ARTICUNO type: Ice, Flying
	; 90,  85, 100,  85,  95, 125
	; hp  atk  def  spd  sat  sdf
	db ARTICUNO, ICY_ROCK ;(G)
	db BLIZZARD, AEROBLAST, ROOST, ROAR
	db PERFECT_DVS
	db ABILITY_2 | CALM, MALE ; Snow Warning, +SpDef -Atk

	; ZAPDOS type: Electric, Flying
	; 90,  90,  85, 100, 125,  90
	; hp  atk  def  spd  sat  sdf
	db ZAPDOS, DAMP_ROCK ;(E)
	db THUNDER, HURRICANE, ROOST, TOXIC
	db PERFECT_DVS
	db ABILITY_2 | MODEST, MALE ; Drizzle, +SpAtk -Atk

	db ZAPDOS, LEFTOVERS ;(G)
	db THUNDERBOLT, SUBSTITUTE, ROOST, TOXIC
	db PERFECT_DVS
	db ABILITY_1 | TIMID, MALE ; Pressure, +Speed -Atk

	db ZAPDOS, LIFE_ORB ;(G)
	db THUNDERBOLT, HIDDEN_POWER, BRAVE_BIRD, ROOST ; HP Grass
	db BTDVS_HP_GRASS
	db HIDDEN_ABILITY | MILD, MALE ; Static, +SpAtk -Def

	; MOLTRES type: Fire, Flying
	; 90, 100,  90,  90, 125,  85
	; hp  atk  def  spd  sat  sdf
	db MOLTRES, HEAT_ROCK ;(G)
	db FLAMETHROWER, SOLAR_BEAM, ROOST, WILL_O_WISP
	db PERFECT_DVS
	db ABILITY_2 | MODEST, MALE ; Drought, +SpAtk -Atk

	; RAIKOU type: Electric
	; 90,  85,  75, 115, 115, 100
	; hp  atk  def  spd  sat  sdf
	db RAIKOU, CHOICE_SPECS ;(G)
	db THUNDERBOLT, VOLT_SWITCH, HIDDEN_POWER, SHADOW_BALL ; HP Ice
	db BTDVS_HP_ICE
	db HIDDEN_ABILITY | TIMID, MALE ; Volt Absorb, +Speed -Atk

	; ENTEI TODO

	; SUICUNE type: Water
	; 100,  75, 115,  85,  90, 115
	; hp  atk  def  spd  sat  sdf
	db SUICUNE, LEFTOVERS ;(G)
	db SCALD, SLEEP_TALK, REST, CALM_MIND
	db PERFECT_DVS
	db HIDDEN_ABILITY | BOLD, MALE ; Water Absorb, +Def -Atk

	; DRAGONITE  type: Dragon, Flying
	; 91, 134,  95,  80, 100, 100
	; hp  atk  def  spd  sat  sdf
	db DRAGONITE, CHOICE_BAND ;(E)
	db OUTRAGE, FIRE_PUNCH, EARTHQUAKE, EXTREMESPEED
	db PERFECT_DVS
	db HIDDEN_ABILITY | ADAMANT, MALE ; Multiscale, +Atk -SpAtk

	db DRAGONITE, LUM_BERRY ;(E)
	db OUTRAGE, FLY, ROOST, DRAGON_DANCE ; Substitue or Ddance
	db PERFECT_DVS
	db HIDDEN_ABILITY | ADAMANT, FEMALE ; Multiscale, +Atk -SpAtk

	db DRAGONITE, LEFTOVERS ;(G)
	db HURRICANE, THUNDER, WATERFALL, RAIN_DANCE
	db PERFECT_DVS
	db HIDDEN_ABILITY | MILD, MALE ; Multiscale, +SpAtk -Def

	db DRAGONITE, WEAK_POLICY ;(G)
	db DRAGON_CLAW, IRON_HEAD, FIRE_PUNCH, DRAGON_DANCE
	db PERFECT_DVS
	db HIDDEN_ABILITY | JOLLY, FEMALE ; Multiscale, +Speed -SpAtk

	; TYRANITAR TODO

	; LUGIA  => Uber
	; HO_OH  => Uber
	; MEWTWO => Uber
	; MEW    => Uber
	; CELEBI => Uber
	db $ff
