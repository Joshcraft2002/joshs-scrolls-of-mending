scoreboard players set @s jm.sm.wTimer 2

function joshmats:scrollsofmending/maths/gear_exp

#set damage cost to 70%
scoreboard players set @s jm.sm.xpVar 10
scoreboard players operation @s jm.sm.chest /= @s jm.sm.xpVar

scoreboard players set @s jm.sm.xpVar 7
scoreboard players operation @s jm.sm.chest *= @s jm.sm.xpVar

#cut in quarter
scoreboard players set @s jm.sm.xpVar 4
scoreboard players operation @s jm.sm.chest /= @s jm.sm.xpVar

execute if score @s jm.sm.xp2 < @s jm.sm.chest run function joshmats:scrollsofmending/scroll_functions/fizzle
execute if score @s jm.sm.xp2 >= @s jm.sm.chest run function joshmats:scrollsofmending/scroll_functions/use_lesser_scroll

