advancement revoke @s only jmsm:greater_scroll_used
execute if score @s jmsm.use_cooldown matches 1.. run return 1

scoreboard players operation @s jmsm.use_cooldown += jmsm:config.use_cooldown jmsm.data

execute unless score jmsm:config.cost_calculation_type jmsm.data matches 2 run function jmsm:gear_checks/max_damage_check
execute if score jmsm:config.cost_calculation_type jmsm.data matches 2 run function jmsm:gear_checks/damage_check
function jmsm:gear_checks/xp_check

# repair cost (from 100%)
scoreboard players operation jmsm:dmg_calc_result jmsm.data *= jmsm:config.greater_scroll_cost jmsm.data
scoreboard players operation jmsm:dmg_calc_result jmsm.data /= jmsm:100 jmsm.data

execute if score @s jmsm.xp < jmsm:dmg_calc_result jmsm.data run function jmsm:scroll_functions/fizzle
execute if score @s jmsm.xp >= jmsm:dmg_calc_result jmsm.data run function jmsm:scroll_functions/use_greater_scroll



