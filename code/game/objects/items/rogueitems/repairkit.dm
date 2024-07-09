#define REPAIR_SOFT_ARMOR	/datum/skill/misc/sewing
#define REPAIR_METAL_ARMOR	/datum/skill/craft/armorsmithing
#define REPAIR_OMNI /datum/skill/craft/blacksmithing

/obj/item/repairkit
	name = "stitchwork armor repair kit"
	desc = "A collection of spare cloth, thread, and needles that can restore some integrity to soft armor that is otherwise broken, such as gambesons or boiled leather. It can be refilled with cloth."
	icon = 'icons/roguetown/items/misc.dmi'
	lefthand_file = 'icons/mob/inhands/misc/food_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/food_righthand.dmi'
	icon_state = "softrepkit"
	var/repairskill = REPAIR_SOFT_ARMOR
	var/maxuses = 20
	var/currentuses = 5
	var/refillitem = /obj/item/natural/cloth
	var/infinite = FALSE

/obj/item/repairkit/hardarmor
	name = "metalwork armor repair kit"
	desc = "A ball pein hammer and a collection of iron rivets, rings, and washers that can be used to restore the integrity of plate or maille armor that has begun to fall apart. It can be refilled with an iron ingot."
	icon_state = "hardrepkit"
	repairskill = REPAIR_METAL_ARMOR
	refillitem = /obj/item/ingot/iron

/obj/item/repairkit/hardarmor/malum
	name = "forgemaster's armor repair kit"
	desc = "A blessed hammer and bag of mystical nails for repairing any broken armor or weapon."
	repairskill = REPAIR_OMNI
	infinite = TRUE

/obj/item/repairkit/examine()
	. = ..()
	if(!infinite)
		. += "<span class='bold'>It has [currentuses] of [maxuses] uses left.</span>"
	else
		. += "Can be used indefinitely."

/obj/item/repairkit/attack_obj(obj/O, mob/living/user)
	if(user.mind)
		var/userskill = user.mind.get_skill_level(repairskill)
		if(isitem(O))
			var/obj/item/I = O
			if(!I.obj_broken)
				to_chat(user, "<span class='warning'>This equipment isn't broken!</span>")
				return
			else
				if(userskill < 2)//Making a broken item repairable again is more difficult than repairing an item that isn't broken yet.
					to_chat(user, "<span class='warning'>I don't have the skills to repair a broken item!</span>")
					return
				if(currentuses < 1)
					to_chat(user, "<span class='warning'>The kit has no materials left!</span>")
					return
				if(repairskill == REPAIR_OMNI)
					playsound(user,pick('sound/items/bsmith1.ogg','sound/items/bsmith2.ogg','sound/items/bsmith3.ogg','sound/items/bsmith4.ogg'), 100, FALSE)
					to_chat(user, "<span class='info'>I begin restoring the integrity of [I]</span>")
					if(do_after(user, 50, target = I))
						playsound(user,pick('sound/items/bsmith1.ogg','sound/items/bsmith2.ogg','sound/items/bsmith3.ogg','sound/items/bsmith4.ogg'), 100, FALSE)
						user.visible_message("<span class='info'>[user] restores the integrity of [I]!</span>")
						I.obj_broken = FALSE
						I.obj_integrity = (I.max_integrity / 10)
						I.update_icon()
						update_uses(-1)
						return
				if(I.sewrepair && repairskill == REPAIR_SOFT_ARMOR)
					playsound(loc, 'sound/foley/sewflesh.ogg', 100, TRUE, -2)
					to_chat(user, "<span class='info'>I begin restoring the integrity of [I]</span>")
					if(do_after(user, 50, target = I))
						playsound(loc, 'sound/foley/sewflesh.ogg', 100, TRUE, -2)
						user.visible_message("<span class='info'>[user] restores the integrity of [I]!</span>")
						I.obj_broken = FALSE
						I.obj_integrity = (I.max_integrity / 10)
						I.update_icon()
						update_uses(-1)
						return
				if(I.anvilrepair && repairskill == I.anvilrepair)
					playsound(user,pick('sound/items/bsmith1.ogg','sound/items/bsmith2.ogg','sound/items/bsmith3.ogg','sound/items/bsmith4.ogg'), 100, FALSE)
					to_chat(user, "<span class='info'>I begin restoring the integrity of [I]</span>")
					if(do_after(user, 50, target = I))
						playsound(user,pick('sound/items/bsmith1.ogg','sound/items/bsmith2.ogg','sound/items/bsmith3.ogg','sound/items/bsmith4.ogg'), 100, FALSE)
						user.visible_message("<span class='info'>[user] restores the integrity of [I]!</span>")
						I.obj_broken = FALSE
						I.obj_integrity = (I.max_integrity / 10)
						I.update_icon()
						update_uses(-1)
						return
				else
					to_chat(user, "<span class='warning'>This item can't be repaired with this kind of kit!</span>")
					return
	return ..()

/obj/item/repairkit/attackby(obj/item/I, mob/user)
	if(infinite)
		to_chat(user, "<span class='green'>This kit is blessed by Malum and never requires replenishing.</span>")
		return TRUE
	if(istype(I, refillitem))
		if(currentuses > (maxuses - 5))
			to_chat(user, "<span class='warning'>The kit is too full to add more material!</span>")
			return FALSE
		else
			to_chat(user, "<span class='green'>I've added 5 uses to [src].</span>")
			update_uses(5)
			return
	else
		return ..()

/obj/item/repairkit/proc/update_uses(amount_used)
	currentuses = CLAMP(currentuses + amount_used, 0, maxuses)
	if(currentuses < 1)
		icon_state = "[initial(icon_state)]-0"
	else
		icon_state = "[initial(icon_state)]"
	update_icon()