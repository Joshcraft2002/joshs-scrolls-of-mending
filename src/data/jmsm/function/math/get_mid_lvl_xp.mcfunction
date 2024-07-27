# 2.5*(lvl)^2 - 40.5*lvl + 360

# 40.5 * lvl * 10
scoreboard players set jmsm:temp jmsm.data 405

scoreboard players operation jmsm:temp jmsm.xp = @s jmsm.xp
scoreboard players operation jmsm:temp jmsm.xp *= jmsm:temp jmsm.data

# 2.5 * (lvl)^2 * 10
scoreboard players set jmsm:temp jmsm.data 25

scoreboard players operation @s jmsm.xp *= @s jmsm.xp
scoreboard players operation @s jmsm.xp *= jmsm:temp jmsm.data

# combine
scoreboard players operation @s jmsm.xp -= jmsm:temp jmsm.xp

scoreboard players set jmsm:temp jmsm.data 10

scoreboard players operation @s jmsm.xp /= jmsm:temp jmsm.data
scoreboard players add @s jmsm.xp 360