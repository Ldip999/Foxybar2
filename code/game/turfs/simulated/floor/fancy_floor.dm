/* In this file:
 * Wood floor
 * Grass floor
 * Fake Basalt
 * Carpet floor
 * Fake pits
 * Fake space
 */

//Sunset wood floors
//Order > Regular, Light, Dark

/turf/open/floor/wood_common
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "common1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("common-broken1","common-broken2","common-broken3","common-broken4","common-broken5","common-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_common/New()
	..()
	if(icon_state == "common1")
		icon_state = "common[rand(1,3)]"

/turf/open/floor/wood_common/wood_common_light
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "common_light1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("common_light-broken1","common_light-broken2","common_light-broken3","common_light-broken4","common_light-broken5","common_light-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_common/wood_common_light/New()
	..()
	if(icon_state == "common_light1")
		icon_state = "common_light[rand(1,3)]"

/turf/open/floor/wood_common/wood_common_dark
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "common_dark1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("common_dark-broken1","common_dark-broken2","common_dark-broken3","common_dark-broken4","common_dark-broken5","common_dark-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_common/wood_common_dark/New()
	..()
	if(icon_state == "common_dark1")
		icon_state = "common_dark[rand(1,3)]"



/turf/open/floor/wood_worn
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "worn1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("worn-broken1","worn-broken2","worn-broken3","worn-broken4","worn-broken5","worn-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_worn/New()
	..()
	if(icon_state == "worn1")
		icon_state = "worn[rand(1,4)]"

/turf/open/floor/wood_worn/wood_worn_light
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "worn_light1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("worn_light-broken1","worn_light-broken2","worn_light-broken3","worn_light-broken4","worn_light-broken5","worn_light-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_worn/wood_worn_light/New()
	..()
	if(icon_state == "worn_light1")
		icon_state = "worn_light[rand(1,4)]"

/turf/open/floor/wood_worn/wood_worn_dark
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "worn_dark1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("worn_dark-broken1","worn_dark-broken2","worn_dark-broken3","worn_dark-broken4","worn_dark-broken5","worn_dark-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_worn/wood_worn_dark/New()
	..()
	if(icon_state == "worn_dark1")
		icon_state = "worn_dark[rand(1,4)]"



