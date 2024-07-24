# clear previous values
data remove storage jmsm:scroll targets
scoreboard players set jmsm:head_max_damage jmsm.data 0
scoreboard players set jmsm:chest_max_damage jmsm.data 0
scoreboard players set jmsm:legs_max_damage jmsm.data 0
scoreboard players set jmsm:feet_max_damage jmsm.data 0
scoreboard players set jmsm:held_max_damage jmsm.data 0
scoreboard players set jmsm:head_damage jmsm.data 0
scoreboard players set jmsm:chest_damage jmsm.data 0
scoreboard players set jmsm:legs_damage jmsm.data 0
scoreboard players set jmsm:feet_damage jmsm.data 0
scoreboard players set jmsm:held_damage jmsm.data 0

# get scroll repair targets
execute if predicate jmsm:scroll_mh run data modify storage jmsm:scroll targets set from entity @s SelectedItem.components.minecraft:custom_data.jmsm.scroll_targets
execute if predicate jmsm:scroll_oh run data modify storage jmsm:scroll targets set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.jmsm.scroll_targets

# get damage & max damage per item
execute if data storage jmsm:scroll {targets:["head"]} run function jmsm:gear_checks/head_check
execute if data storage jmsm:scroll {targets:["chest"]} run function jmsm:gear_checks/chest_check
execute if data storage jmsm:scroll {targets:["legs"]} run function jmsm:gear_checks/legs_check
execute if data storage jmsm:scroll {targets:["feet"]} run function jmsm:gear_checks/feet_check
# execute if predicate jmsm:scroll_mh if data storage jmsm:scroll {targets:["held"]} store result score jmsm:held_max_damage jmsm.data run data get entity @s Inventory[{Slot:-106b}].components.minecraft:damage
# execute if predicate jmsm:scroll_oh if data storage jmsm:scroll {targets:["held"]} store result score jmsm:held_max_damage jmsm.data run data get entity @s SelectedItem.components.minecraft:damage

# get total max damage
scoreboard players operation jmsm:total_max_damage jmsm.data = jmsm:head_max_damage jmsm.data
scoreboard players operation jmsm:total_max_damage jmsm.data += jmsm:chest_max_damage jmsm.data
scoreboard players operation jmsm:total_max_damage jmsm.data += jmsm:legs_max_damage jmsm.data
scoreboard players operation jmsm:total_max_damage jmsm.data += jmsm:feet_max_damage jmsm.data
scoreboard players operation jmsm:total_max_damage jmsm.data += jmsm:held_max_damage jmsm.data

# get total damage
scoreboard players operation jmsm:total_damage jmsm.data = jmsm:head_damage jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data += jmsm:chest_damage jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data += jmsm:legs_damage jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data += jmsm:feet_damage jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data += jmsm:held_damage jmsm.data

