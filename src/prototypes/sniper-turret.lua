local sniperTurretItem = table.deepcopy(data.raw.item["gun-turret"])

sniperTurretItem.name = "sniper-turret"
sniperTurretItem.icons = {
   {
      icon=sniperTurretItem.icon,
      tint={r=0,g=0,b=0,a=0.3}
   },
}
sniperTurretItem.place_result = "sniper-turret"


local sniperTurret = table.deepcopy(data.raw['ammo-turret']["gun-turret"])
sniperTurret.name = "sniper-turret"
sniperTurret.minable = {
  mining_time = sniperTurret.minable.mining_time,
  result = "sniper-turret"
}

sniperTurret.attack_parameters.range = 30
sniperTurret.attack_parameters.min_range = 10
sniperTurret.attack_parameters.cooldown = 180
sniperTurret.attack_parameters.damage_modifier = 80



local recipe = table.deepcopy(data.raw.recipe["gun-turret"])
recipe.enabled = true
recipe.name = "sniper-turret"
recipe.result = "sniper-turret"

data:extend{sniperTurretItem,sniperTurret,recipe}
