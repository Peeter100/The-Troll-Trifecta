tellraw @s [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"text":"Look at me!","color":"aqua"}]
stopsound @s master custom.generic.look_at_me
playsound custom.generic.look_at_me master @s ~ ~ ~ 1000

execute positioned 26.0 ~ -22 facing entity @s feet rotated ~ 0 positioned ^ ^ ^0.35 run tp @e[type=armor_stand,tag=gf] ~ 31.25 ~ facing entity @s eyes
execute at @e[tag=extrahead] unless entity @s[tag=gf] anchored eyes run tp @e[tag=extrastand,distance=..0.15] ~ ~ ~ facing entity @s eyes
execute as @e[tag=extrahead,tag=!noadjust] run function ttt:update_head_pose
execute as @e[type=armor_stand,tag=shadow] run function ttt:finale/npc_look_shadow