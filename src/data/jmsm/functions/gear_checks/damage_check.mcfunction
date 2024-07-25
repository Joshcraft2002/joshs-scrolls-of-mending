# clear previous values
data remove storage jmsm:scroll targets
scoreboard players set jmsm:head_damage jmsm.data 0
scoreboard players set jmsm:chest_damage jmsm.data 0
scoreboard players set jmsm:legs_damage jmsm.data 0
scoreboard players set jmsm:feet_damage jmsm.data 0
scoreboard players set jmsm:held_damage jmsm.data 0

# get scroll repair targets
execute if predicate jmsm:scroll_mh run data modify storage jmsm:scroll targets set from entity @s SelectedItem.components.minecraft:custom_data.jmsm.scroll_targets
execute if predicate jmsm:scroll_oh run data modify storage jmsm:scroll targets set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.jmsm.scroll_targets

# get max damage per item
execute if data storage jmsm:scroll {targets:["head"]} store result score jmsm:head_damage jmsm.data run data get entity @s Inventory[{Slot:103b}].components.minecraft:damage
execute if data storage jmsm:scroll {targets:["chest"]} store result score jmsm:chest_damage jmsm.data run data get entity @s Inventory[{Slot:102b}].components.minecraft:damage
execute if data storage jmsm:scroll {targets:["legs"]} store result score jmsm:legs_damage jmsm.data run data get entity @s Inventory[{Slot:101b}].components.minecraft:damage
execute if data storage jmsm:scroll {targets:["feet"]} store result score jmsm:feet_damage jmsm.data run data get entity @s Inventory[{Slot:100b}].components.minecraft:damage
execute if predicate jmsm:scroll_mh if data storage jmsm:scroll {targets:["held"]} store result score jmsm:held_damage jmsm.data run data get entity @s Inventory[{Slot:-106b}].components.minecraft:damage
execute if predicate jmsm:scroll_oh if data storage jmsm:scroll {targets:["held"]} store result score jmsm:held_damage jmsm.data run data get entity @s SelectedItem.components.minecraft:damage

# get damage calc result
scoreboard players operation jmsm:dmg_calc_result jmsm.data = jmsm:head_damage jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data += jmsm:chest_damage jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data += jmsm:legs_damage jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data += jmsm:feet_damage jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data += jmsm:held_damage jmsm.data

