# lvl^2 + 6*lvl
scoreboard players set jmsm:temp jmsm.data 6

scoreboard players operation jmsm:temp jmsm.xp = @s jmsm.xp

scoreboard players operation jmsm:temp jmsm.xp *= @s jmsm.xp
scoreboard players operation @s jmsm.xp *= jmsm:temp jmsm.data
scoreboard players operation @s jmsm.xp += jmsm:temp jmsm.xp