/turf/open/floor/wood_fancy
	desc = "Wood cast in a fancy angled pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "fancy1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("fancy-broken1","fancy-broken2","fancy-broken3","fancy-broken4","fancy-broken5","fancy-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_fancy/New()
	..()
	if(icon_state == "fancy1")
		icon_state = "fancy[rand(1,1)]"

/turf/open/floor/wood_fancy/wood_fancy_light
	desc = "Wood cast in a fancy angled pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "fancy_light1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("fancy_light-broken1","fancy_light-broken2","fancy_light-broken3","fancy_light-broken4","fancy_light-broken5","fancy_light-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_fancy/wood_fancy_light/New()
	..()
	if(icon_state == "fancy_light1")
		icon_state = "fancy_light[rand(1,1)]"


/turf/open/floor/wood_fancy/wood_fancy_dark
	desc = "Wood cast in a fancy angled pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "fancy_dark1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("fancy_dark-broken1","fancy_dark-broken2","fancy_dark-broken3","fancy_dark-broken4","fancy_dark-broken5","fancy_dark-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_fancy/wood_fancy_dark/New()
	..()
	if(icon_state == "fancy_dark1")
		icon_state = "fancy_dark[rand(1,1)]"




/turf/open/floor/wood_wide
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "wide1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("wide-broken1","wide-broken2","wide-broken3","wide-broken4","wide-broken5","wide-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_wide/New()
	..()
	if(icon_state == "wide1")
		icon_state = "wide[rand(1,3)]"

/turf/open/floor/wood_wide/wood_wide_light
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "wide_light1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("wide_light-broken1","wide_light-broken2","wide_light-broken3","wide_light-broken4","wide_light-broken5","wide_light-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_wide/wood_wide_light/New()
	..()
	if(icon_state == "wide_light1")
		icon_state = "wide_light[rand(1,3)]"

/turf/open/floor/wood_wide/wood_wide_dark
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "wide_dark1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("wide_dark-broken1","wide_dark-broken2","wide_dark-broken3","wide_dark-broken4","wide_dark-broken5","wide_dark-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_wide/wood_wide_dark/New()
	..()
	if(icon_state == "wide_dark1")
		icon_state = "wide_dark[rand(1,3)]"



/turf/open/floor/wood_mosaic
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "mosaic1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("mosaic-broken1","mosaic-broken2","mosaic-broken3","mosaic-broken4","mosaic-broken5","mosaic-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_mosaic/New()
	..()
	if(icon_state == "mosaic1")
		icon_state = "mosaic[rand(1,3)]"

/turf/open/floor/wood_mosaic/wood_mosaic_light
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "mosaic_light1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("mosaic_light-broken1","mosaic_light-broken2","mosaic_light-broken3","mosaic_light-broken4","mosaic_light-broken5","mosaic_light-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_mosaic/wood_mosaic_light/New()
	..()
	if(icon_state == "mosaic_light1")
		icon_state = "mosaic_light[rand(1,3)]"

/turf/open/floor/wood_mosaic/wood_mosaic_dark
	desc = "Wood cast in a sturdy standard pattern."
	icon = 'modular_sunset/icons/turfs/wood_floor.dmi'
	icon_state = "mosaic_dark1"
	floor_tile = /obj/item/stack/tile/wood
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 0.25)
	broken_states = list("mosaic_dark-broken1","mosaic_dark-broken2","mosaic_dark-broken3","mosaic_dark-broken4","mosaic_dark-broken5","mosaic_dark-broken6",)
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/wood_mosaic/wood_mosaic_dark/New()
	..()
	if(icon_state == "mosaic_dark1")
		icon_state = "mosaic_dark[rand(1,3)]"



/turf/open/floor/wood_common/examine(mob/user)
	. = ..()
	. += span_notice("There's a few <b>screws</b> and a <b>small crack</b> visible.")

/turf/open/floor/wood_common/screwdriver_act(mob/living/user, obj/item/I)
	if(..())
		return TRUE
	. = STOP_ATTACK_PROC_CHAIN
	pry_tile(I, user)

/turf/open/floor/wood_common/try_replace_tile(obj/item/stack/tile/T, mob/user, params)
	if(T.turf_type == type)
		return
	var/obj/item/tool = user.is_holding_item_of_type(/obj/item/screwdriver)
	if(!tool)
		tool = user.is_holding_item_of_type(/obj/item/crowbar)
	if(!tool)
		return
	var/turf/open/floor/plating/P = pry_tile(tool, user, TRUE)
	if(!istype(P))
		return
	P.attackby(T, user, params)

/turf/open/floor/wood_common/pry_tile(obj/item/C, mob/user, silent = FALSE)
	C.play_tool_sound(src, 80)
	return remove_tile(user, silent, (C.tool_behaviour == TOOL_SCREWDRIVER))

/turf/open/floor/wood_common/remove_tile(mob/user, silent = FALSE, make_tile = TRUE, forced = FALSE)
	if(broken || burnt)
		broken = 0
		burnt = 0
		if(user && !silent)
			to_chat(user, span_notice("I remove the broken planks."))
	else
		if(make_tile)
			if(user && !silent)
				to_chat(user, span_notice("I unscrew the planks."))
			if(floor_tile)
				new floor_tile(src)
		else
			if(user && !silent)
				to_chat(user, span_notice("I forcefully pry off the planks, destroying them in the process."))
	return make_plating()

/turf/open/floor/wood_common/rust_heretic_act()
	if(prob(70))
		new /obj/effect/temp_visual/glowing_rune(src)
	ChangeTurf(/turf/open/floor/plating/rust)





/turf/open/floor/grass
	name = "grass patch"
	desc = "I can't tell if this is real grass or just cheap plastic imitation."
	icon_state = "grass"
	floor_tile = /obj/item/stack/tile/grass
	broken_states = list("sand")
	flags_1 = NONE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS
	clawfootstep = FOOTSTEP_GRASS
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	var/ore_type = /obj/item/stack/ore/glass
	var/turfverb = "uproot"
	tiled_dirt = FALSE

/turf/open/floor/grass/Initialize()
	. = ..()
	update_icon()

/turf/open/floor/grass/attackby(obj/item/C, mob/user, params)
	if((C.tool_behaviour == TOOL_SHOVEL) && params)
		new ore_type(src, 2)
		user.visible_message("[user] digs up [src].", span_notice("I [turfverb] [src]."))
		playsound(src, 'sound/effects/shovel_dig.ogg', 50, 1)
		make_plating()
	if(..())
		return

/turf/open/floor/grass/fairy //like grass but fae-er
	name = "fairygrass patch"
	desc = "Something about this grass makes you want to frolic. Or get high."
	icon_state = "fairygrass"
	floor_tile = /obj/item/stack/tile/fairygrass
	light_range = 2
	light_power = 0.80
	light_color = "#33CCFF"
	color = "#33CCFF"

/turf/open/floor/grass/fairy/white
	name = "white fairygrass patch"
	light_color = "#FFFFFF"
	color = "#FFFFFF"
	floor_tile = /obj/item/stack/tile/fairygrass/white

/turf/open/floor/grass/fairy/red
	name = "red fairygrass patch"
	light_color = "#FF3333"
	color = "#FF3333"
	floor_tile = /obj/item/stack/tile/fairygrass/red

/turf/open/floor/grass/fairy/yellow
	name = "yellow fairygrass patch"
	light_color = "#FFFF66"
	color = "#FFFF66"
	floor_tile = /obj/item/stack/tile/fairygrass/yellow

/turf/open/floor/grass/fairy/green
	name = "green fairygrass patch"
	light_color = "#99FF99"
	color = "#99FF99"
	floor_tile = /obj/item/stack/tile/fairygrass/green

/turf/open/floor/grass/fairy/blue
	name = "blue fairygrass patch"
	floor_tile = /obj/item/stack/tile/fairygrass/blue

/turf/open/floor/grass/fairy/purple
	name = "purple fairygrass patch"
	light_color = "#D966FF"
	color = "#D966FF"
	floor_tile = /obj/item/stack/tile/fairygrass/purple

/turf/open/floor/grass/fairy/pink
	name = "pink fairygrass patch"
	light_color = "#FFB3DA"
	color = "#FFB3DA"
	floor_tile = /obj/item/stack/tile/fairygrass/pink

/turf/open/floor/grass/snow
	gender = PLURAL
	name = "snow"
	icon = 'icons/turf/snow.dmi'
	desc = "Looks cold."
	icon_state = "snow"
	ore_type = /obj/item/stack/sheet/mineral/snow
	planetary_atmos = TRUE
	floor_tile = null
	initial_gas_mix = FROZEN_ATMOS
	slowdown = 1.5 //So digging it out paths are useful.
	bullet_sizzle = TRUE
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/grass/snow/try_replace_tile(obj/item/stack/tile/T, mob/user, params)
	return

/turf/open/floor/grass/snow/crowbar_act(mob/living/user, obj/item/I)
	return

/turf/open/floor/grass/snow/basalt //By your powers combined, I am captain planet
	gender = NEUTER
	name = "volcanic floor"
	icon = 'icons/turf/floors.dmi'
	icon_state = "basalt"
	ore_type = /obj/item/stack/ore/glass/basalt
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	slowdown = 0

/turf/open/floor/grass/snow/basalt/Initialize()
	. = ..()
	if(prob(15))
		icon_state = "basalt[rand(0, 12)]"
		set_basalt_light(src)


/turf/open/floor/grass/fakebasalt //Heart is not a real planeteer power
	name = "aesthetic volcanic flooring"
	desc = "Safely recreated turf for your hellplanet-scaping."
	icon = 'icons/turf/floors.dmi'
	icon_state = "basalt"
	floor_tile = /obj/item/stack/tile/basalt
	ore_type = /obj/item/stack/ore/glass/basalt
	turfverb = "dig up"
	slowdown = 0
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/grass/fakebasalt/Initialize()
	. = ..()
	if(prob(15))
		icon_state = "basalt[rand(0, 12)]"
		set_basalt_light(src)


/turf/open/floor/carpet
	name = "carpet"
	desc = "Soft velvet carpeting. Feels good between your toes."
	icon = 'icons/turf/floors/carpet.dmi'
	icon_state = "carpet-255"
	base_icon_state = "carpet"
	floor_tile = /obj/item/stack/tile/carpet
	broken_states = list("damaged")
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET)
	canSmoothWith = list(SMOOTH_GROUP_CARPET)
	flags_1 = NONE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_CARPET
	barefootstep = FOOTSTEP_CARPET_BAREFOOT
	clawfootstep = FOOTSTEP_CARPET_BAREFOOT
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/carpet/examine(mob/user)
	. = ..()
	. += span_notice("There's a <b>small crack</b> on the edge of it.")

/turf/open/floor/carpet/Initialize()
	. = ..()
	update_icon()

/turf/open/floor/carpet/update_icon()
	if(!..())
		return 0
	if(!broken && !burnt)
		if(smoothing_flags & (SMOOTH_CORNERS|SMOOTH_BITMASK))
			QUEUE_SMOOTH(src)
	else
		make_plating()
		if(smoothing_flags & (SMOOTH_CORNERS|SMOOTH_BITMASK))
			QUEUE_SMOOTH_NEIGHBORS(src)

/turf/open/floor/carpet/black
	icon = 'icons/turf/floors/carpet_black.dmi'
	icon_state = "carpet_black-255"
	base_icon_state = "carpet_black"
	floor_tile = /obj/item/stack/tile/carpet/black
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_BLACK)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_BLACK)

