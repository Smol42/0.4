/obj/item/storage/belt/rogue
	name = ""
	desc = ""
	icon = 'icons/roguetown/clothing/belts.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/belts.dmi'
	icon_state = ""
	item_state = ""
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb = list("whips", "lashes")
	max_integrity = 300
	equip_sound = 'sound/blank.ogg'
	content_overlays = FALSE
	bloody_icon_state = "bodyblood"
	sewrepair = TRUE
	fiber_salvage = TRUE
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured
	var/datum/wound/artery/artery_wound

	component_type = /datum/component/storage/concrete/roguetown/belt

/obj/item/storage/belt/rogue/attack_right(mob/user)
	var/datum/component/storage/CP = GetComponent(/datum/component/storage)
	if(CP)
		CP.rmb_show(user)
		return TRUE
	..()

/obj/item/storage/belt/rogue/leather
	name = "пояс"
	desc = "Кожаный пояс для подвязки инструментов и простых вещиц."
	icon_state = "leather"
	item_state = "leather"
	equip_sound = 'sound/blank.ogg'

/obj/item/storage/belt/rogue/leather/dropped(mob/living/carbon/human/user)
	..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		var/list/things = STR.contents()
		for(var/obj/item/I in things)
			STR.remove_from_storage(I, get_turf(src))

/obj/item/storage/belt/rogue/leather/plaquegold
	name = "пояс с табличкой"
	desc = "Пояс с пришитой посередине золотой пластинкой."
	icon_state = "goldplaque"
	sellprice = 50
	sewrepair = FALSE
	smeltresult = /obj/item/ingot/gold
	anvilrepair = /datum/skill/craft/blacksmithing

/obj/item/storage/belt/rogue/leather/shalal
	name = "заморский пояс"
	icon_state = "shalal"
	sellprice = 5

	component_type = /datum/component/storage/concrete/roguetown/belt/cloth

/obj/item/storage/belt/rogue/leather/shalalz
	name = "зибантийский пояс"
	icon_state = "shalal_z"
	sellprice = 5
	
	component_type = /datum/component/storage/concrete/roguetown/belt/cloth

/obj/item/storage/belt/rogue/leather/black
	name = "черный пояс"
	icon_state = "blackbelt"
	sellprice = 10

/obj/item/storage/belt/rogue/leather/plaquesilver
	name = "пояс с табличкой"
	desc = "Пояс с пришитой посередине серебрянной пластинкой."
	icon_state = "silverplaque"
	sellprice = 30
	sewrepair = FALSE
	smeltresult = /obj/item/ingot/silver
	anvilrepair = /datum/skill/craft/blacksmithing

/obj/item/storage/belt/rogue/leather/steel
	name = "стальной пояс"
	desc = "Пояс со стальными пластинами, пришитыми по всей его длине."
	icon_state = "steelplaque"
	sellprice = 30
	sewrepair = FALSE
	smeltresult = /obj/item/ingot/steel
	anvilrepair = /datum/skill/craft/blacksmithing

/obj/item/storage/belt/rogue/leather/rope
	name = "веревочный пояс"
	desc = "Простой поясок из куска длинной веревки."
	icon_state = "rope"
	item_state = "rope"
	color = "#b9a286"
	salvage_result = /obj/item/rope

	component_type = /datum/component/storage/concrete/roguetown/belt/cloth

/obj/item/storage/belt/rogue/leather/cloth
	name = "тканевый пояс"
	desc = "Простой поясок из полосы ткани."
	icon_state = "cloth"
	salvage_result = /obj/item/natural/cloth

	component_type = /datum/component/storage/concrete/roguetown/belt/cloth

/obj/item/storage/belt/rogue/leather/cloth/lady
	color = "#575160"

/obj/item/storage/belt/rogue/leather/cloth/bandit
	color = "#ff0000"

/obj/item/storage/belt/rogue/pouch
	name = "кошель"
	desc = "Обычно в него кладут монеты."
	icon = 'icons/roguetown/clothing/storage.dmi'
	mob_overlay_icon = null
	icon_state = "pouch"
	item_state = "pouch"
	lefthand_file = 'icons/mob/inhands/equipment/belt_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/belt_righthand.dmi'
	slot_flags = ITEM_SLOT_HIP|ITEM_SLOT_NECK
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb = list("whips", "lashes")
	max_integrity = 300
	equip_sound = 'sound/blank.ogg'
	content_overlays = FALSE
	bloody_icon_state = "bodyblood"
	fiber_salvage = FALSE

	grid_height = 64
	grid_width = 32

	component_type = /datum/component/storage/concrete/roguetown/coin_pouch

