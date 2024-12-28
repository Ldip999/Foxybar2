/obj/structure/tabletop
	name = "Empty tabletop table"
	desc = "A little table perfect for setting up board games. Now all you need is a game and some friends!"
	icon = 'modular_coyote/icons/objects/boredgames/boredgames.dmi'
	icon_state = "BaseTable"
	density = TRUE
	anchored = TRUE
	obj_flags = CAN_BE_HIT
	pass_flags = LETPASSTHROW | PASSTABLE
	pass_flags_self = PASSTABLE | LETPASSTHROW
	attack_hand_is_action = TRUE

	