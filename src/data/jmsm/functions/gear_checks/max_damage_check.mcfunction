# clear previous values
data remove storage jmsm:scroll targets
scoreboard players set jmsm:head_max_damage jmsm.data 0
scoreboard players set jmsm:chest_max_damage jmsm.data 0
scoreboard players set jmsm:legs_max_damage jmsm.data 0
scoreboard players set jmsm:feet_max_damage jmsm.data 0
scoreboard players set jmsm:held_max_damage jmsm.data 0

# get scroll repair targets
execute if predicate jmsm:scroll_mh run data modify storage jmsm:scroll targets set from entity @s SelectedItem.components.minecraft:custom_data.jmsm.scroll_targets
execute if predicate jmsm:scroll_oh run data modify storage jmsm:scroll targets set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.jmsm.scroll_targets

# get max damage per item
execute if data storage jmsm:scroll {targets:["head"]} run function jmsm:gear_checks/head_check
execute if data storage jmsm:scroll {targets:["chest"]} run function jmsm:gear_checks/chest_check
execute if data storage jmsm:scroll {targets:["legs"]} run function jmsm:gear_checks/legs_check
execute if data storage jmsm:scroll {targets:["feet"]} run function jmsm:gear_checks/feet_check
execute if data storage jmsm:scroll {targets:["held"]} run function jmsm:gear_checks/held_check

# get damage calc result
scoreboard players operation jmsm:dmg_calc_result jmsm.data = jmsm:head_max_damage jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data += jmsm:chest_max_damage jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data += jmsm:legs_max_damage jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data += jmsm:feet_max_damage jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data += jmsm:held_max_damage jmsm.data

