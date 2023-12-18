scoreboard players remove @s am_sabtimer 1
scoreboard players add @s am_maintimer 1

execute if entity @s[scores={am_maintimer=40..}] run execute as @r[tag=amplayer] at @s run playsound custom.amogus.alarm master @a ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=40..}] run scoreboard players set @s am_maintimer 0

scoreboard players operation @s am_visualizer = @s am_sabtimer
scoreboard players operation @s am_visualizer /= @s am_secondworth
scoreboard players add @s am_visualizer 1

execute as @e[tag=amogai,tag=fixing1] at @s if block ~ -12 ~ gold_block run tag @s add doingtask
execute as @e[tag=amogalive,tag=!noanim] at @s if block ~ -12 ~ gold_block run function ttt:amogus/crewmate_display_disable_anim
execute as @e[tag=amogai,tag=fixing2] at @s if block ~ -13 ~ gold_block run tag @s add doingtask
execute as @e[tag=amogalive,tag=!noanim] at @s if block ~ -13 ~ gold_block run function ttt:amogus/crewmate_display_disable_anim

scoreboard players set @s am_sabfix 0
execute if entity @e[tag=amogai,tag=fixing1,tag=doingtask] unless entity @a[tag=amplayer,scores={x=29,z=52}] run scoreboard players add @s am_sabfix 1
execute if entity @e[tag=amogai,tag=fixing2,tag=doingtask] unless entity @a[tag=amplayer,scores={x=13,z=52}] run scoreboard players add @s am_sabfix 1
execute if entity @a[tag=amplayer,scores={x=29,z=52}] run scoreboard players add @s am_sabfix 1
execute if entity @a[tag=amplayer,scores={x=13,z=52}] run scoreboard players add @s am_sabfix 1

execute if entity @s[scores={am_maintimer=0..9}] run title @a actionbar [{"text":"Reactor Meltdown in: ","color":"red","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s ("},{"score":{"name":"@s","objective":"am_sabfix"}},{"text":"/2 held down)"}]
execute if entity @s[scores={am_maintimer=10..19}] run title @a actionbar [{"text":"Reactor Meltdown in: ","color":"yellow","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s ("},{"score":{"name":"@s","objective":"am_sabfix"}},{"text":"/2 held down)"}]
execute if entity @s[scores={am_maintimer=20..29}] run title @a actionbar [{"text":"Reactor Meltdown in: ","color":"red","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s ("},{"score":{"name":"@s","objective":"am_sabfix"}},{"text":"/2 held down)"}]
execute if entity @s[scores={am_maintimer=30..39}] run title @a actionbar [{"text":"Reactor Meltdown in: ","color":"yellow","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s ("},{"score":{"name":"@s","objective":"am_sabfix"}},{"text":"/2 held down)"}]

### title @a[tag=amplayer,scores={x=29,z=52}] actionbar [{"text":"Waiting for second user... (","color":"green"},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s)"}]
### title @a[tag=amplayer,scores={x=13,z=52}] actionbar [{"text":"Waiting for second user... (","color":"green"},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s)"}]

execute if entity @s[scores={am_maintimer=0..1}] run worldborder warning distance 900000000
execute if entity @s[scores={am_maintimer=2..3}] run worldborder warning distance 700000000
execute if entity @s[scores={am_maintimer=4..5}] run worldborder warning distance 450000000
execute if entity @s[scores={am_maintimer=6..7}] run worldborder warning distance 300000000
execute if entity @s[scores={am_maintimer=8..9}] run worldborder warning distance 100000000
execute if entity @s[scores={am_maintimer=10..11}] run worldborder warning distance 80000000

execute if entity @e[tag=amogai,tag=fixing1,tag=doingtask] run execute as @e[tag=amogai,tag=fixing1,tag=!doingtask] at @s run function ttt:amogus/sabotage_switch_to_fix2
execute if entity @e[tag=amogai,tag=fixing2,tag=doingtask] run execute as @e[tag=amogai,tag=fixing2,tag=!doingtask] at @s run function ttt:amogus/sabotage_switch_to_fix1

execute unless entity @e[type=villager,tag=amogai,tag=fixing1] run execute as @e[tag=amogai,tag=fixing2,limit=1,sort=random] at @s run function ttt:amogus/sabotage_switch_to_fix1
execute unless entity @e[type=villager,tag=amogai,tag=fixing2] run execute as @e[tag=amogai,tag=fixing1,limit=1,sort=random] at @s run function ttt:amogus/sabotage_switch_to_fix2

execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -12 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -12 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -12 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -12 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -13 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -13 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -13 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -13 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

scoreboard players add @s am_gamescore4 1
execute unless score @s am_gamescore2 = @p[tag=amplayer] x at @p[tag=amplayer] run function ttt:amogus/sabotage_reactor_move
execute unless score @s am_gamescore3 = @p[tag=amplayer] z at @p[tag=amplayer] run function ttt:amogus/sabotage_reactor_move
execute if score @s am_gamescore4 matches 10 run function ttt:amogus/distance/reactor/measure_distance

### particle block_marker fire 20 2 48 5 1 2 1 1 force @a
particle happy_villager 29.85 2.5 52.5 .2 .4 .4 0 1 normal @a
particle happy_villager 13.15 2.5 52.5 .2 .4 .4 0 1 normal @a

execute if score @s am_sabtimer matches ..0 run function ttt:amogus/victory
execute if score @s am_sabfix matches 2 run function ttt:amogus/sabotage_reactor_fix