scoreboard players reset @s jm.sm.used

execute if predicate joshmats:scrollsofmending/greater_scroll_held unless score @s jm.sm.wTimer matches 1.. run function joshmats:scrollsofmending/scroll_functions/greater_scroll_check
execute if predicate joshmats:scrollsofmending/scroll_held unless score @s jm.sm.wTimer matches 1.. run function joshmats:scrollsofmending/scroll_functions/scroll_check
execute if predicate joshmats:scrollsofmending/lesser_scroll_held unless score @s jm.sm.wTimer matches 1.. run function joshmats:scrollsofmending/scroll_functions/lesser_scroll_check
