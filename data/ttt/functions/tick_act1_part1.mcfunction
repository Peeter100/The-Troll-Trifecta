# ACT-WIDE KILL EVENTS

execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s resistance 1 0 true
execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s instant_damage 1 0 true
execute unless entity @s[scores={acttimer=500..650}] as @a[team=p,nbt=!{Fire:-20s}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true



# BASIC TICK

execute as @a[tag=!testing,team=!s,scores={hp=1..}] at @s if entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s 0 30 43
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s 0 30 43
effect give @a weakness 99999 0 true
execute as @a[team=p] at @s store result score @s x run data get entity @s Pos[0]
execute as @a[team=p] at @s store result score @s y run data get entity @s Pos[1]
execute as @a[team=p] at @s store result score @s z run data get entity @s Pos[2]

execute if entity @s[scores={acttimer=1..}] run function ttt:tick_act1_part1_timer
execute if entity @s[scores={dialogueseq=1,dialoguetime=..299}] run function ttt:act1/dialogue_village
execute if entity @s[scores={dialogueseq=2}] at @e[type=armor_stand,tag=tailshead,limit=1] run function ttt:act1/dialogue_tails
execute if entity @s[scores={dialogueseq=3,dialoguetime=..749}] at @e[type=armor_stand,tag=tailshead,limit=1] run function ttt:act1/dialogue_tails_fly
execute if entity @s[scores={dialogueseq=4}] run function ttt:act1/dialogue_backroom
execute if entity @s[scores={dialogueseq=5}] run function ttt:act1/dialogue_p100



# TROLLS

## fnf_actprog
# 1 --> talked to john
# 2 --> won john's quiz
# 3 --> got no-longer-hungry message, awaiting respawn
# 4 --> no hunger
# 5 --> got tails' spawn message

execute if entity @a[team=p,scores={z=25..58}] unless entity @a[team=p,scores={deathreason=32}] run function ttt:act1/near_spawn/base

execute as @a[team=p,nbt={OnGround:1b}] at @s run function ttt:act1/onground_main

execute if entity @a[team=p,scores={x=28..30,y=27..29,z=59..61}] positioned 29 29 60 unless entity @s[scores={d1=1}] unless entity @a[team=p,scores={deathreason=32}] run function ttt:diamond_hunt/d1


# 4.6 --> 4.4
execute if entity @a[x=-11,y=30,z=55,dx=22,dy=0,dz=4.4,team=p,nbt={OnGround:1b}] if block 7 30 60 grass run function ttt:act1/lava_pit

execute as @e[tag=namednpc] at @s if entity @a[team=p,distance=0..7] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=namednpc] at @s unless entity @a[team=p,distance=0..7] run data merge entity @s {CustomNameVisible:0b}

execute as @a[team=p,nbt={Inventory:[{id:"minecraft:poppy"}]}] at @s run function ttt:act1/item_steal
execute as @a[team=p,nbt={Inventory:[{tag:{deathitem:1b}}]}] at @s run function ttt:act1/item_steal
execute if entity @e[type=item,nbt={Item:{tag:{deathitem:1b}}}] as @p[team=p] at @s run function ttt:act1/item_steal

execute if block -4 30 64 acacia_fence_gate[open=true] if entity @e[tag=villagekeeper] positioned -4 30 64 run function ttt:act1/gate_open
execute as @a[scores={killvill=1..}] at @s run function ttt:act1/villager_kill
execute if entity @a[x=-5,y=30,z=64.5,dx=2,dy=0,dz=0,nbt={OnGround:1b},team=p] if block -4 29 64 grass_block unless entity @e[type=villager,tag=villagekeeper] run function ttt:act1/gate_collapse

tag @e[type=witch] add goaway

execute if entity @a[x=-17,y=33,z=87,dx=0,dy=1,dz=0,team=p] if block -17 33 87 acacia_stairs run setblock -17 33 87 air destroy
execute if entity @a[x=-16,y=34,z=86,dx=0,dy=0,dz=0,team=p] if block -16 34 86 acacia_slab run setblock -16 34 86 air destroy

execute if entity @a[x=14,y=31,z=78.5,dx=0,dy=1,dz=1,team=p] unless entity @s[scores={acttimer=40..45}] run scoreboard players set @s acttimer 40

execute if score @s fnf_actprog matches ..3 run function ttt:act1/tick_hungeruse
execute if score @s fnf_actprog matches 4.. run function ttt:act1/tick_hungerskip

execute as @a[team=p,scores={y=23..27,z=104..130}] at @s run function ttt:act1/water_fall

execute as @a[x=-11,y=30,z=115.75,dx=1,dy=0,dz=0.5,nbt={OnGround:1b},team=p] at @s unless block -11 29 116 air run function ttt:act1/balcony_break
#tag @a[x=2,y=33,z=113,dx=1,dy=1,dz=1,team=p] add backroomp
#execute as @r[x=2,y=33,z=113,dx=1,dy=1,dz=1,team=p] at @s unless entity @e[tag=backrooment] run function ttt:act1/barrier_jump
tag @a[x=2,y=33,z=113,dx=0.5,dy=1,dz=0.25,team=p] add backroomp
execute as @r[x=2,y=33,z=113,dx=0.5,dy=1,dz=0.25,team=p] at @s unless entity @e[tag=backrooment] run function ttt:act1/barrier_jump

execute if entity @a[scores={z=128..},team=p,nbt={OnGround:1b}] run function ttt:act1/carpet_game/tick

execute unless score @s dialogueseq matches 5 at @r[team=p,scores={z=157..}] run function ttt:act1/dialogueseq5_root

#execute as @a[team=p,scores={rc=1..}] if entity @s[nbt={SelectedItem:{tag:{wgun:1b}}}] at @s anchored eyes run function ttt:act1/water_gun
execute as @a[team=p,scores={rc=1..}] at @s anchored eyes run function ttt:act1/water_gun
execute if score @s fnf_haswgun matches 0 if entity @e[type=armor_stand,tag=wgunholder,nbt=!{HandItems:[{tag:{wgun:1b}}]}] run function ttt:act1/water_gun/equip