
data:extend(
{
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
    placed_as_equipment_result = "chargepack-small",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "c[battery2]-a[chargepack-small]",
    stack_size = 10,
    default_request_amount = 10
  },

  {
    type = "item",
    name = "chargepack-small-fullycharged",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-small-fullycharged.png",
    placed_as_equipment_result = "chargepack-small-fullycharged",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "c[battery2]-a[chargepack-small-fullycharged]",
    stack_size = 10,
    default_request_amount = 10
  },

   {
    type = "item",
    name = "chargepack-large",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-large.png",
    placed_as_equipment_result = "chargepack-large",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "c[battery2]-a[chargepack-large]",
    stack_size = 10,
    default_request_amount = 10
  },

  {
    type = "item",
    name = "chargepack-large-fullycharged",
    icon = "__ModularChargePacks__/graphics/icon-chargepack-large-fullycharged.png",
    placed_as_equipment_result = "chargepack-large-fullycharged",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "c[battery2]-a[chargepack-large-fullycharged]",
    stack_size = 10,
    default_request_amount = 10
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
  },

  
  
  -- Charging Station
  
  {
    type = "item",
    name = "charging-station",
    icon = "__ModularChargePacks__/graphics/icon-charging-station.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "production-machine",
    order = "g[charging-station-normal]",
    place_result = "charging-station",
    stack_size = 10
  },

  {
    type = "item",
    name = "charging-station-rapid",
    icon = "__ModularChargePacks__/graphics/icon-charging-station-rapid.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "production-machine",
    order = "g[charging-station-rapid]",
    place_result = "charging-station-rapid",
    stack_size = 10
  },

  
  {
    type = "recipe",
    name = "charging-station",
    enabled = false,
    energy_required = 7,
    ingredients =
    {
      {"assembling-machine-2", 1},
      {"accumulator", 4},
      {"advanced-circuit", 10}
    },
    result = "charging-station"
  },
  
  {
    type = "recipe",
    name = "charging-station-rapid",
    enabled = false,
    energy_required = 7,
    ingredients =
    {
      {"assembling-machine-3", 1},
      {"charging-station", 4},
      {"processing-unit", 10}
    },
    result = "charging-station-rapid"
  },
  
  {
    type = "furnace",
    name = "charging-station",
    icon = "__ModularChargePacks__/graphics/icon-charging-station.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "charging-station"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 10},
    resistances =
    {
      {
        type = "impact",
        percent = 10
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    --always_draw_idle_animation = true,
    crafting_categories = {"charging-chargepack-normal"},
    result_inventory_size = 1,
    crafting_speed = 1,
    energy_usage = "2.8MW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.0kW",
      emissions = 0.004
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.7
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.3
      },
      max_sounds_per_type = 5
    },

    --module_specification =
    --{
    --  module_slots = 1
    --},
    --allowed_effects = { "speed", "pollution"},

    animation =
    {
      layers = {
      {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = {0.421875, 0},
        tint = {r=0.5, g=0.5, b=0.8, a=1},
        hr_version = {
          filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace.png",
          priority = "high",
          width = 239,
          height = 219,
          frame_count = 1,
          shift = util.by_pixel(0.75, 5.75),
          tint = {r=0.5, g=0.5, b=0.8, a=1},
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = {0.421875, 0},
        draw_as_shadow = true,
        hr_version = {
          filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
          priority = "high",
          width = 227,
          height = 171,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(11.25, 7.75),
          scale = 0.5
        }
      }
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__ModularChargePacks__/graphics/charger-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625},
          
          hr_version = {
            filename = "__ModularChargePacks__/graphics/hr-charger-heater.png",
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(1.75, 32.75),
            
            scale = 0.5
          }
        },
        light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}}
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625},
          
          hr_version = {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            
            scale = 0.5
          }
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375},
          
          hr_version = {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            
            scale = 0.5
          }
        }
      }
    }
    
  },

  {
    type = "furnace",
    name = "charging-station-rapid",
    icon = "__ModularChargePacks__/graphics/icon-charging-station-rapid.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "charging-station-rapid"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 10},
    resistances =
    {
      {
        type = "impact",
        percent = 10
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    --always_draw_idle_animation = true,
    crafting_categories = {"charging-chargepack-rapid"},
    result_inventory_size = 1,
    crafting_speed = 1,
    energy_usage = "12MW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.0kW",
      emissions = 0.008
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.7
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.3
      },
      max_sounds_per_type = 5
    },

    --module_specification =
    --{
    --  module_slots = 2
    --},
    --allowed_effects = { "speed", "pollution"},
    
    animation =
    {
      layers = {
      {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = {0.421875, 0},
        tint = {r=0.9, g=0.8, b=0.4, a=1},
        hr_version = {
          filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace.png",
          priority = "high",
          width = 239,
          height = 219,
          frame_count = 1,
          shift = util.by_pixel(0.75, 5.75),
          tint = {r=0.9, g=0.8, b=0.4, a=1},
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = {0.421875, 0},
        draw_as_shadow = true,
        hr_version = {
          filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
          priority = "high",
          width = 227,
          height = 171,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(11.25, 7.75),
          scale = 0.5
        }
      }
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__ModularChargePacks__/graphics/charger-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625},
          
          hr_version = {
            filename = "__ModularChargePacks__/graphics/hr-charger-heater.png",
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(1.75, 32.75),
            
            scale = 0.5
          }
        },
        light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}}
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625},
          
          hr_version = {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            
            scale = 0.5
          }
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375},
          
          hr_version = {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            
            scale = 0.5
          }
        }
      }
    }
    
  },

  
  {
    type = "recipe-category",
    name = "charging-chargepack-normal"
  },
  {
    type = "recipe-category",
    name = "charging-chargepack-rapid"
  },

  
})

table.insert(data.raw["technology"]["battery-equipment"].effects,{type="unlock-recipe",recipe="chargepack-small"})
table.insert(data.raw["technology"]["battery-equipment"].effects,{type="unlock-recipe",recipe="charging-station"})
table.insert(data.raw["technology"]["battery-mk2-equipment"].effects,{type="unlock-recipe",recipe="chargepack-large"})
table.insert(data.raw["technology"]["battery-mk2-equipment"].effects,{type="unlock-recipe",recipe="charging-station-rapid"})
