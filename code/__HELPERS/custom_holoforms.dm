// Generates a holoform appearance
// Equipment list is slot = path.
/proc/generate_custom_holoform_from_prefs(datum/preferences/prefs, list/equipment_by_slot, list/inhand_equipment, copy_job = FALSE, apply_loadout = FALSE)
	ASSERT(prefs)
	var/mob/living/carbon/human/dummy/mannequin = SSdummy.get_a_dummy(DUMMY_HUMAN_SLOT_HOLOFORM)
	prefs.copy_to(mannequin)
	if(apply_loadout && prefs.parent)
		SSjob.equip_loadout(prefs.parent.mob, mannequin, bypass_prereqs = TRUE)
	if(copy_job)
		var/datum/job/highest = prefs.get_highest_job()
		if(highest && !istype(highest, /datum/job/ai) && !istype(highest, /datum/job/cyborg))
			highest.equip(mannequin, TRUE, preference_source = prefs.parent)

	if(length(equipment_by_slot))
		for(var/slot in equipment_by_slot)
			var/item_path = equipment_by_slot[slot]
			if(item_path)
				var/obj/item/I = new item_path
				mannequin.equip_to_slot_if_possible(I, text2num(slot), TRUE, TRUE, TRUE, TRUE)
	if(length(inhand_equipment))
		for(var/path in inhand_equipment)
			var/obj/item/I = new path
			mannequin.equip_to_slot_if_possible(I, SLOT_HANDS, TRUE, TRUE, TRUE, TRUE)


	var/icon/combined = new
	for(var/d in GLOB.cardinals)
		mannequin.setDir(d)
		COMPILE_OVERLAYS(mannequin)
		CHECK_TICK
		var/icon/capture = getFlatIcon(mannequin)
		CHECK_TICK
		combined.Insert(capture, dir = d)
		CHECK_TICK

	SSdummy.return_dummy(mannequin, DUMMY_HUMAN_SLOT_HOLOFORM)
	return combined

/proc/process_holoform_icon_filter(icon/I, filter_type, clone = TRUE)
	if(clone)
		I = icon(I)		//Clone
	switch(filter_type)
		if(HOLOFORM_FILTER_AI)
			I = getHologramIcon(I)
		if(HOLOFORM_FILTER_STATIC)
			I = getStaticIcon(I)
		if(HOLOFORM_FILTER_PAI)
			I = getPAIHologramIcon(I)
	return I

//Errors go to user.
/proc/generate_custom_holoform_from_prefs_safe(datum/preferences/prefs, mob/user)
	if(user)
		if(user.client.prefs.last_custom_holoform > world.time - CUSTOM_HOLOFORM_DELAY)
			to_chat(user, span_boldwarning("I am attempting to set your custom holoform too fast!"))
			return
	return generate_custom_holoform_from_prefs(prefs, null, null, TRUE, TRUE)

//Prompts this client for custom holoform parameters.
/proc/user_interface_custom_holoform(client/C)
	var/datum/preferences/target_prefs = C.prefs
	ASSERT(target_prefs)
	//In the future, maybe add custom path allowances a la admin create outfit but for now..
	return generate_custom_holoform_from_prefs_safe(target_prefs, C.mob)
