/mob/living/carbon/human/species/beastkin
	race = /datum/species/beastkin

/datum/species/beastkin
	name = "Beastkin"
	id = "beastkin"
	desc = "Coming from the Southern arid lands, the Beastkins are dendor creatures \
	once belonging to a rich, proudful empire where the gold flowed as river, the soil \
	lush in life, and hills rich in copper and tin. However, nothing was made to last \
	as mankind's influence stretched far and wide - and under their new control, the Beastkins \
	were humilliated, their glorious leaders forgotten and preserved only in ruins. As \
	Abyssariads raided Zybanti and Bayyid territories, many found protection under the raiders to work as \
	laborers- but faced oppression from the island's lowest cast, such as Humans and \
	Kappas due to competition. Even with Kitsune and Tengu's support, they struggle \
	to receive citizenship due to many cultural shocks."
	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	default_features = list("mcolor" = "FFF", "ears" = "Cat", "tail_human" = "CatV")
	use_skintones = 1
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED)
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = NONE
	liked_food = MEAT
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/ms_cat.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fs.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	hairyness = "t3"
	mutant_bodyparts = list("ears","tail_human")
	use_f = TRUE
	soundpack_m = /datum/voicepack/male/elf
	soundpack_f = /datum/voicepack/female/elf
	offset_features = list(OFFSET_ID = list(0,-1), OFFSET_GLOVES = list(0,-1), OFFSET_WRISTS = list(0,-1),\
	OFFSET_CLOAK = list(0,-1), OFFSET_FACEMASK = list(0,-1), OFFSET_HEAD = list(0,-1), \
	OFFSET_FACE = list(0,-1), OFFSET_BELT = list(0,-1), OFFSET_BACK = list(0,-1), \
	OFFSET_NECK = list(0,-1), OFFSET_MOUTH = list(0,-1), OFFSET_PANTS = list(0,-1), \
	OFFSET_SHIRT = list(0,-1), OFFSET_ARMOR = list(0,-1), OFFSET_HANDS = list(0,-1), OFFSET_UNDIES = list(0,-1), \
	OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,-1), OFFSET_WRISTS_F = list(0,-1), OFFSET_HANDS_F = list(0,-2), \
	OFFSET_CLOAK_F = list(0,-1), OFFSET_FACEMASK_F = list(0,-2), OFFSET_HEAD_F = list(0,-2), \
	OFFSET_FACE_F = list(0,-2), OFFSET_BELT_F = list(0,-1), OFFSET_BACK_F = list(0,-2), \
	OFFSET_NECK_F = list(0,-2), OFFSET_MOUTH_F = list(0,-2), OFFSET_PANTS_F = list(0,-1), \
	OFFSET_SHIRT_F = list(0,-1), OFFSET_ARMOR_F = list(0,-1), OFFSET_UNDIES_F = list(0,-1))
	specstats = list("strength" = -2, "perception" = 3, "intelligence" = 0, "constitution" = 0, "endurance" = 2, "speed" = 2, "fortune" = 0)
	specstats_f = list("strength" = -2, "perception" = 2, "intelligence" = 1, "constitution" = -1, "endurance" = 2, "speed" = 2, "fortune" = 0)
	enflamed_icon = "widefire"
	patreon_req = 0

/datum/species/beastkin/check_roundstart_eligible()
	return TRUE

/datum/species/beastkin/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	. = ..()
	RegisterSignal(C, COMSIG_MOB_SAY, PROC_REF(handle_speech))
	C.grant_language(/datum/language/common)

/datum/species/beastkin/on_species_loss(mob/living/carbon/C)
	. = ..()
	UnregisterSignal(C, COMSIG_MOB_SAY)
	C.remove_language(/datum/language/common)


/datum/species/beastkin/handle_speech(datum/source, mob/speech_args)
	. = ..()
	var/message = speech_args[SPEECH_MESSAGE]
	if(message)
		if(message[1])
			if(message[1] != "*")
				message = " [message]"
				var/list/accent_words = strings("accent_universal.json", "universal")

				for(var/key in accent_words)
					var/value = accent_words[key]
					if(islist(value))
						value = pick(value)

					message = replacetextEx(message, " [uppertext(key)]", " [uppertext(value)]")
					message = replacetextEx(message, " [capitalize(key)]", " [capitalize(value)]")
					message = replacetextEx(message, " [key]", " [value]")

	speech_args[SPEECH_MESSAGE] = trim(message)

/datum/species/beastkin/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/beastkin/get_skin_list()
	return sortList(list(
	"skin4" = "e2b9a3",
	"skin5" = "d9a284",
	"skin6" = "c9a893",
	"skin7" = "ba9882",
	"skin8" = "ac8369",
	"skin9" = "9c6f52",
	"skin10" = "4e3729"
	))

/datum/species/beastkin/get_hairc_list()
	return sortList(list(
	"brown - mud" = "362e25",
	"brown - oats" = "584a3b",
	"brown - grain" = "58433b",
	"brown - soil" = "48322a",

	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b",

	"red - berry" = "48322a",
	"red - wine" = "82534c",
	"red - sunset" = "82462b",
	"red - blood" = "822b2b"

	))

/datum/species/beastkin/random_name(gender,unique,lastname)

	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/human/humnorm.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/human/humnorf.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/human/humnorm.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/human/humnorf.txt") )
	return randname

/datum/species/beastkin/random_surname()
	return " [pick(world.file2list("strings/rt/names/human/humnorlast.txt"))]"
