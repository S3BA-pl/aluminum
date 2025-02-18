local util = require("data-util");


-- BZ tweak
util.replace_some_ingredient("bronze-plate", "copper-plate", 1, "aluminum-plate", 1)

-- Big vanilla changes
util.multiply_recipe("sulfur", 2)
util.replace_some_ingredient("sulfur", "petroleum-gas", 10, "alumina", 1)
util.replace_ingredient("inserter", "iron-plate", "aluminum-plate")
util.replace_ingredient("burner-inserter", "iron-plate", "aluminum-plate")
util.replace_ingredient("transport-belt", "iron-plate", "aluminum-plate")
util.replace_ingredient("underground-belt", "iron-plate", "aluminum-plate")
util.replace_ingredient("splitter", "iron-plate", "aluminum-plate")
util.replace_ingredient("rocket", "iron-plate", "aluminum-plate")
util.replace_ingredient("loader", "iron-plate", "aluminum-plate")

util.replace_ingredient("small-lamp", "copper-cable", "aluminum-cable", 1)
util.replace_ingredient("radar", "iron-plate", "aluminum-plate")
util.replace_ingredient("steam-engine", "iron-plate", "aluminum-plate")
util.replace_ingredient("storage-tank", "iron-plate", "aluminum-plate")
util.remove_ingredient("engine-unit", "tungsten-plate")
util.add_ingredient("engine-unit", "spark-plug", mods["space-exploration"] and 2 or 1)
util.add_ingredient("flamethrower", "spark-plug", 1)
util.add_ingredient("flamethrower-turret", "spark-plug", 1)
util.add_ingredient("tank", "spark-plug", 1)
util.add_ingredient("tank", "spark-plug", 1)

util.replace_some_ingredient("artillery-shell", "explosives", 4, "aluminum-2219", 4)

if mods.bztitanium then
  util.remove_ingredient("laser-turret", "diamond")
  util.add_ingredient("laser-turret", "ti-sapphire", 1)
  util.add_ingredient("obelisk-of-light", "ti-sapphire", 1)
else
  util.add_ingredient("laser-turret", "alumina", 5)
  util.add_ingredient("obelisk-of-light", "alumina", 5)

  util.replace_ingredient("flying-robot-frame", "steel-plate", "aluminum-2219", 2)
  util.add_prerequisite("robotics", "aerospace-alloys")
end

util.replace_some_ingredient("distractor-capsule", "defender-capsule", 1, "ti-sapphire", 1)

-- "Mall" changes
util.replace_ingredient("fast-inserter", "iron-plate", "aluminum-plate")
util.replace_ingredient("long-handed-inserter", "iron-plate", "aluminum-plate")

util.replace_some_ingredient("light-armor", "iron-plate", 20, "alumina", 20)
util.replace_some_ingredient("heavy-armor", "copper-plate", 20, "alumina", 50)
util.replace_some_ingredient("tank", "steel-plate", 10, "alumina", 40)

util.add_ingredient("kr-white-reinforced-plate", "alumina", 10)
util.add_ingredient("kr-black-reinforced-plate", "alumina", 10)
util.replace_ingredient("transport-belt-loader", "iron-plate", "aluminum-plate")
util.add_ingredient("transport-belt-loader", "aluminum-plate", 10)



-- buildings

util.replace_some_ingredient("rocket-silo", "concrete", 500, "alumina", 500)
util.add_ingredient("rocket-silo", "aluminum-plate", 500)
util.set_ingredient("rocket-silo", "steel-plate", 500)
util.add_ingredient("rocket-silo", "spark-plug", 100)

util.add_ingredient("roboport", "aluminum-6061", 45)
util.replace_ingredient("assembling-machine-1", "iron-plate", "aluminum-plate")

util.add_ingredient("centrifuge", "aluminum-plate", 50)

for i, item in pairs(data.raw.item) do
  if item.subgroup == "beltboxes" then
    util.replace_ingredient(item.name, "iron-plate", "aluminum-plate")
  end
end

util.replace_ingredient("kr-shelter", "copper-cable", "aluminum-cable")

-- Glass
-- k2
util.replace_some_ingredient("glass", "sand", 3, "alumina", 1)
-- aai
util.multiply_recipe("glass-from-sand", 4)
util.replace_some_ingredient("glass-from-sand", "sand", 3, "alumina", 1)
util.set_category("glass-from-sand", "basic-founding")
-- se
util.replace_some_ingredient("se-glass-vulcanite", "sand", 3, "alumina", 1)

