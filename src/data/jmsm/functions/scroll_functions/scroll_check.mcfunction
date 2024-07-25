advancement revoke @s only jmsm:scroll_used
execute if score @s jmsm.use_cooldown matches 1.. run return 1

scoreboard players operation @s jmsm.use_cooldown += jmsm:config.use_cooldown jmsm.data

function jmsm:gear_checks/damage_check
function jmsm:gear_checks/xp_check

# repair cost (from 50%)
scoreboard players operation jmsm:total_max_damage jmsm.data *= jmsm:config.greater_scroll_cost jmsm.data
scoreboard players operation jmsm:total_max_damage jmsm.data /= jmsm:100 jmsm.data
scoreboard players operation jmsm:total_max_damage jmsm.data /= jmsm:2 jmsm.data

execute if score @s jmsm.xp < jmsm:total_max_damage jmsm.data run function jmsm:scroll_functions/fizzle
execute if score @s jmsm.xp >= jmsm:total_max_damage jmsm.data run function jmsm:scroll_functions/use_scroll