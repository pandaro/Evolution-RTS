-- UNITDEF -- ehbotthud --
--------------------------------------------------------------------------------

local unitName                   = "ehbotthud"

--------------------------------------------------------------------------------

local tech						 = [[tech1]]
local armortype					 = [[light]]
local supply					 = [[7]]
local maxDamage					 = 325

local weapon1Damage              = 75
local weapon1AOE				 = 100
local weapon1Range				 = 800
--local projectiles				 = 5
--local burst						 = 102
local energycosttofire			 = weapon1Damage / 10 * ((weapon1AOE / 1000) + 1)

local function roundToFirstDecimal(energycosttofire)
    return math.floor(energycosttofire*10 + 0.5)*0.1
end

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;
	--**

	acceleration                 = 1,
	brakeRate                    = 1,
	buildCostEnergy              = 0,
	buildCostMetal               = 27,
	builder                      = false,
	buildTime                    = 5,
	canAttack                    = true,
	
	canGuard                     = true,
	canHover                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	category                     = "LIGHT NOTAIR RAID",
	corpse                       = "ammobox",
	description                  = [[Light Tank Destroyer • Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "mediumExplosionGeneric",
	footprintX                   = 5,
	footprintZ                   = 5,
	highTrajectory		   		 = 2,
	iconType                     = "td_lit_lit",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	leaveTracks                  = false,
	maxDamage                    = maxDamage,
	maxSlope                     = 26,
	maxVelocity                  = 3,
	maxReverseVelocity           = 1,
	maxWaterDepth                = 10,
	metalStorage                 = 0,
	movementClass                = "HOVERHBOT5",
	name                         = "Thud",
	noChaseCategory              = "VTOL",
	objectName                   = "ehbotthud.s3o",
	script						 = "ehbotthud_lus.lua",
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "mediumExplosionGeneric",
	side                         = "CORE",
	sightDistance                = weapon1Range,
	smoothAnim                   = true,
	stealth			             = true,
	seismicSignature             = 2,
	--  turnInPlace              = false,
	--  turnInPlaceSpeedLimit    = 5.5,
	turnInPlace                  = true,
	turnRate                     = 5000,
	--  turnrate                 = 475,
	unitname                     = unitname,
	upright                      = true,
	--usePieceCollisionVolumes	 = true,
	workerTime                   = 0,

	sfxtypes                     = {
		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:dirt",
			"custom:blacksmoke",
			"custom:airfactoryhtrail",
		},
		pieceExplosionGenerators = {
			"deathceg3",
			"deathceg4",
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
	weapons                      = {
		[1]                      = {
			def                  = "plasmacannon",
--			mainDir = "0 0 1", -- x:0 y:0 z:1 => that's forward!
--			maxAngleDif = 70,
			badTargetCategory    = "VTOL ARMORED WALL",
		},
	},
	customParams                 = {
		unittype				  = "mobile",
		canbetransported 		 = "true",
		needed_cover             = 1,
		death_sounds             = "generic",
		RequireTech              = tech,
		armortype                = armortype,
		nofriendlyfire	         = "1",
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
		helptext                 = [[Armortype: ]] ..armortype.. [[ 
 
Energy cost to fire: ]] .. roundToFirstDecimal(energycosttofire),
	},
}


--------------------------------------------------------------------------------
-- Energy Per Shot Calculation is: dmg / 20 * ((aoe / 1000) + 1)

local weaponDefs                 = {
	plasmacannon                	= {
		AreaOfEffect           = weapon1AOE,
		avoidFriendly          = false,
		avoidFeature 		   = false,
		collideFriendly        = false,
		collideFeature         = false,
		cegTag				   = "thudshot",
		--burst				   = burst,
		--burstrate			   = 0.1,
		edgeEffectiveness	   = 1,
		explosionGenerator     = "custom:genericshellexplosion-medium",
		energypershot          = energycosttofire,
		--duration			   = 0.25,
		highTrajectory		   = 2,
		impulseFactor          = 0,
		interceptedByShieldType  = 4,
		name                   = "Plasma Cannon",
		--noExplode			   = true,
		range                  = weapon1Range,
		reloadtime             = 1,
		--projectiles			   = projectiles,
		weaponType		       = "Cannon",
		soundStart             = "bruisercannon.wav",
		soundHit	           = "mediumcannonhit.wav",
		soundTrigger           = true,
		--sprayAngle             = 1000,
		tolerance              = 10000,
		turret                 = true,
		weaponTimer            = 1,
		weaponVelocity         = 600,
		customparams             = {
			damagetype		     = "ehbotthud",
		},      
		damage                   = {
			default              = weapon1Damage,
		},
	},
}
unitDef.weaponDefs               = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
