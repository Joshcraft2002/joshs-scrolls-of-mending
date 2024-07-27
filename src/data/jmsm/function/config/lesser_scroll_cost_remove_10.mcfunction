scoreboard players remove jmsm:config.lesser_scroll_cost jmsm.data 10
execute if score jmsm:config.lesser_scroll_cost jmsm.data matches ..-1 run scoreboard players set jmsm:config.lesser_scroll_cost jmsm.data 0

function jmsm:config