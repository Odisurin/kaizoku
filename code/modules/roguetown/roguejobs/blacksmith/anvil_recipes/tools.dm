/datum/anvil_recipe/tools/torch
	name = "5x iron torches (+1 coal)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/rogueore/coal)
	created_item = list(/obj/item/flashlight/flare/torch/metal,
						/obj/item/flashlight/flare/torch/metal,
						/obj/item/flashlight/flare/torch/metal,
						/obj/item/flashlight/flare/torch/metal,
						/obj/item/flashlight/flare/torch/metal)

/datum/anvil_recipe/tools/pan
	name = "Frypan"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/cooking/pan

/datum/anvil_recipe/tools/keyring
	name = "3x Keyrings"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/keyring,
						/obj/item/keyring,
						/obj/item/keyring)

/datum/anvil_recipe/tools/needle
	name = "5x Sewing Needles"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/needle,
						/obj/item/needle,
						/obj/item/needle,
						/obj/item/needle,
						/obj/item/needle)

/datum/anvil_recipe/tools/shovel
	name = "shovel (+1 wooden staff)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/shovel

/datum/anvil_recipe/tools/hammer
	name = "hammer (+1 stick)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/hammer

/datum/anvil_recipe/tools/tongs
	name = "tongs"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/tongs

/datum/anvil_recipe/tools/sickle
	name = "sickle (+1 stick)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/sickle

/datum/anvil_recipe/tools/sickle/kama
	name = "kama (+1 stick)"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/sickle/kama

/datum/anvil_recipe/tools/pick
	name = "pick (+1 stick)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/pick

/datum/anvil_recipe/tools/hoe
	name = "hoe (+1 wooden staff)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/hoe

/datum/anvil_recipe/tools/pitchfork
	name = "pitchfork (+1 wooden staff)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/pitchfork

/datum/anvil_recipe/tools/lamptern
	name = "lamptern"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/flashlight/flare/torch/lantern

/datum/anvil_recipe/tools/cups
	name = "3x iron cups"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/reagent_containers/glass/cup,
						/obj/item/reagent_containers/glass/cup,
						/obj/item/reagent_containers/glass/cup)

/datum/anvil_recipe/tools/cupssteel
	name = "3x steel goblets"
	req_bar = /obj/item/ingot/steel
	created_item = list(/obj/item/reagent_containers/glass/cup/steel,
						/obj/item/reagent_containers/glass/cup/steel,
						/obj/item/reagent_containers/glass/cup/steel)

/datum/anvil_recipe/tools/cupssil
	name = "3x silver goblets"
	req_bar = /obj/item/ingot/silver
	created_item = list(/obj/item/reagent_containers/glass/cup/silver,
						/obj/item/reagent_containers/glass/cup/silver,
						/obj/item/reagent_containers/glass/cup/silver)

/datum/anvil_recipe/tools/cupsgold
	name = "3x golden goblets"
	req_bar = /obj/item/ingot/gold
	created_item = list(/obj/item/reagent_containers/glass/cup/golden,
						/obj/item/reagent_containers/glass/cup/golden,
						/obj/item/reagent_containers/glass/cup/golden)

/datum/anvil_recipe/tools/cogstee
	name = "3x cogs"
	req_bar = /obj/item/ingot/steel
	created_item = list(/obj/item/roguegear,
						/obj/item/roguegear,
						/obj/item/roguegear)

/datum/anvil_recipe/tools/cogiron
	name = "3x cogs"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/roguegear,
						/obj/item/roguegear,
						/obj/item/roguegear)

/datum/anvil_recipe/tools/locks
	name = "5x locks"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/customlock, /obj/item/customlock, /obj/item/customlock, /obj/item/customlock, /obj/item/customlock)

/datum/anvil_recipe/tools/keys
	name = "5x keys"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/customblank, /obj/item/customblank, /obj/item/customblank, /obj/item/customblank, /obj/item/customblank)

/datum/anvil_recipe/tools/chain
	name = "chain"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rope/chain

/datum/anvil_recipe/tools/surgery
	name = "scalpel"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/surgery/scalpel

/datum/anvil_recipe/tools/surgery/saw
	name = "bonesaw"
	created_item = /obj/item/rogueweapon/surgery/saw

/datum/anvil_recipe/tools/surgery/hemostat
	name = "forceps"
	created_item = /obj/item/rogueweapon/surgery/hemostat

/datum/anvil_recipe/tools/surgery/retractor
	name = "speculum"
	created_item = /obj/item/rogueweapon/surgery/retractor

/datum/anvil_recipe/tools/surgery/bonesetter
	name = "bone forceps"
	created_item = /obj/item/rogueweapon/surgery/bonesetter

/datum/anvil_recipe/tools/surgery/cautery
	name = "cautery iron"
	created_item = /obj/item/rogueweapon/surgery/cautery

/datum/anvil_recipe/tools/surgery/hammer
	name = "examination hammer"
	created_item = /obj/item/rogueweapon/surgery/hammer
