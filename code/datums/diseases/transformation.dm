/datum/disease/transformation
	name = "Transformation"
	max_stages = 5
	spread_text = "Acute"
	spread_flags = DISEASE_SPREAD_SPECIAL
	cure_text = "A coder's love (theoretical)."
	agent = "Shenanigans"
	viable_mobtypes = list(/mob/living/carbon/human, /mob/living/carbon/monkey, /mob/living/carbon/alien)
	severity = DISEASE_SEVERITY_BIOHAZARD
	stage_prob = 10
	visibility_flags = HIDDEN_SCANNER|HIDDEN_PANDEMIC
	disease_flags = CURABLE
	var/list/stage1 = list("I feel unremarkable.")
	var/list/stage2 = list("I feel boring.")
	var/list/stage3 = list("I feel utterly plain.")
	var/list/stage4 = list("I feel white bread.")
	var/list/stage5 = list("Oh the humanity!")
	var/new_form = /mob/living/carbon/human
	var/bantype

/datum/disease/transformation/Copy()
	var/datum/disease/transformation/D = ..()
	D.stage1 = stage1?.Copy()
	D.stage2 = stage2?.Copy()
	D.stage3 = stage3?.Copy()
	D.stage4 = stage4?.Copy()
	D.stage5 = stage5?.Copy()
	D.new_form = D.new_form
	return D

/datum/disease/transformation/stage_act()
	..()
	switch(stage)
		if(1)
			if (prob(stage_prob) && length(stage1))
				to_chat(affected_mob, pick(stage1))
		if(2)
			if (prob(stage_prob) && length(stage2))
				to_chat(affected_mob, pick(stage2))
		if(3)
			if (prob(stage_prob*2) && length(stage3))
				to_chat(affected_mob, pick(stage3))
		if(4)
			if (prob(stage_prob*2) && length(stage4))
				to_chat(affected_mob, pick(stage4))
		if(5)
			do_disease_transformation(affected_mob)

/datum/disease/transformation/proc/do_disease_transformation(mob/living/affected_mob)
	if(istype(affected_mob, /mob/living/carbon) && affected_mob.stat != DEAD)
		if(stage5)
			to_chat(affected_mob, pick(stage5))
		if(QDELETED(affected_mob))
			return
		if(affected_mob.mob_transforming)
			return
		affected_mob.mob_transforming = 1
		for(var/obj/item/W in affected_mob.get_equipped_items(TRUE))
			affected_mob.dropItemToGround(W)
		for(var/obj/item/I in affected_mob.held_items)
			affected_mob.dropItemToGround(I)
		var/mob/living/new_mob = new new_form(affected_mob.loc)
		if(istype(new_mob))
			if(bantype && jobban_isbanned(affected_mob, bantype))
				replace_banned_player(new_mob)
			new_mob.a_intent = INTENT_HARM
			if(affected_mob.mind)
				affected_mob.mind.transfer_to(new_mob)
			else
				affected_mob.transfer_ckey(new_mob)

		new_mob.name = affected_mob.real_name
		new_mob.real_name = new_mob.name
		qdel(affected_mob)

/datum/disease/transformation/proc/replace_banned_player(mob/living/new_mob) // This can run well after the mob has been transferred, so need a handle on the new mob to kill it if needed.
	set waitfor = FALSE

	var/list/mob/candidates = pollCandidatesForMob("Do you want to play as [affected_mob.name]?", bantype, null, bantype, 50, affected_mob)
	if(LAZYLEN(candidates))
		var/mob/C = pick(candidates)
		to_chat(affected_mob, "My mob has been taken over by a ghost! Appeal your job ban if you want to avoid this in the future!")
		message_admins("[key_name_admin(C)] has taken control of ([key_name_admin(affected_mob)]) to replace a jobbaned player.")
		affected_mob.ghostize(0)
		C.transfer_ckey(affected_mob)
	else
		to_chat(new_mob, "My mob has been claimed by death! Appeal your job ban if you want to avoid this in the future!")
		new_mob.death()
		if (!QDELETED(new_mob))
			new_mob.ghostize(can_reenter_corpse = FALSE)
			new_mob.key = null

