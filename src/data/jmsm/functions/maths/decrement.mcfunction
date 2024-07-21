execute if score @s jm.sm.chest matches 500.. run experience add @s -500 points
execute if score @s jm.sm.chest matches 500.. run scoreboard players remove @s jm.sm.chest 500

execute if score @s jm.sm.chest matches 100..499 run experience add @s -100 points
execute if score @s jm.sm.chest matches 100..499 run scoreboard players remove @s jm.sm.chest 100

execute if score @s jm.sm.chest matches 10..99 run experience add @s -10 points
execute if score @s jm.sm.chest matches 10..99 run scoreboard players remove @s jm.sm.chest 10

execute if score @s jm.sm.chest matches 10.. run function joshmats:scrollsofmending/maths/decrement