
/obj/item/clothing/gloves/roguetown
	slot_flags = ITEM_SLOT_GLOVES
	body_parts_covered = HANDS
	sleeved = 'icons/roguetown/clothing/onmob/gloves.dmi'
	icon = 'icons/roguetown/clothing/gloves.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/gloves.dmi'
	bloody_icon_state = "bloodyhands"
	sleevetype = "shirt"
	max_heat_protection_temperature = 361

/obj/item/clothing/gloves/roguetown/leather
	name = "leather gloves"
	desc = "Gloves made out of sturdy leather. Warm, and offer very small protection against melee attacks."
	icon_state = "leather_gloves"
	armor = list("melee" = 12, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE

/obj/item/clothing/gloves/roguetown/leather/black
	color = CLOTHING_BLACK

/obj/item/clothing/gloves/roguetown/fingerless
	name = "fingerless gloves"
	desc = "Fingerless gloves made out of leather offering no melee protection."
	icon_state = "fingerless_gloves"
	resistance_flags = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE


/obj/item/clothing/gloves/roguetown/angle
	name = "heavy leather gloves"
	desc = "A heavier, more reinforced format of leather gloves. These look like they can take some beating. Fair melee protection and decent durability."
	icon_state = "angle"
	armor = list("melee" = 30, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = null
	blocksound = SOFTHIT
	max_integrity = 100
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE

/obj/item/clothing/gloves/roguetown/chain
	name = "chain gauntlets"
	desc = "Gauntlets made out of steel chains. Great melee protection and higher integrity."
	icon_state = "cgloves"
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_STAB)
	armor_class = ARMOR_CLASS_MEDIUM
	resistance_flags = null
	blocksound = CHAINHIT
	max_integrity = 200
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/gloves/roguetown/chain/iron
	icon_state = "icgloves"

//rogtodo sprites for this
/obj/item/clothing/gloves/roguetown/plate
	name = "plate gauntlets"
	desc = "Gauntlets made out of of steel ingots. Offer the best protection against melee attacks and have high integrity."
	icon_state = "gauntlets"
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT)
	armor_class = ARMOR_CLASS_HEAVY
	resistance_flags = null
	blocksound = PLATEHIT
	body_parts_covered = ARMS|HANDS
	max_integrity = 400
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/gloves/roguetown/grenzelgloves
	name = "grenzelhoft gloves"
	desc = ""
	icon_state = "grenzelgloves"
	item_state = "grenzelgloves"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	armor = list("melee" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT)
	resistance_flags = null
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE

/obj/item/clothing/gloves/roguetown/rare
	icon = 'icons/roguetown/topadd/takyon/Racial_Armour.dmi'
	mob_overlay_icon = 'icons/roguetown/topadd/takyon/onmob_racial.dmi'
	sleeved = 'icons/roguetown/topadd/takyon/onmob_racial.dmi'
	sleevetype = null

/obj/item/clothing/gloves/roguetown/rare/elfplate
	name = "elvish plate gauntlets"
	desc = ""
	item_state = "elfhand"
	icon_state = "elfhand"
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT)
	resistance_flags = null
	allowed_race = list("elf", "half-elf", "dark elf", "abyssariad")
	blocksound = PLATEHIT
	body_parts_covered = HANDS
	max_integrity = 400
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/gloves/roguetown/rare/humanswplate
	name = "northern plate gauntlets"
	desc = ""
	item_state = "human_swordhand"
	icon_state = "human_swordhand"
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT)
	resistance_flags = null
	allowed_race = list("human")
	allowed_sex = list(MALE)
	blocksound = PLATEHIT
	body_parts_covered = HANDS
	max_integrity = 400
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/gloves/roguetown/rare/humanspplate
	name = "southern plate gauntlets"
	desc = ""
	item_state = "human_spearhand"
	icon_state = "human_spearhand"
	armor = list("melee" = 100, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT)
	resistance_flags = null
	allowed_race = list("human")
	allowed_sex = list(MALE)
	blocksound = PLATEHIT
	body_parts_covered = HANDS
	max_integrity = 400
	blade_dulling = DULLING_BASH
	break_sound = 'sound/foley/breaksound.ogg'
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/gloves/roguetown/leather/feld
	name = "feldsher's gloves"
	desc = "Improved grip for wielding the tools of the trade."
	icon_state = "feldgloves"
	item_state = "feldgloves"

/obj/item/clothing/gloves/roguetown/leather/phys
	name = "physicker's gloves"
	desc = "Improved grip for wielding disembowled organs."
	icon_state = "surggloves"
	item_state = "surggloves"

