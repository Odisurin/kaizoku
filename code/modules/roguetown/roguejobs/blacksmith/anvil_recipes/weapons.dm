/datum/anvil_recipe/weapons
	appro_skill = /datum/skill/craft/weaponsmithing


// COPPER TIER - Pretty dogshit, but EXTREMELY cheap.

/datum/anvil_recipe/weapons/cmesser
	name = "copper messer (+ 1 stick)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/copper
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/sword/coppermesser

/datum/anvil_recipe/weapons/cdagger
	name = "2x copper daggers"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/copper
	created_item = list(/obj/item/rogueweapon/knife/copperdagger, /obj/item/rogueweapon/knife/copperdagger)

/datum/anvil_recipe/weapons/cbludgeon
	name = "copper bludgeons (+ 1 stick)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/copper
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = list(/obj/item/rogueweapon/mace/copperbludgeon)

/datum/anvil_recipe/weapons/cmace
	name = "copper mace (+1 copper ingot)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/copper
	additional_items = list(/obj/item/ingot/copper)
	created_item = /obj/item/rogueweapon/mace/coppermace

/datum/anvil_recipe/weapons/caxe
	name = "copper axe (+1 copper ingot)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/copper
	additional_items = list(/obj/item/ingot/copper)
	created_item = /obj/item/rogueweapon/copperaxe

/datum/anvil_recipe/weapons/cspears
	name = "2x copper spears (+2 wooden staves)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/copper
	additional_items = list(/obj/item/rogueweapon/woodstaff,/obj/item/rogueweapon/woodstaff)
	created_item = list(/obj/item/rogueweapon/copperspear, /obj/item/rogueweapon/copperspear)


// IRON GEAR - Middle Tier, what most disgusting Men at Arms have
/datum/anvil_recipe/weapons/isword
	name = "iron sword"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/sword/iron

/datum/anvil_recipe/weapons/idagger
	name = "iron dagger"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/huntingknife/idagger

/datum/anvil_recipe/weapons/idagger/kunai
	name = "kunai"
	created_item = list(/obj/item/rogueweapon/huntingknife/idagger/kunai)

/datum/anvil_recipe/weapons/idagger/sai
	name = "sai"
	created_item = list(/obj/item/rogueweapon/huntingknife/idagger/sai)

/datum/anvil_recipe/weapons/sidagger
	name = "silver dagger"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/silver
	created_item = /obj/item/rogueweapon/huntingknife/idagger/silver

/datum/anvil_recipe/weapons/iflail
	name = "iron flail"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/flail

/datum/anvil_recipe/weapons/iflail/kusarifundo
	name = "kusari fundo (+1 iron ingot, 1 iron chain)"
	additional_items = list(/obj/item/ingot/iron,/obj/item/rope/chain)
	created_item = /obj/item/rogueweapon/flail/kusarifundo

/datum/anvil_recipe/weapons/iflail/kusarigama
	name = "kusari gama (+1 iron ingot, 1 iron chain)"
	additional_items = list(/obj/item/ingot/iron,/obj/item/rope/chain)
	created_item = /obj/item/rogueweapon/flail/kusarigama

/datum/anvil_recipe/weapons/iswordshort
	name = "iron short sword"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/sword/iron/short

/datum/anvil_recipe/weapons/imesser
	name = "iron messer"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/sword/iron/messer

/datum/anvil_recipe/weapons/halberd/iron
	name = "iron halberd (2) (+1 ingot, 1 wooden staff)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/halberd/iron

// STEEL GEAR - Fancy shit for Knights
/datum/anvil_recipe/weapons/sflail
	name = "steel flail"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/flail/sflail

/datum/anvil_recipe/weapons/sdagger
	name = "steel dagger"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/huntingknife/idagger/steel

/datum/anvil_recipe/weapons/sdagger/tanto
	name = "tanto"
	created_item = /obj/item/rogueweapon/huntingknife/idagger/steel/tanto

/datum/anvil_recipe/weapons/sdagger/kaiken
	name = "kaiken"
	created_item = /obj/item/rogueweapon/huntingknife/idagger/steel/kaiken