/datum/disease/transformation/jungle_fever
	name = "Jungle Fever"
	cure_text = "Death."
	cures = list(/datum/reagent/medicine/adminordrazine)
	spread_text = "Monkey Bites"
	spread_flags = DISEASE_SPREAD_SPECIAL
	viable_mobtypes = list(/mob/living/carbon/monkey, /mob/living/carbon/human)
	permeability_mod = 1
	cure_chance = 1
	disease_flags = CAN_CARRY|CAN_RESIST
	desc = "Monkeys with this disease will bite humans, causing humans to mutate into a monkey."
	severity = DISEASE_SEVERITY_BIOHAZARD
	stage_prob = 4
	visibility_flags = 0
	agent = "Kongey Vibrion M-909"
	new_form = /mob/living/carbon/monkey
	bantype = ROLE_MONKEY


	stage1	= list()
	stage2	= list()
	stage3	= list()
	stage4	= list(span_warning("My back hurts."), span_warning("I breathe through your mouth."),
					span_warning("I have a craving for bananas."), span_warning("My mind feels clouded."))
	stage5	= list(span_warning("I feel like monkeying around."))

/datum/disease/transformation/jungle_fever/do_disease_transformation(mob/living/carbon/affected_mob)
	if(affected_mob.mind && !is_monkey(affected_mob.mind))
		add_monkey(affected_mob.mind)
	if(ishuman(affected_mob))
		var/mob/living/carbon/monkey/M = affected_mob.monkeyize(TR_KEEPITEMS | TR_KEEPIMPLANTS | TR_KEEPORGANS | TR_KEEPDAMAGE | TR_KEEPVIRUS | TR_KEEPSE)
		M.ventcrawler = VENTCRAWLER_ALWAYS


/datum/disease/transformation/jungle_fever/stage_act()
	..()
	switch(stage)
		if(2)
			if(prob(2))
				to_chat(affected_mob, span_notice("My [pick("back", "arm", "leg", "elbow", "head")] itches."))
		if(3)
			if(prob(4))
				to_chat(affected_mob, span_danger("I feel a stabbing pain in your head."))
				affected_mob.confused += 10
		if(4)
			if(prob(3))
				affected_mob.say(pick("Eeek, ook ook!", "Eee-eeek!", "Eeee!", "Ungh, ungh."), forced = "jungle fever")

/datum/disease/transformation/jungle_fever/cure()
	remove_monkey(affected_mob.mind)
	..()

/datum/disease/transformation/jungle_fever/monkeymode
	visibility_flags = HIDDEN_SCANNER|HIDDEN_PANDEMIC
	disease_flags = CAN_CARRY //no vaccines! no cure!

/datum/disease/transformation/jungle_fever/monkeymode/after_add()
	if(affected_mob && !is_monkey_leader(affected_mob.mind))
		visibility_flags = NONE



/datum/disease/transformation/robot

	name = "Robotic Transformation"
	cure_text = "An injection of copper."
	cures = list(/datum/reagent/copper)
	cure_chance = 5
	agent = "R2D2 Nanomachines"
	desc = "This disease, actually acute nanomachine infection, converts the victim into a cyborg."
	severity = DISEASE_SEVERITY_BIOHAZARD
	visibility_flags = 0
	stage1	= null
	stage2	= list("My joints feel stiff.", span_danger("Beep...boop.."))
	stage3	= list(span_danger("My joints feel very stiff."), "My skin feels loose.", span_danger("I can feel something move...inside."))
	stage4	= list(span_danger("My skin feels very loose."), span_danger("I can feel... something...inside you."))
	stage5	= list(span_danger("My skin feels as if it's about to burst off!"))
	new_form = /mob/living/silicon/robot
	infectable_biotypes = MOB_ORGANIC|MOB_UNDEAD|MOB_ROBOTIC
	bantype = "Cyborg"

/datum/disease/transformation/robot/stage_act()
	..()
	switch(stage)
		if(3)
			if (prob(8))
				affected_mob.say(pick("Beep, boop", "beep, beep!", "Boop...bop"), forced = "robotic transformation")
			if (prob(4))
				to_chat(affected_mob, span_danger("I feel a stabbing pain in your head."))
				affected_mob.Unconscious(40)
		if(4)
			if (prob(20))
				affected_mob.say(pick("beep, beep!", "Boop bop boop beep.", "kkkiiiill mmme", "I wwwaaannntt tttoo dddiiieeee..."), forced = "robotic transformation")


