scoreboard players add @s am_maintimer 1

execute if score @s am_maintimer matches 20.. run scoreboard players set @s am_maintimer 0

execute at @a[tag=amplayer] if block ~ -9 ~ gold_block run scoreboard players add @s am_sabfix 5
execute as @e[tag=amogalive,tag=!noanim] at @s if block ~ -9 ~ gold_block run function ttt:amogus/crewmate_display_disable_anim
execute at @e[tag=amogalive] if block ~ -9 ~ gold_block run scoreboard players add @s am_sabfix 5

execute if score @s am_maintimer matches 0..9 run title @a actionbar [{"text":"Fix Lights (","color":"red"},{"score":{"name":"@s","objective":"am_sabfix"},"color":"red"},{"text":"%)"}]
execute if score @s am_maintimer matches 10..19 run title @a actionbar [{"text":"Fix Lights (","color":"yellow"},{"score":{"name":"@s","objective":"am_sabfix"},"color":"yellow"},{"text":"%)"}]

execute as @e[type=villager,tag=amogai,tag=!canseebody] at @s if block ~ -9 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody] at @s if block ~ -9 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody] at @s if block ~ -9 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody] at @s if block ~ -9 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

particle smoke 7.85 2.5 80.5 .1 .2 .2 0 2 normal @a
particle happy_villager 7.85 2.5 80.5 .2 .4 .4 0 1 normal @a

# Make crewmates "forget" about you faster if you constantly use lights
# In reality, if you were to act "not sus", you would also go fix lights,
# which means you would see all crewmates again thus rendering this useless :)
scoreboard players remove @e[type=villager,tag=amogai,scores={am_ai_noticedtime=-1698..-1}] am_ai_noticedtime 1
execute if entity @e[type=marker,tag=amhost,tag=blackoutdid] run scoreboard players remove @e[type=villager,tag=amogai,tag=!witness_location,scores={am_ai_noticedtime=-1298..399}] am_ai_noticedtime 2

execute if score @s am_sabfix matches 100.. run function ttt:amogus/sabotage_lights_fix