/datum/anvil_recipe/weapons/ssword
	name = "steel sword"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/sword

/datum/anvil_recipe/weapons/ssword/uchigatana
	name = "uchigatana"
	created_item = /obj/item/rogueweapon/sword/uchigatana

/datum/anvil_recipe/weapons/ssaber
	name = "steel sabre"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/sword/sabre

/datum/anvil_recipe/weapons/ssaber/tachi
	name = "tachi (+1 steel ingot)"
	additional_items = list(/obj/item/ingot/steel)
	created_item =/obj/item/rogueweapon/sword/long/rider/tachi

/datum/anvil_recipe/weapons/srapier
	name = "steel rapier"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/sword/rapier

/datum/anvil_recipe/weapons/scutlass
	name = "steel cutlass"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/sword/cutlass

/datum/anvil_recipe/weapons/sswordshort
	name = "steel short sword"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/sword/short

/datum/anvil_recipe/weapons/sswordshort/wakizashi
	name = "wakizashi"
	created_item = /obj/item/rogueweapon/sword/short/wakizashi

/datum/anvil_recipe/weapons/decsword
	name = "decorated sword (+1 gold ingot)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/gold)
	created_item = /obj/item/rogueweapon/sword/decorated

/datum/anvil_recipe/weapons/decsaber
	name = "decorated sabre (+1 gold ingot)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/gold)
	created_item = /obj/item/rogueweapon/sword/sabre/dec

/datum/anvil_recipe/weapons/decrapier
	name = "decorated rapier (+1 gold ingot)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/gold)
	created_item = /obj/item/rogueweapon/sword/rapier/dec

/datum/anvil_recipe/weapons/tsword
	name = "bastard sword (+1 steel ingot)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/rogueweapon/sword/long

/datum/anvil_recipe/weapons/baxe
	name = "battle axe (+1 steel ingot)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/rogueweapon/battle

