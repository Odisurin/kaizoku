/datum/advclass/combat/wokou
	name = "Wokou Raider"
	tutorial = "Abyssariad pirates who constantly causes annual invasions on coastline provinces worldwide. Government subsidized and trained, these fierce warriors is the main reason Abyssariads are feared on local population."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
	"Humen",
	"Kitsune",
	"Tengu",
	"Oni",
	"Kappa")
	ispilgrim = FALSE
	outfit = /datum/outfit/job/roguetown/adventurer/wokou

/datum/outfit/job/roguetown/adventurer/wokou/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.PATRON != /datum/patrongods/abyssor)
		H.PATRON = GLOB.patronlist["Abyssor"]
		to_chat(H, "<span class='warning'>I am a Abyssanctum, loyal to The World Whale. May the tides of fate guide me to honor.")

/datum/outfit/job/roguetown/adventurer/wokou/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/crossbows, pick(1,2), TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, pick(3,4), TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, pick(3,4), TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/bows, pick(1,2), TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, pick(3,4), TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, pick(1,3), TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/shields, pick(1,1,2), TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, pick(1,1,2), TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/riding, pick(2,3), TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)

	if(H.gender == FEMALE)
		H.underwear = "Femleotard"
		H.underwear_color = CLOTHING_BLACK
		H.update_body()
	shoes = /obj/item/clothing/shoes/roguetown/boots
	gloves = /obj/item/clothing/gloves/roguetown/leather
	belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho
	if(prob(25))
		armor = /obj/item/clothing/suit/roguetown/armor/kaizoku/plate/cuirass/iron
		pants = /obj/item/clothing/under/roguetown/kaizoku/haidate_tatami
		shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/looseshirt
	else if(prob(50))
		armor = /obj/item/clothing/suit/roguetown/armor/kaizoku/chainmail/kikko
		shirt = /obj/item/clothing/suit/roguetown/armor/kaizoku/chainmail/itatami
		pants = /obj/item/clothing/under/roguetown/kaizoku/tobi/hakama
	else
		armor = /obj/item/clothing/suit/roguetown/armor/kaizoku/chainmail
		pants = /obj/item/clothing/under/roguetown/kaizoku/tobi/fur
		shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/looseshirt
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/rogueweapon/shield/rattan
	if(prob(33))
		beltl = /obj/item/rogueweapon/sword/iron/jian
	else if(prob(50))
		beltl = /obj/item/rogueweapon/sword/iron/messer/dao
	else
		beltl = /obj/item/rogueweapon/flail/kusarigama
	if(prob(66))
		neck = /obj/item/clothing/neck/roguetown/chaincoif
		mask = /obj/item/clothing/mask/rogue/kaizoku/menpo
	else
		head = /obj/item/clothing/head/roguetown/kaizoku/helmet
		mask = /obj/item/clothing/mask/rogue/kaizoku/menpo/half

	H.change_stat("strength", 2)
	H.change_stat("endurance", 1) 
	H.change_stat("speed", 1)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
