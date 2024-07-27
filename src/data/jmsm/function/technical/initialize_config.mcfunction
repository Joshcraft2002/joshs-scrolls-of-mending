execute unless score jmsm:config.use_cooldown jmsm.data matches 0.. run scoreboard players set jmsm:config.use_cooldown jmsm.data 2
execute unless score jmsm:config.greater_scroll_cost jmsm.data matches 0.. run scoreboard players set jmsm:config.greater_scroll_cost jmsm.data 50
execute unless score jmsm:config.scroll_cost jmsm.data matches 0.. run scoreboard players set jmsm:config.scroll_cost jmsm.data 60
execute unless score jmsm:config.lesser_scroll_cost jmsm.data matches 0.. run scoreboard players set jmsm:config.lesser_scroll_cost jmsm.data 75
execute unless score jmsm:config.cost_calculation_type jmsm.data matches 0.. run scoreboard players set jmsm:config.cost_calculation_type jmsm.data 1 
    # 1 for default, 2 for legacy