/turf/open/floor/carpet/arcade
	icon = 'icons/turf/floors.dmi'
	icon_state = "arcade"
	floor_tile = /obj/item/stack/tile/carpet/arcade
	smoothing_flags = NONE
	canSmoothWith = list()

/turf/open/floor/carpet/blackred
	icon = 'icons/turf/floors/carpet_blackred.dmi'
	floor_tile = /obj/item/stack/tile/carpet/blackred
	icon_state = "tile-carpet-blackred"
	smoothing_flags = SMOOTH_CORNERS
	canSmoothWith = list(/turf/open/floor/carpet/black, /turf/open/floor/carpet/blackred, /turf/open/floor/carpet/monochrome)

/turf/open/floor/carpet/monochrome
	icon = 'icons/turf/floors/carpet_monochrome.dmi'
	floor_tile = /obj/item/stack/tile/carpet/monochrome
	icon_state = "tile-carpet-monochrome"
	smoothing_flags = SMOOTH_CORNERS
	canSmoothWith = list(/turf/open/floor/carpet/black, /turf/open/floor/carpet/blackred, /turf/open/floor/carpet/monochrome)

/turf/open/floor/carpet/blue
	icon = 'icons/turf/floors/carpet_blue.dmi'
	icon_state = "carpet_blue-255"
	base_icon_state = "carpet_blue"
	floor_tile = /obj/item/stack/tile/carpet/blue
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_BLUE)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_BLUE)

