execute if score jmsm:cost_calc.total jmsm.data matches 500.. run experience add @s -500 points
execute if score jmsm:cost_calc.total jmsm.data matches 500.. run scoreboard players remove jmsm:cost_calc.total jmsm.data 500

execute if score jmsm:cost_calc.total jmsm.data matches 100..499 run experience add @s -100 points
execute if score jmsm:cost_calc.total jmsm.data matches 100..499 run scoreboard players remove jmsm:cost_calc.total jmsm.data 100

execute if score jmsm:cost_calc.total jmsm.data matches 10..99 run experience add @s -10 points
execute if score jmsm:cost_calc.total jmsm.data matches 10..99 run scoreboard players remove jmsm:cost_calc.total jmsm.data 10

execute if score jmsm:cost_calc.total jmsm.data matches 1..9 run experience add @s -1 points
execute if score jmsm:cost_calc.total jmsm.data matches 1..9 run scoreboard players remove jmsm:cost_calc.total jmsm.data 1

execute if score jmsm:cost_calc.total jmsm.data matches 1.. run function jmsm:maths/decrement_xp