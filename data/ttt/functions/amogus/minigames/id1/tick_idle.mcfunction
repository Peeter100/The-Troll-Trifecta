scoreboard players remove @s am_gamescore3 1
execute unless entity @a[tag=amplayer,scores={walking=1..}] run scoreboard players remove @s[scores={am_gamescore7=1..}] am_gamescore7 1

execute if entity @a[tag=amplayer,scores={sprinting=1..}] run scoreboard players remove @s am_gamescore3 8
execute if entity @a[tag=amplayer,scores={sprinting=1..}] run scoreboard players add @s am_gamescore7 6
execute if entity @a[tag=amplayer,scores={jump=1..}] run scoreboard players remove @s am_gamescore3 50
execute if entity @a[tag=amplayer,scores={jump=1..}] run scoreboard players add @s am_gamescore7 75
execute if entity @s[scores={am_gamescore7=501..}] run scoreboard players set @s am_gamescore7 500

execute if entity @s[scores={am_seentrollge=0,am_visualizer=1..2}] run scoreboard players set @s[scores={am_gamescore7=..209}] am_gamescore7 210
execute if entity @s[scores={am_seentrollge=1,am_visualizer=2}] run scoreboard players set @s[scores={am_gamescore7=..69}] am_gamescore7 70

execute if entity @s[scores={am_gamescore7=0..160}] run execute as @e[type=zombie_villager,tag=trollgeai,tag=!camping] at @s if entity @a[tag=amplayer,distance=0..10] unless entity @e[tag=campingpick] run function ttt:amogus/minigames/id1/camping_select

# execute as @a[tag=amplayer] at @s if entity @e[tag=trollgeai,distance=0..20] run execute as @e[tag=viewcaster] at @s anchored eyes run function ttt:amogus/minigames/id1/check_caster
execute as @r[tag=amplayer] at @s as @e[type=zombie_villager,tag=trollgeai,distance=0..20] at @s anchored eyes facing entity @p[tag=amplayer] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=0..0.25] run function ttt:amogus/minigames/id1/attempt_chase_start

execute if entity @s[scores={am_gamescore5=1,am_gamescore7=0..150,am_gametimer=10,am_gamescore3=..220}] run execute as @e[type=zombie_villager,tag=trollgeai,tag=!camping] at @s run playsound custom.act3.backroom.distant.footstep master @a ~ ~ ~ 1
execute if entity @s[scores={am_gamescore5=17,am_gamescore7=0..150,am_gametimer=10,am_gamescore3=..220}] run execute as @e[type=zombie_villager,tag=trollgeai,tag=!camping] at @s run playsound custom.act3.backroom.distant.footstep master @a ~ ~ ~ 1
execute if entity @s[scores={am_gamescore5=1,am_gamescore7=0..150,am_gametimer=10,am_gamescore3=..220}] run execute as @e[type=zombie_villager,tag=trollgeai,tag=!camping,tag=loud] at @s run playsound custom.act3.backroom.distant.footstep master @a ~ ~ ~ 2
execute if entity @s[scores={am_gamescore5=17,am_gamescore7=0..150,am_gametimer=10,am_gamescore3=..220}] run execute as @e[type=zombie_villager,tag=trollgeai,tag=!camping,tag=loud] at @s run playsound custom.act3.backroom.distant.footstep master @a ~ ~ ~ 2

effect give @e[type=zombie_villager,tag=trollgeai,tag=camping] slowness 1 255 true
execute as @e[type=zombie_villager,tag=trollgeai,tag=camping] at @s run tp @s ~ ~ ~ facing entity @p[tag=amplayer] feet

execute at @r[tag=amplayer] unless entity @e[type=zombie_villager,tag=trollgeai,distance=0..10] if entity @s[scores={am_gamescore3=..0,am_gamescore7=0..59}] run function ttt:amogus/minigames/id1/attempt_far_scatter
execute at @r[tag=amplayer] unless entity @e[type=zombie_villager,tag=trollgeai,distance=0..10] if entity @s[scores={am_gamescore3=..0,am_gamescore7=60..199}] run function ttt:amogus/minigames/id1/attempt_mid_scatter
execute at @r[tag=amplayer] unless entity @e[type=zombie_villager,tag=trollgeai,distance=0..10] if entity @s[scores={am_gamescore3=..0,am_gamescore7=200..}] run function ttt:amogus/minigames/id1/attempt_close_scatter

tp @e[type=armor_stand,tag=trollgevis] @e[type=zombie_villager,tag=trollgeai,limit=1]