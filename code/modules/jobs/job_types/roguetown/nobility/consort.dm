/datum/job/roguetown/consort
	title = "Duke Consort"
	f_title = "Duchess Consort"
	flag = CONSORT
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_TOLERATED_UP
	tutorial = "Выбранная скорее по политическим соображениям, чем по любви, вы стали самым надежным доверенным лицом и другом правителя на протяжении всего вашего брака.\
	 В этот день ваша верность и, возможно, любовь будут проверены на прочность. \
	 Ведь кинжалы, угрожающие вашему возлюбленному, в равной степени направлены и на ваше собственное горло."

	spells = list(/obj/effect/proc_holder/spell/self/convertrole/servant)
	outfit = /datum/outfit/job/roguetown/consort

	display_order = JDO_LADY
	give_bank_account = TRUE
	min_pq = 0
	max_pq = null

	family_blacklisted = TRUE
	ruler_family = TRUE
	lord_rel_type = REL_TYPE_SPOUSE

// Prevent same sex ruler-consorts
/datum/job/roguetown/consort/special_job_check(mob/dead/new_player/player)
	if(!player)
		return
	if(!player.ckey)
		return
	for(var/mob/dead/new_player/duke in GLOB.player_list)
		if((player.client.prefs.sexual_pref == SEXUAL_PREF_HETERO && duke.client.prefs.gender == SEXUAL_PREF_HETERO) || (player.client.prefs.sexual_pref == SEXUAL_PREF_BOTH && duke.client.prefs.gender == SEXUAL_PREF_HETERO) || (player.client.prefs.sexual_pref == SEXUAL_PREF_HETERO && duke.client.prefs.gender == SEXUAL_PREF_BOTH))
			if(duke.mind.assigned_role == "Duke")
				if(duke.client.prefs.gender != player.client.prefs.gender)
					return TRUE

		if((player.client.prefs.sexual_pref == SEXUAL_PREF_SAME && duke.client.prefs.gender == SEXUAL_PREF_SAME) || (player.client.prefs.sexual_pref == SEXUAL_PREF_BOTH && duke.client.prefs.gender == SEXUAL_PREF_SAME) || (player.client.prefs.sexual_pref == SEXUAL_PREF_SAME && duke.client.prefs.gender == SEXUAL_PREF_BOTH))
			if(duke.mind.assigned_role == "Duke")
				if(duke.client.prefs.gender == player.client.prefs.gender)
					return TRUE

		if(player.client.prefs.sexual_pref == SEXUAL_PREF_BOTH && duke.client.prefs.gender == SEXUAL_PREF_BOTH)
			if(duke.mind.assigned_role == "Duke")
				return TRUE
			

/datum/job/roguetown/consort_dowager//just used to change the consort title
	title = "Duke Dowager"
	f_title = "Duchess Dowager"
	flag = CONSORT
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 0
	spawn_positions = 0
	display_order = JDO_LADY
	give_bank_account = TRUE

/datum/job/roguetown/consort/after_spawn(mob/living/H, mob/M, latejoin)
	. = ..()
	if(GLOB.lordsurname && H)
		give_lord_surname(H, preserve_original = TRUE)

/datum/outfit/job/roguetown/consort/pre_equip(mob/living/carbon/human/H)
	. = ..()

	if(H.gender == FEMALE)
		beltl = /obj/item/storage/keyring/royal
		neck = /obj/item/storage/belt/rogue/pouch/coins/rich
		belt = /obj/item/storage/belt/rogue/leather/cloth/lady
		head = /obj/item/clothing/head/roguetown/crown/consortcrown
		shirt = /obj/item/clothing/suit/roguetown/shirt/dress/royal
		cloak = /obj/item/clothing/cloak/lordcloak/ladycloak
		wrists = /obj/item/clothing/wrists/roguetown/royalsleeves
		gloves = /obj/item/clothing/gloves/roguetown/leather/black
		id = /obj/item/clothing/ring/silver
		shoes = /obj/item/clothing/shoes/roguetown/shortboots
		pants = /obj/item/clothing/under/roguetown/tights/stockings/silk/white
		if(H.mind)
			H.mind.adjust_skillrank(/datum/skill/misc/stealing, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/treatment, 2, TRUE)
			H.change_stat("intelligence", 3)
			H.change_stat("endurance", 3)
			H.change_stat("speed", 2)
			H.change_stat("perception", 2)
			H.change_stat("fortune", 5)

		ADD_TRAIT(H, TRAIT_SEEPRICES, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NUTCRACKER, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)
		
	else
		belt = /obj/item/storage/belt/rogue/leather
		r_hand = /obj/item/storage/keyring/royal
		head = /obj/item/clothing/head/roguetown/crown/consortcrown
		neck = /obj/item/storage/belt/rogue/pouch/coins/rich
		backr = /obj/item/storage/backpack/rogue/satchel
		id = /obj/item/clothing/ring/silver
		pants = /obj/item/clothing/under/roguetown/tights/black
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
		armor = /obj/item/clothing/suit/roguetown/armor/leather/duke
		shoes = /obj/item/clothing/shoes/roguetown/armor
		
		if(H.mind)
			H.mind.adjust_skillrank(/datum/skill/misc/stealing, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/treatment, 2, TRUE)
			H.change_stat("intelligence", 3)
			H.change_stat("endurance", 3)
			H.change_stat("speed", 2)
			H.change_stat("perception", 2)
			H.change_stat("fortune", 5)


			H.dna.species.soundpack_m = new /datum/voicepack/male/evil()

		if(H.wear_mask)
			if(istype(H.wear_mask, /obj/item/clothing/mask/rogue/eyepatch))
				qdel(H.wear_mask)
				mask = /obj/item/clothing/mask/rogue/lordmask
			if(istype(H.wear_mask, /obj/item/clothing/mask/rogue/eyepatch/left))
				qdel(H.wear_mask)
				mask = /obj/item/clothing/mask/rogue/lordmask/l


		ADD_TRAIT(H, TRAIT_SEEPRICES, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NUTCRACKER, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)

/datum/outfit/job/roguetown/lady/post_equip(mob/living/carbon/human/H)
	..()
	H.virginity = FALSE

/obj/effect/proc_holder/spell/self/convertrole/servant
	name = "Recruit Servant"
	new_role = "Servant"
	overlay_state = "recruit_servant"
	recruitment_faction = "Servants"
	recruitment_message = "Serve the duchy, %RECRUIT!"
	accept_message = "Yes, your highness!"
	refuse_message = "I refuse."
	charge_max = 100
