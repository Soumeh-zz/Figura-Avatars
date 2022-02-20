function render()
  locked = false
  customItem("sword",  model.RIGHT_ARM.LONGSWORD,     1, { 0, 0, 0})
  customItem("totem",  model.LEFT_ARM.BANNER_HEAL,    2, {70, 0, 0})
  customItem("potato", model.LEFT_ARM.BANNER_INSPIRE, 2, {70, 0, 0})
  customItem("shield", model.LEFT_ARM.SCROLL,         2, {90, 0, 0})
end









network.registerPing("remove_vanilla")
function remove_vanilla()
  for _, v in pairs(vanilla_model) do
    v.setEnabled(false)
  end
end
network.ping("remove_vanilla")

function outline(color)
  print('e')
end

function status(var)
  if (var == 'virtuous') then
    outline()
  elseif (var == 'afflicted') then
    outline()
  end
  action_wheel.SLOT_2.setFunction()
  action_wheel.SLOT_2.setTitle()
  action_wheel.setRightSize(1)
  action_wheel.SLOT_1.setFunction(function() reset_status() end)
  action_wheel.SLOT_1.setTitle("Normal")
end

function reset_status()
  action_wheel.setRightSize(2)
  action_wheel.SLOT_1.setFunction(function() status('afflicted') end)
  action_wheel.SLOT_1.setTitle("Afflicted")
  action_wheel.SLOT_2.setFunction(function() status('virtuous') end)
  action_wheel.SLOT_2.setTitle("Virtuous")
end

reset_status()



locked = false

function nope(bone, hand_bone, used_hand)
  if not locked then
    bone.setEnabled(false)
    hand_bone.setEnabled(true)
    used_hand.setRot({0, 0, 0})
  end
end

function customItem(keyword, bone, hand, rotation)
  local item = player.getHeldItem(hand)
  local used_hand = hand == 1 and model.RIGHT_ARM or model.LEFT_ARM
  local hand_bone = hand == 1 and held_item_model.RIGHT_HAND or held_item_model.LEFT_HAND

  if not item then
    return nope(bone, hand_bone, used_hand)
  end 
  if not string.find(item.getType(), keyword) then
    return nope(bone, hand_bone, used_hand)
  end

  bone.setEnabled(true)
  bone.setShader(item.hasGlint() and "Glint" or "None")
  hand_bone.setEnabled(false)
  used_hand.setRot(rotation)
  locked = true

end