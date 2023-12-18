# ACT-WIDE KILL EVENTS

execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s resistance 1 0 true
execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s instant_damage 1 0 true
execute as @a[team=p,nbt=!{Fire:-20s},scores={y=9..}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true
execute as @a[team=p,nbt=!{Fire:-20s},scores={y=..8}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 5 true

execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~ magma_block run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~-0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~-0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~-0.3 ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death


# BASIC TICK

execute as @a[tag=!testing,team=!s,scores={hp=1..}] at @s if entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s -3 30 168
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s -3 30 168
effect give @a weakness 99999 0 true
execute as @a[team=p] at @s store result score @s x run data get entity @s Pos[0]
execute as @a[team=p] at @s store result score @s y run data get entity @s Pos[1]
execute as @a[team=p] at @s store result score @s z run data get entity @s Pos[2]

# execute if entity @s[scores={acttimer=1..}] run function ttt:tick_act3_part1_timer
execute if entity @s[scores={dialogueseq=1}] run function ttt:act3/dialogue_easter_egg
execute if entity @s[scores={dialogueseq=2}] run function ttt:act3/dialogue_angry_bird
execute if entity @s[scores={dialogueseq=3}] run function ttt:act3/dialogue_king_intro


# TROLLS

particle minecraft:campfire_cosy_smoke -2 9 179 10.5 0 10.5 0.07 1 normal @a
particle minecraft:crimson_spore 8 16 214 6 3 4 0 1 normal @a
particle minecraft:crimson_spore -2 30 179 4 1 4 0 1 normal @a
particle minecraft:crimson_spore -2 15 179 9 4 9 0 9 normal @a

execute as @a[team=p] at @s if block ~ ~ ~ red_carpet run scoreboard players set @s deathreason 13
execute as @a[team=p] at @s if block ~ ~ ~ red_carpet run effect give @s instant_damage 1 100 true

execute as @a[team=p,scores={z=..128,hp=1..},tag=!testing] at @s run function ttt:act3/overstep

execute positioned -7 31 160 if block ~ ~ ~ lever[powered=true] run function ttt:act2/wrong_lever
execute positioned 1 31 160 if block ~ ~ ~ lever[powered=true] run function ttt:act2/wrong_lever

execute if entity @a[scores={y=24..26},team=p] unless entity @e[type=blaze,tag=blazeprot] run function ttt:act3/spawn_hell_ents

execute if entity @a[x=10,y=15,z=175,dx=7,dy=2,dz=10,team=p] run function ttt:act3/blaze_guard_nearby

#execute as @a[x=-1,y=29,z=180,dx=2,dy=1,dz=1,team=p,nbt={OnGround:1b}] positioned 0 29 181 unless block ~ ~ ~ air run function ttt:act3/bridge_break
execute as @a[x=0,y=29,z=181,dx=0,dy=1,dz=0,team=p,nbt={OnGround:1b}] positioned 0 29 181 unless block ~ ~ ~ air run function ttt:act3/bridge_break
execute as @a[x=-6,y=30,z=181,dx=0,dy=1,dz=0,team=p,nbt={OnGround:1b}] positioned -6 29 181 unless block ~ ~ ~ air run setblock ~ ~ ~ air destroy
execute as @a[x=-6,y=30,z=181,dx=0,dy=1,dz=0,team=p,nbt={OnGround:1b}] positioned -6 30 181 unless block ~ ~ ~ air run function ttt:act3/bridge_break

execute as @a[x=-3,y=30,z=189,dx=0,dy=0,dz=0,team=p,nbt={OnGround:1b}] at @s unless entity @e[tag=sv,tag=pressureplated] run tellraw @s [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"text":"It seems I need something heavier to activate this pressure plate. Where's my mom?","color":"aqua"}]
execute if entity @a[x=-3,y=30,z=189,dx=0,dy=0,dz=0,team=p,nbt={OnGround:1b}] run tag @s add pressureplated
execute if entity @s[tag=pressureplated] unless entity @a[x=-3,y=30,z=189,dx=0,dy=0,dz=0,team=p,nbt={OnGround:1b}] run tag @s remove pressureplated

execute as @e[type=piglin,tag=piglinent] at @s if entity @a[team=p,distance=0..7] run tp @s ~ ~ ~ facing entity @p[team=p]

execute as @e[type=piglin,tag=prophet] at @s as @a[team=p,distance=0..4,tag=!hungertext] run function ttt:act3/prophet

execute as @e[tag=namednpc] at @s if entity @a[team=p,distance=0..7] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=namednpc] at @s unless entity @a[team=p,distance=0..7] run data merge entity @s {CustomNameVisible:0b}

execute unless score @s dialogueseq matches 1.. if entity @a[team=p,scores={x=6..17,y=18..23,z=192..203}] run function ttt:act3/dialogueseq1
execute if entity @a[team=p,scores={x=5..6,y=18..21,z=200..204}] positioned 6 20 203 unless entity @s[scores={d4=1}] run function ttt:diamond_hunt/d4

execute if entity @s[scores={am_rickinteract=..0}] run function ttt:act3/tick_rickseq0
execute if entity @s[scores={am_rickinteract=1..,am_seentrollge=..0}] run function ttt:act3/tick_rickseq1
execute if entity @s[scores={am_rickinteract=1..,am_seentrollge=1..}] run function ttt:act3/tick_rickseq2

execute as @a[team=p,scores={x=8..,y=35..},tag=!testing] at @s run function ttt:act3/overstep
execute as @a[team=p,scores={x=..-14,y=35..},tag=!testing] at @s run function ttt:act3/overstep
# execute as @a[team=p,scores={z=270..},tag=!testing] at @s run function ttt:act3/overstep
execute as @a[team=p,scores={z=273..},tag=!testing] at @s run function ttt:act3/overstep

execute if entity @s[tag=raining] run function ttt:act3/tick_rain