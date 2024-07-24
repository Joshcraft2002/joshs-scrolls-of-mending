tellraw @s [""]
tellraw @s ["---",{"text":"[ ","color":"blue"},{"translate":"config.jmsm.title","color":"yellow"},{"text":" ]","color":"blue"},"---"]
tellraw @s [""]

tellraw @s [{"translate":"config.jmsm.use_cooldown"},": ",\
    {"score":{"name":"jmsm:config.use_cooldown","objective":"jmsm.data"},"color":"gold"}," ",\
    {"translate":"config.jmsm.seconds","color":"gold"}]
tellraw @s [{"text":"[-5]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/use_cooldown_remove_5"}}," ",\
    {"text":"[-1]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/use_cooldown_remove_1"}}," ",\
    {"text":"[+1]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/use_cooldown_add_1"}}," ",\
    {"text":"[+5]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/use_cooldown_add_5"}}] 
tellraw @s [{"translate":"config.jmsm.use_cooldown_note","color":"gray"}]
tellraw @s [""]

tellraw @s [{"translate":"config.jmsm.lesser_scroll_cost"},": ",\
    {"score":{"name":"jmsm:config.lesser_scroll_cost","objective":"jmsm.data"},"color":"gold"},\
    {"translate":"config.jmsm.percent_of_damage","color":"gold"}]
tellraw @s [{"text":"[-10]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/lesser_scroll_cost_remove_10"}}," ",\
    {"text":"[-1]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/lesser_scroll_cost_remove_1"}}," ",\
    {"text":"[+1]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/lesser_scroll_cost_add_1"}}," ",\
    {"text":"[+10]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/lesser_scroll_cost_add_10"}}] 
tellraw @s [""]

tellraw @s [{"translate":"config.jmsm.scroll_cost"},": ",\
    {"score":{"name":"jmsm:config.scroll_cost","objective":"jmsm.data"},"color":"gold"},\
    {"translate":"config.jmsm.percent_of_damage","color":"gold"}]
tellraw @s [{"text":"[-10]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/scroll_cost_remove_10"}}," ",\
    {"text":"[-1]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/scroll_cost_remove_1"}}," ",\
    {"text":"[+1]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/scroll_cost_add_1"}}," ",\
    {"text":"[+10]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/scroll_cost_add_10"}}] 
tellraw @s [""]

tellraw @s [{"translate":"config.jmsm.greater_scroll_cost"},": ",\
    {"score":{"name":"jmsm:config.greater_scroll_cost","objective":"jmsm.data"},"color":"gold"},\
    {"translate":"config.jmsm.percent_of_damage","color":"gold"}]
tellraw @s [{"text":"[-10]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/greater_scroll_cost_remove_10"}}," ",\
    {"text":"[-1]","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/greater_scroll_cost_remove_1"}}," ",\
    {"text":"[+1]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/greater_scroll_cost_add_1"}}," ",\
    {"text":"[+10]","color":"green","clickEvent":{"action":"run_command","value":"/function jmsm:config/greater_scroll_cost_add_10"}}] 
tellraw @s [""] 

tellraw @s [{"text":"[","color":"red"},{"translate":"config.jmsm.reset","color":"red","clickEvent":{"action":"run_command","value":"/function jmsm:config/reset_values"}},{"text":"]","color":"red"}]
tellraw @s [""] 