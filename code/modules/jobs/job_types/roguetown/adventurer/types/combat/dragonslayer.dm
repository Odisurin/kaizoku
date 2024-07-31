/datum/advclass/combat/dragonslayer
	name = "Dragonslayer"
	tutorial = "Dragonslayers are legendary Abyssariads and Kappas monster hunters from a still existing Abyssor Champion Branch who underwent severe alchemical body alterations to become immune to asbestos and magical pressures."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	outfit = /datum/outfit/job/roguetown/adventurer/dragonslayer

/datum/outfit/job/roguetown/adventurer/dragonslayer/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)

	belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho
	shoes = /obj/item/clothing/shoes/roguetown/kaizoku/boots/armor/dragontabi
	neck = /obj/item/clothing/neck/roguetown/psicross/abyssor
	cloak = /obj/item/clothing/cloak/kaizoku/dragonslayer
	wrists = /obj/item/clothing/wrists/roguetown/kaizoku/dragonwrap
	pants = /obj/item/clothing/under/roguetown/kaizoku/tobi/dragonslayer
	shoes = /obj/item/clothing/shoes/roguetown/kaizoku/boots/armor/dragontabi
	head = /obj/item/clothing/head/roguetown/kaizoku/big/dragonslayer
	var/randy = rand(1,5)
	switch(randy)
		if(1 to 2)
			beltr = /obj/item/rogueweapon/battle/ono
			H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
		if(3 to 4)
			backr = /obj/item/rogueweapon/greatsword/odachi
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		if(5)
			backr = /obj/item/rogueweapon/halberd/bardiche/naginata
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
	H.change_stat("strength", 3)
	H.change_stat("endurance", 3)
	H.change_stat("constitution", 1)
	H.change_stat("intelligence", 1)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)