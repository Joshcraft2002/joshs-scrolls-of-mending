#get damage per item
execute store result score @s jm.sm.head run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute store result score @s jm.sm.chest run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute store result score @s jm.sm.legs run data get entity @s Inventory[{Slot:101b}].tag.Damage
execute store result score @s jm.sm.feet run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute unless predicate joshmats:scrollsofmending/scroll_oh store result score @s jm.sm.held run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute unless predicate joshmats:scrollsofmending/scroll_mh store result score @s jm.sm.held run data get entity @s SelectedItem.tag.Damage

#get total damage
scoreboard players operation @s jm.sm.chest += @s jm.sm.head
scoreboard players operation @s jm.sm.chest += @s jm.sm.legs
scoreboard players operation @s jm.sm.chest += @s jm.sm.feet
scoreboard players operation @s jm.sm.chest += @s jm.sm.held

#get player exp count
execute store result score @s jm.sm.xp run experience query @s levels
execute if score @s jm.sm.xp matches ..16 run function joshmats:scrollsofmending/maths/low_lvl_exp
execute if score @s jm.sm.xp matches 17..31 run function joshmats:scrollsofmending/maths/med_lvl_exp
execute if score @s jm.sm.xp matches 32.. run function joshmats:scrollsofmending/maths/high_lvl_exp

