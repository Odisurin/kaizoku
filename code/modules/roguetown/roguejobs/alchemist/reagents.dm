/datum/reagent/medicine/healthpot
	name = "Health Potion"
	description = "Gradually regenerates all types of damage."
	reagent_state = LIQUID
	color = "#ff0000"
	taste_description = "red"
	overdose_threshold = 0
	metabolization_rate = 20 * REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/healthpot/on_mob_life(mob/living/carbon/M)
	if(M.blood_volume < BLOOD_VOLUME_NORMAL)
		M.blood_volume = min(M.blood_volume+50, BLOOD_VOLUME_MAXIMUM)
	else
		//can overfill you with blood, but at a slower rate
		M.blood_volume = min(M.blood_volume+10, BLOOD_VOLUME_MAXIMUM)
	M.adjustBruteLoss(-0.5*REM, 0)
	M.adjustFireLoss(-0.5*REM, 0)
	M.adjustOxyLoss(-1, 0)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -1*REM)
	M.adjustCloneLoss(-1*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/manapot
	name = "Manna Potion"
	description = "Gradually regenerates stamina."
	reagent_state = LIQUID
	color = "#0000ff"
	taste_description = "manna"
	overdose_threshold = 0
	metabolization_rate = 20 * REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/manapot/on_mob_life(mob/living/carbon/M)
	M.rogstam_add(100)
	..()
	. = 1

/datum/reagent/medicine/antipoisonpot
	name = "Anti Poison Potion"
	description = "Quickly nullifies toxins."
	reagent_state = LIQUID
	color = "#64bf49"
	taste_description = "ashes"
	overdose_threshold = 60
	metabolization_rate = REAGENTS_METABOLISM
	alpha = 200

/datum/reagent/medicine/antipoisonpot/on_mob_life(mob/living/carbon/M)
	for(var/datum/reagent/toxin/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.type,0.5)
	M.adjustToxLoss(-0.5*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/antipoisonpot/overdose_process(mob/living/carbon/M)
	M.add_nausea(9)
	M.adjustToxLoss(3, 0)

/datum/reagent/berrypoison
	name = "Berry Poison"
	description = "f"
	reagent_state = LIQUID
	color = "#00B4FF"
	metabolization_rate = 0.1

/datum/reagent/berrypoison/on_mob_life(mob/living/carbon/M)
	M.add_nausea(9)
	M.adjustToxLoss(3, 0)
	return ..()

/datum/reagent/toxin/fyritiusnectar
	name = "fyritius nectar"
	description = "oh no"
	reagent_state = LIQUID
	color = "#ffc400"
	metabolization_rate = 0.5

/datum/reagent/toxin/fyritiusnectar/on_mob_life(mob/living/carbon/M)
	M.add_nausea(9)
	M.adjustFireLoss(2, 0)
	M.adjust_fire_stacks(1)
	M.IgniteMob()
	return ..()

/datum/reagent/organpoison
	name = "Organ Scourge"
	description = "the downfall of unsuited flesh eaters."
	taste_description = "dormant curse"
	reagent_state = LIQUID
	color = "#7c0202"
	metabolization_rate = 0.1

/datum/reagent/organpoison/on_mob_life(mob/living/carbon/M)
	if(M.dna.species?.id == "abyssariad")
		return
	else
		M.add_nausea(9)
		M.adjustToxLoss(3, 0)
		return ..()

/datum/reagent/fogblight
	name = "fogblight"
	description = "liquid concentrate from fog island's frogs. Used by shinobis."
	taste_description = "naked kappa"
	reagent_state = LIQUID
	color = "#1f434d"
	metabolization_rate = 0.2

/datum/reagent/fogblight/on_mob_life(mob/living/carbon/M)
	switch(current_cycle)
		if(1 to 10)
			M.confused += 2
			M.drowsyness += 2
		if(10 to 50)
			M.Sleeping(40, 0)
			. = 1
		if(51 to INFINITY)
			M.Sleeping(40, 0)
			M.adjustToxLoss((current_cycle - 50)*REM, 0)
			. = 1
	..()
