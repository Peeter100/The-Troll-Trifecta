scoreboard players add @s am_sabfix 1
scoreboard players set @s am_sabfix2 1

execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute at @p[tag=amplayer] if block ~ -16 ~ gold_block if entity @e[type=villager,tag=amogai,tag=cansee] run function ttt:amogus/ai/player/fix_sabotage
scoreboard players set @s am_gamescore4 0

setblock 17 2 120 iron_trapdoor[facing=west,half=top,open=true]
playsound block.iron_door.close master @a 17 2 120

execute as @e[type=villager,tag=amogai,tag=fixing1] at @s run function ttt:amogus/sabotage_switch_to_fix2