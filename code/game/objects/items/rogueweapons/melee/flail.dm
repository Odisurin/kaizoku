/obj/item/rogueweapon/flail
	force = 25
	possible_item_intents = list(/datum/intent/flail/strike, /datum/intent/flail/strike/smash)
	name = "flail"
	desc = "A sturdy handle afixed to a cruel spiked ball with a harrowing metal chain."
	icon_state = "iflail"
	icon = 'icons/roguetown/weapons/32.dmi'
	sharpness = IS_BLUNT
	//dropshrink = 0.75
	wlength = WLENGTH_NORMAL
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_HIP
	associated_skill = /datum/skill/combat/whipsflails
	smeltresult = /obj/item/ingot/iron
	parrysound = list('sound/combat/parry/parrygen.ogg')
	swingsound = BLUNTWOOSH_MED
	max_blade_int = 100
	max_integrity = 240
	throwforce = 5
	wdefense = 0
	minstr = 4

/datum/intent/flail/strike
	name = "strike"
	blade_class = BCLASS_BLUNT
	attack_verb = list("strikes", "hits")
	hitsound = list('sound/combat/hits/blunt/flailhit.ogg')
	swingdelay = 5
	penfactor = 5
	icon_state = "instrike"
	misscost = 5

/datum/intent/flail/strike/smash
	name = "smash"
	chargetime = 5
	no_early_release = TRUE
	penfactor = 80
	recovery = 10
	damfactor = 1.2
	chargedloop = /datum/looping_sound/flailswing
	keep_looping = TRUE
	icon_state = "insmash"
	blade_class = BCLASS_SMASH
	attack_verb = list("smashes")
	hitsound = list('sound/combat/hits/blunt/flailhit.ogg')
	misscost = 5

/datum/intent/flail/strike/ranged
	name = "strike"
	blade_class = BCLASS_BLUNT
	attack_verb = list("strikes", "hits")
	hitsound = list('sound/combat/hits/blunt/flailhit.ogg')
	swingdelay = 5
	penfactor = 5
	icon_state = "instrike"
	misscost = 5
	reach = 2
	recovery = 10
	chargedloop = /datum/looping_sound/flailswing
	keep_looping = TRUE
	chargetime = 10
	no_early_release = TRUE

/datum/intent/flail/strike/ranged/smash
	name = "smash"
	chargetime = 5
	no_early_release = TRUE
	penfactor = 80
	recovery = 10
	damfactor = 1.2
	chargedloop = /datum/looping_sound/flailswing
	keep_looping = TRUE
	icon_state = "insmash"
	blade_class = BCLASS_SMASH
	attack_verb = list("smashes")
	hitsound = list('sound/combat/hits/blunt/flailhit.ogg')
	misscost = 10

/datum/intent/flail/cut
	name = "cut"
	blade_class = BCLASS_CUT
	attack_verb = list("cuts", "slashes")
	hitsound = list('sound/combat/hits/blunt/flailhit.ogg')
	swingdelay = 5
	penfactor = 20
	icon_state = "incut"
	misscost = 5
	reach = 2
	recovery = 10
	chargedloop = /datum/looping_sound/flailswing
	keep_looping = TRUE
	chargetime = 5
	no_early_release = TRUE

/datum/intent/flail/cut/chop
	name = "chop"
	chargetime = 5
	no_early_release = TRUE
	penfactor = 80
	recovery = 10
	damfactor = 1.2
	chargedloop = /datum/looping_sound/flailswing
	keep_looping = TRUE
	icon_state = "inchop"
	blade_class = BCLASS_CHOP
	attack_verb = list("chops")
	hitsound = list('sound/combat/hits/blunt/flailhit.ogg')
	misscost = 10
	chargetime = 10

/obj/item/rogueweapon/flail/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.5,"sx" = -10,"sy" = -3,"nx" = 11,"ny" = -2,"wx" = -7,"wy" = -3,"ex" = 3,"ey" = -3,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 22,"sturn" = -23,"wturn" = -23,"eturn" = 29,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)


/obj/item/rogueweapon/flail/sflail
	force = 30
	icon_state = "flail"
	smeltresult = /obj/item/ingot/steel
	minstr = 5

/obj/item/rogueweapon/flail/kusarifundo
	force = 30
	possible_item_intents = list(/datum/intent/flail/strike/ranged, /datum/intent/flail/strike/ranged/smash)
	w_class = WEIGHT_CLASS_NORMAL
	name = "kusari fundo"
	desc = "A pair of heavy iron weights spanned by a long iron chain, developed as a self-defense weapon by peasants in regions where swords are carried only by Samurai or other nobles."
	icon_state = "kusarifundo"

/obj/item/rogueweapon/flail/nunchaku
	force = 20
	w_class = WEIGHT_CLASS_SMALL
	name = "nunchaku"
	desc = "A pair of wooden rods spanned by a short iron chain. Like the kusari fundo, it is a peasant's weapon, but its small size makes it much easier to conceal."
	icon_state = "nunchaku"

/obj/item/rogueweapon/flail/kusarigama
	force = 25
	possible_item_intents = list(/datum/intent/flail/strike/ranged, /datum/intent/flail/strike/ranged/smash, /datum/intent/flail/cut, /datum/intent/flail/cut/chop)
	name = "kusarigama"
	desc = "A sturdy handle with a sickle-like blade, dangling an iron chain with a spiked ball on the end. It is a versatile weapon with a long reach, adapted from a common tool in order to defeat opponents carrying swords."
	icon_state = "kusarigama"
	icon = 'icons/roguetown/weapons/32.dmi'
	sharpness = IS_SHARP
	//dropshrink = 0.75
	wlength = WLENGTH_NORMAL
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_HIP
	blade_dulling = DULLING_BASHCHOP
	associated_skill = /datum/skill/combat/whipsflails
	smeltresult = /obj/item/ingot/iron
	parrysound = list('sound/combat/parry/parrygen.ogg')
	swingsound = BLUNTWOOSH_MED
	max_blade_int = 150
	max_integrity = 240
	throwforce = 5
	wdefense = 2
	minstr = 4

/obj/item/rogueweapon/flail/kusarigama/peasant
	force = 20
	name = "handmade kusarigama"
	desc = "A sturdy handle with a sickle-like blade, dangling an iron chain with a spiked ball on the end. It is a versatile weapon with a long reach, adapted from a common tool in order to defeat opponents carrying swords. This one appears to have been hastily assembled from a sickle and a length of chain"
	icon_state = "kusarigama_homemade"