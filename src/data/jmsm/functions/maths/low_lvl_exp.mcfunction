#lvl^2 + 6*lvl
scoreboard players set @s jm.sm.xpVar 6

scoreboard players operation @s jm.sm.xp2 = @s jm.sm.xp

scoreboard players operation @s jm.sm.xp2 *= @s jm.sm.xp2
scoreboard players operation @s jm.sm.xp *= @s jm.sm.xpVar
scoreboard players operation @s jm.sm.xp2 += @s jm.sm.xp

scoreboard players reset @s jm.sm.xp
