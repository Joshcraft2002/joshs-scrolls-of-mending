function joshmats:scrollsofmending/maths/decrement

item modify entity @s armor.head joshmats:scrollsofmending/lesser_repair
item modify entity @s armor.chest joshmats:scrollsofmending/lesser_repair
item modify entity @s armor.legs joshmats:scrollsofmending/lesser_repair
item modify entity @s armor.feet joshmats:scrollsofmending/lesser_repair
item modify entity @s weapon.mainhand joshmats:scrollsofmending/lesser_repair
item modify entity @s weapon.offhand joshmats:scrollsofmending/lesser_repair

particle happy_villager ~ ~1 ~ 0.2 0.5 0.2 1 10 normal
playsound block.anvil.use master @a ~ ~ ~

execute if predicate joshmats:scrollsofmending/scroll_oh run item replace entity @s weapon.offhand with minecraft:air
execute if predicate joshmats:scrollsofmending/scroll_mh run item replace entity @s weapon.mainhand with minecraft:air
