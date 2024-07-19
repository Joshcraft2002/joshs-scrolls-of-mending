scoreboard players set @s jm.sm.cState 0

execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b,tag:{ctc:{id:"greater_seal",from:"joshmats:scrollsofmending"}}}}] unless score @s jm.sm.cState matches 1.. run scoreboard players set @s jm.sm.cState 1
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{ctc:{id:"seal",from:"joshmats:scrollsofmending"}}}}] unless score @s jm.sm.cState matches 1.. run scoreboard players set @s jm.sm.cState 2
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot",Count:1b,tag:{ctc:{id:"lesser_seal",from:"joshmats:scrollsofmending"}}}}] unless score @s jm.sm.cState matches 1.. run scoreboard players set @s jm.sm.cState 3

execute if score @s jm.sm.cState matches 1 run function joshmats:scrollsofmending/crafting/greater_scroll
execute if score @s jm.sm.cState matches 2 run function joshmats:scrollsofmending/crafting/scroll
execute if score @s jm.sm.cState matches 3 run function joshmats:scrollsofmending/crafting/lesser_scroll

