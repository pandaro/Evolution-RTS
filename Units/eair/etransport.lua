-- UNITDEF -- ETRANSPORT --
--------------------------------------------------------------------------------

local unitName                   = "etransport"

--------------------------------------------------------------------------------

local buildCostMetal 			  = 20
local maxDamage					  = 200

--local tech						 = [[0 Generator]]
local armortype					 = [[armored]]
local supply					 = [[0]]

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;

	--**


	acceleration                 = 0.5,
	airStrafe                    = false,
	airHoverFactor	             = 0,
	brakeRate                    = 2,
	buildCostEnergy              = 0,
	buildCostMetal               = buildCostMetal,
	builder                      = false,
	buildTime                    = 2.5,
	canAttack                    = false,
	canFly                       = true,
	canGuard                     = false,
	canMove                      = true,
	canload                      = true,
	canPatrol                    = false,
	canstop                      = "1",
	category                     = "ARMORED VTOL",
	collide                      = true,
	corpse                       = "ammobox",
	cruiseAlt                    = 150,
	description                  = [[Fast Armored Transport • Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyUse                    = 0,
	explodeAs                    = "hugeExplosionGenericRed",
	fallSpeed                    = 1000,
	footprintX                   = 3,
	footprintZ                   = 3,
	hoverAttack                  = true,
	holdSteady                   = true,
	--  hoverAttack              = true,
	icontype                     = "etransport",
	maxDamage                    = maxDamage,
	maxSlope                     = 90,
	maxVelocity                  = 7,
	verticalSpeed		         = 30,
	name                         = "Charter",
	objectName                   = "etransport2-small.s3o",
	script			             = "etransport2.cob",
	releaseHeld                  = true,
	repairable		             = false,
	selfDestructAs               = "hugeExplosionGenericRed",
	side                         = "GD",
	sightDistance                = 500,
	smoothAnim                   = true,
	transportCapacity            = 1,
	transportMass                = 10000,
	transportSize                = 6,
	transportUnloadMethod   	 = 0,
	fallSpeed 					 = 10,
	loadingRadius				 = 220, --float
	turnRate                     = 5000,
	unitname                     = unitName,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:jethtrail",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	customParams                 = {
		unittype				  = "mobile",
		--    needed_cover       = 2,
		death_sounds             = "generic",
--		RequireTech              = tech,
		armortype                = armortype,
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
		helptext				 = [[Armortype: ]] ..armortype,
	},
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
