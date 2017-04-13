-- SWC_Technologies
-- Author: Sidney Alcantara
-- DateCreated: 4/13/2017 1:11:05 PM
--------------------------------------------------------------

-- Lower cost of shipbuilding, cartography
UPDATE Technologies
	SET Cost = 120
	WHERE TechnologyType = 'TECH_SHIPBUILDING';

UPDATE Technologies
	SET Cost = 150
	WHERE TechnologyType = 'TECH_CARTOGRAPHY';

-- Reorder rows
UPDATE Technologies
	SET UITreeRow = -3
	WHERE TechnologyType = 'TECH_ANIMAL_HUSBANDRY';

UPDATE Technologies
	SET UITreeRow = -2
	WHERE TechnologyType IN (
		'TECH_POTTERY',
		'TECH_IRRIGATION'
	);

UPDATE Technologies
	SET UITreeRow = 0
	WHERE TechnologyType IN (
		'TECH_SAILING',
		'TECH_SHIPBUILDING',
		'TECH_CARTOGRAPHY'
	);

UPDATE Technologies
	SET UITreeRow = 2
	WHERE TechnologyType IN (
		'TECH_MINING',
		'TECH_MASONRY'
	);

UPDATE Technologies
	SET UITreeRow = 3
	WHERE TechnologyType = 'TECH_BRONZE_WORKING';

UPDATE Technologies
	SET UITreeRow = 4
	WHERE TechnologyType = 'TECH_THE_WHEEL';