/*
/datum/advclass/combat/sohei
	name = "Sohei"
	tutorial = "Sohei are the Abyssanctum monk soldiers from the Tideweaver Branch who uphelds the duty of protecting their religious fold from the graggar presence. They powerness manifests damage or curses."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	ispilgrim = FALSE
	outfit = /datum/outfit/job/roguetown/adventurer/sohei

/datum/outfit/job/roguetown/adventurer/sohei/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.PATRON != /datum/patrongods/abyssor)
		H.PATRON = GLOB.patronlist["Abyssor"]
		to_chat(H, "<span class='warning'>I am a Abyssanctum, loyal to [H.PATRON] the world whale. May the tides of fate guide me to honor.")

	neck = /obj/item/clothing/neck/roguetown/psicross/abyssor
	armor = /ob/obj/item/clothing/suit/roguetown/armor/kaizoku/plate
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	pants = /obj/item/clothing/under/roguetown/kaizoku/tobi
	shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/looseshirt
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	if(prob(25))
		backr = /obj/item/rogueweapon/spear/yari/katakama
	else 
		backr = /obj/item/rogueweapon/spear/yari
	if(prob(66))
		head = /obj/item/clothing/head/roguetown/kaizoku/soheicloth
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/polearm, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("perception", -2)
		H.change_stat("intelligence", 1)
		H.change_stat("constitution", 1)
		H.change_stat("endurance", 3)
		H.change_stat("speed", -1)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/sacred_flame_roguez)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/blindnessz)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/invisibilityz)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/eoracursez)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.PATRON)
	C.holder_mob = H
	C.grant_spells(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
*/