/turf/open/floor/carpet/cyan
	icon = 'icons/turf/floors/carpet_cyan.dmi'
	icon_state = "carpet_cyan-255"
	base_icon_state = "carpet_cyan"
	floor_tile = /obj/item/stack/tile/carpet/cyan
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_CYAN)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_CYAN)

/turf/open/floor/carpet/green
	icon = 'icons/turf/floors/carpet_green.dmi'
	icon_state = "carpet_green-255"
	base_icon_state = "carpet_green"
	floor_tile = /obj/item/stack/tile/carpet/green
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_GREEN)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_GREEN)

/turf/open/floor/carpet/orange
	icon = 'icons/turf/floors/carpet_orange.dmi'
	icon_state = "carpet_orange-255"
	base_icon_state = "carpet_orange"
	floor_tile = /obj/item/stack/tile/carpet/orange
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_ORANGE)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_ORANGE)

/turf/open/floor/carpet/purple
	icon = 'icons/turf/floors/carpet_purple.dmi'
	icon_state = "carpet_purple-255"
	base_icon_state = "carpet_purple"
	floor_tile = /obj/item/stack/tile/carpet/purple
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_PURPLE)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_PURPLE)

/turf/open/floor/carpet/red
	icon = 'icons/turf/floors/carpet_red.dmi'
	icon_state = "carpet_red-255"
	base_icon_state = "carpet_red"
	floor_tile = /obj/item/stack/tile/carpet/red
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_RED)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_RED)

