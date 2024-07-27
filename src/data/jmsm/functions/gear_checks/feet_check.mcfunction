# reset old values
data remove storage jmsm:scroll gear_check

# get piece at slot and check if it exists
data modify storage jmsm:scroll gear_check set from entity @s Inventory[{Slot:100b}]
execute unless data storage jmsm:scroll gear_check run return 1

# check if there's any actual damage
execute unless data storage jmsm:scroll gear_check.components.minecraft:damage run return 1

# max damage checks
execute if data storage jmsm:scroll gear_check.components."!minecraft:max_damage" run return 1
execute store result score jmsm:cost_calc.feet jmsm.data run data get storage jmsm:scroll gear_check.components.minecraft:max_damage

# other item checks
execute unless score jmsm:cost_calc.feet jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_boots"}} run scoreboard players set jmsm:cost_calc.feet jmsm.data 481
execute unless score jmsm:cost_calc.feet jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_boots"}} run scoreboard players set jmsm:cost_calc.feet jmsm.data 429
execute unless score jmsm:cost_calc.feet jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_boots"}} run scoreboard players set jmsm:cost_calc.feet jmsm.data 195
execute unless score jmsm:cost_calc.feet jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_boots"}} run scoreboard players set jmsm:cost_calc.feet jmsm.data 65
execute unless score jmsm:cost_calc.feet jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_boots"}} run scoreboard players set jmsm:cost_calc.feet jmsm.data 91
execute unless score jmsm:cost_calc.feet jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_boots"}} run scoreboard players set jmsm:cost_calc.feet jmsm.data 195