-- sand-and-glass
util.multiply_recipe("sng-glass-plate", 4)
util.replace_some_ingredient("sng-glass-plate", "sng-sand", 3, "alumina", 1)
util.set_category("sng-glass-plate", "basic-founding")

  
  

if not mods.Krastorio2 then
  util.set_to_founding("glass")
  util.set_to_founding("glass-from-sand")
  util.set_to_founding("se-glass-vulcanite")
  util.set_to_founding("sng-glass-plate")
end

-- End glass


-- k2
if mods.Krastorio2 then
  util.replace_some_ingredient("inserter-parts", "iron-stick", 2, "aluminum-plate", 1)
  util.add_ingredient("inserter", "iron-stick", 1) -- nice symmetry
  util.replace_ingredient("fast-inserter", "steel-plate", "aluminum-plate")
  util.replace_ingredient("filter-inserter", "steel-plate", "aluminum-plate")
  util.replace_ingredient("kr-wind-turbine", "iron-plate", "aluminum-plate")

  util.replace_ingredient("battery-equipment", "iron-plate", "aluminum-plate")
  util.replace_ingredient("night-vision-equipment", "iron-plate", "aluminum-plate")
  util.replace_ingredient("big-battery-equipment", "iron-plate", "aluminum-plate")
  util.replace_ingredient("personal-submachine-laser-defense-mk1-equipment", "iron-plate", "aluminum-plate")

  util.replace_ingredient("additional-engine", "steel-plate", "aluminum-6061")
  util.replace_ingredient("advanced-additional-engine", "steel-plate", "aluminum-6061")
  util.replace_ingredient("vehicle-roboport", "steel-plate", "aluminum-6061")


  util.add_ingredient("kr-research-server", "aluminum-plate", 8)
  util.add_ingredient("kr-atmospheric-condenser", "aluminum-plate", 10)
  util.add_ingredient("kr-filtration-plant", "aluminum-plate", 10)
  util.add_ingredient("kr-small-roboport", "aluminum-6061", 10)
  util.add_ingredient("kr-large-roboport", "aluminum-6061", 20)
  util.add_ingredient("assembling-machine-1", "aluminum-plate", 4)

  util.add_ingredient("kr-laser-artillery-turret", "ti-sapphire", 4)
  util.add_ingredient("kr-matter-assembler", "ti-sapphire", 8)
  util.add_ingredient("kr-matter-plant", "ti-sapphire", 5)
end

util.replace_ingredient("chute-miniloader", "iron-plate", "aluminum-plate")

if mods["space-exploration"] then

  util.add_product("se-scrap-recycling", {type="item", name="aluminum-ore", amount=1, probability=0.1})

  util.replace_ingredient("se-adaptive-armour-equipment-1", "titanium-plate", "alumina")
  util.replace_ingredient("se-adaptive-armour-equipment-1", "steel-plate", "alumina")

  util.replace_ingredient("se-space-transport-belt", "copper-plate", "aluminum-2219")
  util.add_ingredient("se-energy-beam-defence", "acsr-cable", 20)

  util.replace_some_ingredient("se-rocket-launch-pad", "concrete", 500, "alumina", 500)
  util.replace_some_ingredient("se-rocket-launch-pad", "steel-plate", 500, "aluminum-plate", 500)
  util.add_ingredient("se-rocket-launch-pad", "spark-plug", 100)
  util.add_ingredient("se-fluid-burner-generator", "spark-plug", 2)


  util.add_ingredient("se-experimental-alloys-data", "aluminum-plate", 1)
  util.add_to_product("se-experimental-alloys-data", "se-experimental-alloys-data", 1)
  util.add_to_product("se-experimental-alloys-data", "se-scrap", 1)
  util.add_to_ingredient("se-experimental-alloys-data", "se-empty-data", 1)

  util.add_ingredient("se-electrical-shielding-data", "alumina", 1)

  util.add_ingredient("se-space-laser-laboratory", "ti-sapphire", 10)
  util.add_ingredient("se-space-astrometrics-laboratory", "ti-sapphire", 1)
  util.add_ingredient("se-space-hypercooler", "ti-sapphire", 6)
