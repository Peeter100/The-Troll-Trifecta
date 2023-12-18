scoreboard players set @e[tag=sv] am_sabid 4
execute unless entity @e[tag=doormarker,scores={npcbodytp=401..}] run function ttt:amogus/slot_disable_sabotages
execute unless entity @e[tag=doormarker,scores={npcbodytp=599..}] run function ttt:amogus/doormarker_close_once
scoreboard players set @s npcbodytp 600
### title @a actionbar [{"text":"Closed doors to ","color":"green"},{"selector":"@s"}]

execute if entity @s[tag=x] positioned ~-1 ~ ~-0.5 run execute as @e[tag=gameai,dx=2,dy=0,dz=0,y_rotation=90..-90] at @s run tp @s ~ ~ ~1.25
execute if entity @s[tag=x] positioned ~-1 ~ ~-0.5 run execute as @e[tag=gameai,dx=2,dy=0,dz=0,y_rotation=-90..90] at @s run tp @s ~ ~ ~-1.25
execute if entity @s[tag=z] positioned ~-0.5 ~ ~-1 run execute as @e[tag=gameai,dx=0,dy=0,dz=2,y_rotation=0..180] at @s run tp @s ~1.25 ~ ~
execute if entity @s[tag=z] positioned ~-0.5 ~ ~-1 run execute as @e[tag=gameai,dx=0,dy=0,dz=2,y_rotation=180..0] at @s run tp @s ~-1.25 ~ ~

execute if entity @s[tag=x] positioned ~-1 ~ ~-0.5 run execute as @a[tag=amplayer,dx=2,dy=0,dz=0,y_rotation=90..-90] at @s run tp @s ~ ~ ~1.25
execute if entity @s[tag=x] positioned ~-1 ~ ~-0.5 run execute as @a[tag=amplayer,dx=2,dy=0,dz=0,y_rotation=-90..90] at @s run tp @s ~ ~ ~-1.25
execute if entity @s[tag=z] positioned ~-0.5 ~ ~-1 run execute as @a[tag=amplayer,dx=0,dy=0,dz=2,y_rotation=0..180] at @s run tp @s ~1.25 ~ ~
execute if entity @s[tag=z] positioned ~-0.5 ~ ~-1 run execute as @a[tag=amplayer,dx=0,dy=0,dz=2,y_rotation=180..0] at @s run tp @s ~-1.25 ~ ~

execute if entity @s[tag=x] run fill ~-1 ~ ~ ~1 ~2 ~ iron_block
execute if entity @s[tag=z] run fill ~ ~ ~-1 ~ ~2 ~1 iron_block
particle cloud ~ ~1 ~ 1 1 1 0 75 normal @a