// Rustlanders; They are native to one of the three Pyrgoi. 
// The Order of Brass fields five classes, the Rifleman, the iconic Brass Knight, the Sapper, and the ever elusive Mirror Mage
//They have extensive background requirements being both of a psydonite faith & being restricted to aasimar, dwarves, and aelves.
//Psydonites should rightfully fear them over concerns of the Rust Plague spreading through them & faith differences.
/datum/advclass/mercenary/oathmarked
	name = "Brass Rifleman"
	tutorial = "At arms Rifleman! You are a member of the Holy Order of Brass. Having earned your deed name, you were sent out on an expedition to learn about the land now that the Rust Plague has revealed. The home which you had known as either Dytikos Pyrgos, Kentrikos Pyrgos, Anatolikos Pyrgos is but a fleeting memory for you..."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/aasimar,
		/datum/species/elf/wood,
		/datum/species/dwarf,
	) // only species that primarily native to the spires
	allowed_ages = list(AGE_MIDDLEAGED, AGE_OLD) // Beware those who are old in a field where most die young.
	outfit = /datum/outfit/job/roguetown/mercenary/oathmarked
	class_select_category = CLASS_CAT_RACIAL
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_SPIRENATIVE, TRAIT_MEDIUMARMOR, TRAIT_PERFECT_TRACKER, TRAIT_SILVER_BLESSED) // they are trackers & bathed in silver for purification, think undead hunters
	cmode_music = 'sound/music/cmode/nobility/combat_courtmage.ogg'
	subclass_stats = list(
		STATKEY_PER = 4,
		STATKEY_WIL = 3,
		STATKEY_CON = 2, // Enduring little buggers. They are meant to hold the line and fire from afar.
		STATKEY_SPD = -2// Maintain your positioning, or suffer. Also technically -3 spd cus middle aged.
	)
	subclass_skills = list(
		/datum/skill/combat/firearms = SKILL_LEVEL_MASTER, // this might fuck
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/sneaking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMANM
	)
	extra_context = "This subclass is limited to: Aasimar, Dwarves, and Elves. Middle aged and old characters, and psydonites.
	subclass_stashed_items = list(//Sure, why not.
		"Writ of Service" = /obj/item/merctoken
	)

/datum/outfit/job/roguetown/mercenary/oathmarked/pre_equip(mob/living/carbon/human/H) // I hope you like that hauberk lmfao
	..()
	belt = /obj/item/storage/belt/rogue/leather/steel
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/flashlight/flare/torch/lantern
	cloak = /obj/item/storage/backpack/rogue/satchel/beltpack // all happy and snug
	head = /obj/item/clothing/neck/roguetown/chaincoif/full
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat/confessor
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	gloves = /obj/item/clothing/gloves/roguetown/otavan/psygloves
	neck = /obj/item/clothing/neck/roguetown/chaincoif/chainmantle
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/otavan // needs its own item & resprite
	shoes = /obj/item/clothing/shoes/roguetown/boots/psydonboots // new sprites eventually
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	id = /obj/item/clothing/neck/roguetown/psicross/silver
	backl = /obj/item/gun/ballistic/firearm/handgonne // bro has a gat, what the fuck
	backr = /obj/item/storage/backpack/rogue/satchel/black
	backpack_contents = list(
		/obj/item/roguekey/mercenary = 1,
		/obj/item/storage/keyring = 1,
		/obj/item/rogueweapon/huntingknife/idagger/steel = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/powderflask = 1,
		/obj/item/quiver/bullet/lead = 1,
		)
	H.merctype = 16
	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()

/datum/advclass/mercenary/oathmarked/executor
	name = "Brass Knight"
	tutorial = "Arise child of the Allfather! You are the sword of the Lady Who Lives In Mirrors. Carry with you retribution in your wake. Issued a unique set of artificer armor and melds to power it, you offer your sword to other members of the Brass Company."
	outfit = /datum/outfit/job/roguetown/mercenary/oathmarked/executor
	subclass_stats = list(
		STATKEY_STR = 2
		STATKEY_CON = 2 
		STATKEY_WIL = 2
		STATKEY_PER = 2,
		STATKEY_SPD = -2
	)
	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,//Imperial is not your mother tongue.
	)

/datum/outfit/job/roguetown/mercenary/oathmarked/executor/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = /obj/item/rogueweapon/greatsword/grenz/oathmarked//A greatsword with peel. Bridges the gap between an estoc and standard zwei.
	belt = /obj/item/storage/belt/rogue/leather/steel
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/flashlight/flare/torch/lantern
	head = /obj/item/clothing/head/roguetown/helmet/heavy/oathmarked
	armor = /obj/item/clothing/suit/roguetown/armor/plate/full/oathmarked
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	gloves = /obj/item/clothing/gloves/roguetown/plate/oathmarked
	neck = /obj/item/clothing/neck/roguetown/chaincoif/chainmantle
	cloak = /obj/item/clothing/cloak/cape/oathmarked
	pants = /obj/item/clothing/under/roguetown/platelegs/oathmarked
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor/oathmarked
	wrists = /obj/item/clothing/neck/roguetown/psicross/silver/astrata/oathmarked
	id = /obj/item/clothing/ring/oathmarked
	backl = /obj/item/rogueweapon/scabbard/gwstrap
	backr = /obj/item/storage/backpack/rogue/satchel/black
	backpack_contents = list(
		/obj/item/roguekey/mercenary = 1,
		/obj/item/rogueweapon/huntingknife/idagger/steel = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/book/rogue/secret/oathmarked = 1,
		)
	H.merctype = 16