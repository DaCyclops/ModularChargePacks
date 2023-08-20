
data:extend(
{

  -- Charge Capacitor Modules

  {
    type = "module-category",
    name = "electrodes"
  },
  {
    type = "module",
    name = "chargepack-enhanced-electrodes-1",
    icon = "__ModularChargePacks__/graphics/electrode-module-1.png",
    icon_size = 32,
    flags = {},
    subgroup = "chargepacks",
    category = "electrodes",
    tier = 1,
    order = "d[chargepack]-c[enhanced-electrodes-1]",
    stack_size = 10,
    default_request_amount = 1,
    effect =
    {
      pollution = {bonus = 0.10},
      speed = {bonus = 0.15},
    },
    limitation = {"chargepack-small-fullycharged-rapid"
                 ,"chargepack-large-fullycharged-rapid"
                 },
    limitation_message_key = "enhanced-electrodes-only-in-rapid-charger"
  },
  {
    type = "module",
    name = "chargepack-enhanced-electrodes-2",
    icon = "__ModularChargePacks__/graphics/electrode-module-2.png",
    icon_size = 32,
    flags = {},
    subgroup = "chargepacks",
    category = "electrodes",
    tier = 2,
    order = "d[chargepack]-c[enhanced-electrodes-2]",
    stack_size = 10,
    default_request_amount = 1,
    effect =
    {
      pollution = {bonus = 0.25},
      speed = {bonus = 0.30}
    },
    limitation = {"chargepack-small-fullycharged-rapid"
                 ,"chargepack-large-fullycharged-rapid"
                 },
    limitation_message_key = "enhanced-electrodes-only-in-rapid-charger"
  },
  {
    type = "module",
    name = "chargepack-enhanced-electrodes-3",
    icon = "__ModularChargePacks__/graphics/electrode-module-3.png",
    icon_size = 32,
    flags = {},
    subgroup = "chargepacks",
    category = "electrodes",
    tier = 3,
    order = "d[chargepack]-c[enhanced-electrodes-3]",
    stack_size = 10,
    default_request_amount = 1,
    effect =
    {
      pollution = {bonus = 0.45},
      speed = {bonus = 0.50}
    },
    limitation = {"chargepack-small-fullycharged-rapid"
                 ,"chargepack-large-fullycharged-rapid"
                 },
    limitation_message_key = "enhanced-electrodes-only-in-rapid-charger"
  },
  {
    type = "recipe",
    name = "chargepack-electrodes-1",
    enabled = false,
    ingredients =
    {
      {"accumulator", 1},
      {"electronic-circuit", 10}
    },
    energy_required = 15,
    result = "chargepack-enhanced-electrodes-1"
  },
  {
    type = "recipe",
    name = "chargepack-electrodes-2",
    enabled = false,
    ingredients =
    {
      {"chargepack-enhanced-electrodes-1", 2},
      {"advanced-circuit", 10},
    },
    energy_required = 30,
    result = "chargepack-enhanced-electrodes-2"
  },
  {
    type = "recipe",
    name = "chargepack-electrodes-3",
    enabled = false,
    ingredients =
    {
      {"chargepack-enhanced-electrodes-1", 1},
      {"chargepack-enhanced-electrodes-2", 1},
      {"processing-unit", 10}
    },
    energy_required = 45,
    result = "chargepack-enhanced-electrodes-3"
  },
  
})
-- Add Recipes to Techs
table.insert(data.raw["technology"]["speed-module"].effects,{type="unlock-recipe",recipe="chargepack-electrodes-1"})
table.insert(data.raw["technology"]["speed-module-2"].effects,{type="unlock-recipe",recipe="chargepack-electrodes-2"})
table.insert(data.raw["technology"]["speed-module-3"].effects,{type="unlock-recipe",recipe="chargepack-electrodes-3"})