/turf/open/floor/carpet/royalblack
	icon = 'icons/turf/floors/carpet_royalblack.dmi'
	icon_state = "carpet_royalblack-255"
	base_icon_state = "carpet_royalblack"
	floor_tile = /obj/item/stack/tile/carpet/royalblack
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_ROYAL_BLACK)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_ROYAL_BLACK)

/turf/open/floor/carpet/royalblue
	icon = 'icons/turf/floors/carpet_royalblue.dmi'
	icon_state = "carpet_royalblue-255"
	base_icon_state = "carpet_royalblue"
	floor_tile = /obj/item/stack/tile/carpet/royalblue
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_ROYAL_BLUE)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_ROYAL_BLUE)

/turf/open/floor/carpet/stellar
	name = "stellar carpet"
	icon = 'icons/turf/floors/carpet_stellar.dmi'
	icon_state = "stellar_carpet-255"
	base_icon_state = "stellar_carpet"
	floor_tile = /obj/item/stack/tile/carpet/stellar
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET_STELLAR)
	canSmoothWith = list(SMOOTH_GROUP_CARPET_STELLAR)

/turf/open/floor/carpet/vault
	icon = 'icons/turf/floors/carpet_vault.dmi'
	canSmoothWith = list(/turf/open/floor/carpet/vault)

//*****Airless versions of all of the above.*****
/turf/open/floor/carpet/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/black/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/blackred/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/monochrome/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/blue/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/cyan/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/green/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/orange/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/purple/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/red/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/royalblack/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/royalblue/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/floor/carpet/narsie_act(force, ignore_mobs, probability = 20)
	. = (prob(probability) || force)
	for(var/I in src)
		var/atom/A = I
		if(ignore_mobs && ismob(A))
			continue
		if(ismob(A) || .)
			A.narsie_act()

/turf/open/floor/carpet/break_tile()
	broken = TRUE
	update_icon()

/turf/open/floor/carpet/burn_tile()
	burnt = TRUE
	update_icon()

/turf/open/floor/carpet/get_smooth_underlay_icon(mutable_appearance/underlay_appearance, turf/asking_turf, adjacency_dir)
	return FALSE


/turf/open/floor/fakepit
	desc = "A clever illusion designed to look like a bottomless pit."
	smoothing_flags = SMOOTH_CORNERS | SMOOTH_BORDER
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_TURF_CHASM)
	canSmoothWith = list(SMOOTH_GROUP_TURF_CHASM)
	icon = 'icons/turf/floors/chasms.dmi'
	icon_state = "chasms-0"
	base_icon_state = "chasms"
	smoothing_flags = SMOOTH_BITMASK | SMOOTH_BORDER
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_TURF_CHASM)
	canSmoothWith = list(SMOOTH_GROUP_TURF_CHASM)
	tiled_dirt = FALSE

/turf/open/floor/fakepit/get_smooth_underlay_icon(mutable_appearance/underlay_appearance, turf/asking_turf, adjacency_dir)
	underlay_appearance.icon = 'icons/turf/floors.dmi'
	underlay_appearance.icon_state = "basalt"
	return TRUE

/turf/open/floor/fakespace
	icon = 'icons/turf/space.dmi'
	icon_state = "0"
	floor_tile = /obj/item/stack/tile/fakespace
	broken_states = list("damaged")
	plane = PLANE_SPACE
	tiled_dirt = FALSE

/turf/open/floor/fakespace/Initialize()
	. = ..()
	icon_state = SPACE_ICON_STATE

/turf/open/floor/fakespace/get_smooth_underlay_icon(mutable_appearance/underlay_appearance, turf/asking_turf, adjacency_dir)
	underlay_appearance.icon = 'icons/turf/space.dmi'
	underlay_appearance.icon_state = SPACE_ICON_STATE
	underlay_appearance.plane = PLANE_SPACE
	return TRUE
