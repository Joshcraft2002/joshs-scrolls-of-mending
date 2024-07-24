function jmsm:maths/decrement_xp

execute if score jmsm:head_damage jmsm.data matches 1.. run item modify entity @s armor.head jmsm:lesser_repair
execute if score jmsm:chest_damage jmsm.data matches 1.. run item modify entity @s armor.chest jmsm:lesser_repair
execute if score jmsm:legs_damage jmsm.data matches 1.. run item modify entity @s armor.legs jmsm:lesser_repair
execute if score jmsm:feet_damage jmsm.data matches 1.. run item modify entity @s armor.feet jmsm:lesser_repair
execute if score jmsm:held_damage jmsm.data matches 1.. run item modify entity @s weapon.mainhand jmsm:lesser_repair
execute if score jmsm:held_damage jmsm.data matches 1.. run item modify entity @s weapon.offhand jmsm:lesser_repair

particle happy_villager ~ ~1 ~ 0.2 0.5 0.2 1 10 normal
playsound block.anvil.use master @a ~ ~ ~

execute if predicate jmsm:scroll_oh run item replace entity @s weapon.offhand with minecraft:air
execute if predicate jmsm:scroll_mh run item replace entity @s weapon.mainhand with minecraft:air
