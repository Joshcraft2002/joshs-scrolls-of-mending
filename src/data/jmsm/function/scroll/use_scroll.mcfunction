function jmsm:math/decrement_xp

execute if score jmsm:cost_calc.head jmsm.data matches 1.. run item modify entity @s armor.head jmsm:repair
execute if score jmsm:cost_calc.chest jmsm.data matches 1.. run item modify entity @s armor.chest jmsm:repair
execute if score jmsm:cost_calc.legs jmsm.data matches 1.. run item modify entity @s armor.legs jmsm:repair
execute if score jmsm:cost_calc.feet jmsm.data matches 1.. run item modify entity @s armor.feet jmsm:repair
execute if score jmsm:cost_calc.held jmsm.data matches 1.. run item modify entity @s weapon.mainhand jmsm:repair
execute if score jmsm:cost_calc.held jmsm.data matches 1.. run item modify entity @s weapon.offhand jmsm:repair

particle happy_villager ~ ~1 ~ 0.2 0.5 0.2 1 10 normal
playsound block.anvil.use master @a ~ ~ ~

execute if predicate jmsm:scroll_oh run item replace entity @s weapon.offhand with minecraft:air
execute if predicate jmsm:scroll_mh run item replace entity @s weapon.mainhand with minecraft:air
