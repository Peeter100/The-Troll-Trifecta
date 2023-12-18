# COMPATIBILITY
scoreboard objectives add verified dummy
execute as @a unless score @s verified matches 1.. run function ttt:initiate
execute as @a[scores={left=1..}] at @s run function ttt:rejoin

# TICK
execute as @a[tag=!ignoreinventory] at @s unless entity @s[nbt={Inventory:[{Slot:9b,tag:{locked:1b}},{Slot:10b,tag:{locked:1b}},{Slot:11b,tag:{locked:1b}},{Slot:12b,tag:{locked:1b}},{Slot:13b,tag:{locked:1b}},{Slot:14b,tag:{locked:1b}},{Slot:15b,tag:{locked:1b}},{Slot:16b,tag:{locked:1b}},{Slot:17b,tag:{locked:1b}},{Slot:18b,tag:{locked:1b}},{Slot:19b,tag:{locked:1b}},{Slot:20b,tag:{locked:1b}},{Slot:21b,tag:{locked:1b}},{Slot:22b,tag:{locked:1b}},{Slot:23b,tag:{locked:1b}},{Slot:24b,tag:{locked:1b}},{Slot:25b,tag:{locked:1b}},{Slot:26b,tag:{locked:1b}},{Slot:27b,tag:{locked:1b}},{Slot:28b,tag:{locked:1b}},{Slot:29b,tag:{locked:1b}},{Slot:30b,tag:{locked:1b}},{Slot:31b,tag:{locked:1b}},{Slot:32b,tag:{locked:1b}},{Slot:33b,tag:{locked:1b}},{Slot:34b,tag:{locked:1b}},{Slot:35b,tag:{locked:1b}}]}] run function ttt:fill_inventory
team join base @a[team=]
effect give @a[scores={weight=0}] saturation 99999 0 true
#recipe take @a *
kill @e[type=item,nbt={Item:{tag:{locked:1b}}}]
spawnpoint @a 0 30 0

execute as @a[scores={hp=1..19},tag=!noheal] run scoreboard players add @s hpregen 1
execute as @a[scores={hpregen=10..}] run effect give @s regeneration 1 2 true
execute as @a[scores={hpregen=10..}] run scoreboard players set @s hpregen 0

#scoreboard players set @e[type=marker,tag=sv] totalcount 0
#execute as @a at @s run scoreboard players add @e[type=marker,tag=sv] totalcount 1
#scoreboard players set @e[type=marker,tag=sv] playercount 0
#execute as @a[team=p] at @s run scoreboard players add @e[type=marker,tag=sv] playercount 1
execute store result score @e[type=marker,tag=sv,limit=1] totalcount if entity @a
execute store result score @e[type=marker,tag=sv,limit=1] playercount if entity @a[team=p]

execute as @e[type=marker,tag=sv,scores={playing=0},limit=1] at @s run function ttt:tick_lobby
execute as @e[type=marker,tag=sv,scores={playing=1..},limit=1] at @s run function ttt:tick_playing


scoreboard players set @a rc 0
scoreboard players set @a jump 0