/datum/anvil_recipe/weapons/baxe/ono
	name = "ono (+1 wooden staff)"
	additional_items = list(/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/battle/ono

/datum/anvil_recipe/weapons/saxe
	name = "steel axe (+1 stick)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/woodcut/steel

/datum/anvil_recipe/weapons/saxe/thrown_ono
	name = "5x throwing ono (+1 small log)"
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = list(/obj/item/rogueweapon/thrown/ono,/obj/item/rogueweapon/thrown/ono,/obj/item/rogueweapon/thrown/ono,/obj/item/rogueweapon/thrown/ono,/obj/item/rogueweapon/thrown/ono,)

/datum/anvil_recipe/weapons/axe
	name = "axe (+1 stick)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/woodcut

/datum/anvil_recipe/weapons/hknife
	name = "hunting knife"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/huntingknife

/datum/anvil_recipe/weapons/cleaver
	name = "cleaver"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/huntingknife/cleaver

/datum/anvil_recipe/weapons/mace
	name = "mace (+1 stick)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/mace

/datum/anvil_recipe/weapons/mace/cudgel
	name = "cudgel (+1 stick)"
	created_item = /obj/item/rogueweapon/mace/cudgel

/datum/anvil_recipe/weapons/mace/cudgel/jitte
	name = "jitte"
	additional_items = null
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/mace/cudgel/jitte

/datum/anvil_recipe/weapons/smace
	name = "steel mace (+1 steel ingot)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/rogueweapon/mace/steel

/datum/anvil_recipe/weapons/smace/ararebo
	name = "arerebo (+1 stick)"
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/mace/cudgel/ararebo

/datum/anvil_recipe/weapons/billhook
	name = "billhook (+1 wooden staff)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/spear/billhook

/datum/anvil_recipe/weapons/billhook/mancatcher
	name = "sasumata (+1 steel ingot,1 wooden staff)"
	additional_items = list(/obj/item/ingot/steel,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/mancatcher

/datum/anvil_recipe/weapons/spear
    name = "spear (+1 wooden staff)"
    appro_skill = /datum/skill/craft/weaponsmithing
    req_bar = /obj/item/ingot/iron
    additional_items = list(/obj/item/rogueweapon/woodstaff)
    created_item = /obj/item/rogueweapon/spear

/datum/anvil_recipe/weapons/spear/suyari
	name = "su yari (+1 wooden staff)"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/spear/yari

/datum/anvil_recipe/weapons/spear/katakamayari
	name = "katakama yari (+1 steel ingot, 1 wooden staff)"
	additional_items = list(/obj/item/ingot/steel,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/spear/yari/katakama

/datum/anvil_recipe/weapons/spear/jumonjiyari
	name = "jumonji yari (+2 steel ingots, 1 wooden staff)"
	additional_items = list(/obj/item/ingot/steel,/obj/item/ingot/steel,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/spear/yari/jumonji

/datum/anvil_recipe/weapons/bardiche
	name = "bardiche (+1 iron ingot, 1 wooden staff)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/halberd/bardiche

/datum/anvil_recipe/weapons/bardiche/naginata
	name = "naginata (+1 steel ingot, 1 wooden staff)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/halberd/bardiche/naginata

/datum/anvil_recipe/weapons/halbert
	name = "halberd (+1 iron ingot, 1 wooden staff)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/halberd


/datum/anvil_recipe/weapons/lucerne
	name = "lucerne (2) (+w)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/eaglebeak/lucerne

/datum/anvil_recipe/weapons/eaglebeak
	name = "eagle's beak (2) (+w)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/rogueweapon/woodstaff)
	created_item = /obj/item/rogueweapon/eaglebeak

/datum/anvil_recipe/weapons/polemace
	name = "warclub (+1 wooden club)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/rogueweapon/mace/woodclub)
	created_item = /obj/item/rogueweapon/mace/goden

/datum/anvil_recipe/weapons/polemace/kanabo
	name = "kanabo (+1 iron ingot, 1 wooden club)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron,/obj/item/rogueweapon/mace/woodclub)
	created_item = /obj/item/rogueweapon/mace/goden/kanabo

/datum/anvil_recipe/weapons/grandmace
	name = "grand mace (+1 wooden club)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/rogueweapon/mace/woodclub)
	created_item = /obj/item/rogueweapon/mace/goden/steel

/datum/anvil_recipe/weapons/grandmace/tetsubo
	name = "tetsubo (+1 steel ingot,1 wooden club)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/rogueweapon/mace/woodclub)
	created_item = /obj/item/rogueweapon/mace/goden/tetsubo

/datum/anvil_recipe/weapons/zweihander
	name = "zweihander (+2 iron ingots)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron, /obj/item/ingot/iron)
	created_item = /obj/item/rogueweapon/greatsword/zwei

/datum/anvil_recipe/weapons/greatsword
	name = "greatsword (+2 steel ingots)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel)
	created_item = /obj/item/rogueweapon/greatsword

/datum/anvil_recipe/weapons/greatsword/odachi
	name = "odachi (+2 steel ingots)"
	/obj/item/rogueweapon/greatsword/odachi

/datum/anvil_recipe/weapons/steelshield
	name = "heraldic shield (2) (+h)"
	appro_skill = /datum/skill/craft/armorsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/natural/hide)
	created_item = /obj/item/rogueweapon/shield/tower/metal

/datum/anvil_recipe/weapons/ironshield
	name = "tower shield (+w)"
	appro_skill = /datum/skill/craft/armorsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = /obj/item/rogueweapon/shield/tower

/datum/anvil_recipe/weapons/xbow
	name = "crossbow (+w) (+f)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/grown/log/tree/small, /obj/item/natural/fibers)
	created_item = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow

/datum/anvil_recipe/weapons/bolts
	name = "crossbow bolt x3 (+s)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = list(/obj/item/ammo_casing/caseless/rogue/bolt, /obj/item/ammo_casing/caseless/rogue/bolt, /obj/item/ammo_casing/caseless/rogue/bolt)

/datum/anvil_recipe/weapons/arrows
	name = "arrows x3 (+s)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = list(/obj/projectile/bullet/reusable/arrow, /obj/projectile/bullet/reusable/arrow, /obj/projectile/bullet/reusable/arrow)
