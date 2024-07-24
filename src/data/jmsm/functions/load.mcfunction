# lesser, normal, or greater
scoreboard objectives add jmsm.crafting_level dummy

scoreboard objectives add jmsm.use_cooldown dummy

# player xp points
scoreboard objectives add jmsm.xp dummy

# generic value
scoreboard objectives add jmsm.data dummy

# initialize config
execute unless score jmsm:config.use_cooldown jmsm.data matches 0.. run scoreboard players set jmsm:config.use_cooldown jmsm.data 2
execute unless score jmsm:config.greater_scroll_cost jmsm.data matches 0.. run scoreboard players set jmsm:config.greater_scroll_cost jmsm.data 50
execute unless score jmsm:config.scroll_cost jmsm.data matches 0.. run scoreboard players set jmsm:config.scroll_cost jmsm.data 60
execute unless score jmsm:config.lesser_scroll_cost jmsm.data matches 0.. run scoreboard players set jmsm:config.lesser_scroll_cost jmsm.data 75

# other constants
scoreboard players set jmsm:100 jmsm.data 100
scoreboard players set jmsm:4 jmsm.data 4
scoreboard players set jmsm:2 jmsm.data 2

# crafting loop
function jmsm:1sloop

# removing legacy objectives
scoreboard objectives remove jm.sm.cState
scoreboard objectives remove jm.sm.used
scoreboard objectives remove jm.sm.wTimer 

scoreboard objectives remove jm.sm.head 
scoreboard objectives remove jm.sm.chest 
scoreboard objectives remove jm.sm.legs 
scoreboard objectives remove jm.sm.feet 
scoreboard objectives remove jm.sm.held 

scoreboard objectives remove jm.sm.xp 

scoreboard objectives remove jm.sm.xp2 

scoreboard objectives remove jm.sm.xpVar 