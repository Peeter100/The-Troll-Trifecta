execute if score @s am_sabid matches 1 run function ttt:amogus/minigames/tick_handle_reactor
execute if score @s am_sabid matches 2 run function ttt:amogus/minigames/tick_handle_o2
execute if score @s am_sabid matches 3 run function ttt:amogus/minigames/tick_handle_lights

execute as @e[type=marker,tag=doormarker,scores={npcbodytp=400},limit=1,sort=random] at @s run playsound custom.amogus.door_open master @a ~ ~ ~ 1000
execute as @e[type=marker,tag=doormarker,scores={npcbodytp=400}] at @s run function ttt:amogus/doormarker_open_background