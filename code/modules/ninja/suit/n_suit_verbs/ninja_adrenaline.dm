//Wakes the user so they are able to do their thing. Also injects a decent dose of radium.
//Movement impairing would indicate drugs and the like.
/obj/item/clothing/suit/space/space_ninja/proc/ninjaboost()

	if(!ninjacost(0,N_ADRENALINE))
		var/mob/living/carbon/human/H = affecting
		H.do_adrenaline(150, TRUE, 0, 0, TRUE, list(/datum/reagent/medicine/inaprovaline = 3, /datum/reagent/medicine/synaptizine = 10, /datum/reagent/medicine/omnizine = 10), span_boldnotice("I feel a sudden surge of energy!"))

		H.say(pick("A CORNERED FOX IS MORE DANGEROUS THAN A JACKAL!","HURT ME MOOORRREEE!","IMPRESSIVE!"), forced = "ninjaboost")

		a_boost--
		to_chat(H, span_notice("There are <B>[a_boost]</B> adrenaline boosts remaining."))
		s_coold = 3
		addtimer(CALLBACK(src,PROC_REF(ninjaboost_after)), 70)

/obj/item/clothing/suit/space/space_ninja/proc/ninjaboost_after()
	var/mob/living/carbon/human/H = affecting
	H.reagents.add_reagent(/datum/reagent/radium, a_transfer)
	to_chat(H, span_danger("I am beginning to feel the after-effect of the injection."))
