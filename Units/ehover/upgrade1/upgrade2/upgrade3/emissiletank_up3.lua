-- UNITDEF -- EMISSILETANK_up3 --
--------------------------------------------------------------------------------

unitName = "emissiletank_up3"

--------------------------------------------------------------------------------

isUpgraded	= [[3]]

humanName = "Droplet Upgrade 3"

objectName = "emissiletank2.s3o"
script = "emissiletank2.cob"
tech = [[tech2]]
armortype	= [[light]]
supply = [[14]]

VFS.Include("units-configs-basedefs/basedefs/hover/emissiletank_basedef.lua")

unitDef.weaponDefs = weaponDefs
--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
