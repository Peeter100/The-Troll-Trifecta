# ACT-WIDE KILL EVENTS

execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s resistance 1 0 true
execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s instant_damage 1 0 true
execute as @a[team=p,nbt=!{Fire:-20s}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true



# BASIC TICK

execute as @a[tag=!testing,team=!s,scores={hp=1..}] at @s if entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s 0 30 43
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s 0 30 43
effect give @a weakness 99999 0 true
execute as @a[team=p] at @s store result score @s x run data get entity @s Pos[0]
execute as @a[team=p] at @s store result score @s y run data get entity @s Pos[1]
execute as @a[team=p] at @s store result score @s z run data get entity @s Pos[2]

execute if entity @s[scores={acttimer=1..}] run function ttt:tick_act2_part1_timer



# TROLLS

execute unless entity @a[team=p,scores={z=53..}] if block 0 30 48 air run setblock 0 30 48 trapped_chest[facing=north]
execute if entity @a[team=p,scores={z=53..}] if block 0 30 48 trapped_chest run data merge block 0 28 48 {powered:0b}
execute if entity @a[team=p,scores={z=53..}] if block 0 30 48 trapped_chest run setblock 0 30 48 air destroy

execute if entity @a[team=p,scores={x=-10..,z=25..63}] run function ttt:act2/simulate_act1

execute as @e[tag=namednpc] at @s if entity @a[team=p,distance=0..7] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=namednpc] at @s unless entity @a[team=p,distance=0..7] run data merge entity @s {CustomNameVisible:0b}

execute as @a[team=p,nbt={Inventory:[{tag:{deathitem:1b}}]}] at @s run function ttt:act1/item_steal
execute as @e[type=item,nbt={Item:{tag:{deathitem:1b}}}] at @s as @p[team=p] at @s run function ttt:act1/item_steal

execute as @a[team=p,scores={x=-57..}] at @s if block ~ ~ ~ water run function ttt:act2/water_freeze
execute as @a[team=p,scores={x=-57..}] at @s if block ~ ~ ~ pointed_dripstone[waterlogged=true] run function ttt:act2/water_freeze

tag @a[team=p,scores={x=-37..-25,y=26,z=20..36}] add noheal
scoreboard players set @a[team=p,scores={x=-37..-25,y=26,z=20..36}] deathreason 20

execute unless entity @s[scores={dialogueseq=-1}] if entity @a[team=p,scores={x=-37..-25,y=24,z=20..36}] run function ttt:act2/dialogueseqm1
# execute if entity @s[scores={dialogueseq=0,cr_seensans=2..}] if entity @a[team=p,scores={x=-37..-25,z=..39}] run function ttt:act2/dialogueseqm2

execute if score @s securitytime matches ..32 as @a[x=-26.4,y=30,z=21,dx=2,dy=1,dz=2,team=p] at @s if block ~ 30 22 air run function ttt:act2/security_wall
execute if score @s securitytime matches ..32 as @a[x=-37.6,y=30,z=21,dx=6,dy=1,dz=2,team=p] at @s if block ~ 30 22 air run function ttt:act2/security_wall

effect clear @a[tag=1hpchallenge,nbt=!{Inventory:[{Slot:100b,tag:{tailsshoes:1b}}]}] resistance
# execute as @a[team=p,tag=!1hpchallenge,scores={z=..19},nbt={Health:20.0f}] at @s run function ttt:act2/begin_1hp
# execute as @a[team=p,tag=!1hpchallenge,scores={z=..19}] at @s run effect give @s instant_health 1 100 true
execute as @a[team=p,tag=!1hpchallenge] unless score @s z matches 20..64 at @s run function ttt:act2/prepare_1hp

execute as @a[team=p,scores={y=12},nbt={OnGround:1b}] at @s run function ttt:act2/snow_sink

