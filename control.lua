



 -- Start OnLoad/OnInit/OnConfig events
script.on_configuration_changed( function(data)
  if data.mod_changes ~= nil and data.mod_changes["ModularChargePacks"] ~= nil and data.mod_changes["ModularChargePacks"].old_version == nil then
   -- Mod added 
	
    for _,force in pairs(game.forces) do
      force.reset_recipes()
      force.reset_technologies()
      local techs=force.technologies
      local recipes=force.recipes
      --Tech Addition
      if techs["battery-equipment"].researched then
        recipes["chargepack-small"].enabled=true
        recipes["charging-station"].enabled=true
      end
      if techs["battery-mk2-equipment"].researched then
        recipes["chargepack-large"].enabled=true
        recipes["charging-station-rapid"].enabled=true
      end

    end     


   

   
  end 

  if data.mod_changes ~= nil and data.mod_changes["ModularChargePacks"] ~= nil and data.mod_changes["ModularChargePacks"].old_version ~= nil then
   -- Mod updated or removed
   
    for _,force in pairs(game.forces) do
      force.reset_recipes()
      force.reset_technologies()
      local techs=force.technologies
      local recipes=force.recipes
      --Tech Addition
      if techs["battery-equipment"].researched then
        recipes["chargepack-small"].enabled=true
        recipes["charging-station"].enabled=true
      end
      if techs["battery-mk2-equipment"].researched then
        recipes["chargepack-large"].enabled=true
        recipes["charging-station-rapid"].enabled=true
      end

    end   
   
   
  end

end)


script.on_init(function()
  --Nothing to Do Now 
 
end)   
  
script.on_load(function()
  --Nothing to Do Now  
end)
-- End OnLoad/OnInit/OnConfig events


script.on_event(defines.events.on_player_placed_equipment, function(event)

  if (event.equipment.name == 'chargepack-small-fullycharged' or event.equipment.name == 'chargepack-large-fullycharged') then
    

    local pname = string.sub(event.equipment.name, 1, -14)
    local ppos = event.equipment.position
    local gp = event.grid
  
    local discard = gp.take{position=ppos}
    discard=nil
    gp.put{name=pname,position=ppos}
    gp.get(ppos).energy = gp.get(ppos).max_energy

    end
    
end)

