
/datum/advclass/combat/shinobi
	name = "Shinobi"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	outfit = /datum/outfit/job/roguetown/adventurer/shinobi
	isvillager = FALSE
	tutorial = "(this role is not finished yet)The convert agents of a Daimyo or a clan who operates in secrecy, using stealth, disguise and deception as tool. Knowledged in poison, Shinobis steals battle plans and assassinates important political figures."

/datum/outfit/job/roguetown/adventurer/shinobi/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 5)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/stealing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, 3, TRUE)

	if(H.gender == FEMALE)
		H.underwear = "Femleotard"
		H.underwear_color = CLOTHING_BLACK
		H.update_body()

	head = /obj/item/clothing/head/roguetown/kaizoku/shinobi_zukin
	pants = /obj/item/clothing/under/roguetown/kaizoku/shinobizubon
	shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/looseshirt/shinobi
	gloves = /obj/item/clothing/gloves/roguetown/leather
	if(prob(30))
		gloves = /obj/item/clothing/gloves/roguetown/fingerless
	belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho/ninja
	armor = /obj/item/clothing/suit/roguetown/armor/kaizoku/shozoku
	backl = /obj/item/storage/backpack/rogue/satchel/ninja
	beltr = /obj/item/quiver/bolts
	if(prob(50))
		beltl = /obj/item/rogueweapon/huntingknife/idagger/steel/tanto
	else 
		beltl = /obj/item/rogueweapon/huntingknife/idagger/steel/kaiken
	backr = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	shoes = /obj/item/clothing/shoes/roguetown/kaizoku/jikatabi/shinobi
    neck = /obj/item/clothing/neck/roguetown/gorget
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather


	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	H.change_stat("strength", 1)
	H.change_stat("perception", 2)
	H.change_stat("speed", 2)
	H.change_stat("constitution", 1)