kill @e[type=arrow,nbt={inGround:1b}]
execute if entity @s[scores={securitytime=0}] if entity @a[team=p,scores={z=24..29},nbt={Inventory:[{tag:{hoverwand:1b}}]}] run scoreboard players set @s securitytime 1
execute if entity @s[scores={securitytime=1..}] if entity @a[team=p,scores={x=-38..-24,y=30..35,z=17..39}] run function ttt:act2/security_protocol

# execute as @a[team=p,nbt={OnGround:1b},scores={x=-48,y=34,z=77..82}] at @s run function ttt:act3/overstep
execute as @a[team=p,nbt={OnGround:1b},scores={x=-48,y=32..,z=77..82}] at @s run function ttt:act3/overstep

execute positioned -22 33 61 if block ~ ~ ~ #minecraft:buttons[powered=true] run function ttt:act2/wrong_button
execute positioned -19 31 61 if block ~ ~ ~ #minecraft:buttons[powered=true] run function ttt:act2/wrong_button
execute positioned -20 32 75 if block ~ ~ ~ #minecraft:buttons[powered=true] run function ttt:act2/wrong_button
execute positioned -35 27 69 if block ~ ~ ~ #minecraft:buttons[powered=true] run function ttt:act2/wrong_button
execute positioned -25 27 51 if block ~ ~ ~ #minecraft:buttons[powered=true] run function ttt:act2/wrong_button

execute as @e[type=tnt,tag=!faketnt] at @s run function ttt:act2/fake_tnt_part1

execute if entity @a[team=p,scores={z=78..}] unless entity @e[type=armor_stand,tag=sans] run function ttt:act2/spawn_undertale_npc
execute if entity @a[team=p,scores={z=87..}] unless score @s dialogueseq matches -1 unless score @s dialogueseq matches 1.. run function ttt:act2/dialogueseq1

execute if score @s dialogueseq matches ..1 run function ttt:act2/dialoguepart1
execute if score @s dialogueseq matches 2.. run function ttt:act2/dialoguepart2

execute as @e[type=armor_stand,tag=sans] at @s run function ttt:act2/sans_tick
execute as @e[type=armor_stand,tag=undhead] at @s run function ttt:act2/undyne_tick

execute if entity @a[team=p,scores={x=..-56,z=..70}] run function ttt:act2/arena_encounter/tick

execute as @a[team=p,nbt={OnGround:1b},nbt=!{SelectedItem:{tag:{hoverwand:1b}}}] at @s run scoreboard players set @s wand_energy 100
execute as @a[team=p,nbt={SelectedItem:{tag:{hoverwand:1b}}},scores={wand_energy=1..}] at @s run scoreboard players remove @s wand_energy 2
execute as @a[team=p,nbt={SelectedItem:{tag:{hoverwand:1b}}},scores={wand_energy=1..}] at @s run effect give @s levitation 1 255 true
execute as @a[team=p,scores={wand_energy=..0}] at @s run effect clear @s levitation
execute as @a[team=p,nbt=!{SelectedItem:{tag:{hoverwand:1b}}}] at @s run effect clear @s levitation
execute as @a[team=p,nbt={Inventory:[{tag:{hoverwand:1b}}]}] at @s run title @s actionbar [{"text":"Wand Energy: ","color":"light_purple","italic":false},{"score":{"name":"@s","objective":"wand_energy"},"color":"dark_purple"},{"text":"%","color":"dark_purple"}]

execute as @a[team=p,scores={drinkpotion=1..}] at @s run function ttt:act2/potion_burn
execute as @a[team=p,nbt={Inventory:[{Slot:100b,tag:{tailsshoes:1b}}]}] at @s run function ttt:act2/tails_shoes_tick


## cr_beeninbattle
# 1 --> enter game --> DEFAULT START
# 2 --> start clash royale --> START ICE WITH MORE SCORE
# 3 --> boss spawns --> START ON CLASH
# 4 --> boss defeat --> START ON BOSS
# 5 --> after shooting TNT --> DEFAULT START, ALLOWED TO SKIP

## cr_seensans
# 1 --> find wand
# 2 --> buy item from undyne
# 3 --> has used skip from score==2