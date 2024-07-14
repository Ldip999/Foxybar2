/datum/surgery/cavity_implant
	name = "Cavity implant"
	steps = list(/datum/surgery_step/incise, /datum/surgery_step/clamp_bleeders, /datum/surgery_step/retract_skin, /datum/surgery_step/incise, /datum/surgery_step/handle_cavity, /datum/surgery_step/close)
	target_mobtypes = list(/mob/living/carbon/human, /mob/living/carbon/monkey)
	possible_locs = list(BODY_ZONE_CHEST)
	requires_trait = 2
	
//handle cavity
/datum/surgery_step/handle_cavity
	name = "implant item"
	accept_hand = 1
	accept_any_item = 1
	implements = list(/obj/item = 100)
	repeatable = TRUE
	time = 32
	var/obj/item/IC = null
/datum/surgery_step/handle_cavity/tool_check(mob/user, obj/item/tool)
	if(istype(tool, /obj/item/cautery) || istype(tool, /obj/item/gun/energy/laser))
		return FALSE
	return !tool.get_temperature()
/datum/surgery_step/handle_cavity/preop(mob/user, mob/living/carbon/human/target, target_zone, obj/item/tool, datum/surgery/surgery)
	var/obj/item/bodypart/chest/CH = target.get_bodypart(BODY_ZONE_CHEST)
	IC = CH.cavity_item
	if(tool)
		display_results(user, target, span_notice("I begin to insert [tool] into [target]'s [target_zone]..."),
			"[user] begins to insert [tool] into [target]'s [target_zone].",
			"[user] begins to insert [tool.w_class > WEIGHT_CLASS_SMALL ? tool : "something"] into [target]'s [target_zone].")
	else
		display_results(user, target, span_notice("I check for items in [target]'s [target_zone]..."),
			"[user] checks for items in [target]'s [target_zone].",
			"[user] looks for something in [target]'s [target_zone].")

/datum/surgery_step/handle_cavity/success(mob/user, mob/living/carbon/human/target, target_zone, obj/item/tool, datum/surgery/surgery)
	var/obj/item/bodypart/chest/CH = target.get_bodypart(BODY_ZONE_CHEST)
	if(tool)
		if(IC || tool.w_class > WEIGHT_CLASS_NORMAL || HAS_TRAIT(tool, TRAIT_NODROP) || istype(tool, /obj/item/organ))
			to_chat(user, span_warning("I can't seem to fit [tool] in [target]'s [target_zone]!"))
			return 0
		else
			display_results(user, target, span_notice("I stuff [tool] into [target]'s [target_zone]."),
				"[user] stuffs [tool] into [target]'s [target_zone]!",
				"[user] stuffs [tool.w_class > WEIGHT_CLASS_SMALL ? tool : "something"] into [target]'s [target_zone].")
			user.transferItemToLoc(tool, target, TRUE)
			CH.cavity_item = tool
			return 1
	else
		if(IC)
			display_results(user, target, span_notice("I pull [IC] out of [target]'s [target_zone]."),
				"[user] pulls [IC] out of [target]'s [target_zone]!",
				"[user] pulls [IC.w_class > WEIGHT_CLASS_SMALL ? IC : "something"] out of [target]'s [target_zone].")
			user.put_in_hands(IC)
			CH.cavity_item = null
			return 1
		else
			to_chat(user, span_warning("I don't find anything in [target]'s [target_zone]."))
			return 0
