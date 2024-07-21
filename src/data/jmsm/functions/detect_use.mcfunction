scoreboard players reset @s jmsm.used

execute if predicate jmsm:greater_scroll_held unless score @s jmsm.use_cooldown matches 1.. run function jmsm:scroll_functions/greater_scroll_check
execute if predicate jmsm:scroll_held unless score @s jmsm.use_cooldown matches 1.. run function jmsm:scroll_functions/scroll_check
execute if predicate jmsm:lesser_scroll_held unless score @s jmsm.use_cooldown matches 1.. run function jmsm:scroll_functions/lesser_scroll_check
