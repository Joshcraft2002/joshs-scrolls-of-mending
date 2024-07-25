# reset old values
data remove storage jmsm:scroll gear_check

# get piece at slot and check if it exists
execute if predicate jmsm:scroll_mh data modify storage jmsm:scroll gear_check set from entity @s Inventory[{Slot:-106b}]
execute if predicate jmsm:scroll_oh data modify storage jmsm:scroll gear_check set from entity @s SelectedItem
execute unless data storage jmsm:scroll gear_check run return 1

# check if there's any actual damage
execute unless data storage jmsm:scroll gear_check.components.minecraft:damage run return 1

# max damage checks
execute if data storage jmsm:scroll gear_check.components."!minecraft:max_damage" run return 1
execute store result score jmsm:held_max_damage jmsm.data run data get storage jmsm:scroll gear_check.components.minecraft:max_damage

# other item checks
# tools
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if predicate jmsm:held_check/netherite_tool run scoreboard players set jmsm:held_max_damage jmsm.data 2031
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if predicate jmsm:held_check/diamond_tool run scoreboard players set jmsm:held_max_damage jmsm.data 1561
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if predicate jmsm:held_check/iron_tool run scoreboard players set jmsm:held_max_damage jmsm.data 250
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if predicate jmsm:held_check/stone_tool run scoreboard players set jmsm:held_max_damage jmsm.data 131
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if predicate jmsm:held_check/wooden_tool run scoreboard players set jmsm:held_max_damage jmsm.data 59
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if predicate jmsm:held_check/golden_tool run scoreboard players set jmsm:held_max_damage jmsm.data 32

# other combat tools
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:shield"}} run scoreboard players set jmsm:held_max_damage jmsm.data 336
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:mace"}} run scoreboard players set jmsm:held_max_damage jmsm.data 500
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:trident"}} run scoreboard players set jmsm:held_max_damage jmsm.data 250
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:bow"}} run scoreboard players set jmsm:held_max_damage jmsm.data 384
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:crossbow"}} run scoreboard players set jmsm:held_max_damage jmsm.data 465
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:fishing_rod"}} run scoreboard players set jmsm:held_max_damage jmsm.data 64

# helmets
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_helmet"}} run scoreboard players set jmsm:held_max_damage jmsm.data 407
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_helmet"}} run scoreboard players set jmsm:held_max_damage jmsm.data 363
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_helmet"}} run scoreboard players set jmsm:held_max_damage jmsm.data 165
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:turtle_helmet"}} run scoreboard players set jmsm:held_max_damage jmsm.data 275
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_helmet"}} run scoreboard players set jmsm:held_max_damage jmsm.data 55
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_helmet"}} run scoreboard players set jmsm:held_max_damage jmsm.data 77
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_helmet"}} run scoreboard players set jmsm:held_max_damage jmsm.data 165

# chestplates
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_chestplate"}} run scoreboard players set jmsm:held_max_damage jmsm.data 592
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_chestplate"}} run scoreboard players set jmsm:held_max_damage jmsm.data 528
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:elytra"}} run scoreboard players set jmsm:held_max_damage jmsm.data 432
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_chestplate"}} run scoreboard players set jmsm:held_max_damage jmsm.data 240
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_chestplate"}} run scoreboard players set jmsm:held_max_damage jmsm.data 80
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_chestplate"}} run scoreboard players set jmsm:held_max_damage jmsm.data 112
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_chestplate"}} run scoreboard players set jmsm:held_max_damage jmsm.data 240

# leggings
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_leggings"}} run scoreboard players set jmsm:held_max_damage jmsm.data 555
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_leggings"}} run scoreboard players set jmsm:held_max_damage jmsm.data 495
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_leggings"}} run scoreboard players set jmsm:held_max_damage jmsm.data 225
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_leggings"}} run scoreboard players set jmsm:held_max_damage jmsm.data 75
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_leggings"}} run scoreboard players set jmsm:held_max_damage jmsm.data 105
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_leggings"}} run scoreboard players set jmsm:held_max_damage jmsm.data 225

# boots
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:netherite_boots"}} run scoreboard players set jmsm:held_max_damage jmsm.data 481
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:diamond_boots"}} run scoreboard players set jmsm:held_max_damage jmsm.data 429
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:iron_boots"}} run scoreboard players set jmsm:held_max_damage jmsm.data 195
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:leather_boots"}} run scoreboard players set jmsm:held_max_damage jmsm.data 65
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:golden_boots"}} run scoreboard players set jmsm:held_max_damage jmsm.data 91
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:chainmail_boots"}} run scoreboard players set jmsm:held_max_damage jmsm.data 195

# unlikely items
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:shears"}} run scoreboard players set jmsm:held_max_damage jmsm.data 238
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:brush"}} run scoreboard players set jmsm:held_max_damage jmsm.data 64
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:carrot_on_a_stick"}} run scoreboard players set jmsm:held_max_damage jmsm.data 25
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:flint_and_steel"}} run scoreboard players set jmsm:held_max_damage jmsm.data 64
execute unless score jmsm:held_max_damage jmsm.data matches 1.. if data storage jmsm:scroll {gear_check:{id:"minecraft:warped_fungus_on_a_stick"}} run scoreboard players set jmsm:held_max_damage jmsm.data 100