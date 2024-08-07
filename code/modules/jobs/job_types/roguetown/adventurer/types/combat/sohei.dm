/datum/advclass/combat/sohei
	name = "Sohei"
	tutorial = "Sohei are the Abyssanctum Monks from the Tideweaver branch, the direct continuation of the champions of old age. Their duty is to protect the shrines and spiritual entities from demonic corruption."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	outfit = /datum/outfit/job/roguetown/adventurer/sohei
	ispilgrim = FALSE

/datum/outfit/job/roguetown/adventurer/sohei/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.PATRON != /datum/patrongods/abyssor)
		H.PATRON = GLOB.patronlist["Abyssor"]
		to_chat(H, "<span class='warning'>I am a Abyssanctum, loyal to The World Whale. May the tides of fate guide me to honor.")

	neck = /obj/item/clothing/head/roguetown/kaizoku/soheicloth
	armor = /obj/item/clothing/suit/roguetown/armor/kaizoku/plate/sanmaido
	wrists = /obj/item/clothing/neck/roguetown/psicross/abyssor
	pants = /obj/item/clothing/under/roguetown/kaizoku/tobi
	shirt = /obj/item/clothing/suit/roguetown/armor/kaizoku/chainmail/itatami
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	head = /obj/item/clothing/head/roguetown/kaizoku/helmet/hachigane
	beltr = /obj/item/rogueweapon/huntingknife/idagger/sai
	armor = /obj/item/clothing/suit/roguetown/armor/kaizoku/plate/sanmaido

	var/randy = rand(1,8)
	switch(randy)
		if(1 to 2)
			neck = /obj/item/clothing/head/roguetown/kaizoku/soheicloth/thunder
			pants = /obj/item/clothing/under/roguetown/kaizoku/tobi/thunder
			belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho/thunder
			head = /obj/item/clothing/head/roguetown/kaizoku/helmet/hachigane/thunder
		if(3 to 4)
			neck = /obj/item/clothing/head/roguetown/kaizoku/soheicloth/storm
			pants = /obj/item/clothing/under/roguetown/kaizoku/tobi/storm
			belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho/storm
			head = /obj/item/clothing/head/roguetown/kaizoku/helmet/hachigane/storm
		if(5 to 6)
			neck = /obj/item/clothing/head/roguetown/kaizoku/soheicloth/ocean
			pants = /obj/item/clothing/under/roguetown/kaizoku/tobi/ocean
			belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho/ocean
			head = /obj/item/clothing/head/roguetown/kaizoku/helmet/hachigane/ocean
		if(7 to 8)
			neck = /obj/item/clothing/head/roguetown/kaizoku/soheicloth/island
			pants = /obj/item/clothing/under/roguetown/kaizoku/tobi/island
			belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho/island
			head = /obj/item/clothing/head/roguetown/kaizoku/helmet/hachigane/island

	if(prob(25))
		backr = /obj/item/rogueweapon/spear/yari/jumonji
	else 
		backr = /obj/item/rogueweapon/spear/yari/katakama
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("perception", -2)
		H.change_stat("intelligence", 1)
		H.change_stat("constitution", 1)
		H.change_stat("endurance", 3)
		H.change_stat("speed", -1)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/sacred_flame_roguez)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/blindnessz)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/spiderconjur)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/eoracursez)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.PATRON)
	C.holder_mob = H
	C.grant_spells(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
