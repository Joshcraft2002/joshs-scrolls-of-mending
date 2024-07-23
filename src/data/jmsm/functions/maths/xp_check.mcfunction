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

# get damage per item
execute if data storage jmsm:scroll {targets:["head"]} store result score jmsm:head_damage jmsm.data run data get entity @s Inventory[{Slot:103b}].components.minecraft:damage
execute if data storage jmsm:scroll {targets:["chest"]} store result score jmsm:chest_damage jmsm.data run data get entity @s Inventory[{Slot:102b}].components.minecraft:damage
execute if data storage jmsm:scroll {targets:["legs"]} store result score jmsm:legs_damage jmsm.data run data get entity @s Inventory[{Slot:101b}].components.minecraft:damage
execute if data storage jmsm:scroll {targets:["feet"]} store result score jmsm:feet_damage jmsm.data run data get entity @s Inventory[{Slot:100b}].components.minecraft:damage
execute if predicate jmsm:scroll_mh if data storage jmsm:scroll {targets:["held"]} store result score jmsm:held_damage jmsm.data run data get entity @s Inventory[{Slot:-106b}].components.minecraft:damage
execute if predicate jmsm:scroll_oh if data storage jmsm:scroll {targets:["held"]} store result score jmsm:held_damage jmsm.data run data get entity @s SelectedItem.components.minecraft:damage

# get total damage
scoreboard players operation jmsm:total_damage jmsm.data = jmsm:head_damage jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data += jmsm:chest_damage jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data += jmsm:legs_damage jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data += jmsm:feet_damage jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data += jmsm:held_damage jmsm.data

# get player xp points
execute store result score @s jmsm.xp run experience query @s levels
execute if score @s jmsm.xp matches 32.. run function jmsm:maths/get_high_lvl_xp
execute if score @s jmsm.xp matches 17..31 run function jmsm:maths/get_mid_lvl_xp
execute if score @s jmsm.xp matches ..16 run function jmsm:maths/get_low_lvl_xp
execute store result score jmsm:temp jmsm.xp run experience query @s points
scoreboard players operation @s jmsm.xp += jmsm:temp jmsm.xp

