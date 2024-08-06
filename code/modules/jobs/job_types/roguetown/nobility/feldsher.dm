/datum/job/roguetown/feldsher
	title = "Feldsher"
	flag = FELDSHER
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	outfit = /datum/outfit/job/roguetown/feldsher
	display_order = JDO_FELDSHER
	tutorial = "You have seen countless wounds over your time. Stitched the sores of blades, sealed honey over the bubous of plague. \
	A thousand deaths stolen from the carriagemen, yet these people will still call you a charlatan. Prove them wrong, or right."
	give_bank_account = 11
	allowed_races = list("Humen",
	"Elf",
	"Half-Elf",
	"Dwarf",
	"Tiefling",
	"Dark Elf",
	"Aasimar",
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa",
	"Beastkin")

/datum/outfit/job/roguetown/feldsher/pre_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/red
	backr = /obj/item/storage/backpack/rogue/satchel
	pants = /obj/item/clothing/under/roguetown/tights/random
	gloves = /obj/item/clothing/gloves/roguetown/leather/feld
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/feld
	neck = /obj/item/clothing/neck/roguetown/feld
	r_hand = /obj/item/storage/backpack/rogue/satchel/surgbag
	if(prob(70))
		head = /obj/item/clothing/head/roguetown/roguehood/feld
		mask = /obj/item/clothing/mask/rogue/feld
	else
		head = /obj/item/clothing/head/roguetown/helmet/feld

	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 5, TRUE)

		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.change_stat("strength", -1)
	H.change_stat("intelligence", 4)
	H.change_stat("constitution", -1)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_EMPATH, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
