***************************************
* INFRASTRUCTURE MOD for MINETEST-C55 *
***************************************



by Ragnarok AKA Vibender, http://vibender.com/

based on hardly modified:

	Streets mod by webdesigner97, http://forum.minetest.net/viewtopic.php?id=2984/

depends on:

	default
	wool
	Stairs+ mod by Calinou, http://forum.minetest.net/viewtopic.php?id=2092/

License:
		Sourcecode: WTFPL, http://sam.zoy.org/wtfpl/
		Graphics & Sounds: CC BY-SA 3.0 Unported, http://creativecommons.org/licenses/by-sa/3.0/





Cooking recipes:

	Materials:

		Asphalt block (3 pcs)

			GRAVEL -> ASPHALT

		Concrete block (3 pcs)

			STONE -> CONCRETE

		Galvanized steel block (1 pc)

			STEEL_INGOT -> GALVANIZED_STEEL



Crafting recipes:

	Concrete fence

		CONCRETE | CONCRETE | CONCRETE
		---------+----------+---------
		CONCRETE | CONCRETE | CONCRETE


	Galvanized steel fence

		GALVANIZED_STEEL | GALVANIZED_STEEL | GALVANIZED_STEEL
		-----------------+------------------+-----------------
		GALVANIZED_STEEL | GALVANIZED_STEEL | GALVANIZED_STEEL


	Center lines:

		dashed (9 pcs)

			ASPHALT | WOOL:YELLOW | ASPHALT
			--------+-------------+--------
			ASPHALT | ASPHALT     | ASPHALT
			--------+-------------+--------
			ASPHALT | WOOL:YELLOW | ASPHALT


		solid (9 pcs)

			ASPHALT | WOOL:YELLOW | ASPHALT
			--------+-------------+--------
			ASPHALT | WOOL:YELLOW | ASPHALT
			--------+-------------+--------
			ASPHALT | WOOL:YELLOW | ASPHALT


		solid dashed (9 pcs)

			WOOL:YELLOW | ASPHALT | WOOL:YELLOW
			------------+---------+------------
			WOOL:YELLOW | ASPHALT | ASPHALT
			------------+---------+------------
			WOOL:YELLOW | ASPHALT | WOOL:YELLOW


		solid double (9 pcs)

			WOOL:YELLOW | ASPHALT | WOOL:YELLOW
			------------+---------+------------
			WOOL:YELLOW | ASPHALT | WOOL:YELLOW
			------------+---------+------------
			WOOL:YELLOW | ASPHALT | WOOL:YELLOW


		corner single (9 pcs)

			ASPHALT | ASPHALT     | ASPHALT
			--------+-------------+------------
			ASPHALT | WOOL:YELLOW | WOOL:YELLOW
			--------+-------------+------------
			ASPHALT | WOOL:YELLOW | ASPHALT


		corner double

			WOOL:YELLOW | ASPHALT | WOOL:YELLOW
			------------+---------+------------
			WOOL:YELLOW | ASPHALT | ASPHALT
			------------+---------+------------
			WOOL:YELLOW | ASPHALT | WOOL:YELLOW



	Border lines:

		dashed (9 pcs)

			WOOL:WHITE | ASPHALT | ASPHALT
			-----------+---------+--------
			ASPHALT    | ASPHALT | ASPHALT
			-----------+---------+--------
			WOOL:WHITE | ASPHALT | ASPHALT


		solid (9 pcs)

			WOOL:WHITE | ASPHALT | ASPHALT
			-----------+---------+--------
			WOOL:WHITE | ASPHALT | ASPHALT
			-----------+---------+--------
			WOOL:WHITE | ASPHALT | ASPHALT


		inner edge (9 pcs)

			WOOL:WHITE | WOOL:WHITE | WOOL:WHITE
			-----------+------------+-----------
			WOOL:WHITE | ASPHALT    | ASPHALT
			-----------+------------+-----------
			WOOL:WHITE | ASPHALT    | ASPHALT


		outer edge (9 pcs)

			ASPHALT    | ASPHALT | ASPHALT
			-----------+---------+--------
			ASPHALT    | ASPHALT | ASPHALT
			-----------+---------+--------
			WOOL:WHITE | ASPHALT | ASPHALT



	Additional lines:

		yield triangular (9 pcs)

			WOOL:WHITE | ASPHALT    | WOOL:WHITE
			-----------+------------+-----------
			ASPHALT    | WOOL:WHITE | ASPHALT
			-----------+------------+-----------
			ASPHALT    | ASPHALT    | ASPHALT


		yield rectangular (9 pcs)

			WOOL:WHITE | ASPHALT | WOOL:WHITE
			-----------+---------+-----------
			ASPHALT    | ASPHALT | ASPHALT
			-----------+---------+-----------
			ASPHALT    | ASPHALT | ASPHALT


		stop (9 pcs)

			WOOL:WHITE | WOOL:WHITE | WOOL:WHITE
			-----------+------------+-----------
			ASPHALT    | ASPHALT    | ASPHALT
			-----------+------------+-----------
			ASPHALT    | ASPHALT    | ASPHALT


		speed breaker (9 pcs)

			WOOL:WHITE | ASPHALT | WOOL:WHITE
			-----------+---------+-----------
			WOOL:WHITE | ASPHALT | WOOL:WHITE
			-----------+---------+-----------
			ASPHALT    | ASPHALT | WOOL:WHITE


		pedestrian crossing (9 pcs)

			WOOL:WHITE | WOOL:WHITE | ASPHALT
			-----------+------------+--------
			WOOL:WHITE | WOOL:WHITE | ASPHALT
			-----------+------------+--------
			WOOL:WHITE | WOOL:WHITE | ASPHALT



	Traffic marks:

		arrow straight (9 pcs)

			ASPHALT | WOOL:WHITE | ASPHALT
			--------+------------+--------
			ASPHALT | WOOL:WHITE | ASPHALT
			--------+------------+--------
			ASPHALT | WOOL:WHITE | ASPHALT


		arrow straight left (9 pcs)

			ASPHALT    | WOOL:WHITE | ASPHALT
			-----------+------------+--------
			WOOL:WHITE | WOOL:WHITE | ASPHALT
			-----------+------------+--------
			ASPHALT    | WOOL:WHITE | ASPHALT


		arrow straight right (9 pcs)

			ASPHALT | WOOL:WHITE | ASPHALT
			--------+------------+-----------
			ASPHALT | WOOL:WHITE | WOOL:WHITE
			--------+------------+-----------
			ASPHALT | WOOL:WHITE | ASPHALT


		arrow left (9 pcs)

			ASPHALT    | ASPHALT    | ASPHALT
			-----------+------------+--------
			WOOL:WHITE | WOOL:WHITE | ASPHALT
			-----------+------------+--------
			ASPHALT    | WOOL:WHITE | ASPHALT


		arrow right (9 pcs)

			ASPHALT | ASPHALT    | ASPHALT
			--------+------------+-----------
			ASPHALT | WOOL:WHITE | WOOL:WHITE
			--------+------------+-----------
			ASPHALT | WOOL:WHITE | ASPHALT

		parking (9 pcs)

			ASPHALT | WOOL:WHITE | WOOL:WHITE
			--------+------------+-----------
			ASPHALT | WOOL:WHITE | WOOL:WHITE
			--------+------------+-----------
			ASPHALT | WOOL:WHITE | ASPHALT



	Precast concrete

		Concrete separating wall (5 pcs)

			         | CONCRETE |
			---------+----------+---------
			         | CONCRETE |
			---------+----------+---------
			CONCRETE | CONCRETE | CONCRETE


		Concrete cylinder (8 pcs)

			CONCRETE | CONCRETE | CONCRETE
			---------+----------+---------
			CONCRETE |          | CONCRETE
			---------+----------+---------
			CONCRETE | CONCRETE | CONCRETE


		Concrete grid paver (5 pcs)

			CONCRETE |          | CONCRETE
			---------+----------+---------
			         | CONCRETE |
			---------+----------+---------
			CONCRETE |          | CONCRETE



	Steel structures

		Truss (5 pcs)

			STEEL_INGOT |             | STEEL_INGOT
			------------+-------------+------------
			            | STEEL_INGOT |
			------------+-------------+------------
			STEEL_INGOT |             | STEEL_INGOT


		Wire netting (10 pcs)

			            | STEEL_INGOT |
			------------+-------------+------------
			STEEL_INGOT |             | STEEL_INGOT
			------------+-------------+------------
			            | STEEL_INGOT |


		Razor wire (5 pc)

			STEEL_INGOT
			-----------
			CACTUS
			-----------
			STEEL_INGOT


		Drainage channel grating

			STEEL_INGOT |             | STEEL_INGOT


		Louver (2 pcs)

			STEEL_INGOT
			-----------

			-----------
			STEEL_INGOT


		Sheet

			Riffled (4 pcs)

				GALVANIZED_STEEL       | FENCE_GALVANIZED_STEEL
				-----------------------+-----------------------
				FENCE_GALVANIZED_STEEL | GALVANIZED_STEEL


			Corrugated (4 pcs)

				GALVANIZED_STEEL | FENCE_GALVANIZED_STEEL
				-----------------+-----------------------
				GALVANIZED_STEEL | FENCE_GALVANIZED_STEEL



	Advanced items:

		Raised pavement marker yellow/yellow (1 pc)

			WOOL:YELLOW | ASPHALT | WOOL:RED
			------------+---------+---------
			ASPHALT     | ASPHALT | ASPHALT


		Raised pavement marker red/yellow (1 pc)

			WOOL:RED | ASPHALT | WOOL:RED
			---------+---------+---------
			ASPHALT  | ASPHALT | ASPHALT


		Retroreflective delineators

			Retroreflective delineator (1 pc)

				WOOL:YELLOW | CONCRETE | WOOL:RED
				------------+----------+---------
				            | CONCRETE |
				------------+----------+---------
				            | CONCRETE |


			Retroreflective delineator for guardrail (1 pc)

				WOOL:YELLOW | CONCRETE | WOOL:RED
				------------+----------+---------
				            | CONCRETE |


		Traffic barriers

			Wire rope safety barrier (1 pc)

				STEEL_INGOT |             | STEEL_INGOT
				------------+-------------+------------
				            | STEEL_INGOT |
				------------+-------------+------------
				            | STEEL_INGOT |


			Cable barrier terminal (1 pc)

				STEEL_INGOT |             |
				------------+-------------+------------
				            | STEEL_INGOT |
				------------+-------------+------------
				STEEL_INGOT | STEEL_INGOT | STEEL_INGOT


			Corrugated guide rail (1 pc)

				STEEL_INGOT | STEEL_INGOT | STEEL_INGOT
				------------+-------------+------------
				            | STEEL_INGOT |
				------------+-------------+------------
				            | STEEL_INGOT |


			Energy absorbing terminal (1 pc)

				            | STEEL_INGOT |
				------------+-------------+------------
				STEEL_INGOT | STEEL_INGOT |
				------------+-------------+------------
				            | STEEL_INGOT |


			Fitch barrel (1 pc)

				WOOL:BLACK  | WOOL:BLACK  | WOOL:BLACK
				------------+-------------+------------
				WOOL:YELLOW | SAND        | WOOL:YELLOW
				------------+-------------+------------
				WOOL:YELLOW | WOOL:YELLOW | WOOL:YELLOW


		Crowd control barricade (1 pc)

			STEEL_INGOT | STEEL_INGOT | STEEL_INGOT
			------------+-------------+------------
			STEEL_INGOT | STEEL_INGOT | STEEL_INGOT
			------------+-------------+------------
			STEEL_INGOT |             | STEEL_INGOT


		Emergency phone (1 pc)

			MESE_CRYSTAL | MESE_CRYSTAL | MESE_CRYSTAL
			-------------+--------------+------------
			MESE_CRYSTAL | APPLE        | MESE_CRYSTAL
			-------------+--------------+------------
			MESE_CRYSTAL | STICK        | MESE_CRYSTAL

				or

			MESE | MESE  | MESE
			-----+-------+-----
			MESE | APPLE | MESE
			-----+-------+-----
			MESE | STICK | MESE


		Manhole cover (1 pc)

			CONCRETE | CONCRETE    | CONCRETE
			---------+-------------+--------
			CONCRETE | STEEL_INGOT | CONCRETE
			---------+-------------+--------
			CONCRETE | CONCRETE    | CONCRETE


		Traffic lights for vehicles (1 pc)

			STEEL_INGOT | WOOL:RED    | STEEL_INGOT
			------------+-------------+------------
			STEEL_INGOT | WOOL:YELLOW | STEEL_INGOT
			------------+-------------+------------
			STEEL_INGOT | WOOL:GREEN  | STEEL_INGOT


		Traffic lights for pedestrians (1 pc)

			            | STEEL_INGOT |
			------------+-------------+------------
			STEEL_INGOT | WOOL:RED    | STEEL_INGOT
			------------+-------------+------------
			STEEL_INGOT | WOOL:GREEN  | STEEL_INGOT


		Crosswalk warning light (1 pc)

			            | STEEL_INGOT |
			------------+-------------+------------
			STEEL_INGOT | WOOL:YELLOW | STEEL_INGOT
			------------+-------------+------------
			            | STEEL_INGOT |


		Lane control lights (1 pc)

			WOOL:RED    |             | WOOL:RED
			------------+-------------+------------
			WOOL:GREEN  | WOOL:RED    | WOOL:GREEN
			------------+-------------+------------
			WOOL:RED    | WOOL:GREEN  | WOOL:RED


		Curve chevron (1 pc)

			WOOL:YELLOW | WOOL:BLACK  | WOOL:YELLOW
			------------+-------------+------------
			WOOL:BLACK  | WOOL:YELLOW | WOOL:YELLOW
			------------+-------------+------------
			WOOL:YELLOW | WOOL:BLACK  | WOOL:YELLOW


		Crosswalk lighting (1 pc)

			WOOL:WHITE | WOOL:WHITE    | WOOL:WHITE
			-----------+---------------+-----------
			           | MESECON_TORCH |
			-----------+---------------+-----------
			WOOL:WHITE | WOOL:WHITE    | WOOL:WHITE


		Crosswalk safety sign

			         | WOOL:GREEN |
			---------+------------+---------
			         | WOOL:GREEN |
			---------+------------+---------
			CONCRETE | CONCRETE   | CONCRETE


		Road sign crosswalk

			WOOL:GREEN | WOOL:GREEN | WOOL:GREEN
			-----------+------------+-----------
			WOOL:GREEN | WOOL:BLUE  | WOOL:GREEN
			-----------+------------+-----------
			WOOL:GREEN | WOOL:GREEN | WOOL:GREEN


		Automatic warning device (1 pc)

			WOOL:RED | STEEL_INGOT | WOOL:RED
			---------+-------------+---------
			         | STEEL_INGOT |
			---------+-------------+---------
			CONCRETE | CONCRETE    | CONCRETE


		Boom barrier

			mechanism (1 pc)

				STEEL_INGOT | STEEL_INGOT |
				------------+-------------+---------
				            | STEEL_INGOT |
				------------+-------------+---------
				CONCRETE    | CONCRETE    | CONCRETE


			arm (1 pc)

				            | WOOL:RED    |
				------------+-------------+------------
				STEEL_INGOT | STEEL_INGOT | STEEL_INGOT


		Aircraft warning light (1 pc)

			            | WOOL:RED    |
			------------+-------------+------------
			WOOL:RED    | TORCH       | WOOL:RED
			------------+-------------+------------
			STEEL_INGOT | STEEL_INGOT | STEEL_INGOT


		Warning light (1 pc)

			WOOL:YELLOW | WOOL:YELLOW |
			------------+-------------+------------
			WOOL:YELLOW | TORCH       |
			------------+-------------+------------
			STEEL_INGOT | STEEL_INGOT | STEEL_INGOT


		Anti-dazzling panel (1 pc)

			WOOL:GREY | WOOL:GREY
			----------+------------
			WOOL:GREY | WOOL:YELLOW
			----------+------------
			WOOL:GREY | WOOL:GREY


		Traffic cone (1 pc)

			            | WOOL:ORANGE |
			------------+-------------+------------
			WOOL:ORANGE |             | WOOL:ORANGE


		Noise barrier (1 pc)

			STEEL_INGOT | WOOL:GREEN  | STEEL_INGOT
			------------+-------------+------------
			WOOL:GREEN  | STEEL_INGOT | WOOL:GREEN
			------------+-------------+------------
			STEEL_INGOT | WOOL:GREEN  | STEEL_INGOT
