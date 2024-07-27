/datum/advclass/combat/ronin
	name = "Ronin"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	outfit = /datum/outfit/job/roguetown/adventurer/ronin
	isvillager = FALSE
	tutorial = "A person of the waves, the one who drifters as the ocean. These are samurais with no masters and severed the link with their clan. In shameful display, they are know for not following the code of Abyssal Tide, acting as highwaymen, operating gambling rings and protection rackets."

/datum/outfit/job/roguetown/adventurer/ronin/pre_equip(mob/living/carbon/human/H)
	..()
	belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho
	pants = /obj/item/clothing/under/roguetown/kaizoku/haidate_tatami
	shoes = /obj/item/clothing/shoes/roguetown/kaizoku/boots/armor/kusaritabi
	shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/kamishimo
	armor = obj/item/clothing/suit/roguetown/armor/kaizoku/plate/sanmaido
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	gloves = /obj/item/clothing/gloves/roguetown/fingerless
	backl = /obj/item/storage/backpack/rogue/satchel
	if(prob(25))
		beltr = /obj/item/rogueweapon/sword/short/wakizashi
	else
		beltr = /obj/item/rogueweapon/huntingknife/idagger/steel/tanto
	beltl = /obj/item/rogueweapon/sword/uchigatana
	head = /obj/item/clothing/head/roguetown/kaizoku/big/roningasa
	if(prob(23))
		gloves = /obj/item/clothing/gloves/roguetown/leather
	else
		gloves = /obj/item/clothing/gloves/roguetown/fingerless

	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.change_stat("strength", 1)
	H.change_stat("constitution", 2)
	H.change_stat("speed", 2)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
