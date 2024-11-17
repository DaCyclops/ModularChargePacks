
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
      input_flow_limit = "0",
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
      input_flow_limit = "0",
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
      input_flow_limit = "0",
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
      input_flow_limit = "0",
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
    place_as_equipment_result = "chargepack-small",
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-a[chargepack-1-small]",
    stack_size = 20,
    default_request_amount = 4,
    weight = 5 * kg,
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move
  },

  {
    type = "item",
    name = "chargepack-small-fullycharged",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-small-fullycharged.png",
    icon_size = 32,
    place_as_equipment_result = "chargepack-small-fullycharged",
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-a[chargepack-1-small-fullycharged]",
    stack_size = 20,
    default_request_amount = 4,
    weight = 5 * kg,
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move
  },

   {
    type = "item",
    name = "chargepack-large",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-large.png",
    icon_size = 32,
    place_as_equipment_result = "chargepack-large",
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-a[chargepack-2-large]",
    stack_size = 20,
    default_request_amount = 2,
    weight = 10 * kg,
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move
  },

  {
    type = "item",
    name = "chargepack-large-fullycharged",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-large-fullycharged.png",
    icon_size = 32,
    place_as_equipment_result = "chargepack-large-fullycharged",
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-a[chargepack-2-large-fullycharged]",
    stack_size = 20,
    default_request_amount = 2,
    weight = 10 * kg,
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move
  },

  {
    type = "recipe",
    name = "chargepack-small",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "battery-equipment", amount = 2},
      {type = "item", name = "advanced-circuit", amount = 4},
      {type = "item", name = "copper-cable", amount = 8}
    },
    results = {{type="item", name="chargepack-small", amount=1}}
  },
  
  {
    type = "recipe",
    name = "chargepack-large",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "battery-mk2-equipment", amount = 4},
      {type = "item", name = "advanced-circuit", amount = 8},
      {type = "item", name = "copper-cable", amount = 18}
    },
    results = {{type="item", name="chargepack-large", amount=1}}
  },

  {
    type = "recipe",
    name = "chargepack-small-fullycharged-normal",
    enabled = true,
    hidden = true,
    energy_required = 13,
    ingredients =
    {
      {type = "item", name = "chargepack-small", amount = 1}
    },
    results = {{type="item", name="chargepack-small-fullycharged", amount=1}},
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
      {type = "item", name = "chargepack-large", amount = 1}
    },
    results = {{type="item", name="chargepack-large-fullycharged", amount=1}},
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
      {type = "item", name = "chargepack-small", amount = 1}
    },
    results = {{type="item", name="chargepack-small-fullycharged", amount=1}},
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
      {type = "item", name = "chargepack-large", amount = 1}
    },
    results = {{type="item", name="chargepack-large-fullycharged", amount=1}},
    category = "charging-chargepack-rapid"
  },
  
  {
    type = "recipe",
    name = "chargepack-large-fullycharged-overclocked",
    enabled = true,
    hidden = true,
    energy_required = 8,
    ingredients =
    {
      {type = "item", name = "chargepack-large", amount = 1}
    },
    results = {{type="item", name="chargepack-large-fullycharged", amount=1}},
    category = "charging-chargepack-overclocked"
  }



})

-- Add Recipes to Techs
table.insert(data.raw["technology"]["battery-equipment"].effects,{type="unlock-recipe",recipe="chargepack-small"})
table.insert(data.raw["technology"]["battery-mk2-equipment"].effects,{type="unlock-recipe",recipe="chargepack-large"})