end

util.replace_ingredient("Schall-fast-inserter-R1", "iron-plate", "aluminum-plate")
util.replace_ingredient("Schall-fast-inserter-R2", "iron-plate", "aluminum-plate")
util.replace_ingredient("Schall-fast-inserter-R3", "iron-plate", "aluminum-plate")
util.replace_ingredient("Schall-fast-inserter-R4", "iron-plate", "aluminum-plate")
util.replace_ingredient("Schall-fast-inserter-R5", "iron-plate", "aluminum-plate")
util.replace_ingredient("very-long-handed-inserter", "iron-plate", "aluminum-plate")
util.replace_ingredient("FastLongInserters_fast-inserter", "iron-plate", "aluminum-plate")
util.replace_ingredient("FastLongInserters_filter-inserter", "iron-plate", "aluminum-plate")
util.replace_ingredient("FastLongInserters_stack-inserter", "iron-plate", "aluminum-plate")
util.replace_ingredient("FastLongInserters_stack-filter-inserter", "iron-plate", "aluminum-plate")

-- Robocharger
util.add_ingredient("robocharger", "aluminum-6061", 35)
util.add_ingredient("robocharger", "aluminum-cable", 10)
-- Robot charging station 1x1
util.add_ingredient("Robot-Charge-Station-1x1-small", "aluminum-6061", 3)
util.add_ingredient("Robot-Charge-Station-1x1-medium", "aluminum-6061", 6)
util.add_ingredient("Robot-Charge-Station-1x1", "aluminum-6061", 10)
util.replace_ingredient("Robot-Charge-Station-1x1-small", "copper-cable", "aluminum-cable")
util.replace_ingredient("Robot-Charge-Station-1x1-medium","copper-cable", "aluminum-cable")
util.replace_ingredient("Robot-Charge-Station-1x1","copper-cable", "aluminum-cable")

-- Tesla tank ammo
util.replace_some_ingredient("Teslacharge-pack", "steel-plate", 4, "aluminum-plate", 10)


-- Leighzer's scrap
if mods.leighzerscrapyards then
  util.add_to_product("scrap-processing", "iron-plate", -1)
  util.add_to_product("scrap-processing", "copper-plate", -1)
  util.add_product("scrap-processing", {"aluminum-plate", 2})
end



-- Rampant
util.add_ingredient("advanced-laser-item-rampant-arsenal", "ti-sapphire", 1)

-- Laser weapons
util.add_ingredient("laser-gun", "ti-sapphire", 1)
util.add_ingredient("laser-minigun", "ti-sapphire", 1)

-- Laser Tanks
util.add_ingredient("lasercar", "ti-sapphire", 1)
util.add_ingredient("lasertank", "ti-sapphire", 1)

-- Laser wall
util.add_ingredient("laser-wall", "ti-sapphire", 1)

-- Transport drones
util.replace_ingredient("request-depot", "iron-plate", "aluminum-plate")
util.replace_ingredient("supply-depot", "iron-plate", "aluminum-plate")
util.replace_ingredient("buffer-depot", "iron-plate", "aluminum-plate")
util.replace_ingredient("fluid-depot", "iron-plate", "aluminum-plate")
util.replace_ingredient("fuel-depot", "iron-plate", "aluminum-plate")
util.replace_ingredient("transport-drone", "steel-plate", "aluminum-6061")
util.add_prerequisite("transport-system", "basic-alloys")

-- Ultimate belts
util.replace_ingredient("extreme-fast-belt", "express-transport-belt", "aluminum-2219", 25)
util.replace_ingredient("extreme-fast-underground-belt", "express-underground-belt", "aluminum-2219", 100)
util.replace_ingredient("extreme-fast-belt-loader", "express-transport-belt-loader", "aluminum-2219", 50)

-- Advanced belts
util.add_ingredient("ultimate-belt", "aluminum-2219", 10)
util.add_ingredient("ultimate-underground", "aluminum-2219", 40)

-- Bob's assembling machines
if mods.bobassembly then
  util.replace_ingredient("burner-assembling-machine", "iron-plate", "aluminum-plate")
  util.replace_ingredient("steam-assembling-machine", "iron-plate", "aluminum-plate")
  util.add_prerequisite("electronics-machine-1", "electronics")
end


