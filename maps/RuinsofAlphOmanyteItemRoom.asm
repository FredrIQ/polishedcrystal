RuinsofAlphOmanyteItemRoom_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

RuinsofAlphOmanyteItemRoom_MapEventHeader:

.Warps: db 4
	warp_def $9, $3, 5, RUINS_OF_ALPH_OMANYTE_CHAMBER
	warp_def $9, $4, 5, RUINS_OF_ALPH_OMANYTE_CHAMBER
	warp_def $1, $3, 1, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def $1, $4, 2, RUINS_OF_ALPH_OMANYTE_WORD_ROOM

.XYTriggers: db 0

.Signposts: db 2
	signpost 1, 2, SIGNPOST_READ, MapRuinsofAlphOmanyteItemRoomSignpost1Script
	signpost 1, 5, SIGNPOST_READ, MapRuinsofAlphOmanyteItemRoomSignpost1Script

.PersonEvents: db 4
	person_event SPRITE_BALL_CUT_FRUIT, 6, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, PEARL_STRING, 1, EVENT_PICKED_UP_PEARL_STRING_FROM_OMANYTE_ITEM_ROOM
	person_event SPRITE_BALL_CUT_FRUIT, 6, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, BIG_PEARL, 1, EVENT_PICKED_UP_BIG_PEARL_FROM_OMANYTE_ITEM_ROOM
	person_event SPRITE_BALL_CUT_FRUIT, 4, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, STARDUST, 1, EVENT_PICKED_UP_STARDUST_FROM_OMANYTE_ITEM_ROOM
	person_event SPRITE_BALL_CUT_FRUIT, 4, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, STAR_PIECE, 1, EVENT_PICKED_UP_STAR_PIECE_FROM_OMANYTE_ITEM_ROOM

MapRuinsofAlphOmanyteItemRoomSignpost1Script:
	jumptext UnknownText_0x59a37

UnknownText_0x59a37:
	text "It's a replica of"
	line "an ancient #-"
	cont "mon."
	done
