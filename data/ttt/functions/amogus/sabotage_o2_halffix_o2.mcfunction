scoreboard players add @s am_sabfix 1
scoreboard players set @s am_sabfix2 2

execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute at @p[tag=amplayer] if block ~ -19 ~ gold_block if entity @e[type=villager,tag=amogai,tag=cansee] run function ttt:amogus/ai/player/fix_sabotage
scoreboard players set @s am_gamescore4 0

setblock 26 2 122 iron_trapdoor[facing=west,open=true,half=top]
playsound block.iron_door.close master @a 26 2 122

execute as @e[type=villager,tag=amogai,tag=fixing2] at @s run function ttt:amogus/sabotage_switch_to_fix1