/datum/disease/transformation/xeno

	name = "Xenomorph Transformation"
	cure_text = "Spaceacillin & Glycerol"
	cures = list(/datum/reagent/medicine/spaceacillin, /datum/reagent/glycerol)
	cure_chance = 5
	agent = "Rip-LEY Alien Microbes"
	desc = "This disease changes the victim into a xenomorph."
	severity = DISEASE_SEVERITY_BIOHAZARD
	visibility_flags = 0
	stage1	= null
	stage2	= list("My throat feels scratchy.", span_danger("Kill..."))
	stage3	= list(span_danger("My throat feels very scratchy."), "My skin feels tight.", span_danger("I can feel something move...inside."))
	stage4	= list(span_danger("My skin feels very tight."), span_danger("My blood boils!"), span_danger("I can feel... something...inside you."))
	stage5	= list(span_danger("My skin feels as if it's about to burst off!"))
	new_form = /mob/living/carbon/alien/humanoid/hunter
	bantype = ROLE_ALIEN

/datum/disease/transformation/xeno/stage_act()
	..()
	switch(stage)
		if(3)
			if (prob(4))
				to_chat(affected_mob, span_danger("I feel a stabbing pain in your head."))
				affected_mob.Unconscious(40)
		if(4)
			if (prob(20))
				affected_mob.say(pick("I look delicious.", "Going to... devour you...", "Hsssshhhhh!"), forced = "xenomorph transformation")


/datum/disease/transformation/slime
	name = "Advanced Mutation Transformation"
	cure_text = "frost oil"
	cures = list(/datum/reagent/consumable/frostoil)
	cure_chance = 80
	agent = "Advanced Mutation Toxin"
	desc = "This highly concentrated extract converts anything into more of itself."
	severity = DISEASE_SEVERITY_BIOHAZARD
	visibility_flags = 0
	stage1	= list("I don't feel very well.")
	stage2	= list("My skin feels a little slimy.")
	stage3	= list(span_danger("My appendages are melting away."), span_danger("My limbs begin to lose their shape."))
	stage4	= list(span_danger("I am turning into a slime."))
	stage5	= list(span_danger("I have become a slime."))
	new_form = /mob/living/simple_animal/slime/random

/datum/disease/transformation/slime/stage_act()
	..()
	switch(stage)
		if(1)
			if(ishuman(affected_mob) && affected_mob.dna)
				if(affected_mob.dna.species.id == "slime" || affected_mob.dna.species.id == "stargazer" || affected_mob.dna.species.id == "lum")
					stage = 5
		if(3)
			if(ishuman(affected_mob))
				var/mob/living/carbon/human/human = affected_mob
				if(human.dna.species.id != "slime" && affected_mob.dna.species.id != "stargazer" && affected_mob.dna.species.id != "lum")
					human.set_species(/datum/species/jelly/slime)

/datum/disease/transformation/corgi
	name = "The Barkening"
	cure_text = "Death"
	cures = list(/datum/reagent/medicine/adminordrazine)
	agent = "Fell Doge Majicks"
	desc = "This disease transforms the victim into a corgi."
	severity = DISEASE_SEVERITY_BIOHAZARD
	visibility_flags = 0
	stage1	= list("BARK.")
	stage2	= list("I feel the need to wear silly hats.")
	stage3	= list(span_danger("Must... eat... chocolate...."), span_danger("YAP"))
	stage4	= list(span_danger("Visions of washing machines assail your mind!"))
	stage5	= list(span_danger("AUUUUUU!!!"))
	new_form = /mob/living/simple_animal/pet/dog/corgi

/datum/disease/transformation/corgi/stage_act()
	..()
	switch(stage)
		if(3)
			if (prob(8))
				affected_mob.say(pick("YAP", "Woof!"), forced = "corgi transformation")
		if(4)
			if (prob(20))
				affected_mob.say(pick("Bark!", "AUUUUUU"), forced = "corgi transformation")

/datum/disease/transformation/morph
	name = "Gluttony's Blessing"
	cure_text = "nothing"
	cures = list(/datum/reagent/medicine/adminordrazine)
	agent = "Gluttony's Blessing"
	desc = "A 'gift' from somewhere terrible."
	stage_prob = 20
	severity = DISEASE_SEVERITY_BIOHAZARD
	visibility_flags = 0
	stage1	= list("My stomach rumbles.")
	stage2	= list("My skin feels saggy.")
	stage3	= list(span_danger("My appendages are melting away."), span_danger("My limbs begin to lose their shape."))
	stage4	= list(span_danger("You're ravenous."))
	stage5	= list(span_danger("I have become a morph."))
	new_form = /mob/living/simple_animal/hostile/morph
	infectable_biotypes = MOB_ORGANIC|MOB_MINERAL|MOB_UNDEAD //magic!
