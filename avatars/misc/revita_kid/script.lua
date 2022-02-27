network.registerPing("remove_vanilla")
function remove_vanilla()
  for _, v in pairs(vanilla_model) do
    v.setEnabled(false)    
  end
end
network.ping("remove_vanilla")

arrow_up = item_stack.createItem("minecraft:gunpowder")
arrow_up.setTag("{CustomModelData:1}")
arrow_down = item_stack.createItem("minecraft:gunpowder")
arrow_down.setTag("{CustomModelData:2}")
speaker = item_stack.createItem("minecraft:gunpowder")
speaker.setTag("{CustomModelData:3}")

network.registerPing("toggle_goggles")
goggles_up = false
action_wheel.SLOT_1.setTitle("Move up goggles")
action_wheel.SLOT_1.setItem(arrow_up)
action_wheel.SLOT_1.setFunction(function() network.ping("toggle_goggles") end)

function toggle_goggles()
  goggles_up = not goggles_up
  if goggles_up == true then
    model.HEAD.layer.setRot({22.5, 0, 0})
    model.HEAD.layer.setPos({0, -2.7, -1})
    action_wheel.SLOT_1.setTitle("Move down goggles")
    action_wheel.SLOT_1.setItem(arrow_down)
  else
    model.HEAD.layer.setRot({0, 0, 0})
    model.HEAD.layer.setPos({0, 0, 0})
    action_wheel.SLOT_1.setTitle("Move up goggles")
    action_wheel.SLOT_1.setItem(arrow_up)
  end
end

network.registerPing("baah")
function baah()
  sound.playSound("minecraft:entity.goat.ambient", {player.getPos().x, player.getPos().y, player.getPos().z, 2, 0.8})
end
action_wheel.SLOT_2.setTitle("Baah!")
action_wheel.SLOT_2.setItem(speaker)
action_wheel.SLOT_2.setFunction(function() network.ping("baah") end)