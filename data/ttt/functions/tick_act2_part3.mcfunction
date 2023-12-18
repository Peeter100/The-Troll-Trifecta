# ACT-WIDE KILL EVENTS

execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s resistance 1 0 true
execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s instant_damage 1 0 true
execute as @a[team=p,nbt=!{Fire:-20s}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true



# BASIC TICK

execute as @a[tag=!testing,team=!s,scores={hp=1..}] at @s if entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s -29 31 79
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s -29 31 79
effect give @a weakness 99999 0 true
execute as @a[team=p] at @s store result score @s x run data get entity @s Pos[0]
execute as @a[team=p] at @s store result score @s y run data get entity @s Pos[1]
execute as @a[team=p] at @s store result score @s z run data get entity @s Pos[2]

execute if entity @s[scores={dialogueseq=-1}] if block -18 31 79 tnt run function ttt:act2/afterclash/tick_allow_reenter
execute if entity @s[scores={acttimer=1..}] run function ttt:tick_act2_part3_timer



# TROLLS

#execute if entity @a[x=-11,y=30,z=55,dx=22,dy=0,dz=4.6,team=p,nbt={OnGround:1b}] if block 7 30 60 grass run function ttt:act1/lava_pit
execute if entity @a[x=-11,y=30,z=55,dx=22,dy=0,dz=4.6,team=p] if block 7 30 60 grass run function ttt:act1/lava_pit

execute as @e[tag=namednpc] at @s if entity @a[team=p,distance=0..7] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=namednpc] at @s unless entity @a[team=p,distance=0..7] run data merge entity @s {CustomNameVisible:0b}

execute as @a[team=p,nbt={Inventory:[{id:"minecraft:poppy"}]}] at @s run function ttt:act1/item_steal
execute as @a[team=p,nbt={Inventory:[{tag:{deathitem:1b}}]}] at @s run function ttt:act1/item_steal
execute as @e[type=item,nbt={Item:{tag:{deathitem:1b}}}] at @s run execute as @p[team=p] at @s run function ttt:act1/item_steal

execute as @a[team=p,scores={z=..99}] at @s if block ~ ~ ~ water run function ttt:act2/water_freeze
execute as @a[team=p,scores={z=..99}] at @s if block ~ ~ ~ pointed_dripstone[waterlogged=true] run function ttt:act2/water_freeze

execute as @e[type=tnt,tag=!faketnt] at @s run function ttt:act2/fake_tnt_part3

kill @e[type=arrow,nbt={inGround:1b}]
execute as @a[team=p,tag=hadbow] at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:arrow"}}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:arrow"}]}] run function ttt:act2/afterclash/listen_to_sans

execute if entity @s[scores={dialogueseq=0}] run function ttt:act2/dialogue_sans2
execute as @e[type=armor_stand,tag=sans] at @s run function ttt:act2/sans_tick

execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~ magma_block run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~-0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~-0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~-0.3 ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death

#execute as @a[team=p,scores={y=..27,z=104..130}] at @s run tag @s add noheal
execute as @a[team=p,scores={y=..27,z=104..130}] at @s run function ttt:act1/water_fall

execute as @a[x=-11,y=30,z=115.75,dx=1,dy=0,dz=0.5,nbt={OnGround:1b},team=p] at @s unless block -11 29 116 air run function ttt:act1/balcony_break
execute if entity @a[x=4,y=28,z=115,dx=1,dy=0,dz=1,nbt={OnGround:1b},team=p] unless block 5 27 115 water run function ttt:act2/afterclash/break_parkour_block

execute if entity @s[scores={dialogueseq=1..2}] run tag @a[team=p,nbt={Inventory:[{tag:{tntitem:1b}}]}] add hastnt
execute if entity @s[scores={dialogueseq=2}] if entity @a[team=p,tag=hastnt] run scoreboard players set @s dialoguetime -1
execute if entity @s[scores={dialogueseq=2}] if entity @a[team=p,tag=hastnt] run scoreboard players set @s dialogueseq 1

execute if entity @s[scores={dialogueseq=1}] if entity @e[type=item,nbt={Item:{tag:{tntitem:1b}}}] run tag @a remove hastnt
execute if entity @s[scores={dialogueseq=1}] if entity @e[type=item,nbt={Item:{tag:{tntitem:1b}}}] run scoreboard players set @s dialoguetime -1
execute if entity @s[scores={dialogueseq=1}] if entity @e[type=item,nbt={Item:{tag:{tntitem:1b}}}] run scoreboard players set @s dialogueseq 2

execute if entity @s[scores={dialogueseq=1}] if entity @a[team=p,tag=hastnt] run function ttt:act2/afterclash/tnt_tick_inventory
execute if entity @s[scores={dialogueseq=2,dialoguetime=..140}] run function ttt:act2/afterclash/tnt_tick_ground

execute as @a[team=p,nbt={ActiveEffects:[{Id:13b}]}] at @s run function ttt:act2/afterclash/antigravity
execute as @a[scores={y=42..},tag=!testing,team=p] at @s run function ttt:act3/overstep

execute if entity @a[team=p,scores={x=-13..-12,y=36..40,z=69..72}] positioned -13 38 70 unless entity @s[scores={d3=1}] run function ttt:diamond_hunt/d3

execute as @a[team=p,scores={z=128..},nbt={OnGround:1b},tag=!instadeath] at @s run function ttt:act2/afterclash/cross_river

execute as @a[team=p] at @s if block ~ ~ ~ red_carpet run scoreboard players set @s deathreason 13
execute as @a[team=p] at @s if block ~ ~ ~ red_carpet run effect give @s instant_damage 1 100 true

execute if score @s acttimer matches ..499 at @a[team=p] if block ~ ~ ~ lime_carpet run function ttt:act2/afterclash/tense_begin

execute if block -3 31 158 barrier if entity @a[team=p,scores={z=155..}] run fill -11 30 158 5 33 158 air

execute positioned -7 31 160 if block ~ ~ ~ lever[powered=true] run function ttt:act2/wrong_lever
execute positioned 1 31 160 if block ~ ~ ~ lever[powered=true] run function ttt:act2/wrong_lever

execute if entity @s[scores={acttimer=0}] if entity @a[team=p,scores={z=162..}] unless entity @a[team=p,tag=hungertext] unless entity @a[team=p,tag=hastnt] unless entity @e[type=item,nbt={Item:{tag:{tntitem:1b}}}] run tellraw @a [{"text":"<","color":"white"},{"selector":"@r[team=p,scores={z=162..}]","color":"aqua"},{"text":"> "},{"text":"I feel like I'm missing something...","color":"aqua"}]
execute if entity @s[scores={acttimer=0}] if entity @a[team=p,scores={z=162..}] unless entity @a[team=p,tag=hungertext] unless entity @a[team=p,tag=hastnt] unless entity @e[type=item,nbt={Item:{tag:{tntitem:1b}}}] run tag @a[team=p] add hungertext