# lesser, normal, or greater
scoreboard objectives add jmsm.crafting_level dummy

scoreboard objectives add jmsm.use_cooldown dummy

# durability calcs for pieces
scoreboard objectives add jmsm.head dummy
scoreboard objectives add jmsm.chest dummy
scoreboard objectives add jmsm.legs dummy
scoreboard objectives add jmsm.feet dummy
scoreboard objectives add jmsm.held dummy

# lvl and for calcs
scoreboard objectives add jmsm.xp dummy

# for calcs, also stores total xp points
scoreboard objectives add jmsm.xp2 dummy

# experience calc variable
scoreboard objectives add jmsm.xpVar dummy

# initialize config
execute unless score jmsm:config jmsm.use_cooldown matches 0.. run scoreboard players set jmsm:config jmsm.use_cooldown 20

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