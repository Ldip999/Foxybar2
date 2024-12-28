

/obj/item/tabletopgame/harvestingseason
	name = "It's almost harvesting season"
	desc = "A competitive farming game for 2-4 people. Away with you, vile beggar!"

/obj/item/storage/box/harvestingseason
	name = "It's almost harvesting season package"
	desc = "A box containing the board game and 4 instructions"
	
/obj/item/storage/box/harvestingseason/PopulateContents()
	new /obj/item/tabletopgame/harvestingseason(src)
	new /obj/item/paper/harvestinseasonguide(src)
	new /obj/item/paper/harvestinseasonguide(src)
	new /obj/item/paper/harvestinseasonguide(src)
	new /obj/item/paper/harvestinseasonguide(src)
	

/obj/item/paper/harvestinseasonguide
	name = "Harvesting season instructions"
	desc = "A rulesheet for all the important bits about playing the game"
	info = {"<p>Thank you for purchusing the It's Almost Harvesting Season board game!</p>
			<p>Designed and coded by Iriska Levendula. Inspired by Growing Season by Eric R.</p>
			<p>First edition</p>
			<hr>
			<p>To begin, first gather yourself and your friends, at least 2, and up to 4 people. Apply the board game to a board game table, and then sit around the table, each player taking a different direction from the table, player 1 being south, player 2 being north, 3 being west, and 4 being east.<br>
			Then,  the board game will magically set up board, using dragon magic technology. <br>
			Each player will get 3 coins, and a deck of 15 shuffled cards, each deck consisting of 10 watering cans, and 5 sickles. Hammers for the sickles not included due to budget reasons.
			<br>
			Each player's turn is divided into 2 phases, the start phase, and the main phase.<br>
			At the start phase, the current player draws 5 cards from their deck, and resolves any start of the turn effects, such as the sprinkler, the combine, the seed extractor, the processor, and various animals.<br>
			During the main phase, players may purchuse seeds, water and harvest their plants, purchuse equipment upgrades, or invest in their farm for 10 coins.<br>
			First one to reach 10 investments will win the game.<br>

"}


