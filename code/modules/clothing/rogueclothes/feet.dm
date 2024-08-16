/obj/item/clothing/shoes/roguetown
	name = "shoes"
	icon = 'icons/roguetown/clothing/feet.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/feet.dmi'
	desc = "Typical shoes worn by almost anyone."
	gender = PLURAL
	slot_flags = ITEM_SLOT_SHOES
	body_parts_covered = FEET
	sleeved = 'icons/roguetown/clothing/onmob/feet.dmi'
	sleevetype = "leg"
	bloody_icon_state = "shoeblood"
	equip_delay_self = 30
	resistance_flags = FIRE_PROOF

/obj/item/clothing/shoes/roguetown/nobleboot
	name = "noble boots"
	//dropshrink = 0.75
	color = "#d5c2aa"
	desc = "Fine dark leather boots. Offers light protection against melee attacks."
	gender = PLURAL
	icon_state = "nobleboots"
	item_state = "nobleboots"
	armor = list("melee" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/shortboots
	name = "shortboots"
	color = "#d5c2aa"
	desc = "A shorter format of boots worn by about anyone."
	gender = PLURAL
	icon_state = "shortboots"
	item_state = "shortboots"

/obj/item/clothing/shoes/roguetown/ridingboots
	name = "riding boots"
	color = "#d5c2aa"
	desc = "Boots designed for riding a mount."
	gender = PLURAL
	icon_state = "ridingboots"
	item_state = "ridingboots"

/obj/item/clothing/shoes/roguetown/boots/furlinedboots
	name = "fur lined boots"
	desc = "Leather boots lined with fur."
	gender = PLURAL
	icon_state = "furlinedboots"
	item_state = "furlinedboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/furlinedanklets
	name = "fur lined anklets"
	desc = "Leather anklets lined with fur, foot remains bare."
	gender = PLURAL
	icon_state = "furlinedanklets"
	item_state = "furlinedanklets"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	isbarefoot = TRUE

/obj/item/clothing/shoes/roguetown/boots/dwarfboots
	name = "dwarven boots"
	desc = "A heavy pair of steel plated boots."
	body_parts_covered = FEET
	icon_state = "dwarvenboots"
	item_state = "dwarvenboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

///obj/item/clothing/shoes/roguetown/ridingboots/Initialize()
//	. = ..()
//	AddComponent(/datum/component/squeak, list('sound/foley/spurs (1).ogg'sound/blank.ogg'=1), 50)

/obj/item/clothing/shoes/roguetown/simpleshoes
	name = "shoes"
	desc = "Simple shoes worn by about anyone."
	gender = PLURAL
	icon_state = "simpleshoe"
	item_state = "simpleshoe"
	resistance_flags = null
	color = "#473a30"

/obj/item/clothing/shoes/roguetown/simpleshoes/white
	color = null


/obj/item/clothing/shoes/roguetown/simpleshoes/buckle
	name = "shoes"
	icon_state = "buckleshoes"
	color = null

/obj/item/clothing/shoes/roguetown/simpleshoes/lord
	name = "shoes"
	desc = "Shoes typically worn by the King himself."
	gender = PLURAL
	icon_state = "simpleshoe"
	item_state = "simpleshoe"
	resistance_flags = null
	color = "#cbcac9"

/obj/item/clothing/shoes/roguetown/gladiator
	name = "leather sandals"
	desc = "Open design sandals made from sturdy leather. Can be typically seen worn by gladiators."
	gender = PLURAL
	icon_state = "gladiator"
	item_state = "gladiator"

/obj/item/clothing/shoes/roguetown/sandals
	name = "sandals"
	desc = "A standard sandals."
	gender = PLURAL
	icon_state = "sandals"
	item_state = "sandals"

/obj/item/clothing/shoes/roguetown/shalal
	name = "babouche"
	desc = ""
	gender = PLURAL
	icon_state = "shalal"
	item_state = "shalal"

/obj/item/clothing/shoes/roguetown/boots/armor
	name = "plated boots"
	desc = "Armored boots made from steel offering heavy protection against both melee and ranged attacks."
	body_parts_covered = FEET
	icon_state = "armorboots"
	item_state = "armorboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 500
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/shoes/roguetown/boots/armor/light
	name = "light plate boots"
	icon_state = "vboots"
	item_state = "vboots"
	desc = "Lightly armored boots made from iron offering protection against both melee and ranged attacks."
	armor = list("melee" = 80, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 250
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/shoes/roguetown/boots/leather
	name = "leather boots"
	//dropshrink = 0.75
	desc = "Boots made out of sturdy leather. Providing light protection against melee attacks."
	gender = PLURAL
	icon_state = "leatherboots"
	item_state = "leatherboots"
	armor = list("melee" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/jester
	name = "funny shoes"
	desc = "Shoes typically worn by a Jester."
	icon_state = "jestershoes"
	resistance_flags = null

/obj/item/clothing/shoes/roguetown/grenzelhoft
	name = "grenzelhoft boots"
	icon_state = "grenzelboots"
	item_state = "grenzelboots"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	armor = list("melee" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/rare
	icon = 'icons/roguetown/topadd/takyon/Racial_Armour.dmi'
	mob_overlay_icon = 'icons/roguetown/topadd/takyon/onmob_racial.dmi'
	sleeved = 'icons/roguetown/topadd/takyon/onmob_racial.dmi'
	sleevetype = null

/obj/item/clothing/shoes/roguetown/boots/rare/elfplate
	name = "elvish plated boots"
	desc = ""
	body_parts_covered = FEET
	icon_state = "elfshoes"
	item_state = "elfshoes"
	allowed_race = list("elf", "half-elf", "dark elf", "abyssariad")
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	color = null
	blocksound = PLATEHIT
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/rare/dwarfplate
	name = "dwarvish plated boots"
	allowed_race = list("dwarf")
	allowed_sex = list(MALE, FEMALE)
	desc = ""
	body_parts_covered = FEET|LEGS
	icon_state = "dwarvenboots"
	item_state = "dwarvenboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	color = null
	blocksound = PLATEHIT
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/rare/humanswplate
	name = "northern plate boots"
	allowed_race = list("human")
	allowed_sex = list(MALE)
	desc = ""
	body_parts_covered = FEET|LEGS
	icon_state = "human_swordshoes"
	item_state = "human_swordshoes"
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	color = null
	blocksound = PLATEHIT
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/rare/humanspplate
	name = "southern plate boots"
	allowed_race = list("human")
	allowed_sex = list(MALE)
	desc = ""
	body_parts_covered = FEET|LEGS
	icon_state = "human_spearshoe"
	item_state = "human_spearshoe"
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT)
	color = null
	blocksound = PLATEHIT
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/kaizoku
	icon = 'icons/kaizoku/clothingicon/feet.dmi'
	mob_overlay_icon = 'icons/kaizoku/clothing/feet.dmi'
	sleeved = 'icons/kaizoku/clothing/feet.dmi'

/obj/item/clothing/shoes/roguetown/boots
	name = "dark boots"
	//dropshrink = 0.75
	color = "#d5c2aa"
	desc = "Boots made out of darker materials. Offers light protection against melee attacks."
	gender = PLURAL
	icon_state = "blackboots"
	item_state = "blackboots"
	armor = list("melee" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/kaizoku/boots/armor/kusaritabi
	name = "kusari tabi"
	icon_state = "kusaritabi"
	item_state = "kusaritabi"
	desc = "The riveted chainmail version of the unarmored Tabi footwear."
	armor = list("melee" = 80, "bullet" = 80, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 250
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/shoes/roguetown/kaizoku/boots/armor/suneate
	name = "suneate boots"
	desc = "Armored suneate made from steel offering heavy protection against both melee and ranged attacks."
	body_parts_covered = FEET
	icon_state = "suneate"
	item_state = "suneate"
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	armor = list("melee" = 100, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 500
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/shoes/roguetown/kaizoku/jikatabi
	name = "jikatabi"
	desc = "A standard tabi."
	gender = PLURAL
	icon_state = "jikatabi"
	item_state = "jikatabi"
	body_parts_covered = FEET

/obj/item/clothing/shoes/roguetown/kaizoku/jikatabi/shinobi
	color = "#372161"

/obj/item/clothing/shoes/roguetown/kaizoku/boots/armor/dragontabi
	name = "dragontabi"
	icon_state = "dragontabi"
	item_state = "dragontabi"
	desc = "A tabi reinforced in dragon bones and asbestos, making it fire immune. Not very protective against physical damage, but still fairly durable."
	armor = list("melee" = 40, "bullet" = 40, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	max_integrity = 250
	armor_class = ARMOR_CLASS_MEDIUM
	heat_protection = LEGS|FEET
	body_parts_covered = LEGS|FEET
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/shoes/roguetown/kaizoku/geta
	name = "geta"
	desc = "A normal wooden geta most suitable for those who need to wander where the mud absorbs pressure."
	gender = PLURAL
	icon_state = "geta"
	item_state = "geta"
	body_parts_covered = FEET