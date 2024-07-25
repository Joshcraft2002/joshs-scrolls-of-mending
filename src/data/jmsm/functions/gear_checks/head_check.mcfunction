# reset old values
data remove storage jmsm:scroll gear_check

# get piece at slot and check if it exists
data modify storage jmsm:scroll gear_check set from entity @s Inventory[{Slot:103b}]
execute unless data storage jmsm:scroll gear_check run return 1

# check if there's any actual damage
execute unless data storage jmsm:scroll gear_check.components.minecraft:damage run return 1

# max damage checks
execute if data storage jmsm:scroll gear_check.components."!minecraft:max_damage" run return 1
execute store result score jmsm:head_max_damage jmsm.data run data get storage jmsm:scroll gear_check.components.minecraft:max_damage

# other item checks
execute unless score jmsm:head_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_helmet"}} run scoreboard players set jmsm:head_max_damage jmsm.data 407
execute unless score jmsm:head_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_helmet"}} run scoreboard players set jmsm:head_max_damage jmsm.data 363
execute unless score jmsm:head_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_helmet"}} run scoreboard players set jmsm:head_max_damage jmsm.data 165
execute unless score jmsm:head_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_helmet"}} run scoreboard players set jmsm:head_max_damage jmsm.data 55
execute unless score jmsm:head_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_helmet"}} run scoreboard players set jmsm:head_max_damage jmsm.data 77
execute unless score jmsm:head_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_helmet"}} run scoreboard players set jmsm:head_max_damage jmsm.data 165
