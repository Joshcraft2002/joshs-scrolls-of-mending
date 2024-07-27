# clear previous values
data remove storage jmsm:scroll targets
scoreboard players set jmsm:cost_calc.head jmsm.data 0
scoreboard players set jmsm:cost_calc.chest jmsm.data 0
scoreboard players set jmsm:cost_calc.legs jmsm.data 0
scoreboard players set jmsm:cost_calc.feet jmsm.data 0
scoreboard players set jmsm:cost_calc.held jmsm.data 0

# get scroll repair targets
execute if predicate jmsm:scroll_mh run data modify storage jmsm:scroll targets set from entity @s SelectedItem.components.minecraft:custom_data.jmsm.scroll_targets
execute if predicate jmsm:scroll_oh run data modify storage jmsm:scroll targets set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.jmsm.scroll_targets

# get max damage per item
execute if data storage jmsm:scroll {targets:["head"]} run function jmsm:gear_check/head_check
execute if data storage jmsm:scroll {targets:["chest"]} run function jmsm:gear_check/chest_check
execute if data storage jmsm:scroll {targets:["legs"]} run function jmsm:gear_check/legs_check
execute if data storage jmsm:scroll {targets:["feet"]} run function jmsm:gear_check/feet_check
execute if data storage jmsm:scroll {targets:["held"]} run function jmsm:gear_check/held_check

# get damage calc result
scoreboard players operation jmsm:cost_calc.total jmsm.data = jmsm:cost_calc.head jmsm.data
scoreboard players operation jmsm:cost_calc.total jmsm.data += jmsm:cost_calc.chest jmsm.data
scoreboard players operation jmsm:cost_calc.total jmsm.data += jmsm:cost_calc.chest jmsm.data
scoreboard players operation jmsm:cost_calc.total jmsm.data += jmsm:cost_calc.legs jmsm.data
scoreboard players operation jmsm:cost_calc.total jmsm.data += jmsm:cost_calc.held jmsm.data

