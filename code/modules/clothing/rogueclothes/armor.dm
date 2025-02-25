/obj/item/clothing/suit/roguetown/armor
	slot_flags = ITEM_SLOT_ARMOR
	body_parts_covered = CHEST
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	equip_sound = 'sound/blank.ogg'
	drop_sound = 'sound/blank.ogg'
	pickup_sound =  'sound/blank.ogg'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	sleevetype = "shirt"
	edelay_type = 0
	equip_delay_self = 25
	unequip_delay_self = 25
	bloody_icon_state = "bodyblood"
	boobed = TRUE
	resistance_flags = FIRE_PROOF
	blocksound = PLATEHIT
	sellprice = 1
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	experimental_onhip = TRUE
	nodismemsleeves = TRUE
	flags_inv = HIDEBOOB|HIDECROTCH
	w_class = WEIGHT_CLASS_NORMAL //Anti-pouch storage due to the weight class no longer being small.

	grid_width = 64
	grid_height = 96

/obj/item/clothing/suit/roguetown/armor/chainmail
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "хаубержон"
	desc = "Стальная кольчужная рубашка, состоящая из переплетенных металлических колец. Хорошо защищает от попаданий стрел, закрывая туловище и руки, а также достаточно удобна для сна."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "haubergeon"
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_ASSASSIN)
	blocksound = CHAINHIT
	do_sound_chain = TRUE
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/chainmail/iron
	icon_state = "ichainmail"
	name = "кольчужный жилет"
	desc = "Железный кольчужный жилет, состоящий из переплетенных металлических колец. Хорошо защищает от попаданий стрел, закрывая лишь туловище. Довольно удобен для сна."
	body_parts_covered = CHEST|GROIN|VITALS
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/iron
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "хауберк"
	desc = "Длинная стальная кольчуга на все тело, он же кольчатый доспех, состоит из переплетенных металлических колец. Хорошо защищает от попадания стрел, закрывая тело, руки и ноги. При этом в нем довольно удобно спать."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "hauberk"
	item_state = "hauberk"
	max_integrity = 220
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/steel
	do_sound_chain = TRUE
	armor_class = ARMOR_CLASS_MEDIUM
	w_class = WEIGHT_CLASS_BULKY

/obj/item/clothing/suit/roguetown/armor/chainmail/chainkini
	name = "кольчужное бикини"
	desc = "Вряд ли коже будет приятно такое носить."
	icon_state = "chainkini"
	item_state = "chainkini"
	allowed_sex = list(FEMALE)
	allowed_race = CLOTHED_RACES_TYPES
	body_parts_covered = CHEST|GROIN
	anvilrepair = /datum/skill/craft/blacksmithing
	armor_class = ARMOR_CLASS_LIGHT
	edelay_type = 1
	w_class = WEIGHT_CLASS_SMALL

