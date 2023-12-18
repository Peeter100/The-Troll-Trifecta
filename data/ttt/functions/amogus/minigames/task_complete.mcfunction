execute as @e[tag=gameai,tag=!canseebody,tag=!emergencybutton] run data merge entity @s {NoAI:0b,Health:100.0f}
scoreboard players set @s am_gametimer 10000
scoreboard players set @s am_checkuptimer 1800
execute store result bossbar amogbar value run scoreboard players get @s am_checkuptimer
## execute if entity @e[tag=sv,scores={am_sabid=1}] run tellraw @a {"text":"Reactor systems have been fixed!","color":"green"}
## execute if entity @e[tag=sv,scores={am_sabid=2}] run tellraw @a {"text":"O2 systems have been fixed!","color":"green"}
## execute if entity @e[tag=sv,scores={am_sabid=3}] run tellraw @a {"text":"Lights have been fixed!","color":"green"}
## execute as @e[tag=sv,scores={am_sabid=1..3}] at @s run function ttt:amogus/minigames/task_nullify_sabotage

kill @e[tag=amogtask]
kill @e[type=item]
clear @a
tag @a remove noheal
tag @a remove offhandnoupdate
effect clear @a[tag=amplayer] speed
effect clear @a[tag=amplayer] saturation
effect clear @a[tag=amplayer] resistance
effect give @a[tag=amplayer] hunger 10 255 true
effect give @a[tag=amplayer] jump_boost 99999 200 true
effect give @a[tag=amplayer] invisibility 99999 0 true
effect give @a[tag=amplayer] instant_health 1 100 true
gamerule fallDamage true
title @a reset

tp @a[tag=amplayer] 37 8 103
tp @e[tag=amogzombai,tag=orange] 15 21 100
tp @e[tag=amogzombai,tag=yellow] 8 26 100
tp @e[tag=amogzombai,tag=lime] 8 21 100
tp @e[tag=amogzombai,tag=green] 1 26 100
tp @e[tag=amogzombai,tag=cyan] 1 21 100
tp @e[tag=amogzombai,tag=pink] 15 21 93
tp @e[tag=amogzombai,tag=purple] 15 26 93
tp @e[tag=amogzombai,tag=white] 8 21 93
tp @e[tag=amogzombai,tag=black] 8 26 93

tellraw @a {"text":"Task Complete! [✔]","color":"green","bold":true}
execute as @r[tag=amplayer] at @s run playsound custom.amogus.task_complete master @a ~ ~ ~ 1000

execute unless entity @s[tag=forcedtaskpregr] run scoreboard players set @s am_gamegroupseq 0
execute if score @s am_gamegroup matches 1.. unless entity @s[tag=forcedtaskpregr] run scoreboard players add @s am_gamegroup 1
execute if score @s am_gamegroup matches 4.. run scoreboard players set @s am_gamegroup 0