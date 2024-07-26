# reset old values
data remove storage jmsm:scroll gear_check

# get piece at slot and check if it exists
data modify storage jmsm:scroll gear_check set from entity @s Inventory[{Slot:102b}]
execute unless data storage jmsm:scroll gear_check run return 1

# check if there's any actual damage
execute unless data storage jmsm:scroll gear_check.components.minecraft:damage run return 1

# max damage checks
execute if data storage jmsm:scroll gear_check.components."!minecraft:max_damage" run return 1
execute store result score jmsm:cost_calc.chest jmsm.data run data get storage jmsm:scroll gear_check.components.minecraft:max_damage

# other item checks
execute unless score jmsm:cost_calc.chest jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_chestplate"}} run scoreboard players set jmsm:cost_calc.chest jmsm.data 592
execute unless score jmsm:cost_calc.chest jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_chestplate"}} run scoreboard players set jmsm:cost_calc.chest jmsm.data 528
execute unless score jmsm:cost_calc.chest jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:elytra"}} run scoreboard players set jmsm:held_max_damage jmsm.data 432
execute unless score jmsm:cost_calc.chest jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_chestplate"}} run scoreboard players set jmsm:cost_calc.chest jmsm.data 240
execute unless score jmsm:cost_calc.chest jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_chestplate"}} run scoreboard players set jmsm:cost_calc.chest jmsm.data 80
execute unless score jmsm:cost_calc.chest jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_chestplate"}} run scoreboard players set jmsm:cost_calc.chest jmsm.data 112
execute unless score jmsm:cost_calc.chest jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_chestplate"}} run scoreboard players set jmsm:cost_calc.chest jmsm.data 240
