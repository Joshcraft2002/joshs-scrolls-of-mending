advancement revoke @s only jmsm:scroll_used
execute if score @s jmsm.use_cooldown matches 1.. run return 1

scoreboard players operation @s jmsm.use_cooldown += jmsm:config.use_cooldown jmsm.data

function jmsm:maths/xp_check

# set scroll cost
scoreboard players operation jmsm:total_damage jmsm.data *= jmsm:config.scroll_cost jmsm.data
scoreboard players operation jmsm:total_damage jmsm.data /= jmsm:100 jmsm.data

execute if score @s jmsm.xp < jmsm:total_damage jmsm.data run function jmsm:scroll_functions/fizzle
execute if score @s jmsm.xp >= jmsm:total_damage jmsm.data run function jmsm:scroll_functions/use_scroll