#2.5*(lvl)^2 - 40.5*lvl + 360
scoreboard players set @s jm.sm.xpVar 25

scoreboard players operation @s jm.sm.xp2 = @s jm.sm.xp

scoreboard players operation @s jm.sm.xp2 *= @s jm.sm.xp2
scoreboard players operation @s jm.sm.xp2 *= @s jm.sm.xpVar

scoreboard players set @s jm.sm.xpVar 405

scoreboard players operation @s jm.sm.xp *= @s jm.sm.xpVar
scoreboard players operation @s jm.sm.xp2 -= @s jm.sm.xp

scoreboard players set @s jm.sm.xpVar 10

scoreboard players operation @s jm.sm.xp2 /= @s jm.sm.xpVar
scoreboard players add @s jm.sm.xp2 360

scoreboard players reset @s jm.sm.xp