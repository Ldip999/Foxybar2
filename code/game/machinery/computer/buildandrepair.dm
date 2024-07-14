/obj/structure/frame/computer
	name = "computer frame"
	icon_state = "0"
	state = 0

/obj/structure/frame/computer/attackby(obj/item/P, mob/user, params)
	add_fingerprint(user)
	switch(state)
		if(0)
			if(istype(P, /obj/item/wrench))
				to_chat(user, span_notice("I start wrenching the frame into place..."))
				if(P.use_tool(src, user, 20, volume=50))
					to_chat(user, span_notice("I wrench the frame into place."))
					setAnchored(TRUE)
					state = 1
				return
			if(istype(P, /obj/item/weldingtool))
				if(!P.tool_start_check(user, amount=0))
					return

				to_chat(user, span_notice("I start deconstructing the frame..."))
				if(P.use_tool(src, user, 20, volume=50) && state == 0)
					to_chat(user, span_notice("I deconstruct the frame."))
					var/obj/item/stack/sheet/metal/M = new (drop_location(), 5)
					M.add_fingerprint(user)
					qdel(src)
				return
		if(1)
			if(istype(P, /obj/item/wrench))
				to_chat(user, span_notice("I start to unfasten the frame..."))
				if(P.use_tool(src, user, 20, volume=50) && state == 1)
					to_chat(user, span_notice("I unfasten the frame."))
					setAnchored(FALSE)
					state = 0
				return
			if(istype(P, /obj/item/circuitboard/computer) && !circuit)
				if(!user.transferItemToLoc(P, src))
					return
				playsound(src, 'sound/items/deconstruct.ogg', 50, 1)
				to_chat(user, span_notice("I place [P] inside the frame."))
				icon_state = "1"
				circuit = P
				circuit.add_fingerprint(user)
				return

			else if(istype(P, /obj/item/circuitboard) && !circuit)
				to_chat(user, span_warning("This frame does not accept circuit boards of this type!"))
				return
			if(istype(P, /obj/item/screwdriver) && circuit)
				P.play_tool_sound(src)
				to_chat(user, span_notice("I screw [circuit] into place."))
				state = 2
				icon_state = "2"
				return
			if(istype(P, /obj/item/crowbar) && circuit)
				P.play_tool_sound(src)
				to_chat(user, span_notice("I remove [circuit]."))
				state = 1
				icon_state = "0"
				circuit.forceMove(drop_location())
				circuit.add_fingerprint(user)
				circuit = null
				return
		if(2)
			if(istype(P, /obj/item/screwdriver) && circuit)
				P.play_tool_sound(src)
				to_chat(user, span_notice("I unfasten the circuit board."))
				state = 1
				icon_state = "1"
				return
			if(istype(P, /obj/item/stack/cable_coil))
				if(!P.tool_start_check(user, amount=5))
					return
				to_chat(user, span_notice("I start adding cables to the frame..."))
				if(P.use_tool(src, user, 20, 5, 50, CALLBACK(src,PROC_REF(check_state), 2)))
					to_chat(user, span_notice("I add cables to the frame."))
					state = 3
					icon_state = "3"
				return
		if(3)
			if(istype(P, /obj/item/wirecutters))
				P.play_tool_sound(src)
				to_chat(user, span_notice("I remove the cables."))
				state = 2
				icon_state = "2"
				var/obj/item/stack/cable_coil/A = new (drop_location(), 5)
				A.add_fingerprint(user)
				return

			if(istype(P, /obj/item/stack/sheet/glass))
				if(!P.tool_start_check(user, amount=2))
					return
				playsound(src, 'sound/items/deconstruct.ogg', 50, 1)
				to_chat(user, span_notice("I start to put in the glass panel..."))
				if(P.use_tool(src, user, 20, 2, 0, CALLBACK(src,PROC_REF(check_state), 3)))
					to_chat(user, span_notice("I put in the glass panel."))
					state = 4
					src.icon_state = "4"
				return
		if(4)
			if(istype(P, /obj/item/crowbar))
				P.play_tool_sound(src)
				to_chat(user, span_notice("I remove the glass panel."))
				state = 3
				icon_state = "3"
				var/obj/item/stack/sheet/glass/G = new(drop_location(), 2)
				G.add_fingerprint(user)
				return
			if(istype(P, /obj/item/screwdriver))
				P.play_tool_sound(src)
				to_chat(user, span_notice("I connect the monitor."))
				var/obj/B = new circuit.build_path (loc, circuit)
				B.setDir(dir)
				transfer_fingerprints_to(B)
				qdel(src)
				return
	if(user.a_intent == INTENT_HARM)
		return ..()

//callback proc used on stacks use_tool to stop unnecessary amounts being wasted from spam clicking.
/obj/structure/frame/computer/proc/check_state(target_state)
	if(state == target_state)
		return TRUE
	return FALSE

/obj/structure/frame/computer/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		if(state == 4)
			new /obj/item/shard(drop_location())
			new /obj/item/shard(drop_location())
		if(state >= 3)
			new /obj/item/stack/cable_coil(drop_location(), 5)
	..()

/obj/structure/frame/computer/AltClick(mob/user)
	. = ..()
	if(!isliving(user) || !user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return

	if(anchored)
		to_chat(usr, span_warning("I must unwrench [src] before rotating it!"))
		return TRUE

	setDir(turn(dir, -90))
	return TRUE
