scoreboard players remove jmsm:config.greater_scroll_cost jmsm.data 10
execute if score jmsm:config.greater_scroll_cost jmsm.data matches ..-1 run scoreboard players set jmsm:config.greater_scroll_cost jmsm.data 0

function jmsm:config