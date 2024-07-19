kill @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:1b,tag:{ctc:{id:"lesser_seal",from:"joshmats:scrollsofmending"}}}}]
kill @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:mending",lvl:1s}]}}}]

loot spawn ~ ~ ~ loot joshmats:scrollsofmending/lesser_scroll
particle minecraft:enchant ~ ~0.5 ~ 0.3 0.3 0.3 1 30 normal
playsound block.enchantment_table.use master @a ~ ~ ~

kill @s