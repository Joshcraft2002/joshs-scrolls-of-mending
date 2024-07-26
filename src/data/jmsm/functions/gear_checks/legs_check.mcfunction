# reset old values
data remove storage jmsm:scroll gear_check

# get piece at slot and check if it exists
data modify storage jmsm:scroll gear_check set from entity @s Inventory[{Slot:101b}]
execute unless data storage jmsm:scroll gear_check run return 1

# check if there's any actual damage
execute unless data storage jmsm:scroll gear_check.components.minecraft:damage run return 1

# max damage checks
execute if data storage jmsm:scroll gear_check.components."!minecraft:max_damage" run return 1
execute store result score jmsm:cost_calc.legs jmsm.data run data get storage jmsm:scroll gear_check.components.minecraft:max_damage

# other item checks
execute unless score jmsm:cost_calc.legs jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_leggings"}} run scoreboard players set jmsm:cost_calc.legs jmsm.data 555
execute unless score jmsm:cost_calc.legs jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_leggings"}} run scoreboard players set jmsm:cost_calc.legs jmsm.data 495
execute unless score jmsm:cost_calc.legs jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_leggings"}} run scoreboard players set jmsm:cost_calc.legs jmsm.data 225
execute unless score jmsm:cost_calc.legs jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_leggings"}} run scoreboard players set jmsm:cost_calc.legs jmsm.data 75
execute unless score jmsm:cost_calc.legs jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_leggings"}} run scoreboard players set jmsm:cost_calc.legs jmsm.data 105
execute unless score jmsm:cost_calc.legs jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_leggings"}} run scoreboard players set jmsm:cost_calc.legs jmsm.data 225
