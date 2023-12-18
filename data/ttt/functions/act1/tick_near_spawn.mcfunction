execute unless entity @a[team=p,scores={z=53..}] if block 0 30 48 air run setblock 0 30 48 trapped_chest[facing=north]
execute if entity @a[team=p,scores={z=53..}] if block 0 30 48 trapped_chest run data merge block 0 28 48 {powered:0b}
execute if entity @a[team=p,scores={z=53..}] if block 0 30 48 trapped_chest run setblock 0 30 48 air destroy

execute as @a[x=-2,y=30,z=38,dx=4,dy=0,dz=1.5,team=p,nbt={OnGround:1b}] at @s if block 0 30 39 grass run function ttt:act1/lava_pit_armorstand
execute as @a[team=p,scores={x=-6..6,y=30..31,z=40..42}] at @s run function ttt:act1/strict_block_policy

execute if entity @s[scores={acttimer=0}] unless block 0 30 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 10
execute if entity @s[scores={acttimer=0}] unless block 0 31 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 12
execute if entity @s[scores={acttimer=0}] unless block 0 32 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 14

#execute unless block 0 36 49 oak_leaves as @a[team=p,scores={y=32..,z=54..56},nbt={OnGround:1b}] at @s run function ttt:act1/plank_poison

# moved all onground
execute as @a[team=p,nbt={OnGround:1b}] at @s run function ttt:act1/tick_player_onground

execute if entity @s[scores={acttimer=0}] if entity @a[x=23,y=27,z=37,dx=2,dy=2,dz=2,team=p] if block 24 35 38 pointed_dripstone run function ttt:act1/dripstone_fall
execute as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:pointed_dripstone"}}] at @s run data merge entity @s {NoGravity:1b,Motion:[0.0,-1.0,0.0]}

execute if entity @a[x=29,y=33,z=49,dx=0,dy=2,dz=0,team=p,scores={deathreason=0}] if entity @s[scores={acttimer=0..36}] run scoreboard players set @s acttimer 500

execute if entity @a[team=p,scores={x=..12,y=32..,z=..42}] unless block 4 32 45 iron_block run particle dust 1 1 1 1 4 30.0 45 .3 0 .3 0 3 force @a
execute if entity @a[team=p,scores={x=..12,y=32..,z=..42}] unless block -4 32 45 iron_block run particle dust 1 1 1 1 -4 30.0 45 .3 0 .3 0 3 force @a

execute if entity @a[x=3,y=34,z=44,dx=2,dy=1,dz=2,team=p] positioned 4 32 45 unless block ~ ~ ~ iron_block run function ttt:act1/ironblock
execute if entity @a[x=-5,y=34,z=44,dx=2,dy=1,dz=2,team=p] positioned -4 32 45 unless block ~ ~ ~ iron_block run function ttt:act1/ironblock

execute as @a[scores={y=42..},tag=!testing,team=p] at @s run function ttt:act3/overstep

# DIAMOND CODE

execute as @a[team=p,x=-6,y=30,z=54,dx=12,dy=1,dz=0,scores={x=-6..6}] at @s unless block ~ 30 55 jungle_fence run function ttt:act1/plank_spawn
execute as @a[team=p,x=-6,y=30,z=55,dx=12,dy=0,dz=0,nbt={OnGround:1b}] at @s if block ~ 29 55 grass_block run setblock ~ 29 55 magenta_glazed_terracotta[facing=north]


execute as @e[type=armor_stand,tag=toadhead] at @s run function ttt:act1/toad_tick

execute at @e[type=armor_stand,tag=toadhead] if entity @a[team=p,distance=0..9] if entity @s[scores={dialogueseq=0,dialoguetime=0}] run scoreboard players set @s dialoguetime 1
execute if entity @s[scores={dialogueseq=0,dialoguetime=1..999}] unless entity @s[scores={dialoguetime=500..599}] run function ttt:act1/dialogue_toad

execute if score @s dialogueseq matches 0 as @a[team=p,scores={rc=1..}] at @s run function ttt:act1/mario/rc

execute as @a[team=p,scores={deathreason=38}] at @s unless entity @s[x=28,z=39,dx=0,dz=0] run tp @s ~ ~ ~ facing 28 ~ 39
execute as @a[team=p,scores={deathreason=38}] at @s unless entity @s[x=28,z=39,dx=0,dz=0] run tp @s ^ ^ ^0.25

execute as @e[type=armor_stand,tag=leapball] at @s run function ttt:act1/mario/leapball_tick
execute as @e[type=armor_stand,tag=leapball] at @s run function ttt:act1/mario/leapball_tick

execute as @e[type=armor_stand,tag=goomba] at @s run function ttt:act1/mario/goomba_tick
execute as @a[team=p,scores={deathreason=40}] at @s unless entity @e[type=armor_stand,tag=goomba] run kill @s

execute as @a[team=p,scores={jump=1..},tag=jbimmune] at @s run playsound custom.act1.mario.jump master @a ~ ~ ~
execute as @a[team=p,scores={x=..7},nbt={Inventory:[{tag:{shears:1b}}]}] at @s run function ttt:act1/mario/toad_item_steal
execute unless entity @a[team=p,scores={x=8..}] unless data block 40 40 35 {Items:[{tag:{shears:1b}}]} as @r[team=p] at @s run function ttt:act1/mario/toad_item_steal

execute if score @s fnf_lavarock matches 1 as @e[type=falling_block,tag=torchwoodfall] at @s if entity @s[y=26,dy=1] run function ttt:act1/torchwood/land

scoreboard players set @a sneak 0