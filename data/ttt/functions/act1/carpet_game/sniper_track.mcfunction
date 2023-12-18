execute unless entity @a[team=p,tag=importantsans] at @e[type=armor_stand,tag=sniper] run tag @p[team=p] add importantsans

execute if entity @s[scores={am_maintimer=0..54}] as @e[type=armor_stand,tag=snipertarget] at @s run tp @s ~ ~ ~ facing entity @p[team=p,tag=importantsans] eyes
execute if entity @s[scores={am_maintimer=0..54}] as @e[type=armor_stand,tag=snipertarget] at @s unless entity @a[team=p,tag=importantsans,distance=0..1] run tp @s ^ ^ ^0.2
execute if entity @s[scores={am_maintimer=0..54}] as @e[type=armor_stand,tag=snipertarget] at @s unless entity @a[team=p,tag=importantsans,distance=0..4] run tp @s ^ ^ ^0.2
execute if entity @s[scores={am_maintimer=0..54}] as @e[type=armor_stand,tag=sniper] at @s run tp @s ~ ~ ~ facing entity @e[tag=snipertarget,limit=1] eyes

#execute if entity @s[scores={am_maintimer=0}] run function ttt:act1/carpet_game/sniper_beam

execute if entity @s[scores={am_maintimer=50,am_gametimer=0}] as @e[type=armor_stand,tag=sniper] at @s run playsound custom.act1.sniper.first_shot_warning master @a ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=50,am_gametimer=0}] run tellraw @a [{"text":"<","color":"white"},{"text":"Sniper","color":"red"},{"text":"> "},{"text":"Heads up!","color":"red"}]
execute if entity @s[scores={am_maintimer=50,am_gametimer=1}] as @e[type=armor_stand,tag=sniper] at @s run playsound custom.act1.sniper.second_shot_warning master @a ~ ~ ~ 1000

execute if entity @s[scores={am_maintimer=51}] at @e[type=armor_stand,tag=sniper] run function ttt:act1/carpet_game/sniper_alert
execute if entity @s[scores={am_maintimer=54}] at @e[type=armor_stand,tag=sniper] run function ttt:act1/carpet_game/sniper_alert
execute if entity @s[scores={am_maintimer=57}] at @e[type=armor_stand,tag=sniper] run function ttt:act1/carpet_game/sniper_alert
execute if entity @s[scores={am_maintimer=60}] at @e[type=armor_stand,tag=sniper] run function ttt:act1/carpet_game/sniper_alert
execute if entity @s[scores={am_maintimer=63}] at @e[type=armor_stand,tag=sniper] run function ttt:act1/carpet_game/sniper_alert

execute if entity @s[scores={am_maintimer=66}] run function ttt:act1/carpet_game/sniper_shoot