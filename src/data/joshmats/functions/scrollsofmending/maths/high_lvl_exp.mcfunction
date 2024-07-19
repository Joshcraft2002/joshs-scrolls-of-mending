#4.5*(lvl)^2 - 162.5*lvl + 2220
scoreboard players set @s jm.sm.xpVar 45

scoreboard players operation @s jm.sm.xp2 = @s jm.sm.xp

scoreboard players operation @s jm.sm.xp2 *= @s jm.sm.xp2
scoreboard players operation @s jm.sm.xp2 *= @s jm.sm.xpVar

scoreboard players set @s jm.sm.xpVar 1625

scoreboard players operation @s jm.sm.xp *= @s jm.sm.xpVar
scoreboard players operation @s jm.sm.xp2 -= @s jm.sm.xp

scoreboard players set @s jm.sm.xpVar 10

scoreboard players operation @s jm.sm.xp2 /= @s jm.sm.xpVar
scoreboard players add @s jm.sm.xp2 2220

scoreboard players reset @s jm.sm.xp
