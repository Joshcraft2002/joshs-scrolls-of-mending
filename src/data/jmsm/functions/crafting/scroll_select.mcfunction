scoreboard players set @s jmsm.crafting_level 0

execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_data":{smithed:{id:"jmsm:greater_seal"}}}}}] unless score @s jmsm.crafting_level matches 1.. run scoreboard players set @s jmsm.crafting_level 1
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lapis_lazuli",count:1,components:{"minecraft:custom_data":{smithed:{id:"jmsm:seal"}}}}}] unless score @s jmsm.crafting_level matches 1.. run scoreboard players set @s jmsm.crafting_level 2
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:custom_data":{smithed:{id:"jmsm:lesser_seal"}}}}}] unless score @s jmsm.crafting_level matches 1.. run scoreboard players set @s jmsm.crafting_level 3

execute if score @s jmsm.crafting_level matches 1 run function jmsm:crafting/greater_scroll
execute if score @s jmsm.crafting_level matches 2 run function jmsm:crafting/scroll
execute if score @s jmsm.crafting_level matches 3 run function jmsm:crafting/lesser_scroll