/obj/item/clothing/suit/roguetown/armor/plate
	slot_flags = ITEM_SLOT_ARMOR
	name = "стальной полулатник"
	desc = "Популярный среди переселенцев латный доспех с наплечниками."
	body_parts_covered = CHEST|GROIN|VITALS
	icon_state = "halfplate"
	item_state = "halfplate"
	armor = list("blunt" = 80, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	nodismemsleeves = TRUE
	max_integrity = 500
	allowed_sex = list(MALE, FEMALE)
	do_sound_plate = TRUE
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	unequip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	clothing_flags = CANT_SLEEP_IN

/obj/item/clothing/suit/roguetown/armor/plate/scale/inqcoat
	slot_flags = ITEM_SLOT_ARMOR
	name = "пальто инквизитора"
	desc = "Тяжелый плащ, усиленный металлическими пластинками. Живи, умри, страдай и повтори."
	body_parts_covered = CHEST|VITALS|GROIN|LEGS|ARMS
	allowed_sex = list(MALE, FEMALE)
	icon_state = "inqcoat"
	item_state = "inqcoat"
	sleevetype = "shirt"
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	max_integrity = 180 // slightly lower than scale
	armor_class = ARMOR_CLASS_MEDIUM
	ignore_sleeves_code = TRUE // No sleeves, otherwise arms will be over the sprite. NO CROPS FOR HANDS!

/obj/item/clothing/suit/roguetown/armor/plate/half
	slot_flags = ITEM_SLOT_ARMOR
	name = "стальная кираса"
	desc = "Простая кираса из стали. Легкая и долговечная."
	body_parts_covered = CHEST|VITALS
	icon_state = "cuirass"
	item_state = "cuirass"
	armor = list("blunt" = 80, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed_race = CLOTHED_RACES_TYPES
	nodismemsleeves = TRUE
	do_sound_plate = FALSE
	blocking_behavior = null
	max_integrity = 300
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/plate/full
	name = "стальные латы"
	desc = "Полный латный доспех. В комплекте накладки для защиты ног, набрюшник, крепкие наручи."
	icon_state = "plate"
	max_integrity = 520
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	equip_delay_self = 1200
	unequip_delay_self = 1200
	equip_delay_other = 60
	strip_delay = 60

/obj/item/clothing/suit/roguetown/armor/plate/half/iron
	name = "железный нагрудник"
	desc = "Твердый слой железа для защиты груди."
	icon_state = "ibreastplate"
	max_integrity = 235
	smeltresult = /obj/item/ingot/iron
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/plate/scale
	slot_flags = ITEM_SLOT_ARMOR
	name = "чешуйчатая броня"
	desc = "Костюм из переплетенных друг с другом стальных чешуек, образующих гибкую защиту, закрывающую туловище и ноги владельца."
	body_parts_covered = CHEST|VITALS|GROIN|LEGS
	allowed_sex = list(MALE, FEMALE)
	icon_state = "lamellar"
	max_integrity = 200
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/heartfelt/lord
	slot_flags = ITEM_SLOT_ARMOR
	name = "боевой доспех"
	desc = "Величественная защита для господ."
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	icon_state = "heartfelt"
	item_state = "heartfelt"
	armor = list("blunt" = 90, "slash" = 90, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	allowed_sex = list(MALE, FEMALE)
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 400
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	clothing_flags = CANT_SLEEP_IN
	ignore_sleeves_code = TRUE // No sleeves, otherwise arms will be over the sprite

/obj/item/clothing/suit/roguetown/armor/heartfelt/hand
	slot_flags = ITEM_SLOT_ARMOR
	name = "боевой доспех"
	desc = "Величественная защита для знати."
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	icon_state = "heartfelt_hand"
	item_state = "heartfelt_hand"
	armor = list("blunt" = 90, "slash" = 90, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	allowed_sex = list(MALE, FEMALE)
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 400
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	clothing_flags = CANT_SLEEP_IN
	ignore_sleeves_code = TRUE // No sleeves, otherwise arms will be over the sprite

/obj/item/clothing/suit/roguetown/armor/brigandine
	slot_flags = ITEM_SLOT_ARMOR
	name = "бригантина"
	desc = "Длинное пальто со стальными пластинами, сокрытыми под внешней тканью."
	icon_state = "brigandine"
	blocksound = SOFTHIT
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	armor = list("blunt" = 90, "slash" = 60, "stab" = 70, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	allowed_sex = list(MALE, FEMALE)
	nodismemsleeves = TRUE
	max_integrity = 350
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	clothing_flags = CANT_SLEEP_IN
	sleeved_detail = FALSE
	boobed_detail = FALSE

/obj/item/clothing/suit/roguetown/armor/brigandine/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/coatplates (1).ogg',\
												'sound/foley/footsteps/armor/coatplates (2).ogg',\
												'sound/foley/footsteps/armor/coatplates (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/brigandine/attack_right(mob/user)
	if(detail_tag)
		return
	var/the_time = world.time
	var/pickedcolor = input(user, "Выберите цвет:","Цвет бригантины") as null|anything in CLOTHING_COLOR_NAMES
	if(!pickedcolor)
		return
	if(world.time > (the_time + 30 SECONDS))
		return
	detail_tag = "_det"
	detail_color = clothing_color2hex(pickedcolor)
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_armor()

/obj/item/clothing/suit/roguetown/armor/brigandine/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/suit/roguetown/armor/brigandine/sheriff/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/armor/brigandine/sheriff/lordcolor(primary,secondary)
	detail_tag = "_det"
	detail_color = primary
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_armor()

/obj/item/clothing/suit/roguetown/armor/brigandine/sheriff/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/armor/brigandine/coatplates
	slot_flags = ITEM_SLOT_ARMOR
	name = "пластинчатый доспех"
	desc = "Кожаное пальто с плотными рядами металлических пластин для максимальной защиты ценой низкой подвижности."
	icon_state = "coat_of_plates"
	blocksound = PLATEHIT
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	max_integrity = 250
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/brigandine/light
	slot_flags = ITEM_SLOT_ARMOR
	name = "облегченная бригантина"
	desc = "Легкое клепаное пальто, накрытое длинным рядом железных полос."
	icon_state = "light_brigandine"
	blocksound = SOFTHIT
	body_parts_covered = CHEST|GROIN|VITALS
	armor = list("blunt" = 60, "slash" = 70, "stab" = 70, "bullet" = 60, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	smeltresult = /obj/item/ingot/iron
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	clothing_flags = CANT_SLEEP_IN
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/roguetown/armor/armordress
	slot_flags = ITEM_SLOT_ARMOR
	name = "стеганое платье"
	desc = "Это платье имеет подкладку для дополнительной защиты."
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|VITALS
	icon_state = "armordress"
	armor = list("blunt" = 60, "slash" = 40, "stab" = 50, "bullet" = 10, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	blocksound = SOFTHIT
	allowed_sex = list(MALE, FEMALE)
	allowed_race = NON_DWARVEN_RACE_TYPES
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/armordress/alt
	icon_state = "armordressalt"

/obj/item/clothing/suit/roguetown/armor/gambeson
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "гамбезон"
	desc = "Большая защитная куртка с утеплителем, которая отличается низкой стоимостью. Можно шить повторно, а также носить как самостоятельную броню или под броней. Защищает туловище, руки и ноги."
	icon_state = "gambeson"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|VITALS
	armor = list("blunt" = 45, "slash" = 30, "stab" = 35, "bullet" = 15, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT)
	blocksound = SOFTUNDERHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/gambeson/light
	name = "облегченный гамбезон"
	desc = "Гамбезон с едва заметной подкладкой, который обычно носили крестьяне в качестве дешевой, но хоть какой-то брони. Прорубается так же легко, как и шьется."
	icon_state = "gambesonl"
	armor = list("blunt" = 30, "slash" = 15, "stab" = 20, "bullet" = 10, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = null // It won't help, like, at all.
	sellprice = 10

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	name = "стёганый гамбезон"
	desc = "Гамбезон с дополнительными слоями набивки, укрепленный для большей прочности. Он все равно не может сравниться с настоящей броней, однако как недорогой поддоспешник - отличный вариант."
	icon_state = "gambesonp"
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST, BCLASS_SMASH)
	armor = list("blunt" = 60, "slash" = 40, "stab" = 50, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	sellprice = 30

/obj/item/clothing/suit/roguetown/armor/gambeson/lord
	name = "гамбезон рыцаря"
	desc = "Предназначен для использования под более тяжелыми доспехами и выступает в роли хорошего поддоспешника."
	icon_state = "dgamb"
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_SMASH)
	allowed_sex = list(MALE, FEMALE)
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/suit/roguetown/armor/workervest
	name = "полосатая туника"
	desc = "Эту дешевую тунику часто носят крепкие трудолюбивые мужчины и женщины."
	icon_state = "workervest"
	armor = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|VITALS
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	sleevetype = null
	sleeved = null
	nodismemsleeves = TRUE
	boobed = TRUE

/obj/item/clothing/suit/roguetown/armor/workervest/Initialize()
	color = pick("#94b4b6", "#ba8f9e", "#bd978c", "#92bd8c", "#c7c981")
	return ..()

/obj/item/clothing/suit/roguetown/armor/silkcoat
	name = "шелковое пальто"
	desc = "Стеганое одеяние, сшитое из тончайшего, но прочного шелка."
	icon_state = "bliaut"
	color = null
	armor = list("blunt" = 70, "slash" = 35, "stab" = 60, "bullet" = 7, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_TWIST)
	blocksound = SOFTHIT
	slot_flags = ITEM_SLOT_ARMOR
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|LEGS|VITALS|GROIN
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	sleevetype = "shirt"
	max_integrity = 100
	sellprice = 50
	armor_class = ARMOR_CLASS_LIGHT
	allowed_sex = list(MALE, FEMALE)
	allowed_race = CLOTHED_RACES_TYPES
	salvage_result = /obj/item/natural/fur

/obj/item/clothing/suit/roguetown/armor/silkcoat/Initialize()
	. = ..()
	color = pick(CLOTHING_PURPLE, null,CLOTHING_GREEN, CLOTHING_RED)

/obj/item/clothing/suit/roguetown/armor/leather/cult_robe
	name = "роба культиста"
	desc = "Довольно подозрительные на вид одеяния. От ткани явно несет ересью."
	icon_state = "warlock"
	item_state = "warlock"
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 5, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT)
	blocksound = SOFTHIT
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|VITALS|LEGS
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	armor_class = ARMOR_CLASS_LIGHT
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/suit/roguetown/armor/blacksteel/platechest
	slot_flags = ITEM_SLOT_ARMOR
	name = "латы из черной стали"
	desc = "Полный комплект латных доспехов из особо прочной черной стали."
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	icon = 'icons/roguetown/clothing/special/blkknight.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/blkknight.dmi'
	icon_state = "bkarmor"
	item_state = "bkarmor"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed_race = CLOTHED_RACES_TYPES
	nodismemsleeves = TRUE
	do_sound_plate = TRUE
	blocking_behavior = null
	max_integrity = 600 // 100 better than normal steel plate. Inline with Cuirass vs Blacksteel Cuirass
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/blacksteel
	armor_class = ARMOR_CLASS_HEAVY
	equip_delay_self = 12 SECONDS
	unequip_delay_self = 12 SECONDS
	equip_delay_other = 3 SECONDS
	strip_delay = 6 SECONDS

/obj/item/clothing/suit/roguetown/armor/blacksteel/cuirass
	slot_flags = ITEM_SLOT_ARMOR
	name = "кираса из черной стали"
	desc = "Обычная кираса, но выкованная из черной стали. Гораздо прочнее обычной стальной."
	body_parts_covered = CHEST|VITALS
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	icon_state = "grenzelcuirass"
	item_state = "grenzelcuirass"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	armor = list("blunt" = 80, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed_race = CLOTHED_RACES_TYPES
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 400
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/blacksteel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/blacksteel/cuirass/hardened
	name = "закаленная кираса из черной стали"
	desc = "Кирасы, выкованные из черной стали, подвергали тщательной закалке и лично выдавали высокопоставленным офицерам Империата. Гораздо прочнее, чем обычная сталь. "
	max_integrity = 550 // Hardened to Replace the chainmaille they got before.
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_ASSASSIN, BCLASS_TWIST)
	body_parts_covered = CHEST|GROIN|VITALS

//Gronn
/obj/item/clothing/suit/roguetown/armor/hudesutu_quyaq
	slot_flags = ITEM_SLOT_ARMOR
	name = "Hudesutu quyaq"
	desc = "Lamellar Armor made of iron and leathers."
	body_parts_covered = CHEST|GROIN|LEGS|VITALS
	icon_state = "hudesutu"
	armor = list("blunt" = 65, "slash" = 60, "stab" = 55, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = CHAINHIT
	do_sound_chain = TRUE
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	max_integrity = 250
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/iron
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/kurche
	slot_flags = ITEM_SLOT_ARMOR
	name = "Kurche"
	desc = "Pieces of Iron Plates and Leathers that protect the vitals."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "kurche"
	armor = list("blunt" = 75, "slash" = 65, "stab" = 70, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = CHAINHIT
	do_sound_chain = TRUE
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	max_integrity = 300
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/iron
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/leather/newmoon_jacket
	name = "куртка Новолуния"
	desc = "Легкое, нарядное, но при этом достаточно защищенное пальто цвета бирюзы. Является отличительным знаком Священного Ордена Новолуния с амулетом Нок в центре нагрудника. "
	icon_state = "newmoon_jacket"
	item_state = "newmoon_jacket"
	blocksound = SOFTHIT
	armor = list("blunt" = 70, "slash" = 100, "stab" = 60, "bullet" = 15, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_CHOP)
	nodismemsleeves = TRUE
	body_parts_covered = CHEST|GROIN|VITALS
	max_integrity = 300
	sellprice = 40
	armor_class = ARMOR_CLASS_LIGHT

