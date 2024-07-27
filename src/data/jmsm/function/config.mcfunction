tellraw @s [""]
tellraw @s ["---",{"text":"[ ","color":"blue"},{"translate":"config.jmsm.title","color":"yellow"},{"text":" ]","color":"blue"},"---"]
tellraw @s [""]

# use cooldown
tellraw @s [{"translate":"config.jmsm.use_cooldown"},": ",\
    {"score":{"name":"jmsm:config.use_cooldown","objective":"jmsm.data"},"color":"gold"}," ",\
    {"translate":"config.jmsm.seconds","color":"gold"}]
tellraw @s [{"text":"[-5]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/use_cooldown_remove_5"}}," ",\
    {"text":"[-1]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/use_cooldown_remove_1"}}," ",\
    {"text":"[+1]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/use_cooldown_add_1"}}," ",\
    {"text":"[+5]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/use_cooldown_add_5"}}] 
tellraw @s [{"translate":"config.jmsm.use_cooldown_note","color":"gray"}]
tellraw @s [""]

# cost calculation type
execute unless score jmsm:config.cost_calculation_type jmsm.data matches 2 run tellraw @s [{"translate":"config.jmsm.cost_calculation_type"},": ",\
    {"translate":"config.jmsm.cost_calculation.max_damage","color":"gold"}," ",\
    {"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jmsm:config/cost_calculation_type_down"}}," ",\
    {"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jmsm:config/cost_calculation_type_up"}}] 
execute if score jmsm:config.cost_calculation_type jmsm.data matches 2 run tellraw @s [{"translate":"config.jmsm.cost_calculation_type"},": ",\
    {"translate":"config.jmsm.cost_calculation.damage","color":"gold"}," ",\
    {"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jmsm:config/cost_calculation_type_down"}}," ",\
    {"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jmsm:config/cost_calculation_type_up"}}] 
tellraw @s [""] 

# lesser scroll cost
tellraw @s [{"translate":"config.jmsm.lesser_scroll_cost"},": ",\
    {"score":{"name":"jmsm:config.lesser_scroll_cost","objective":"jmsm.data"},"color":"gold"},\
    {"text":"%","color":"gold"}]
tellraw @s [{"text":"[-10]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/lesser_scroll_cost_remove_10"}}," ",\
    {"text":"[-1]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/lesser_scroll_cost_remove_1"}}," ",\
    {"text":"[+1]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/lesser_scroll_cost_add_1"}}," ",\
    {"text":"[+10]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/lesser_scroll_cost_add_10"}}] 

# scroll cost
tellraw @s [{"translate":"config.jmsm.scroll_cost"},": ",\
    {"score":{"name":"jmsm:config.scroll_cost","objective":"jmsm.data"},"color":"gold"},\
    {"text":"%","color":"gold"}]
tellraw @s [{"text":"[-10]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/scroll_cost_remove_10"}}," ",\
    {"text":"[-1]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/scroll_cost_remove_1"}}," ",\
    {"text":"[+1]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/scroll_cost_add_1"}}," ",\
    {"text":"[+10]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/scroll_cost_add_10"}}] 

# greater scroll cost
tellraw @s [{"translate":"config.jmsm.greater_scroll_cost"},": ",\
    {"score":{"name":"jmsm:config.greater_scroll_cost","objective":"jmsm.data"},"color":"gold"},\
    {"text":"%","color":"gold"}]
tellraw @s [{"text":"[-10]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/greater_scroll_cost_remove_10"}}," ",\
    {"text":"[-1]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/greater_scroll_cost_remove_1"}}," ",\
    {"text":"[+1]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/greater_scroll_cost_add_1"}}," ",\
    {"text":"[+10]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/greater_scroll_cost_add_10"}}] 
tellraw @s [""] 

tellraw @s [{"text":"[","color":"red"},{"translate":"config.jmsm.reset","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/reset_values"}},{"text":"]","color":"red"}]
tellraw @s [""] 