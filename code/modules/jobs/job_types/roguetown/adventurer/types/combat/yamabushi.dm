/datum/advclass/combat/yamabushi
	name = "Yamabushi"
	tutorial = "The Yamabushi are battle ready religious figures of the Abyssanctum faith, one with the Curator Branch. They safeguard knowledge and take care of the living, focused on betterment of society as a whole."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	ispilgrim = FALSE
	outfit = /datum/outfit/job/roguetown/adventurer/yamabushi

/datum/outfit/job/roguetown/adventurer/yamabushi/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.PATRON != /datum/patrongods/abyssor)
		H.PATRON = GLOB.patronlist["Abyssor"]
		to_chat(H, "<span class='warning'>I am a Abyssanctum, loyal to The World Whale. May the tides of fate guide me to honor.")

	neck = /obj/item/clothing/neck/roguetown/psicross/abyssor
	armor = /obj/item/clothing/suit/roguetown/armor/kaizoku/plate
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	pants = /obj/item/clothing/under/roguetown/kaizoku/tobi/hakama
	shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/kimono
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	head = /obj/item/clothing/head/roguetown/kaizoku/big/stengai
	if(prob(25))
        beltr = /obj/item/rogueweapon/mace/cudgel/ararebo
    else
        backr = /obj/item/rogueweapon/mace/goden/kanabo
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
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
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/revivez)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.PATRON)
	C.holder_mob = H
	C.grant_spells(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
