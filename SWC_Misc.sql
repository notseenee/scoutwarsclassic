-- SWC_Misc
-- Author: Sidney Alcantara
-- DateCreated: 4/13/2017 2:44:06 PM
--------------------------------------------------------------

-- Disable Fort defense bonus
UPDATE Improvements
	SET DefenseModifier = 0, GrantFortification = 0;

-- Starts with scout
UPDATE MajorStartingUnits
	SET Unit = 'UNIT_SCOUT'
	WHERE Era = 'ERA_ANCIENT' AND Unit = 'UNIT_WARRIOR';