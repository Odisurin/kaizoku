//Balance>
//Pros: Good stats (8 points), Sword skill specialization,  Medium armor perk, Steel weapons and knife variation. 
//Cons: No chest or head armor, antagonizable adventurer role, no heavy armor perk. 
// >>>This is the role for PROPER Akira Kurosawa EXPERIENCE.<<<

/datum/advclass/combat/ronin
	name = "Ronin"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
	"Kitsune",
	"Tengu",
	"Oni")
	outfit = /datum/outfit/job/roguetown/adventurer/ronin
	isvillager = FALSE
	tutorial = "A person of the waves, the one who drifters as the ocean. These are samurais with no masters and severed the link with their clan. In shameful display, they are know for not following the code of Abyssal Tide, acting as highwaymen, operating gambling rings and protection rackets."

/datum/outfit/job/roguetown/adventurer/ronin/pre_equip(mob/living/carbon/human/H)
	..()
	belt = /obj/item/storage/belt/rogue/kaizoku/leather/daisho
	pants = /obj/item/clothing/under/roguetown/kaizoku/haidate_tatami
	shoes = /obj/item/clothing/shoes/roguetown/kaizoku/boots/armor/kusaritabi
	shirt = /obj/item/clothing/suit/roguetown/shirt/kaizoku/kamishimo
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	neck = /obj/item/clothing/mask/rogue/kaizoku/menpo/half
	gloves = /obj/item/clothing/gloves/roguetown/fingerless
	backl = /obj/item/storage/backpack/rogue/satchel
	if(prob(25))
		beltr = /obj/item/rogueweapon/sword/short/wakizashi
	else
		beltr = /obj/item/rogueweapon/huntingknife/idagger/steel/tanto
	var/randy = rand(1,6)
	switch(randy)
		if(1)
			beltl = /obj/item/rogueweapon/sword/uchigatana
			to_chat(H, "<span class='info'>I managed to retain my full Daisho, even without masters to finance my activities.</span>")
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
		if(2 to 3)
			beltl = /obj/item/rogueweapon/flail/kusarigama
			to_chat(H, "<span class='info'>My sword was broken during battle, and from the blade, I made one anew. This is all what remains of my deceased master.</span>")
			H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
		if(4 to 5)
			beltr = /obj/item/rogueweapon/battle/ono
			to_chat(H, "<span class='info'>I killed a sanguinary savage and took from him his axe, and grinded the steel into a more efficient Ono. I've conquered a WHALER's soul, and will DOMINATE HIS WAYS.</span>")
			H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
		if(6)
			beltr = /obj/item/rogueweapon/sword/yuntoudao
			to_chat(H, "<span class='info'>The Daisho is obsolete. My sword is made to do more than draw blood - It should grind my enemies into mince..</span>")
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
	head = /obj/item/clothing/head/roguetown/kaizoku/big/roningasa
	if(prob(23))
		gloves = /obj/item/clothing/gloves/roguetown/leather
	else
		gloves = /obj/item/clothing/gloves/roguetown/fingerless

	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.change_stat("strength", 2)
	H.change_stat("constitution", 2)
	H.change_stat("endurance", 2)
	H.change_stat("speed", 2)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
