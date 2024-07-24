/datum/advclass/combat/shrinecaretaker
	name = "Shrine Caretaker"
	allowed_sexes = list(MALE, FEMALE)
	tutorial = "The shrines needs to be cared of, and there is no one most suitable for such duty than the purifier branch. They perform rituals to submit demonic spirits just as much they submit mortals with martial arts."
	allowed_races = list(
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	outfit = /datum/outfit/job/roguetown/adventurer/shrinecaretaker

/datum/outfit/job/roguetown/adventurer/shrinecaretaker/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.PATRON != /datum/patrongods/abyssor)
		H.PATRON = GLOB.patronlist["Abyssor"]
		to_chat(H, "<span class='warning'>I am a Abyssanctum, loyal to The World Whale. May the tides of fate guide me to honor.")
	neck = /obj/item/clothing/neck/roguetown/psicross/abyssor
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	armor = /obj/item/clothing/suit/roguetown/shirt/kaizoku/shrinemaiden
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	backl = /obj/item/storage/backpack/rogue/backpack
	backr = /obj/item/rogueweapon/woodstaff
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/blesscropz)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/churnz)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/cure_rotz)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/conjure_glowshroomz)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/beasttamez)

		H.change_stat("strength", 3)
		H.change_stat("speed", 2)
		H.change_stat("perception", -2)
		H.change_stat("endurance", -1)
		H.change_stat("constitution", -1)
		ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.PATRON)
	C.holder_mob = H
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
	C.grant_spells(H)

