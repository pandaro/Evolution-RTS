-- UNITDEF -- EARTYTANK_up2 --
--------------------------------------------------------------------------------

unitName = "eartytank_up2"

--------------------------------------------------------------------------------

isUpgraded	= [[2]]

humanName = "ShadowFury Upgrade 2"

objectName = "eartytank2.s3o"
script = "eartytank2.cob"

tech = [[tech1]]
armortype = [[light]]
supply = [[8]]

VFS.Include("units-configs-basedefs/basedefs/hover/eartytank_basedef.lua")

unitDef.weaponDefs = weaponDefs
--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
