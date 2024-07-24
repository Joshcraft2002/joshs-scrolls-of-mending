scoreboard players remove jmsm:config.scroll_cost jmsm.data 1
execute if score jmsm:config.scroll_cost jmsm.data matches ..-1 run scoreboard players set jmsm:config.scroll_cost jmsm.data 0

function jmsm:config