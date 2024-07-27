scoreboard players remove jmsm:config.use_cooldown jmsm.data 5
execute if score jmsm:config.use_cooldown jmsm.data matches ..-1 run scoreboard players set jmsm:config.use_cooldown jmsm.data 0

function jmsm:config