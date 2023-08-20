
data:extend(
{
  {
    type = "item-subgroup",
    name = "chargepacks",
    group = "combat",
    order = "p"
  },
  {
    type = "battery-equipment",
    name = "chargepack-small",
    sprite =
    {
      filename = "__ModularChargePacks__/graphics/eq-chargepack-small.png",
      width = 64,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "36MJ",
      input_flow_limit = "0MW",
      output_flow_limit = "5MW",
      usage_priority = "primary-output"
    },
    categories = {"armor"}
  },

    {
    type = "battery-equipment",
    name = "chargepack-small-fullycharged",
    sprite =
    {
      filename = "__ModularChargePacks__/graphics/eq-chargepack-small.png",
      width = 64,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "36MJ",
      input_flow_limit = "0MW",
      output_flow_limit = "5MW",
      usage_priority = "primary-output"
    },
    categories = {"armor"}
  },

    {
    type = "battery-equipment",
    name = "chargepack-large",
    sprite =
    {
      filename = "__ModularChargePacks__/graphics/eq-chargepack-large.png",
      width = 96,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "350MJ",
      input_flow_limit = "0MW",
      output_flow_limit = "15MW",
      usage_priority = "primary-output"
    },
    categories = {"armor"}
  }, 
  
  {
    type = "battery-equipment",
    name = "chargepack-large-fullycharged",
    sprite =
    {
      filename = "__ModularChargePacks__/graphics/eq-chargepack-large.png",
      width = 96,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "350MJ",
      input_flow_limit = "0MW",
      output_flow_limit = "15MW",
      usage_priority = "primary-output"
    },
    categories = {"armor"}
  }, 

  {
    type = "item",
    name = "chargepack-small",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-small.png",
    icon_size = 32,
    placed_as_equipment_result = "chargepack-small",
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-a[chargepack-1-small]",
    stack_size = 20,
    default_request_amount = 4
  },

  {
    type = "item",
    name = "chargepack-small-fullycharged",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-small-fullycharged.png",
    icon_size = 32,
    placed_as_equipment_result = "chargepack-small-fullycharged",
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 20,
    default_request_amount = 4
  },

   {
    type = "item",
    name = "chargepack-large",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-large.png",
    icon_size = 32,
    placed_as_equipment_result = "chargepack-large",
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-a[chargepack-2-large]",
    stack_size = 20,
    default_request_amount = 2
  },

  {
    type = "item",
    name = "chargepack-large-fullycharged",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-large-fullycharged.png",
    icon_size = 32,
    placed_as_equipment_result = "chargepack-large-fullycharged",
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-a[chargepack-2-large-fullycharged]",
    stack_size = 20,
    default_request_amount = 2
  },

  {
    type = "recipe",
    name = "chargepack-small",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"battery-equipment", 2},
      {"advanced-circuit", 4},
      {"copper-cable", 8}
    },
    result = "chargepack-small"
  },
  
  {
    type = "recipe",
    name = "chargepack-large",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"battery-mk2-equipment", 4},
      {"advanced-circuit", 8},
      {"copper-cable", 18}
    },
    result = "chargepack-large"
  },

  {
    type = "recipe",
    name = "chargepack-small-fullycharged-normal",
    enabled = true,
    hidden = true,
    energy_required = 13,
    ingredients =
    {
      {"chargepack-small", 1}
    },
    result = "chargepack-small-fullycharged",
    category = "charging-chargepack-normal"
  },
  
  {
    type = "recipe",
    name = "chargepack-large-fullycharged-normal",
    enabled = true,
    hidden = true,
    energy_required = 126,
    ingredients =
    {
      {"chargepack-large", 1}
    },
    result = "chargepack-large-fullycharged",
    category = "charging-chargepack-normal"
  },

    {
    type = "recipe",
    name = "chargepack-small-fullycharged-rapid",
    enabled = true,
    hidden = true,
    energy_required = 3.2,
    ingredients =
    {
      {"chargepack-small", 1}
    },
    result = "chargepack-small-fullycharged",
    category = "charging-chargepack-rapid"
  },
  
  {
    type = "recipe",
    name = "chargepack-large-fullycharged-rapid",
    enabled = true,
    hidden = true,
    energy_required = 30,
    ingredients =
    {
      {"chargepack-large", 1}
    },
    result = "chargepack-large-fullycharged",
    category = "charging-chargepack-rapid"
  }
})

-- Add Recipes to Techs
table.insert(data.raw["technology"]["battery-equipment"].effects,{type="unlock-recipe",recipe="chargepack-small"})
table.insert(data.raw["technology"]["battery-mk2-equipment"].effects,{type="unlock-recipe",recipe="chargepack-large"})
