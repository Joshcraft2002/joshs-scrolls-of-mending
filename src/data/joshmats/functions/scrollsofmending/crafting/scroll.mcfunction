kill @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{ctc:{id:"seal",from:"joshmats:scrollsofmending"}}}}]
kill @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:mending",lvl:1s}]}}}]

loot spawn ~ ~ ~ loot joshmats:scrollsofmending/scroll
particle minecraft:enchant ~ ~0.5 ~ 0.3 0.3 0.3 1 30 normal
playsound block.enchantment_table.use master @a ~ ~ ~

kill @s