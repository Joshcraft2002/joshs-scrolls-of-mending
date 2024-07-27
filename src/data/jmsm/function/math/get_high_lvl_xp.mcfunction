# 4.5*(lvl)^2 - 162.5*lvl + 2220

# 162.5*lvl
scoreboard players set jmsm:temp jmsm.data 1625

scoreboard players operation jmsm:temp jmsm.xp = @s jmsm.xp
scoreboard players operation jmsm:temp jmsm.xp *= jmsm:temp jmsm.data

# 4.5*(lvl)^2
scoreboard players set jmsm:temp jmsm.data 45

scoreboard players operation @s jmsm.xp *= @s jmsm.xp
scoreboard players operation @s jmsm.xp *= jmsm:temp jmsm.data

# combine
scoreboard players operation @s jmsm.xp -= jmsm:temp jmsm.xp

scoreboard players set jmsm:temp jmsm.data 10

scoreboard players operation @s jmsm.xp /= jmsm:temp jmsm.data
scoreboard players add @s jmsm.xp 2220
