execute if score @s am_sabcool matches 1.. run function ttt:amogus/decrement_sabcool

execute as @e[type=marker,tag=doormarker,scores={npcbodytp=400},limit=1,sort=random] at @s run playsound custom.amogus.door_open master @a ~ ~ ~ 1000
execute as @e[type=marker,tag=doormarker,scores={npcbodytp=400}] at @s run function ttt:amogus/doormarker_open

execute as @e[type=villager,tag=amogai,tag=emergencybutton,tag=!canseebody] at @s run function ttt:amogus/ai/player/tick_emergency