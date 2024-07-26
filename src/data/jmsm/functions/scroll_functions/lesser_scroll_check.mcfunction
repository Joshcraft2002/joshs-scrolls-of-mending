advancement revoke @s only jmsm:lesser_scroll_used
execute if score @s jmsm.use_cooldown matches 1.. run return 1

scoreboard players operation @s jmsm.use_cooldown += jmsm:config.use_cooldown jmsm.data

execute unless score jmsm:config.cost_calculation_type jmsm.data matches 2.. run function jmsm:gear_checks/max_damage_check
execute if score jmsm:config.cost_calculation_type jmsm.data matches 2 run function jmsm:gear_checks/damage_check
function jmsm:gear_checks/xp_check

# repair cost (from 25%)
scoreboard players operation jmsm:cost_calc.total jmsm.data *= jmsm:config.lesser_scroll_cost jmsm.data
scoreboard players operation jmsm:cost_calc.total jmsm.data /= jmsm:100 jmsm.data
scoreboard players operation jmsm:cost_calc.total jmsm.data /= jmsm:4 jmsm.data

execute if score @s jmsm.xp < jmsm:cost_calc.total jmsm.data run function jmsm:scroll_functions/fizzle
execute if score @s jmsm.xp >= jmsm:cost_calc.total jmsm.data run function jmsm:scroll_functions/use_lesser_scroll

