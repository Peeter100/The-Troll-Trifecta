scoreboard players set @s playing 1
scoreboard players set @s readytimer 0
scoreboard players set @s deathtime 0

# Deprecated, use reset signs instead
#execute if score @s st_actprog matches ..0 run function ttt:map_start_progreset
#execute if score @s st_actprog matches 1.. run function ttt:map_start_progfull

scoreboard players set @s am_iconpref 1
scoreboard players set @s[scores={act=1}] acttimer -2500

#execute if score @s fnf_haswgun matches 0 run scoreboard players set @a gun_haswater 0
tag @a remove ringtutorial

clear @a
function ttt:map_reset
execute if entity @s[scores={act=1}] run title @a times 0 60 0
execute if entity @s[scores={act=1}] run gamemode adventure @a
execute if entity @s[scores={act=2..}] run function ttt:map_respawn
scoreboard players reset @a Lobby_Trigger

execute if score @s act matches 2 run tp @a 0 30 43 0 0
execute if score @s act matches 3 run tp @a -3 30 168 0 0

kill @e[tag=forkillspawn]
execute as @e[tag=spawnstand] run data merge entity @s {CustomNameVisible:0b}
execute if entity @s[scores={act=2..}] as @e[tag=p100play] run data merge entity @s {CustomNameVisible:1b}