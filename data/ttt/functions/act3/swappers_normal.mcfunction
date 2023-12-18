scoreboard players add @s am_maintimer 1
execute if entity @s[scores={am_maintimer=50..75}] run scoreboard players set @s am_maintimer 20
execute if entity @s[scores={am_maintimer=40..}] run scoreboard players set @s am_maintimer 0

execute if entity @s[scores={am_maintimer=20}] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=20}] run fill 1 15 215 13 15 215 air replace yellow_concrete
execute if entity @s[scores={am_maintimer=20}] run setblock 1 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=20}] run setblock 4 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=20}] run setblock 7 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=20}] run setblock 10 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=20}] run setblock 13 15 213 minecraft:red_concrete

execute if entity @s[scores={am_maintimer=0}] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=0}] run fill 1 15 213 13 15 213 air replace red_concrete
execute if entity @s[scores={am_maintimer=0}] run setblock 1 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=0}] run setblock 4 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=0}] run setblock 7 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=0}] run setblock 10 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=0}] run setblock 13 15 215 minecraft:yellow_concrete