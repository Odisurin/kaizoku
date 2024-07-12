
/obj/item/clothing/proc/step_action() //this was made to rewrite clown shoes squeaking
	SEND_SIGNAL(src, COMSIG_CLOTHING_STEP_ACTION)

/obj/item/clothing/suit/roguetown/armor
	slot_flags = ITEM_SLOT_ARMOR
	body_parts_covered = CHEST
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	equip_sound = 'sound/blank.ogg'
	drop_sound = 'sound/blank.ogg'
	pickup_sound =  'sound/blank.ogg'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	sleevetype = "shirt"
	edelay_type = 1
	equip_delay_self = 25
	bloody_icon_state = "bodyblood"
	boobed = TRUE
	resistance_flags = FIRE_PROOF
	blocksound = PLATEHIT
	sellprice = 1
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	experimental_onhip = TRUE
	nodismemsleeves = TRUE

/obj/item/clothing/suit/roguetown/armor/chainmail
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "haubergeon"
	desc = "A maille shirt typically made out of steel. Successor to the iron chain vest. A firm medium protection format."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "haubergeon"
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP) // Chainmail is meant to stop cuts and chops, but is weaker against stabs and arrows on its own. Wear a gambeson under it.
	blocksound = CHAINHIT
	var/do_sound = FALSE
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	armor_class = ARMOR_CLASS_MEDIUM
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/suit/roguetown/armor/chainmail/Initialize()
	. = ..()
	if(do_sound)
		AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/chain (1).ogg',\
													'sound/foley/footsteps/armor/chain (2).ogg',\
													'sound/foley/footsteps/armor/chain (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/chainmail/iron
	icon_state = "ichainmail"
	name = "chainmaille"
	desc = "A chain vest made of heavy iron rings. Good protection form against melee weaponry of all kind."
	body_parts_covered = CHEST|GROIN|VITALS
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	armor_class = ARMOR_CLASS_MEDIUM
	smeltresult = /obj/item/ingot/iron
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "hauberk"
	desc = "A longer steel maille that protects the legs."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "hauberk"
	item_state = "hauberk"
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	do_sound = TRUE
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/chainmail/chainkini
	name = "amazon mail"
	desc = ""
	icon_state = "chainkini"
	item_state = "chainkini"
	allowed_sex = list(FEMALE)
	allowed_race = ALL_RACES_LIST
	body_parts_covered = CHEST|GROIN
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	armor_class = ARMOR_CLASS_LIGHT
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/suit/roguetown/armor/plate
	slot_flags = ITEM_SLOT_ARMOR
	name = "steel half-plate"
	desc = "\'Adventurer-fit\' plate armor with polldrons."
	body_parts_covered = CHEST|GROIN|VITALS
	icon_state = "halfplate"
	item_state = "halfplate"
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	nodismemsleeves = TRUE
	max_integrity = 500
	allowed_sex = list(MALE, FEMALE)
	var/do_sound = TRUE
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/plate/Initialize()
	. = ..()
	if(do_sound)
		AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/plate (1).ogg',\
													'sound/foley/footsteps/armor/plate (2).ogg',\
													'sound/foley/footsteps/armor/plate (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/plate/half
	slot_flags = ITEM_SLOT_ARMOR
	name = "steel cuirass"
	desc = "A cuirass of steel. Lightweight and highly durable."
	body_parts_covered = CHEST|VITALS
	icon_state = "cuirass"
	item_state = "cuirass"
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed_race = ALL_RACES_LIST
	nodismemsleeves = TRUE
	do_sound = FALSE
	blocking_behavior = null
	max_integrity = 300
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/plate/full
	name = "plate armor"
	desc = "Full plate. Leg protecting tassets, groin cup, armored vambraces."
	icon_state = "plate"
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	equip_delay_self = 80

/obj/item/clothing/suit/roguetown/armor/plate/half/iron
	name = "iron breastplate"
	icon_state = "ibreastplate"
	max_integrity = 200
	smeltresult = /obj/item/ingot/iron
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/plate/half/elven
	name = "elven guardian cuirass"
	desc = "A cuirass made of steel with a thin decorative gold plating. Lightweight and durable."
	color = COLOR_ASSEMBLY_GOLD

/obj/item/clothing/suit/roguetown/armor/plate/scale
	slot_flags = ITEM_SLOT_ARMOR
	name = "scalemail"
	desc = "A scale shirt typically made out of various materials, this one is made from steel. Offers a decent durability. "
	body_parts_covered = CHEST|VITALS|GROIN|LEGS
	allowed_sex = list(MALE, FEMALE)
	icon_state = "lamellar"
	max_integrity = 200
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/heartfelt/lord
	slot_flags = ITEM_SLOT_ARMOR
	name = "coat of armor"
	desc = "A lordly coat of armor."
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	icon_state = "heartfelt"
	item_state = "heartfelt"
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed_sex = list(MALE)
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 150
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/heartfelt/hand
	slot_flags = ITEM_SLOT_ARMOR
	name = "coat of armor"
	desc = "A lordly coat of armor."
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	icon_state = "heartfelt_hand"
	item_state = "heartfelt_hand"
	armor = list("melee" = 90, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed_sex = list(MALE)
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 120
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/brigandine
	slot_flags = ITEM_SLOT_ARMOR
	name = "brigandine"
	desc = "A coat with plates concealed inside an exterior fabric. Protects the user from melee impacts and also ranged attacks to an extent."
	icon_state = "brigandine"
	blocksound = SOFTHIT
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 500
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	allowed_sex = list(MALE, FEMALE)
	nodismemsleeves = TRUE
	anvilrepair = /datum/skill/craft/armorsmithing
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/suit/roguetown/armor/brigandine/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/coatplates (1).ogg',\
												'sound/foley/footsteps/armor/coatplates (2).ogg',\
												'sound/foley/footsteps/armor/coatplates (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/brigandine/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/suit/roguetown/armor/brigandine/captain/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/armor/brigandine/captain/lordcolor(primary,secondary)
	detail_tag = "_det"
	detail_color = primary
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_cloak()

/obj/item/clothing/suit/roguetown/armor/brigandine/captain/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/armor/brigandine/coatplates
	slot_flags = ITEM_SLOT_ARMOR
	name = "coat of plates"
	desc = "A leather coat with plates attached to it to increase protection while retaining mobility"
	icon_state = "coat_of_plates"
	blocksound = PLATEHIT
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	max_integrity = 250
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/armordress
	slot_flags = ITEM_SLOT_ARMOR
	name = "padded dress"
	desc = "A padded dress that is usually worn by the female nobility. Offers some protection against melee."
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|VITALS
	icon_state = "armordress"
	armor = list("melee" = 40, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT)
	blocksound = SOFTHIT
	allowed_sex = list("female")
	allowed_race = list("human", "tiefling", "elf", "aasimar", "abyssariad")
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/armordress/alt
	icon_state = "armordressalt"

/obj/item/clothing/suit/roguetown/armor/gambeson
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "gambeson"
	desc = "A gambeson is a padded defensive jacket that is worn as armour separately, combined with mail or plate armour. On its own, protects the wearer slightly."
	icon_state = "gambeson"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|VITALS
	armor = list("melee" = 60, "bullet" = 30, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT,BCLASS_BLUNT)
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/gambeson/light
	name = "light gambeson"
	armor = list("melee" = 50, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	name = "padded gambeson"
	prevent_crits = list(BCLASS_CUT,BCLASS_BLUNT,BCLASS_STAB)
	armor = list("melee" = 70, "bullet" = 40, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/suit/roguetown/armor/gambeson/lord
	name = "arming jacket"
	icon_state = "dgamb"
	allowed_sex = list(MALE)
	allowed_race = list("human", "tiefling", "aasimar", "abyssariad")

/obj/item/clothing/suit/roguetown/armor/leather
	name = "leather armor"
	desc = "A light armor typically made out of boiled leather. Offers modest protection against blades and clubs and has low integrity, but better than nothing."
	icon_state = "leather"
//	color = "#514339"
	body_parts_covered = CHEST|GROIN|VITALS
	armor = list("melee" = 40, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	nodismemsleeves = TRUE
	max_integrity = 150
	sellprice = 20
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/leather/hide
	name = "hide armor"
	desc = "Similiar to leather armor. Offers slightly higher integrity and melee protection."
	armor = list("melee" = 50, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	icon_state = "hidearmor"
	max_integrity = 250
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/leather/studded
	name = "studded leather armor"
	desc = "A leather, flexible armor typically reinforced with close-set rivets. Offers decent integrity. Best choice when it comes to leather armors."
	icon_state = "studleather"
	item_state = "studleather"
	blocksound = SOFTHIT
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_CHOP, BCLASS_TWIST)
	armor = list("melee" = 60, "bullet" = 25, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	nodismemsleeves = TRUE
	body_parts_covered = CHEST|GROIN|VITALS
	max_integrity = 400
	sellprice = 25
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/leather/vest
	name = "leather vest"
	desc = "A leather vest with no sleeves, won't really protect much."
	icon_state = "vest"
	item_state = "vest"
	color = "#514339"
	armor = list("melee" = 60, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT)
	blocksound = SOFTHIT
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|VITALS|LEGS
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	sleevetype = null
	sleeved = null
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/leather/vest/sailor
	name = "sea jacket"
	icon_state = "sailorvest"
	color = null
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	sleevetype = "shirt"

/obj/item/clothing/suit/roguetown/armor/leather/vest/sailor/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/storage/concrete)
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		STR.max_combined_w_class = 2
		STR.max_w_class = WEIGHT_CLASS_NORMAL
		STR.max_items = 1

/obj/item/clothing/suit/roguetown/armor/leather/vest/sailor/dropped(mob/living/carbon/human/user)
	..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		var/list/things = STR.contents()
		for(var/obj/item/I in things)
			STR.remove_from_storage(I, get_turf(src))

/obj/item/clothing/suit/roguetown/armor/leather/vest/sailor/nightman
	name = "silk jacket"
	icon_state = "nightman"
	sleeved = 'icons/roguetown/clothing/onmob/armor.dmi'
	allowed_sex = list(MALE)
	allowed_race = list("human", "tiefling", "aasimar", "abyssariad")


/obj/item/clothing/suit/roguetown/armor/leather/vest/hand
	name = "Hand's vest"
	icon_state = "handcoat"
	color = null
	allowed_sex = list(MALE, FEMALE)
	allowed_race = list("human", "tiefling", "dwarf", "elf", "aasimar")

/obj/item/clothing/suit/roguetown/armor/leather/vest/black
	color = "#3c3a38"

/obj/item/clothing/suit/roguetown/armor/workervest
	name = "striped tunic"
	desc = "A common tunic worn by just about anyone. Nothing special, but essential."
	icon_state = "workervest"
	armor = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|VITALS
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	sleevetype = null
	sleeved = null
	nodismemsleeves = TRUE
	boobed = TRUE

/obj/item/clothing/suit/roguetown/armor/workervest/Initialize()
	color = pick("#94b4b6", "#ba8f9e", "#bd978c", "#92bd8c", "#c7c981")
	..()

/obj/item/clothing/suit/roguetown/armor/silkcoat
	name = "silk coat"
	desc = "A padded dressing made from the finest silks."
	icon_state = "bliaut"
	color = null
	armor = list("melee" = 40, "bullet" = 7, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_TWIST)
	blocksound = SOFTHIT
	slot_flags = ITEM_SLOT_ARMOR
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|LEGS|VITALS|GROIN
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	sleevetype = "shirt"
	max_integrity = 100
	sellprice = 50
	armor_class = ARMOR_CLASS_LIGHT
	allowed_sex = list(FEMALE)
	allowed_race = list("humen", "tiefling", "dwarfm","argonian", "elfd", "elfw", "helf", "aasimar")

/obj/item/clothing/suit/roguetown/armor/silkcoat/Initialize()
	color = pick(CLOTHING_PURPLE, null,CLOTHING_GREEN, CLOTHING_RED)
	..()

/obj/item/clothing/suit/roguetown/armor/plate/half/iron/orc
	name = "orc mail"
	icon_state = "marauder_armor_item"
	item_state = "marauder_armor"
	icon = 'icons/roguetown/mob/monster/orc.dmi'
	smeltresult = /obj/item/ingot/iron
	allowed_race = list("orc")
	armor = list("melee" = 70, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	armor_class = ARMOR_CLASS_MEDIUM
	max_integrity = 120
	sellprice = 10

/obj/item/clothing/suit/roguetown/armor/plate/half/grenzelhoft
	slot_flags = ITEM_SLOT_ARMOR
	name = "Grenzelhoft cuirass"
	desc = "A basic cuirass built from black-steel. It's somewhat more durable than regular steel."
	icon_state = "grenzelcuirass"
	item_state = "grenzelcuirass"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	boobed = TRUE
	max_integrity = 400


/obj/item/clothing/suit/roguetown/armor/rare
	icon = 'icons/roguetown/topadd/takyon/Racial_Armour.dmi'
	mob_overlay_icon = 'icons/roguetown/topadd/takyon/onmob_racial.dmi'
	sleeved = 'icons/roguetown/topadd/takyon/onmob_racial.dmi'
	sleevetype = null

/obj/item/clothing/suit/roguetown/armor/rare/elfplate
	slot_flags = ITEM_SLOT_ARMOR
	name = "elvish plate"
	desc = "A fine suit of sleek, moulded elvish metal. It's interlocking nature and light weight allow for increased maneuverability."
	body_parts_covered = CHEST|VITALS
	icon_state = "elfchest"
	item_state = "elfchest"
	allowed_race = list("elf", "half-elf", "dark elf")
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	nodismemsleeves = TRUE
	max_integrity = 500
	var/do_sound = TRUE
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/rare/elfplate/Initialize()
	. = ..()
	if(do_sound)
		AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/fullplate (1).ogg',\
													'sound/foley/footsteps/armor/fullplate (2).ogg',\
													'sound/foley/footsteps/armor/fullplate (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/rare/dwarfplate
	slot_flags = ITEM_SLOT_ARMOR
	name = "dwarvish plate"
	desc = "Plate armor made out of the sturdiest, finest dwarvish metal armor. It's as heavy and durable as it gets."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "dwarfchest"
	item_state = "dwarfchest"
	allowed_race = list("dwarf")
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	nodismemsleeves = TRUE
	max_integrity = 500
	var/do_sound = TRUE
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/rare/dwarfplate/Initialize()
	. = ..()
	if(do_sound)
		AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/fullplate (1).ogg',\
													'sound/foley/footsteps/armor/fullplate (2).ogg',\
													'sound/foley/footsteps/armor/fullplate (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/rare/humanswplate
	slot_flags = ITEM_SLOT_ARMOR
	name = "northern plate"
	desc = "The heaviest, most durable set of armor that the northern Humen craft. It's said it's smiths pray for Ravox's divination during the smelting process."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "human_swordchest"
	item_state = "human_swordchest"
	allowed_race = list("human")
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	nodismemsleeves = TRUE
	max_integrity = 500
	allowed_sex = list(MALE)
	var/do_sound = TRUE
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/rare/dwarfplate/Initialize()
	. = ..()
	if(do_sound)
		AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/fullplate (1).ogg',\
													'sound/foley/footsteps/armor/fullplate (2).ogg',\
													'sound/foley/footsteps/armor/fullplate (3).ogg'), 100)

/obj/item/clothing/suit/roguetown/armor/rare/humanspplate
	slot_flags = ITEM_SLOT_ARMOR
	name = "southern plate"
	desc = "Thick, segmented Zybantean plate armor. Allows for maximum durability when thrusting foreward a polearm, without sacrificing durability."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "human_spearchest"
	item_state = "human_spearchest"
	allowed_race = list("human")
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	nodismemsleeves = TRUE
	max_integrity = 500
	allowed_sex = list(MALE)
	var/do_sound = TRUE
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/rare/dwarfplate/Initialize()
	. = ..()
	if(do_sound)
		AddComponent(/datum/component/squeak, list('sound/foley/footsteps/armor/fullplate (1).ogg',\
													'sound/foley/footsteps/armor/fullplate (2).ogg',\
													'sound/foley/footsteps/armor/fullplate (3).ogg'), 100)

////Kaizoku Armor Content////

/obj/item/clothing/suit/roguetown/armor/kaizoku
	icon = 'icons/kaizoku/clothingicon/armor.dmi'
	mob_overlay_icon = 'icons/kaizoku/clothing/armor.dmi'
	sleeved = 'icons/kaizoku/clothing/armor.dmi'
	sleevetype = null

/obj/item/clothing/suit/roguetown/armor/kaizoku/leather/muneate
	name = "muneate"
	desc = "A simple leather chest protector for casual archers. Not very protective, but can be repaired anytime."
	icon_state = "vest"
	item_state = "vest"
	color = "#514339"
	armor = list("melee" = 30, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT)
	blocksound = SOFTHIT
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	max_integrity = 100
	sewrepair = TRUE
	//brokenrepair = TRUE
	sleevetype = null
	sleeved = null
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/kaizoku/plate/nanbando
	slot_flags = ITEM_SLOT_ARMOR
	name = "steel nanbando"
	desc = "Abyssariad steel cuirass, refined and with additional sode for protection. Rare and prized by High-ranking samurais, this design has been adquired by raided humen settlements."
	body_parts_covered = CHEST|VITALS
	icon_state = "nanbando"
	item_state = "nanbando"
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed_race = ALL_RACES_LIST
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 300
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/kaizoku/plate/nanbando/cuirass
	slot_flags = ITEM_SLOT_ARMOR
	name = "steel nanbando cuirass"
	desc = "The Abyssariad steel cuirass. Usually sourced from fallen raided soldiers, their armors taken and reshaped."
	icon_state = "nanbandoc"
	item_state = "nanbandoc"
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed_race = ALL_RACES_LIST
	blocking_behavior = null
	max_integrity = 300
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/chainmail/kusari
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "hauberk"
	desc = "A longer steel maille that protects the legs."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "hauberk"
	item_state = "hauberk"
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	do_sound = TRUE
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/plate/full
	name = "plate armor"
	desc = "Full plate. Leg protecting tassets, groin cup, armored vambraces."
	icon_state = "plate"
	body_parts_covered = CHEST|GROIN|VITALS|LEGS|ARMS
	equip_delay_self = 80

/obj/item/clothing/suit/roguetown/armor/kaizoku/chainmail/iron
	icon_state = "ichainmail"
	name = "chainmaille"
	desc = "A chain vest made of heavy iron rings. Good protection form against melee weaponry of all kind."
	body_parts_covered = CHEST|GROIN|VITALS
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	armor_class = ARMOR_CLASS_MEDIUM
	smeltresult = /obj/item/ingot/iron
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/suit/roguetown/armor/kaizoku/plate/mirror/iron
	name = "iron mirror armor"
	icon_state = "imirrorarmor"
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 200
	smeltresult = /obj/item/ingot/iron
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/kaizoku/plate/bronze
	name = "bronze breastplate"
	icon_state = "bbreastplate"
	desc = "A simple Kappa design casted on clay using bronze, copying the prewars Abyssariad armors. Protects less, but can endure a long beating."
	armor = list("melee" = 60, "bullet" = 60, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 350
	smeltresult = /obj/item/ingot/copper
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/suit/roguetown/armor/kaizoku/shozoku
	name = "shozoku"
	desc = "The main garment used by Ninjas and Kunoichis to blend into the night. Not viable during daylight, but it is easy to store anywhere."
	icon_state = "shozoku"
	item_state = "shozoku"
	blocksound = SOFTHIT
	armor = list("melee" = 60, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT)
	blocksound = SOFTHIT
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	blade_dulling = DULLING_BASHCHOP
	body_parts_covered = CHEST|VITALS|LEGS|ARMS
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	sleevetype = null
	sleeved = null
	armor_class = ARMOR_CLASS_LIGHT
	sewrepair = TRUE
	nodismemsleeves = TRUE
	max_integrity = 150
	sellprice = 20

obj/item/clothing/suit/roguetown/armor/kaizoku/plate/sanmaido
	slot_flags = ITEM_SLOT_ARMOR
	name = "san mai-do"
	desc = "A cheap cuirass with three main plates riveted together with cloth. Flexible and dynamic, \
	it is integral for many poor footsoldiers, usually conscripted from isolated abyssariad villages or raiders."
	body_parts_covered = CHEST|VITALS
	allowed_sex = list(MALE, FEMALE)
	icon_state = "sanmaido"
	max_integrity = 200
	equip_delay_self = 25
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/suit/roguetown/armor/kaizoku/tatami
	slot_flags = ITEM_SLOT_ARMOR
	name = "steel karuta tatami"
	desc = "a foldable, lightweight armor for convenient motion and manufacturing ease. \
	It is made of rectangular steel plates sewn into chainmail. Often used by Ashigarus, it is the best light armor."
	body_parts_covered = CHEST|ARMS|VITALS
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST) //Mixture of Chainmail and Segmented plates in a singular armor. Not a common thing on Europe. The space inbetween the rectangles makes it vulnerable to perfuration.
	allowed_sex = list(MALE, FEMALE)
	armor = list("melee" = 100, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	icon_state = "laminartatami"
	smeltresult = null
	max_integrity = 250
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	equip_delay_self = 25
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/suit/roguetown/armor/kaizoku/tatami/itatami
	slot_flags = ITEM_SLOT_ARMOR
	name = "iron karuta tatami"
	desc = "a foldable, lightweight armor for convenient motion and manufacturing ease. \
	It is made of lacquered iron squares sewn into a padded cloth or leather backing."
	allowed_sex = list(MALE, FEMALE)
	armor = list("melee" = 80, "bullet" = 70, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	icon_state = "tatami"
	max_integrity = 150

/obj/item/clothing/suit/roguetown/armor/kaizoku/tatami/kikko
	slot_flags = ITEM_SLOT_ARMOR
	name = "kikko tatami"
	desc = "A leather armor with small iron hexagon plates that has been sew on the material. Foldeable, cheap, easy to make and easy to repair."
	body_parts_covered = CHEST|VITALS
	prevent_crits = list(BCLASS_CUT,BCLASS_BLUNT,BCLASS_STAB)
	allowed_sex = list(MALE, FEMALE)
	armor = list("melee" = 70, "bullet" = 40, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	icon_state = "kikko"
	smeltresult = null
	max_integrity = 150
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	equip_delay_self = 25
	armor_class = ARMOR_CLASS_LIGHT
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sewrepair = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/armor/kaizoku/plate/oyoroi
	slot_flags = ITEM_SLOT_ARMOR
	name = "o-yoroi"
	desc = "Heavy-duty lamellar armor, designed for protection and flexibility for esteemed high-ranking samurais on horseback. \
	Most suitable for horse archers, this armor can be found on those fighting on land."
	body_parts_covered = CHEST|VITALS|GROIN|LEGS|ARMS
	allowed_sex = list(MALE, FEMALE)
	icon_state = "oyoroi"
	max_integrity = 300
	smeltresult = /obj/item/ingot/steel
	equip_delay_self = 40
	armor_class = ARMOR_CLASS_HEAVY
	detail_color = CLOTHING_RED

/obj/item/clothing/suit/roguetown/armor/kaizoku/plate/oyoroi/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/suit/roguetown/armor/kaizoku/plate/oyoroi/samurai/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/armor/plate/kaizoku/oyoroi/samurai/lordcolor(primary,secondary)
	detail_tag = "_jan"
	detail_color = primary
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_cloak()

/obj/item/clothing/suit/roguetown/armor/plate/kaizoku/oyoroi/samurai/Destroy()
	GLOB.lordcolor -= src
	return ..()
