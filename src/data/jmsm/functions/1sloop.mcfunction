execute as @e[type=item,nbt={Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{smithed:{id:"jmsm:blank_parchment"}}}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{levels:{"minecraft:mending":1}}}}}] run function jmsm:crafting/scroll_select

execute as @a[scores={jmsm.use_cooldown=1..}] run scoreboard players remove @s jmsm.use_cooldown 1

schedule function jmsm:1sloop 1s