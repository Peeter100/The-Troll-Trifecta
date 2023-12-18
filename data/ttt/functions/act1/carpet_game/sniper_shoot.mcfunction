execute as @e[tag=sniper] at @s run playsound custom.act1.sniper.shoot master @a ~ ~ ~ 1000
execute if score @s fnf_carpetshots matches 1.. run title @a actionbar [{"text":"Sniper Focus: ||||||","color":"yellow"}]
scoreboard players add @s fnf_carpetshots 1

scoreboard players set .pointer-range npcbodytp 2
execute as @e[type=armor_stand,tag=sniper,limit=1] at @s anchored eyes positioned ^ ^ ^2 run function ttt:act1/carpet_game/pointer_gunshot

execute as @e[type=armor_stand,tag=snipertarget,limit=1] at @s positioned ~ ~-1 ~ if entity @a[team=p,distance=0..1] run function ttt:act1/carpet_game/sniper_successhit

title @a title {"text":" "}
schedule clear ttt:act1/carpet_game/sniper_beam
scoreboard players add @s am_gametimer 1
scoreboard players set @s am_maintimer -100
tag @a remove importantsans