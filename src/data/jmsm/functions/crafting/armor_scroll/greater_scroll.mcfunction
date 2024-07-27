kill @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_data":{smithed:{id:"jmsm:greater_seal"}}}}}]
kill @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{levels:{"minecraft:mending":1}}}}}]

loot spawn ~ ~ ~ loot jmsm:armor_scroll/greater_scroll
particle minecraft:enchant ~ ~0.5 ~ 0.3 0.3 0.3 1 30 normal
playsound block.enchantment_table.use master @a ~ ~ ~

# caller is the parchment
kill @s