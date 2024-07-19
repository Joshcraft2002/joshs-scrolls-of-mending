execute as @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b,tag:{ctc:{id:"blank_parchment",from:"joshmats:scrollsofmending"}}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:mending",lvl:1s}]}}}] run function joshmats:scrollsofmending/crafting/scroll_select

execute as @a[scores={jm.sm.wTimer=1..}] run scoreboard players remove @s jm.sm.wTimer 1

schedule function joshmats:scrollsofmending/1sloop 1s