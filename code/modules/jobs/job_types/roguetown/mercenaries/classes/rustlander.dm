// Rustlanders; They are native to one of the three Pyrgoi super positioned across the world.
// At the bottom of the Order of Brass, there are the Brass Riflemen are conscripted 20 something year-olds who were not fit to be issued gilbronze.
// Above them are the iconic Brass Knights who use gilbronze armor.
// The Brass Company as they are called, are supported by a Mage who is from the Pyrgos Dytikos. They are effectively "radio" operators for the company.
// Psydonites should rightfully fear them over concerns of the Rust Plague spreading through them & faith differences.
// All have names like "Blessed-Blade-of-Light" or "Carrier-of-Burdens" based off of duties performed or their personality.
// Also, they are all apocalyptic doomsayers; They believe that The Lady and her lover will return and enact a mass cleansing... Where she and Z will have a final battle for the fate of Psydonia yada yada. They are insane. Everyone holds these views and they keep it to themselves.

/datum/advclass/mercenary/brassrifleman
	name = "Brass Rifleman"
	tutorial = "At arms, Rifleman! You have been conscript on your 20th summer to fight in the defense and reclamation of either Pyrgos Dytikos, Kentrikos, or Anatolikos. After a successful tenure, you were later assigned abroad as a member of the illusive 'Brass Company' where you are tasked with understanding this new land in the name of The Lady and Ianoda, the former rulers of your homeland who vanished one fateful day..."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/aasimar,
		/datum/species/elf/wood,
		/datum/species/dwarf,
	) // No humens despite being of Psydon. Humens are viewed as rats by the "higher" people of the spires
	allowed_ages = list(AGE_ADULT) // Levy men, generally 20-25 at most. Maybe older. They have mandatory service of 18yrs
	outfit = /datum/outfit/job/roguetown/mercenary/brassrifleman
	allowed_patrons = list(/datum/patron/old_god)
	class_select_category = CLASS_CAT_RACIAL
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_SPIRENATIVE, TRAIT_MEDIUMARMOR, TRAIT_PERFECT_TRACKER) // they are trackers. They don't get silver blessings
	cmode_music = 'sound/music/cmode/nobility/combat_courtmage.ogg'
	/* subclass_languages = list(/datum/language/celestial) */ // Note to self, rustlander language. Its greek, hellenistic greek. Celestial is a placeholder
	subclass_stats = list(
		STATKEY_PER = 4,
		STATKEY_WIL = 3,
		STATKEY_CON = 2, // Enduring little buggers. They are meant to hold the line and fire from afar.
		STATKEY_SPD = -3// Maintain your positioning, or suffer. 
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
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMANM,
	)
	extra_context = "This subclass is limited to: Psydonites, Adults, Dwarves, Aasimar, and Aelves"
	subclass_stashed_items = list(//Sure, why not.
		"Writ of Service" = /obj/item/merctoken
	)

/datum/outfit/job/roguetown/mercenary/brassrifleman/pre_equip(mob/living/carbon/human/H) // I hope you like that hauberk lmfao
	..()
	belt = /obj/item/storage/belt/rogue/leather/steel
	beltr = /obj/item/rogueweapon/scabbard/sword // for your gladius!
	beltl = /obj/item/flashlight/flare/torch/lantern
	cloak = /obj/item/storage/backpack/rogue/satchel/beltpack // all happy and snug
	head = /obj/item/clothing/head/roguetown/helmet/kettle // sovlful
	mask = /obj/item/clothing/mask/rogue/facemask/psydonmask/spire  // needs a resprite
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	gloves = /obj/item/clothing/gloves/roguetown/otavan/psygloves/spiregloves // needs a resprite
	neck = /obj/item/clothing/neck/roguetown/chaincoif/chainmantle
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/otavan/spirepants // needs its own item & resprite
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
		/obj/item/quiver/bullet/lead = 1, // maybe they can get silver bullets one dae.
 		/obj/item/storage/belt/rogue/pouch/coins/mid = 1,
		)
	r_hand = /obj/item/rogueweapon/sword/short/gladius
	H.merctype = 17

/datum/advclass/mercenary/brassknight
	name = "Brass Knight"
	tutorial = "Arise, child of the Allfather! You were born to a nurse mother who had raised you to be a stalwart protector of the Psydonic Trinity! After your twenty-first birthdae, you were selected to head abroad as part of the illusive "Brass Company" to offer your services as a sellsword, an opportunity that has allowed you to learn much about your future enemies for when the time comes to cleanse the carcus that is Psydonia of those who dare to pollute its PURITY."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/aasimar,
		/datum/species/elf/wood,
		/datum/species/dwarf,
	) // No humens despite being of Psydon. Humens are viewed as rats by the "higher" people of the spires
	allowed_ages = list(AGE_MIDDLEAGED, AGE_OLD) // Middle aged men or women. I just love hags tbh.
	outfit = /datum/outfit/job/roguetown/mercenary/brassknight
	allowed_patrons = list(/datum/patron/old_god)
	class_select_category = CLASS_CAT_RACIAL
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_SPIRENATIVE, TRAIT_MEDIUMARMOR, TRAIT_SILVER_BLESSED) // They  are bathed in silver.
	/* subclass_languages = list(/datum/language/celestial) */ // Note to self, rustlander language. Its greek, hellenistic greek. Celestial is a placeholder
	cmode_music = 'sound/music/cmode/nobility/combat_courtmage.ogg'
	subclass_stats = list(
		STATKEY_CON = 3
		STATKEY_STR = 2
		STATKEY_WIL = 2
		STATKEY_PER = 2
		STATKEY_SPD = -2 // -3 spd. Lol
	)
	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
	)
	extra_context = "This subclass is limited to: Psydonites, Middle Aged and Old, Dwarves, Aasimar, and Aelves"
	subclass_stashed_items = list(//Sure, why not.
		"Writ of Service" = /obj/item/merctoken
	)
