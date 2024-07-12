/*

/datum/advclass/skirmisher/eidolon
	name = "Eidolon"
	tutorial = "The Champions of the Urn who faced demons without relying on armor, as nothing short of faith and evasion protects the user against their all-corrupting powers. Their speed is as unmatched as their strength."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list("Ihumen",
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	outfit = /datum/outfit/job/roguetown/adventurer/rogue
/datum/outfit/job/roguetown/adventurer/rogue/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE) 
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/engineering, 1, TRUE)

	backl = /obj/item/storage/backpack/rogue/satchel
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	H.change_stat("strength", 3)
	H.change_stat("perception", -2)
	H.change_stat("speed", 4)
*/