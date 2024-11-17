
data:extend(
{

  -- Charging Station
  
  {
    type = "item",
    name = "charging-station",
    icon = "__ModularChargePacks__/graphics/icon-charging-station.png",
    icon_size = 32,
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-b[charging-station-normal]",
    place_result = "charging-station",
    stack_size = 10,
    inventory_move_sound = item_sounds.electric_large_inventory_move,
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    weight = 20*kg
  },

  {
    type = "item",
    name = "charging-station-rapid",
    icon = "__ModularChargePacks__/graphics/icon-charging-station-rapid.png",
    icon_size = 32,
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-b[charging-station-rapid]",
    place_result = "charging-station-rapid",
    stack_size = 10,
    inventory_move_sound = item_sounds.electric_large_inventory_move,
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    weight = 20*kg
  },

  {
    type = "item",
    name = "charging-station-overclocked",
    icon = "__ModularChargePacks__/graphics/icon-charging-station-overclocked.png",
    icon_size = 32,
    flags = {},
    subgroup = "chargepacks",
    order = "d[chargepack]-c[charging-station-overclocked]",
    place_result = "charging-station-overclocked",
    stack_size = 10,
    inventory_move_sound = item_sounds.electric_large_inventory_move,
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    weight = 20*kg
  },
  
  {
    type = "recipe",
    name = "charging-station",
    enabled = false,
    energy_required = 7,
    ingredients =
    {
      {type = "item", name = "assembling-machine-2", amount = 1},
      {type = "item", name = "accumulator", amount = 4},
      {type = "item", name = "advanced-circuit", amount = 8}
    },
    results = {{type="item", name="charging-station", amount=1}}
  },
  
  {
    type = "recipe",
    name = "charging-station-rapid",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "assembling-machine-3", amount = 1},
      {type = "item", name = "charging-station", amount = 4},
      {type = "item", name = "processing-unit", amount = 8},
      {type = "item", name = "copper-cable", amount = 40}
    },
    results = {{type="item", name="charging-station-rapid", amount=1}}
  },

  {
    type = "recipe",
    name = "charging-station-overclocked",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {type = "item", name = "charging-station-rapid", amount = 4},
      {type = "item", name = "copper-cable", amount = 100},
      {type = "item", name = "processing-unit", amount = 4},
      {type = "item", name = "speed-module-2", amount = 2}
    },
    results = {{type="item", name="charging-station-overclocked", amount=1}}
  },
  
  {
    type = "furnace",
    name = "charging-station",
    icon = "__ModularChargePacks__/graphics/icon-charging-station.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "charging-station"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 0.8, size = 10},
    resistances =
    {
      {
        type = "impact",
        percent = 10
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    always_draw_idle_animation = true,
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
      max_sounds_per_type = 5,
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    module_slots = 0,
    allowed_effects = {},
    graphics_set =
      {
        animation =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace.png",
              priority = "high",
              width = 239,
              height = 219,
              shift = util.by_pixel(0.75, 5.75),
              scale = 0.5
            },
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
              priority = "high",
              width = 227,
              height = 171,
              draw_as_shadow = true,
              shift = util.by_pixel(11.25, 7.75),
              scale = 0.5
            }
          }
        },
        working_visualisations =
        {
          {
            fadeout = true,
            animation =
            {
              layers =
              {
                {
                  filename = "__ModularChargePacks__/graphics/hr-charger-heater.png",
                  priority = "high",
                  width = 60,
                  height = 56,
                  frame_count = 12,
                  animation_speed = 0.4,
                  tint = {r=0.5, g=0.5, b=0.7, a=1},
                  shift = util.by_pixel(1.75, 32.75),
                  scale = 0.5
                },
                {
                  filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
                  blend_mode = "additive",
                  width = 202,
                  height = 202,
                  repeat_count = 12,
                  draw_as_glow = true,
                  shift = util.by_pixel(1, 0),
                  scale = 0.5,
                },
              }
            },
          },
          {
            fadeout = true,
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
              blend_mode = "additive",
              width = 166,
              height = 124,
              draw_as_light = true,
              shift = util.by_pixel(3, 69),
              scale = 0.5,
            },
          },
          {
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
              priority = "high",
              width = 37,
              height = 25,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(-20.5, -18.5),
              scale = 0.5
            }
          },
          {
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
              priority = "high",
              width = 23,
              height = 15,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(3.5, -38),
              scale = 0.5
            }
          }
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
            priority = "extra-high",
            width = 24,
            height = 24,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
        }
      }

  },

  {
    type = "furnace",
    name = "charging-station-rapid",
    icon = "__ModularChargePacks__/graphics/icon-charging-station-rapid.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "charging-station-rapid"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 12},
    resistances =
    {
      {
        type = "impact",
        percent = 10
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    always_draw_idle_animation = true,
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
      max_sounds_per_type = 5,
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    module_slots = 0,
    allowed_effects = {},
    graphics_set =
      {
        animation =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace.png",
              priority = "high",
              width = 239,
              height = 219,
              shift = util.by_pixel(0.75, 5.75),
              tint = {r=0.9, g=0.8, b=0.4, a=1},
              scale = 0.5
            },
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
              priority = "high",
              width = 227,
              height = 171,
              draw_as_shadow = true,
              shift = util.by_pixel(11.25, 7.75),
              scale = 0.5
            }
          }
        },
        working_visualisations =
        {
          {
            fadeout = true,
            animation =
            {
              layers =
              {
                {
                  filename = "__ModularChargePacks__/graphics/hr-charger-heater.png",
                  priority = "high",
                  width = 60,
                  height = 56,
                  frame_count = 12,
                  animation_speed = 0.4,
                  tint = {r=0.7, g=0.7, b=0.9, a=1},
                  shift = util.by_pixel(1.75, 32.75),
                  scale = 0.5
                },
                {
                  filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
                  blend_mode = "additive",
                  width = 202,
                  height = 202,
                  repeat_count = 12,
                  draw_as_glow = true,
                  shift = util.by_pixel(1, 0),
                  scale = 0.5,
                },
              }
            },
          },
          {
            fadeout = true,
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
              blend_mode = "additive",
              width = 166,
              height = 124,
              draw_as_light = true,
              shift = util.by_pixel(3, 69),
              scale = 0.5,
            },
          },
          {
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
              priority = "high",
              width = 37,
              height = 25,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(-20.5, -18.5),
              scale = 0.5
            }
          },
          {
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
              priority = "high",
              width = 23,
              height = 15,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(3.5, -38),
              scale = 0.5
            }
          }
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
            priority = "extra-high",
            width = 24,
            height = 24,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
        }
      }
    
  },

  {
    type = "furnace",
    name = "charging-station-overclocked",
    icon = "__ModularChargePacks__/graphics/icon-charging-station-overclocked.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "charging-station-overclocked"},
    max_health = 450,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1.4, size = 14},
    resistances =
    {
      {
        type = "impact",
        percent = 10
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    always_draw_idle_animation = true,
    crafting_categories = {"charging-chargepack-overclocked"},
    result_inventory_size = 1,
    crafting_speed = 1,
    energy_usage = "50MW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.0kW",
      emissions = 0.016
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.8
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.3
      },
      max_sounds_per_type = 5,
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    module_slots = 0,
    allowed_effects = {},
    graphics_set =
      {
        animation =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace.png",
              priority = "high",
              width = 239,
              height = 219,
              shift = util.by_pixel(0.75, 5.75),
              tint = {r=0.8, g=0.2, b=0.35, a=1},
              scale = 0.5
            },
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
              priority = "high",
              width = 227,
              height = 171,
              draw_as_shadow = true,
              shift = util.by_pixel(11.25, 7.75),
              scale = 0.5
            }
          }
        },
        working_visualisations =
        {
          {
            fadeout = true,
            animation =
            {
              layers =
              {
                {
                  filename = "__ModularChargePacks__/graphics/hr-charger-heater.png",
                  priority = "high",
                  width = 60,
                  height = 56,
                  frame_count = 12,
                  animation_speed = 0.4,
                  tint = {r=1, g=1, b=1, a=1},
                  shift = util.by_pixel(1.75, 32.75),
                  scale = 0.5
                },
                {
                  filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
                  blend_mode = "additive",
                  width = 202,
                  height = 202,
                  repeat_count = 12,
                  draw_as_glow = true,
                  shift = util.by_pixel(1, 0),
                  scale = 0.5,
                },
              }
            },
          },
          {
            fadeout = true,
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
              blend_mode = "additive",
              width = 166,
              height = 124,
              draw_as_light = true,
              shift = util.by_pixel(3, 69),
              scale = 0.5,
            },
          },
          {
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
              priority = "high",
              width = 37,
              height = 25,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(-20.5, -18.5),
              scale = 0.5
            }
          },
          {
            animation =
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
              priority = "high",
              width = 23,
              height = 15,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(3.5, -38),
              scale = 0.5
            }
          }
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
            priority = "extra-high",
            width = 24,
            height = 24,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
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
  {
    type = "recipe-category",
    name = "charging-chargepack-overclocked"
  },
  
})

-- Add Recipes to Techs
table.insert(data.raw["technology"]["battery-equipment"].effects,{type="unlock-recipe",recipe="charging-station"})
table.insert(data.raw["technology"]["battery-mk2-equipment"].effects,{type="unlock-recipe",recipe="charging-station-rapid"})
table.insert(data.raw["technology"]["speed-module-2"].effects,{type="unlock-recipe",recipe="charging-station-overclocked"})
-- SE Compatibility (Thanks SkYY0x )
data.raw["furnace"]["charging-station"].se_allow_in_space = true
data.raw["furnace"]["charging-station-rapid"].se_allow_in_space = true
data.raw["furnace"]["charging-station-overclocked"].se_allow_in_space = true