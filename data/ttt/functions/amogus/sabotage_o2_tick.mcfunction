scoreboard players remove @s am_sabtimer 1
scoreboard players add @s am_maintimer 1

execute if entity @s[scores={am_maintimer=40..}] run execute as @r[tag=amplayer] at @s run playsound custom.amogus.alarm master @a ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=40..}] run scoreboard players set @s am_maintimer 0

scoreboard players operation @s am_visualizer = @s am_sabtimer
scoreboard players operation @s am_visualizer /= @s am_secondworth
scoreboard players add @s am_visualizer 1

execute at @e[tag=amogalive] if block ~ -16 ~ gold_block unless score @s am_sabfix2 matches 1 run function ttt:amogus/sabotage_o2_halffix_admin
execute at @e[tag=amogalive] if block ~ -19 ~ gold_block unless score @s am_sabfix2 matches 2 run function ttt:amogus/sabotage_o2_halffix_o2
execute at @a[tag=amplayer] if block ~ -16 ~ gold_block unless score @s am_sabfix2 matches 1 run function ttt:amogus/sabotage_o2_halffix_admin
execute at @a[tag=amplayer] if block ~ -19 ~ gold_block unless score @s am_sabfix2 matches 2 run function ttt:amogus/sabotage_o2_halffix_o2

### scoreboard players set @s am_gametimer 0
### scoreboard players operation @s am_gametimer += @s am_sabfix
### scoreboard players operation @s am_gametimer += @s am_sabfix2

execute if entity @s[scores={am_maintimer=0..9}] run title @a actionbar [{"text":"Oxygen Depletion in: ","color":"red","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s ("},{"score":{"name":"@s","objective":"am_sabfix"}},{"text":"/2 fixed)"}]
execute if entity @s[scores={am_maintimer=10..19}] run title @a actionbar [{"text":"Oxygen Depletion in: ","color":"yellow","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s ("},{"score":{"name":"@s","objective":"am_sabfix"}},{"text":"/2 fixed)"}]
execute if entity @s[scores={am_maintimer=20..29}] run title @a actionbar [{"text":"Oxygen Depletion in: ","color":"red","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s ("},{"score":{"name":"@s","objective":"am_sabfix"}},{"text":"/2 fixed)"}]
execute if entity @s[scores={am_maintimer=30..39}] run title @a actionbar [{"text":"Oxygen Depletion in: ","color":"yellow","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s ("},{"score":{"name":"@s","objective":"am_sabfix"}},{"text":"/2 fixed)"}]

execute if entity @s[scores={am_maintimer=0..1}] run worldborder warning distance 900000000
execute if entity @s[scores={am_maintimer=2..3}] run worldborder warning distance 700000000
execute if entity @s[scores={am_maintimer=4..5}] run worldborder warning distance 450000000
execute if entity @s[scores={am_maintimer=6..7}] run worldborder warning distance 300000000
execute if entity @s[scores={am_maintimer=8..9}] run worldborder warning distance 100000000
execute if entity @s[scores={am_maintimer=10..11}] run worldborder warning distance 80000000

execute unless entity @e[tag=amogai,tag=fixing1] unless entity @s[scores={am_sabfix2=1}] as @e[tag=amogai,tag=fixing2,limit=1,sort=random] at @s run function ttt:amogus/sabotage_switch_to_fix1
execute unless entity @e[tag=amogai,tag=fixing2] unless entity @s[scores={am_sabfix2=2}] as @e[tag=amogai,tag=fixing1,limit=1,sort=random] at @s run function ttt:amogus/sabotage_switch_to_fix2

execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -16 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -16 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -16 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -16 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -19 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -19 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -19 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -19 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

# ai security
execute unless score @s am_helpmeter matches 3 run function ttt:amogus/sabotage_o2_tick_security

execute if score @s am_sabtimer matches ..0 run function ttt:amogus/victory
execute if score @s am_sabfix matches 2.. run function ttt:amogus/sabotage_o2_fix

execute unless entity @s[scores={am_sabfix2=2}] run particle smoke 26.85 2.5 122.5 .1 .2 .2 0 2 normal @a
execute unless entity @s[scores={am_sabfix2=2}] run particle happy_villager 26.85 2.5 122.5 .2 .4 .4 0 1 normal @a
execute unless entity @s[scores={am_sabfix2=1}] run particle smoke 17.85 2.5 120.5 .1 .2 .2 0 2 normal @a
execute unless entity @s[scores={am_sabfix2=1}] run particle happy_villager 17.85 2.5 120.5 .2 .4 .4 0 1 normal @a

# -16 o2 admin
# -19 o2 o2