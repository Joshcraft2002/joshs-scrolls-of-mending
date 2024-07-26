# get player xp points
execute store result score @s jmsm.xp run experience query @s levels
execute if score @s jmsm.xp matches 32.. run function jmsm:maths/get_high_lvl_xp
execute if score @s jmsm.xp matches 17..31 run function jmsm:maths/get_mid_lvl_xp
execute if score @s jmsm.xp matches ..16 run function jmsm:maths/get_low_lvl_xp
execute store result score jmsm:temp jmsm.xp run experience query @s points
scoreboard players operation @s jmsm.xp += jmsm:temp jmsm.xp