/datum/outfit/job/roguetown/mercenary/brassknight/pre_equip(mob/living/carbon/human/H) // one gimmick item: the armor
	..()
	belt = /obj/item/storage/belt/rogue/leather/steel
	beltr = /obj/item/rogueweapon/scabbard/sword // for your gladius!
	beltl = /obj/item/quiver/javelin // for added hellenistic larp
	cloak = /obj/item/storage/backpack/rogue/satchel/beltpack // all happy and snug
	head = /obj/item/clothing/head/roguetown/helmet/heavy // spartan larp
	mask = /obj/item/clothing/mask/rogue/facemask/psydonmask/spire  // needs a resprite
	armor = /obj/item/clothing/suit/roguetown/armor/plate/paalloy/artificer // this is their gimmick. yes.
	shirt =  /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	gloves = /obj/item/clothing/gloves/roguetown/otavan/psygloves/spiregloves // needs a resprite
	neck = /obj/item/clothing/neck/roguetown/chaincoif/chainmantle
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/otavan/spirepants // needs its own item & resprite
	shoes = /obj/item/clothing/shoes/roguetown/boots/psydonboots // new sprites eventually
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	id = /obj/item/clothing/neck/roguetown/psicross/silver
	backl = /obj/item/rogueweapon/shield/buckler // something something hoplite
	backr = /obj/item/storage/backpack/rogue/satchel/black
	backpack_contents = list(
		/obj/item/roguekey/mercenary = 1,
		/obj/item/storage/keyring = 1,
		/obj/item/rogueweapon/huntingknife/idagger/steel = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
 		/obj/item/storage/belt/rogue/pouch/coins/mid = 1,
		/obj/item/magic/melded/t1 = 1, // you get ONE.
 		/obj/item/flashlight/flare/torch/lantern = 1
		)
	r_hand = /obj/item/rogueweapon/sword/short/gladius
	H.merctype = 17
	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()

/datum/advclass/mercenary/brasscaptain
	name = "Brass Captain"
	tutorial = "Captain of the Brass Company; You were raised differently than other Knights. Given extra education and training to use a firearm, your voice has power! Lead the men into victory."
	allowed_sexes = list(FEMALE) // w-women?! Yes, they are very matriarchal
	allowed_races = list(
		/datum/species/aasimar,
		/datum/species/elf/wood,
		/datum/species/dwarf,
	) // No humens despite being of Psydon. Humens are viewed as rats by the "higher" people of the spires
	allowed_ages = list(AGE_MIDDLEAGED, AGE_OLD) // I LOVE OLDER WOMEN
	outfit = /datum/outfit/job/roguetown/mercenary/brassrifleman
	allowed_patrons = list(/datum/patron/old_god)
	class_select_category = CLASS_CAT_RACIAL
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_SPIRENATIVE, TRAIT_MEDICINE_EXPERT, TRAIT_SILVER_BLESSED ) // The Supporter:tm:
	cmode_music = 'sound/music/cmode/nobility/combat_courtmage.ogg'
	/* subclass_languages = list(/datum/language/celestial) */ // Note to self, rustlander language. Its greek, hellenistic greek. Celestial is a placeholder
	subclass_stats = list(
		STATKEY_PER = 3,
		STATKEY_WIL = 2,
		STATKEY_CON = 2, 
		STATKEY_INT = 2, 
		STATKEY_SPD = -1// effectively -2 spd cus middle aged
		STATKEY_STR = -2// good luck lmfao
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
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMANM,
	)
	extra_context = "This subclass is limited to: Psydonites, Adults, Dwarves, Aasimar, and Aelves"
	subclass_stashed_items = list(//Sure, why not.
		"Writ of Service" = /obj/item/merctoken
	)

/datum/outfit/job/roguetown/mercenary/brassrifleman/pre_equip(mob/living/carbon/human/H) // I hope you like that hauberk lmfao
	..()
	belt = /obj/item/storage/belt/rogue/leather/steel
	beltr = /obj/item/rogueweapon/scabbard/sword // for your gladius!
	beltl = /obj/item/flashlight/flare/torch/lantern
	cloak = /obj/item/storage/backpack/rogue/satchel/beltpack // all happy and snug
	head = /obj/item/clothing/head/roguetown/helmet/kettle // sovlful
	mask = /obj/item/clothing/mask/rogue/facemask/psydonmask/spire  // needs a resprite
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	gloves = /obj/item/clothing/gloves/roguetown/otavan/psygloves/spiregloves // needs a resprite
	neck = /obj/item/clothing/neck/roguetown/chaincoif/chainmantle
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/otavan/spirepants // needs its own item & resprite
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
		/obj/item/quiver/bullet/lead = 1, // maybe they can get silver bullets one dae.
 		/obj/item/storage/belt/rogue/pouch/coins/mid = 1,
		)
	r_hand = /obj/item/rogueweapon/sword/short/gladius
	H.merctype = 17
