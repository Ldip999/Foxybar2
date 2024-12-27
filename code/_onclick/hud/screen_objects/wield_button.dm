/datum/hud/var/atom/movable/screen/wield/wield_button

/atom/movable/screen/wield
	name = "toggle wield"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "wield"
	layer = HUD_LAYER - 0.1


/atom/movable/screen/wield/Click()
	if(ishuman(usr))
		var/mob/living/carbon/human/H = usr
		H.do_wield()
