# reset old values
data remove storage jmsm:scroll gear_check

# get piece at slot and check if it exists
data modify storage jmsm:scroll gear_check set from entity @s Inventory[{Slot:102b}]
execute unless data storage jmsm:scroll gear_check run return 1

# check if there's any actual damage
execute store result score jmsm:chest_damage jmsm.data run data get storage jmsm:scroll gear_check.components.minecraft:damage
execute unless score jmsm:chest_damage jmsm.data matches 1.. run return 1

# max damage checks
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. store result score jmsm:chest_max_damage jmsm.data run data get storage jmsm:scroll gear_check.components.minecraft:max_damage
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. if data storage jmsm:scroll gear_check.components."!minecraft:max_damage" run return 1

# other item checks
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_chestplate"}} run scoreboard players set jmsm:chest_max_damage jmsm.data 592
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_chestplate"}} run scoreboard players set jmsm:chest_max_damage jmsm.data 528
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_chestplate"}} run scoreboard players set jmsm:chest_max_damage jmsm.data 240
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:turtle_chestplate"}} run scoreboard players set jmsm:chest_max_damage jmsm.data 275
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_chestplate"}} run scoreboard players set jmsm:chest_max_damage jmsm.data 80
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_chestplate"}} run scoreboard players set jmsm:chest_max_damage jmsm.data 112
execute unless score jmsm:chest_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_chestplate"}} run scoreboard players set jmsm:chest_max_damage jmsm.data 240
