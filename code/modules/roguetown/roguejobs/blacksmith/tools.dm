
/obj/item/rogueweapon/hammer
	force = 10
	possible_item_intents = list(/datum/intent/mace/strike,/datum/intent/mace/smash)
	name = "hammer"
	desc = ""
	icon_state = "hammer"
	icon = 'icons/roguetown/weapons/tools.dmi'
	sharpness = IS_BLUNT
	//dropshrink = 0.8
	wlength = 10
	slot_flags = ITEM_SLOT_HIP
	w_class = WEIGHT_CLASS_NORMAL
	associated_skill = /datum/skill/combat/axesmaces
	smeltresult = /obj/item/ingot/iron

/obj/proc/unbreak()
	return

/atom/proc/onanvil()
	if(!isturf(src.loc))
		return FALSE
	for(var/obj/machinery/anvil/T in src.loc)
		return TRUE
	return FALSE

/obj/structure
	var/hammer_repair

/obj/item/rogueweapon/hammer/attack_obj(obj/O, mob/living/user)
	var/amt2raise = 0
	var/repair_skill
	if(isitem(O))
		var/obj/item/I = O
		if(I.anvilrepair && I.max_integrity && !I.obj_broken)
//			if(!I.onanvil())
//				return ..()
			if(!isturf(I.loc))
				return
			if(I.obj_integrity >= I.max_integrity)
				to_chat(user, "<span class='green'>This equipment is in perfect condition.</span>")
				return
			var/repair_percent = 0.05
			if(user.mind)
				amt2raise = user.STAINT
				repair_skill = user.mind.get_skill_level(I.anvilrepair)
				if(repair_skill <= 0)
					if(prob(30 + user.STAINT))
						repair_percent = 0.05
					else
						repair_percent = 0
				else
					repair_percent = max(user.mind.get_skill_level(I.anvilrepair) * 0.06, 0.01)
			playsound(src,'sound/items/bsmithfail.ogg', 100, FALSE)
			if(repair_percent)
				repair_percent = repair_percent * I.max_integrity
				I.obj_integrity = min(I.obj_integrity+repair_percent, I.max_integrity)
				user.visible_message("<span class='info'>[user] repairs [I]!</span>")
				if(amt2raise > 0)
					user.mind.adjust_experience(repair_skill, amt2raise, FALSE)
			else
				user.visible_message("<span class='warning'>[user] damages [I]!</span>")
				I.take_damage(5, BRUTE, "melee")
				if(amt2raise > 0)
					user.mind.adjust_experience(repair_skill, amt2raise / 2, FALSE)
			return
	if(isstructure(O))
		var/obj/structure/I = O
		if(I.hammer_repair && I.max_integrity && !I.obj_broken)
			if(I.obj_integrity >= I.max_integrity)
				to_chat(user, "<span class='green'>This structure is in perfect condition.</span>")
				return
			var/repair_percent = 0.05
			if(user.mind)
				if(user.mind.get_skill_level(I.hammer_repair) <= 0)
					to_chat(user, "<span class='warning'>I don't know how to repair this..</span>")
					return
				repair_percent = max(user.mind.get_skill_level(I.hammer_repair) * 0.05, 0.05)
			repair_percent = repair_percent * I.max_integrity
			I.obj_integrity = min(obj_integrity+repair_percent, I.max_integrity)
			playsound(src,'sound/items/bsmithfail.ogg', 100, FALSE)
			user.visible_message("<span class='info'>[user] repairs [I]!</span>")
			return
	..()

/obj/item/rogueweapon/hammer/claw
	icon_state = "clawh"

/*
/obj/item/rogueweapon/hammer/claw/attack_turf(turf/T, mob/living/user)
	if(!user.cmode)
		if(T.hammer_repair && T.max_integrity && !T.obj_broken)
			var/repair_percent = 0.05
			if(user.mind)
				if(user.mind.get_skill_level(I.hammer_repair) <= 0)
					to_chat(user, "<span class='warning'>I don't know how to repair this..</span>")
					return
				repair_percent = max(user.mind.get_skill_level(I.hammer_repair) * 0.05, 0.05)
			repair_percent = repair_percent * I.max_integrity
			I.obj_integrity = min(obj_integrity+repair_percent, I.max_integrity)
			playsound(src,'sound/items/bsmithfail.ogg', 100, FALSE)
			user.visible_message("<span class='info'>[user] repairs [I]!</span>")
			return
	..()
*/

/obj/item/rogueweapon/hammer/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -9,"sy" = 1,"nx" = 12,"ny" = 1,"wx" = -8,"wy" = 1,"ex" = 6,"ey" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)



/obj/item/rogueweapon/tongs
	force = 5
	possible_item_intents = list(/datum/intent/mace/strike)
	name = "tongs"
	desc = ""
	icon_state = "tongs"
	icon = 'icons/roguetown/weapons/tools.dmi'
	sharpness = IS_BLUNT
	//dropshrink = 0.8
	wlength = 10
	slot_flags = ITEM_SLOT_HIP
	associated_skill = null
	var/obj/item/ingot/hingot = null
	var/hott = FALSE
	smeltresult = /obj/item/ingot/iron

/obj/item/rogueweapon/tongs/examine(mob/user)
	. = ..()
	if(hott)
		. += "<span class='warning'>The tip is hot to the touch.</span>"

/obj/item/rogueweapon/tongs/get_temperature()
	if(hott)
		return FIRE_MINIMUM_TEMPERATURE_TO_SPREAD
	return ..()

/obj/item/rogueweapon/tongs/fire_act(added, maxstacks)
	. = ..()
	hott = world.time
	update_icon()
	addtimer(CALLBACK(src, PROC_REF(make_unhot), world.time), 10 SECONDS)

/obj/item/rogueweapon/tongs/update_icon()
	. = ..()
	if(!hingot)
		icon_state = "tongs"
	else
		if(hott)
			icon_state = "tongsi1"
		else
			icon_state = "tongsi0"

/obj/item/rogueweapon/tongs/proc/make_unhot(input)
	if(hott == input)
		hott = FALSE

/obj/item/rogueweapon/tongs/attack_self(mob/user)
	if(hingot)
		if(isturf(user.loc))
			hingot.forceMove(get_turf(user))
			hingot = null
			hott = FALSE
			update_icon()

/obj/item/rogueweapon/tongs/dropped()
	. = ..()
	if(hingot)
		hingot.forceMove(get_turf(src))
		hingot = null
	hott = FALSE
	update_icon()

/obj/item/rogueweapon/tongs/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -9,"sy" = 1,"nx" = 12,"ny" = 1,"wx" = -8,"wy" = 1,"ex" = 6,"ey" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)