/obj/item/storage/belt/rogue/pouch/coins/mid/Initialize()
	. = ..()
	var/obj/item/roguecoin/silver/pile/H = new(loc)
	if(istype(H))
		if(!SEND_SIGNAL(src, COMSIG_TRY_STORAGE_INSERT, H, null, TRUE, TRUE))
			qdel(H)
	var/obj/item/roguecoin/copper/pile/C = new(loc)
	if(istype(C))
		if(!SEND_SIGNAL(src, COMSIG_TRY_STORAGE_INSERT, C, null, TRUE, TRUE))
			qdel(C)

/obj/item/storage/belt/rogue/pouch/coins/poor/Initialize()
	. = ..()
	var/obj/item/roguecoin/copper/pile/H = new(loc)
	if(istype(H))
		if(!SEND_SIGNAL(src, COMSIG_TRY_STORAGE_INSERT, H, null, TRUE, TRUE))
			qdel(H)
	if(prob(50))
		H = new(loc)
		if(istype(H))
			if(!SEND_SIGNAL(src, COMSIG_TRY_STORAGE_INSERT, H, null, TRUE, TRUE))
				qdel(H)

/obj/item/storage/belt/rogue/pouch/coins/rich/Initialize()
	. = ..()
	var/obj/item/roguecoin/silver/pile/H = new(loc)
	if(istype(H))
		if(!SEND_SIGNAL(src, COMSIG_TRY_STORAGE_INSERT, H, null, TRUE, TRUE))
			qdel(H)
	H = new(loc)
	if(istype(H))
		if(!SEND_SIGNAL(src, COMSIG_TRY_STORAGE_INSERT, H, null, TRUE, TRUE))
			qdel(H)
	if(prob(50))
		H = new(loc)
		if(istype(H))
			if(!SEND_SIGNAL(src, COMSIG_TRY_STORAGE_INSERT, H, null, TRUE, TRUE))
				qdel(H)

/obj/item/storage/belt/rogue/pouch/food
	populate_contents = list(
		/obj/item/reagent_containers/food/snacks/rogue/foodbase/hardtack_raw/cooked
	)

/obj/item/storage/belt/rogue/pouch/ammo
	name = "сферическая сумка"
	desc = "Обычно в ней хранят сферы рунического замка."

	populate_contents = list(
		/obj/item/ammo_casing/caseless/runelock,
		/obj/item/ammo_casing/caseless/runelock,
		/obj/item/ammo_casing/caseless/runelock
	)

/obj/item/storage/backpack/rogue //holding salvage vars for children
	sewrepair = TRUE
	fiber_salvage = TRUE
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/storage/backpack/rogue/satchel
	name = "сумка"
	desc = "Объемная сумка, которую носят через плечо. В неё можно положить множество вещей."
	icon_state = "satchel"
	item_state = "satchel"
	icon = 'icons/roguetown/clothing/storage.dmi'
	lefthand_file = 'icons/mob/inhands/equipment/backpack_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/backpack_righthand.dmi'
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	resistance_flags = NONE
	max_integrity = 300
	equip_sound = 'sound/blank.ogg'
	bloody_icon_state = "bodyblood"
	alternate_worn_layer = UNDER_CLOAK_LAYER
	component_type = /datum/component/storage/concrete/roguetown/satchel

/obj/item/storage/backpack/rogue/satchel/heartfelt
	populate_contents = list(
		/obj/item/natural/feather,
		/obj/item/paper
	)

/obj/item/storage/backpack/rogue/satchel/mule
	populate_contents = list(
		/obj/item/reagent_containers/powder/moondust_purest,
		/obj/item/reagent_containers/powder/ozium,
		/obj/item/reagent_containers/powder/spice
	)

/obj/item/storage/backpack/rogue/satchel/musketeer
	populate_contents = list(
		/obj/item/powderflask,
		/obj/item/storage/belt/rogue/pouch/coins/mid
	)


/obj/item/storage/backpack/rogue/satchel/black
	color = CLOTHING_BLACK

/obj/item/storage/backpack/rogue/attack_right(mob/user)
	var/datum/component/storage/CP = GetComponent(/datum/component/storage)
	if(CP)
		CP.rmb_show(user)
		return TRUE

/obj/item/storage/backpack/rogue/backpack
	name = "рюкзак"
	desc = "Объемный рюкзак, в котором можно хранить множество вещей. Чтобы получить доступ к содержимому, придется его снять."
	icon_state = "backpack"
	item_state = "backpack"
	icon = 'icons/roguetown/clothing/storage.dmi'
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK_L
	resistance_flags = NONE
	max_integrity = 300
	equip_sound = 'sound/blank.ogg'
	bloody_icon_state = "bodyblood"

	component_type = /datum/component/storage/concrete/roguetown/backpack

