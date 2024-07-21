scoreboard players set @s jm.sm.wTimer 2

function joshmats:scrollsofmending/maths/gear_exp

#set damage cost to 50%
scoreboard players set @s jm.sm.xpVar 2
scoreboard players operation @s jm.sm.chest /= @s jm.sm.xpVar

execute if score @s jm.sm.xp2 < @s jm.sm.chest run function joshmats:scrollsofmending/scroll_functions/fizzle
execute if score @s jm.sm.xp2 >= @s jm.sm.chest run function joshmats:scrollsofmending/scroll_functions/use_greater_scroll

