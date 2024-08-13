
/datum/job/roguetown/vagrant
	title = "Beggar"
	flag = APPRENTICE
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 15
	spawn_positions = 15

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
	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	outfit = /datum/outfit/job/roguetown/vagrant
	bypass_lastclass = TRUE
	bypass_jobban = TRUE

	tutorial = "The stench of your piss-laden clothes dont bug you anymore, the glances of disgust and loathing others give you is just a friendly greeting; the only reason youve not been killed already is because Volfs are known to be repelled by decaying flesh. Youre going to be a solemn reminder what happens when something unwanted is born into this world."
	display_order = JDO_VAGRANT
	show_in_credits = FALSE
	can_random = FALSE

/datum/job/roguetown/vagrant/New()
	. = ..()
	peopleknowme = list()

/datum/outfit/job/roguetown/vagrant/pre_equip(mob/living/carbon/human/H)

	..()
	// wise beggar!!!
	// guaranteed full beggar gear + random stats
	if(is_wise)
		head = /obj/item/clothing/head/roguetown/wizhat/gen/wise //wise hat
		beltr = /obj/item/reagent_containers/powder/moondust
		beltl = /obj/item/clothing/mask/cigarette/rollie/cannabis
		cloak = /obj/item/clothing/cloak/raincloak/brown
		gloves = /obj/item/clothing/gloves/roguetown/fingerless
		armor = /obj/item/clothing/suit/roguetown/shirt/rags
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/vagrant
		pants = /obj/item/clothing/under/roguetown/tights/vagrant
		shoes = /obj/item/clothing/shoes/roguetown/shalal // wise boots
		r_hand = /obj/item/rogueweapon/woodstaff/wise // dog beating staff
		l_hand = /obj/item/rogueweapon/huntingknife/idagger/steel/special // dog butchering knife
		if(H.mind)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, rand(2,5), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/stealing, 5, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, rand(2,5), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE) //very good reading he is wise
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, rand(2,5), TRUE) // dog beating staff
			H.STASTR = rand(1, 20)
			H.STAINT = rand(5, 20)
			H.STALUC = rand(1, 20)
		H.change_stat("constitution", -rand(0, 2))
		H.change_stat("endurance", -rand(0, 2))
		H.real_name = "[H.real_name] the Wise"
		H.name = "[H.name] the Wise"
		H.facial_hairstyle = "Knowledge"
		H.update_hair()
		H.age = AGE_OLD
	if(prob(20))
		head = /obj/item/clothing/head/roguetown/knitcap
	if(prob(5))
		beltr = /obj/item/reagent_containers/powder/moondust
	if(prob(10))
		beltl = /obj/item/clothing/mask/cigarette/rollie/cannabis
	if(prob(10))
		cloak = /obj/item/clothing/cloak/raincloak/brown
	if(prob(10))
		gloves = /obj/item/clothing/gloves/roguetown/fingerless
	if(H.gender == FEMALE)
		armor = /obj/item/clothing/suit/roguetown/shirt/rags
	else
		pants = /obj/item/clothing/under/roguetown/tights/vagrant
		if(prob(50))
			pants = /obj/item/clothing/under/roguetown/tights/vagrant/l
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/vagrant
		if(prob(50))
			shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/vagrant/l
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, pick(1,2,3,4,5), TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/stealing, pick(1,2,3,4,5), TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, pick(1,2,3,4,5), TRUE)
		H.STALUC = rand(1, 20)
	if(prob(5))
		r_hand = /obj/item/rogueweapon/mace/woodclub
	if(prob(5))
		l_hand = /obj/item/rogueweapon/mace/woodclub
	if(H.dna?.species)
		if(H.dna.species?.id == "abyssariad")
			mask = /obj/item/clothing/mask/rogue/kaizoku/facemask/dishonor
			to_chat(H, "<span class='userdanger'>In pursuit of hedonism and vices, I forfeited my honor and values of the Abyssal Tide. My soul can no longer claim the essence of an Abyssariad.</span>")
			if(H.PATRON == /datum/patrongods/abyssor)
				H.PATRON = GLOB.patronlist[/datum/patrongods/enora]
				to_chat(H, "<span class='warning'>The waters I once revered now scorn me - the rivers blistering my skin. I've failed Abyssor as his champion, and now I've bonded with [H.PATRON].")
	H.change_stat("strength", -1)
	H.change_stat("intelligence", -4)
	H.change_stat("constitution", -3)
	H.change_stat("endurance", -3)

/datum/outfit/job/roguetown/vagrant
	name = "Beggar"
	/// Whether or not we get wise gear and stats
	var/is_wise = FALSE

/datum/outfit/job/roguetown/vagrant/wise
	name = "Wise Beggar"
	is_wise = TRUE
