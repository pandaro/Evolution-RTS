-- UNITDEF -- ELIGHTTANK3 --
--------------------------------------------------------------------------------

local unitName = "elighttank3"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.18,
  brakeRate          = 0.1,
  buildCostEnergy    = 0,
  buildCostMetal     = 10,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canHover           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "NOTAIR RAID",
  corpse             = "ammobox",
  description        = [[Raider 
  �Damagetype: Piercing :: Armortype: Light]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "SMALL_UNIT",
  footprintX         = 2,
  footprintZ         = 2,
  iconType           = "hover",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 120,
  maxSlope           = 26,
  maxVelocity        = 5.5,
  maxReverseVelocity = 2,
  maxWaterDepth      = 10,
  metalStorage       = 0,
  movementClass      = "HOVERTANK2",
  name               = "(K)ite",
  noChaseCategory    = "VTOL",
  objectName         = "elighttank3.s3o",
  radarDistance      = 0,
  selfDestructAs     = "SMALL_UNIT",
  side               = "CORE",
  sightDistance      = 800,
  smoothAnim         = true,
  turnInPlace        = false,
  turnRate           = 475,
  unitname           = "elighttank3",
  upright            = true,
  workerTime         = 0,
    sfxtypes = {
    explosiongenerators = {
      "custom:factorysparks",
      "custom:dirt",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "lighttankweapon",
      badTargetCategory  = "VTOL",
    },
  },
  customParams = {
	twokhotkey = 'k',
    RequireTech = "2 Power",
	armortype   = "lightarmor",
	normaltex = "unittextures/elighttank3normal.png", 
	helptext = [[The Kite is every bit as agile as it's name implies. Excellent for fast response defense in the early stages of the game. Double damage versus economy structures, very good versus units with heavy armor.]],
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  lighttankweapon = {
    areaOfEffect       = 100,
    avoidFriendly      = false,
    collideFriendly    = false,
    avoidFeature       = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = "custom:LIGHTNINGPLOSION1SMALL",
	energypershot      = 4,
    impulseBoost       = 0,
    impulseFactor      = 0,
    interceptedByShieldType = 4,
    lineOfSight        = true,
    noSelfDamage       = true,
    range              = 350,
    reloadtime         = 1,
    WeaponType         = "LightningCannon",
    rgbColor           = "0.1 0.2 0.5",
    rgbColor2          = "0 0 1",
    soundStart         = "jacobs.wav",
    startsmoke         = "1",
    texture1           = "lightning",
    thickness          = 5,
    turret             = true,
    weaponVelocity     = 400,
	customparams = {
	  damagetype		= "beam",  
    },      
    damage = {
      default           = 40,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------