/obj/item/clothing/gloves/roguetown/dwarfgauntlets
	name = "dwarven gauntlets"
	desc = "A heavy set of plate gauntlets which provide excellent protection."
	icon_state = "dwarvengauntlets"
	item_state = "dwarvengauntlets"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 100, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	resistance_flags = null
	blocksound = PLATEHIT

/* Re-using Gundam content here.
/obj/item/clothing/gloves/dusters
	name = "aluminium knuckle dusters"
	desc = "More pain for them, less for you."
	description_info = "Have to be worn in your gloves slot to increase your punch damage."
	icon_state = "dusters"
	item_state = "dusters"
	min_cold_protection_temperature = null // They don't protect you from the cold at all!
	var/punch_increase = 5
	var/dusters_givith = FALSE
	var/to_remove_givith = FALSE
	price_tag = 10

/obj/item/clothing/gloves/dusters/dropped(var/mob/M)
	..()
	update_dusters(M)

/obj/item/clothing/gloves/dusters/equipped(var/mob/M)
	.=..()
	update_dusters(M)


/obj/item/clothing/gloves/dusters/proc/update_dusters(mob/living/carbon/human/user)
	if(istype(user))
		if(user.gloves == src && !dusters_givith)
			user.punch_damage_increase += punch_increase
			dusters_givith = TRUE
			to_remove_givith = TRUE
		if(to_remove_givith && !(user.gloves == src))
			user.punch_damage_increase -= punch_increase
			dusters_givith = FALSE
			to_remove_givith = FALSE

=>the equipment area
/obj/item/clothing/gloves/dusters/flamecestus
	name = "Cataphract flame cestus"
	desc = "Silvery wrapping with hollow tubes for radiance. Coats the enemy in radiance to ignite."
	icon_state = "dusters_radiance"
	item_state = "dusters_radiance"
	punch_increase = 5 // Just a little extra damage, already strong by being able to light non-robots on fire.
	price_tag = 0

/obj/item/clothing/gloves/dusters/flamecestus/update_dusters(mob/living/carbon/human/user)
	if(istype(user))
		// Give us the flag that causes us to light people on fire with unarmed attacks.
		if(user.gloves == src && !dusters_givith)
			user.punch_damage_increase += punch_increase
			dusters_givith = TRUE
			to_remove_givith = TRUE
			user.shining_finger = TRUE
			user.fire_punch += 1
		// Remove the flag from us when we take off our gloves.
		if(to_remove_givith && !(user.gloves == src))
			user.punch_damage_increase -= punch_increase
			dusters_givith = FALSE
			to_remove_givith = FALSE
			user.shining_finger = FALSE
			user.fire_punch -= 1

=>Human Attackhand area

			if(fire_punch > 0)
				fire_stacks += fire_punch
				fire_act()
			if(water_punch > 0)
				fire_stacks -= water_punch
				fire_act()
			if(eletric_punch > 0)
				damage_through_armor(real_damage, (attack.deal_halloss ? HALLOSS : BURN), affecting, ARMOR_ENERGY, sharp = attack.sharp, edge = attack.edge)

=>central content for damage

/obj/item/stalker_hand_annomlie/pillar
	name = "The pillar"
	desc = "A smooth pilar made of black stone, It is well polished and seems very strong."
	var/blood_difference = 60
	var/punch_increase = 25 //IDK

/obj/item/stalker_hand_annomlie/pillar/update_annomlie(mob/living/carbon/human/user)
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		if(H.belt == src && !annomlie_givith)
			H.punch_damage_increase += punch_increase
			annomlie_givith = TRUE
			to_remove_givith = TRUE
			if(H.species && H.species.flags & NO_BLOOD) //We want the var for safety but we can do without the actual blood.
				return
			H.vessel.maximum_volume  -= blood_difference
			H.drip_blood(blood_difference)
		if(to_remove_givith && !(H.belt == src))
			H.punch_damage_increase -= punch_increase
			annomlie_givith = FALSE
			to_remove_givith = FALSE

=>humandefines
	var/punch_damage_increase = 0 // increases... punch damage... can be affected by clothing or implants.
	var/shining_finger = FALSE // When this is true, our harm intent punches burn carbon creatures. Used on Custodian knuckledusters.

=>THIS OWN SERVER define. Use this for punch dmg

/mob/living/carbon/human/get_punch_dmg()
	var/damage = 12

	var/used_str = STASTR

	if(domhand)
		used_str = get_str_arms(used_hand)

	if(used_str >= 11)
		damage = max(damage + (damage * ((used_str - 10) * 0.3)), 1)

	if(used_str <= 9)
		damage = max(damage - (damage * ((10 - used_str) * 0.1)), 1)

	if(mind)
		if(mind.has_antag_datum(/datum/antagonist/werewolf))
			return 30

	return damage

*/